import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:linkus_sdk/linkus_sdk.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/auth_repo.dart';
import 'package:real_estate_app/data/repository/notification_repo.dart';
import 'package:real_estate_app/model/notification_model.dart';
import 'package:real_estate_app/model/user.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/activity_model.dart';
import '../../model/agent_model.dart';
import '../../util/result.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepo, this._notificationRepo, this._activityRepo)
      : super(_AuthState()) {
    on<_UserLoggedIn>(_userLoggedIn);
    on<_UserLoggedOut>(_userLoggedOut);
    on<_Started>(_started);
    on<_RefreshAgentData>(_refreshAgentData);
    on<_NewImportantActivity>(_newImportantActivity);
    on<_CompletedImportantActivity>(_completedImportantActivity);
    on<_CheckForImportantActivity>(_checkForImportantActivity);
    on<_CheckForCallFeedback>(_checkForCallFeedback);

    _fcmForegroundStream = FirebaseMessaging.onMessage.listen(onNotification);
    _fcmForegroundStream =
        FirebaseMessaging.onMessageOpenedApp.listen(onNotification);

    FirebaseMessaging.instance.getInitialMessage().then((e) {
      if (e == null) {
        return;
      }
      onNotification(e);
    });
    getIt<SharedPreferences>().reload().then((_) {
      final number = getIt<SharedPreferences>().getString('call');
      Logger().d(number);
    });
    // add(AuthEvent.started());
  }
  final AuthRepo _authRepo;
  final ActivityRepo _activityRepo;
  final NotificationRepo _notificationRepo;
  StreamSubscription? _fcmForegroundStream;
  StreamSubscription? _fcmBackgroundStream;

  void onNotification(RemoteMessage message) {
    if (message.data['type'] == 'ImportantActivity') {
      final activities = message.data['values'] as String;
      add(AuthEvent.newImportantActivity(activityIds: [activities]));
    }
    Logger().d(message.notification?.title);
    _notificationRepo.addNotification(
        notification: NotificationModel(
            title: message.notification?.title ?? '',
            subTitle: message.notification?.body));
  }

  FutureOr<void> _userLoggedIn(
      _UserLoggedIn event, Emitter<AuthState> emit) async {
    emit(
        state.copyWith(authStatus: AuthStatus.Authenticated, user: event.user));
    add(AuthEvent.checkForImportantActivity());
    await getAgentData();
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
        add(AuthEvent.checkForImportantActivity());
        await getAgentData();
        break;
      case (Error e):
        emit(state.copyWith(
          authStatus: AuthStatus.UnAuthenticated,
        ));
        break;
    }
  }

  FutureOr<void> getAgentData() async {
    final result = await _authRepo.getAgentData(userId: state.user!.id);
    switch (result) {
      case (Success s):
        emit(state.copyWith(agent: s.value));
        break;
      case (Error e):
        emit(state.copyWith());
        break;
    }
  }

  FutureOr<void> _refreshAgentData(
      _RefreshAgentData event, Emitter<AuthState> emit) async {
    await getAgentData();
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
    await getIt<SharedPreferences>().reload();
    final number = getIt<SharedPreferences>().getString("calledNumber");
    Logger().d(number);
    emit(state.copyWith(lastCalledNumber: number));
  }
}
