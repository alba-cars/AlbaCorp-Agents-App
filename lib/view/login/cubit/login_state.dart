part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(AppStatus.init) AppStatus loginStatus,
    String? loginErrorMessage,
  }) = _LoginState;
}
