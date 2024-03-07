part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(Status.init) Status loginStatus,
    String? loginErrorMessage,
  }) = _LoginState;
}
