part of 'auth_bloc.dart';

enum AuthStatus { initial, Authenticated, UnAuthenticated, Maintenance, Update }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus authStatus,
    User? user,
    Agent? agent,
    Set<String>? veryImportantActivities,
    String? lastCalledNumber,
    AppConfig? appConfig,
    @Default(false) bool showFeedbackScreen,
    GlobalSettings? globalSettings,
  }) = _AuthState;
}
