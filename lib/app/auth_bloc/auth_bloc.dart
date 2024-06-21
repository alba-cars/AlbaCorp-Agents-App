import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:linkus_sdk/linkus_sdk.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/auth_repo.dart';
import 'package:real_estate_app/model/user.dart';

import '../../model/agent_model.dart';
import '../../util/result.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepo) : super(_AuthState()) {
    on<_UserLoggedIn>(_userLoggedIn);
    on<_UserLoggedOut>(_userLoggedOut);
    on<_Started>(_started);
    on<_RefreshAgentData>(_refreshAgentData);
    on<_NewImportantActivity>(_newImportantActivity);
    on<_CompletedImportantActivity>(_completedImportantActivity);

    _fcmForegroundStream = FirebaseMessaging.onMessage.listen((e) async {
      if (e.data['type'] == 'ImportantActivity') {
        final activities = e.data['values'] as String;
        add(AuthEvent.newImportantActivity(activityIds: [activities]));
      }
    });
    _fcmForegroundStream =
        FirebaseMessaging.onMessageOpenedApp.listen((e) async {
      if (e.data['type'] == 'ImportantActivity') {
        final activities = e.data['values'] as String;
        add(AuthEvent.newImportantActivity(activityIds: [activities]));
      }
    });
    FirebaseMessaging.instance.getInitialMessage().then((e) async {
      if (e == null) {
        return;
      }
      if (e.data['type'] == 'ImportantActivity') {
        final activities = e.data['values'] as String;
        add(AuthEvent.newImportantActivity(activityIds: [activities]));
      }
    });
    // add(AuthEvent.started());
  }
  final AuthRepo _authRepo;
  StreamSubscription? _fcmForegroundStream;
  StreamSubscription? _fcmBackgroundStream;

  FutureOr<void> _userLoggedIn(
      _UserLoggedIn event, Emitter<AuthState> emit) async {
    emit(
        state.copyWith(authStatus: AuthStatus.Authenticated, user: event.user));
    await getAgentData();
  }

  FutureOr<void> _userLoggedOut(_UserLoggedOut event, Emitter<AuthState> emit) {
    emit(state.copyWith(authStatus: AuthStatus.UnAuthenticated, user: null));
  }

  FutureOr<void> _started(_Started event, Emitter<AuthState> emit) async {
    final result = await _authRepo.getLoggedInUser();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            authStatus: AuthStatus.Authenticated, user: s.value));
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
}
