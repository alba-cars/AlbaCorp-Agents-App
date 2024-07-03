part of 'call_bloc.dart';

@freezed
class CallEvent with _$CallEvent {
  const factory CallEvent.started() = _Started;
  const factory CallEvent.callEnded() = _CallEnded;
  const factory CallEvent.updateActivity({
    required String note,
    required String description,
    required String feedback,
  }) = _UpdateActivity;
  const factory CallEvent.callStarted({
    required String phoneNumber,
    required String activityId,
    required String leadId,
  }) = _CallStarted;
  const factory CallEvent.clickToCall({
    required String phoneNumber,
  }) = _ClickToCall;
}
