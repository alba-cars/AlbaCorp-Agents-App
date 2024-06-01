import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:linkus_sdk/linkus_sdk.dart';
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
    // add(AuthEvent.started());
  }
  final AuthRepo _authRepo;

  FutureOr<void> _userLoggedIn(
      _UserLoggedIn event, Emitter<AuthState> emit) async {
    emit(
        state.copyWith(authStatus: AuthStatus.Authenticated, user: event.user));
    await getAgentData();
    LinkusSdk().loginToPbx(
        userName: "ziad@albacorp.net",
        password:
            "eyJleHBpcmUiOjAsInNpZ24iOiJRN2FlSXNHRjJ0WDhOSGhURHZCdFpWS0hDZVcxOXpKTkNlME5VM0xmL3NrPSIsInVzZXJuYW1lIjoiemlhZEBhbGJhY29ycC5uZXQiLCJ2ZXJzaW9uIjoiMS4wIn0_",
        localeIp: '192.168.0.252',
        localePortI: 8111,
        remoteIp: '',
        remotePortI: 8111);
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
}
