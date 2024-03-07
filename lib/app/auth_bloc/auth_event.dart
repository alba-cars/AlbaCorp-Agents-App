part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userLoggedIn({required User user}) = _UserLoggedIn;
  const factory AuthEvent.userLoggedOut() = _UserLoggedOut;
  const factory AuthEvent.started() = _Started;
}
