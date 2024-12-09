import 'dart:async';
import 'dart:convert';

import 'package:awesome_notifications/awesome_notifications.dart' as awesome;
import 'package:bloc/bloc.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/remote_data/pending_call_feedback_repo.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/core/helpers/app_config_helper.dart';
import 'package:real_estate_app/core/models/app_config/AppConfig.dart';
import 'package:real_estate_app/data/repository/auth_repo.dart';
import 'package:real_estate_app/data/repository/notification_repo.dart';
import 'package:real_estate_app/model/global_settings_model.dart';
import 'package:real_estate_app/model/notification_model.dart';
import 'package:real_estate_app/model/pending_call_feedback.dart';
import 'package:real_estate_app/model/user.dart';
import 'package:real_estate_app/routes/app_router.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_followup_screen/add_followup_screen.dart';
import 'package:real_estate_app/view/add_lead_screen/add_lead_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/task_detail_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/activity_model.dart';
import '../../model/agent_model.dart';
import '../../util/result.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepo, this._notificationRepo, this._activityRepo,
      this._pendingCallFeedbackRepo)
      : super(_AuthState()) {
    on<_UserLoggedIn>(_userLoggedIn);
    on<_UserLoggedOut>(_userLoggedOut);
    on<_Started>(_started);
    on<_RefreshAgentData>(_refreshAgentData);
    on<_NewImportantActivity>(_newImportantActivity);
    on<_CompletedImportantActivity>(_completedImportantActivity);
    on<_ClearImportantActivity>(_clearImportantActivity);
    on<_CheckForImportantActivity>(_checkForImportantActivity);
    on<_CheckForCallFeedback>(_checkForCallFeedback);
    on<_RemoveLastCallDetails>(_removeLastCallDetails);
    on<_GetSettings>(_getSettings);
    on<_GetAppConfig>(_getAppConfigData);
    on<_SetShowFollowup>(_setShowFollowUp);

    awesome.AwesomeNotifications().getInitialNotificationAction().then((v) {
      if (v == null) {
        return;
      }

      onNotificationOpenedApp(v);
    });
  }
  final AuthRepo _authRepo;
  final ActivityRepo _activityRepo;
  final NotificationRepo _notificationRepo;
  final PendingCallFeedbackRepo _pendingCallFeedbackRepo;
  StreamSubscription? _fcmForegroundStream;
  StreamSubscription? _fcmBackgroundStream;
  void onNotificationOpenedApp(awesome.ReceivedAction receivedAction) async {
    try {
      final data = receivedAction.payload;
      if (data == null) {
        return;
      }
      saveNotificationToDb(data);

      if (receivedAction.payload?['type'] == 'ACTIVITY_EXPIRING') {
        if (getIt<AuthBloc>().state.authStatus == AuthStatus.initial) {
          await getIt<AuthBloc>()
              .stream
              .firstWhere((e) => e.authStatus != AuthStatus.initial);
        }
        await Future.delayed(Duration(milliseconds: 500));
        final id = receivedAction.payload?['activityId'];
        if (id != null) {
          AppRouter.router.pushNamed(TaskDetailScreen.routeName,
              pathParameters: {'id': id});
        }
      } else {
        if (receivedAction.payload != null) {
          onNotificationData(receivedAction.payload!);
        }
      }
    } catch (e) {
      Logger().e(e);
    }
  }

  void saveNotificationToDb(Map<String, dynamic> data) async {
    Logger().d(data);
    final notificationId = data['id'] as String? ?? '';
    final existResult = await _notificationRepo.isNotificationReceived(
        notificationId: notificationId);
    if (existResult is Success && (existResult as Success).value) {
      return;
    }
    _notificationRepo.addNotification(
        notification: NotificationModel(
            notificationId: data['id'],
            title: data["title"] ?? '',
            subTitle: data["body"],
            type: data["type"],
            requiresAction: data['requiresAction'] ?? false,
            leadId: data['leadId']));
  }

  void onNotificationData(Map<String, dynamic> data) async {
    try {
      saveNotificationToDb(data);
      if (data['type'] == 'ImportantActivity') {
        final activities = json.decode(data['values'] as String? ?? '[]');
        add(AuthEvent.newImportantActivity(
            activityIds: activities is List
                ? activities.map((e) => e.toString()).toList()
                : [activities]));
      } else if (data['type'] == 'NEW_LEAD_CALL') {
        if (state.authStatus == AuthStatus.initial) {
          await stream.firstWhere((e) => e.authStatus != AuthStatus.initial);
        }
        if (state.authStatus == AuthStatus.Authenticated) {
          await Future.delayed(Duration(milliseconds: 500));
          final number = data['phoneNumber'];

          AppRouter.router.pushNamed(AddLeadScreen.routeName, queryParameters: {
            'data': json
                .encode({'phone': number, "lead_source": 'Unkown Inbound Call'})
          });
        }
      } else if (data['type'] == 'PBX_LEAD_CALL_FOLLOW_UP') {
        if (state.authStatus == AuthStatus.initial) {
          await stream.firstWhere((e) => e.authStatus != AuthStatus.initial);
        }

        if (state.authStatus == AuthStatus.Authenticated) {
          await Future.delayed(Duration(milliseconds: 500));
          AppRouter.router.pushNamed(AddFollowUpScreen.routeName,
              queryParameters: {'leadId': data['leadId']});
        }
      }
    } catch (e) {
      Logger().e(e);
    }
  }

  FutureOr<void> _userLoggedIn(
      _UserLoggedIn event, Emitter<AuthState> emit) async {
    emit(
        state.copyWith(authStatus: AuthStatus.Authenticated, user: event.user));
    add(AuthEvent.checkForImportantActivity());
    add(_GetSettings());
    await getAgentData(emit);
  }

  FutureOr<void> _userLoggedOut(_UserLoggedOut event, Emitter<AuthState> emit) {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    storage.delete(key: 'accessToken');
    storage.delete(key: 'refreshToken');
    emit(state.copyWith(authStatus: AuthStatus.UnAuthenticated, user: null));
  }

  FutureOr<void> _started(_Started event, Emitter<AuthState> emit) async {
    final result = await _authRepo.getLoggedInUser();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            authStatus: AuthStatus.Authenticated, user: s.value));
        await getAgentData(emit);
        add(AuthEvent.checkForImportantActivity());
        add(_GetSettings());
        break;
      case (Error _):
        emit(state.copyWith(
          authStatus: AuthStatus.UnAuthenticated,
        ));
        break;
    }
  }

  FutureOr<void> getAgentData(Emitter<AuthState> emit) async {
    final result = await _authRepo.getAgentData(userId: state.user!.id);
    switch (result) {
      case (Success s):
        emit(state.copyWith(agent: s.value));
        break;
      case (Error _):
        emit(state.copyWith());
        break;
    }
  }

  FutureOr<void> _refreshAgentData(
      _RefreshAgentData event, Emitter<AuthState> emit) async {
    await getAgentData(emit);
  }

  FutureOr<void> _getAppConfigData(
      _GetAppConfig event, Emitter<AuthState> emit) async {
    AppConfig appConfig = await AppConfigHelper().getAppInfo();
    if (appConfig.underMaintenance) {
      emit(state.copyWith(
          authStatus: AuthStatus.Maintenance, appConfig: appConfig));
      return;
    }

    bool hasUpdates = appConfig.hasUpdates();
    if (hasUpdates) {
      emit(state.copyWith(authStatus: AuthStatus.Update, appConfig: appConfig));
      return;
    }

    add(AuthEvent.started());
    return;
  }

  FutureOr<void> _newImportantActivity(
      _NewImportantActivity event, Emitter<AuthState> emit) {
    emit(state.copyWith(veryImportantActivities: event.activityIds.toSet()));
  }

  FutureOr<void> _completedImportantActivity(
      _CompletedImportantActivity event, Emitter<AuthState> emit) {
    final activities = Set<String>.from(state.veryImportantActivities ?? {})
      ..remove(event.activityId);
    emit(state.copyWith(veryImportantActivities: activities));
  }

  @override
  Future<void> close() {
    _fcmBackgroundStream?.cancel();
    _fcmForegroundStream?.cancel();

    return super.close();
  }

  FutureOr<void> _checkForImportantActivity(
      _CheckForImportantActivity event, Emitter<AuthState> emit) async {
    if (state.authStatus == AuthStatus.initial) {
      await stream
          .firstWhere((state) => state.authStatus != AuthStatus.initial);
    }
    final result = await _activityRepo.fetchActivitiesImportant();
    switch (result) {
      case (Success<List<Activity>> s):
        emit(state.copyWith(
            veryImportantActivities: s.value.map((e) => e.id).toSet()));
        break;
      case (Error _):
        emit(state.copyWith());
        break;
    }
  }

  FutureOr<void> _checkForCallFeedback(
      _CheckForCallFeedback event, Emitter<AuthState> emit) async {
    if (state.authStatus == AuthStatus.initial) {
      await stream
          .firstWhere((state) => state.authStatus != AuthStatus.initial);
    }
    Logger().d("call feedback event");

    if (state.authStatus == AuthStatus.Authenticated) {
      await getIt<SharedPreferences>().reload();
      final number = getIt<SharedPreferences>().getString("calledNumber");
      Logger().d('number $number');
      if (number != null) {
        await _pendingCallFeedbackRepo.add(
            model: PendingCallFeedback(
                id: 0, number: number, callDirection: CallDirection.incoming));
        emit(state.copyWith(
            lastCalledNumber: number,
            showFeedbackScreen: number == state.lastCalledNumber
                ? state.showFeedbackScreen
                : true));
      }
    }
  }

  FutureOr<void> _removeLastCallDetails(
      _RemoveLastCallDetails event, Emitter<AuthState> emit) {
    getIt<SharedPreferences>().remove('calledNumber');

    emit(state.copyWith(showFeedbackScreen: false, lastCalledNumber: null));
  }

  FutureOr<void> _getSettings(
      _GetSettings event, Emitter<AuthState> emit) async {
    final result = await _authRepo.getSettings();
    switch (result) {
      case (Success s):
        emit(state.copyWith(globalSettings: s.value));
        break;
      case (Error _):
        emit(state.copyWith());
        break;
    }
  }

  FutureOr<void> _setShowFollowUp(
      _SetShowFollowup event, Emitter<AuthState> emit) {
    emit(state.copyWith(showFollowUpScreen: event.value));
  }

  FutureOr<void> _clearImportantActivity(_ClearImportantActivity event, Emitter<AuthState> emit) {
     emit(state.copyWith(
            veryImportantActivities: {}));
  }
}
