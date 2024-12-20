part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userLoggedIn({required User user}) = _UserLoggedIn;
  const factory AuthEvent.userLoggedOut() = _UserLoggedOut;
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.refreshAgentData() = _RefreshAgentData;
  const factory AuthEvent.newImportantActivity(
      {required List<String> activityIds}) = _NewImportantActivity;
  const factory AuthEvent.completedImportantActivity(
      {required String activityId}) = _CompletedImportantActivity;
      const factory AuthEvent.clearImportantActivity() = _ClearImportantActivity;
  const factory AuthEvent.checkForImportantActivity() =
      _CheckForImportantActivity;
  const factory AuthEvent.checkForCallFeedback() = _CheckForCallFeedback;
  const factory AuthEvent.removeLastCallDetails() = _RemoveLastCallDetails;
  const factory AuthEvent.setShowFollowup({required bool value}) =
      _SetShowFollowup;
  const factory AuthEvent.getAppConfig() = _GetAppConfig;
  const factory AuthEvent.getSettings() = _GetSettings;
}
