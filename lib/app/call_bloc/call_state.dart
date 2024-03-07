part of 'call_bloc.dart';

enum PhoneCallStatus { noCall, inCall, callEnded }

@freezed
class CallState with _$CallState {
  const factory CallState({
    String? calledNumber,
    String? activityId,
    String? leadId,
    DateTime? callStartTime,
    @Default(PhoneCallStatus.noCall) PhoneCallStatus phoneCallStatus,
    @Default(false) bool feedbackRequestDialogOpen,
    @Default(Status.init) Status updateActivityStatus,
  }) = _CallState;
}
