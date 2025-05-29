part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(AppStatus.init) AppStatus loginStatus,
    String? loginErrorMessage,
  }) = _LoginState;
}
