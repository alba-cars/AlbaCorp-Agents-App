part of 'auth_bloc.dart';

enum AuthStatus { initial, Authenticated, UnAuthenticated }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus authStatus,
    User? user,
    Agent? agent,
    List<String>? veryImportantActivities,
  }) = _AuthState;
}
