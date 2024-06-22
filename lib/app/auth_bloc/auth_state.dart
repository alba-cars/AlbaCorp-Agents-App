part of 'auth_bloc.dart';

enum AuthStatus { initial, Authenticated, UnAuthenticated,Maintenance,Update }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus authStatus,
    User? user,
    Agent? agent,
    AppConfig? appConfig
  }) = _AuthState;
}
