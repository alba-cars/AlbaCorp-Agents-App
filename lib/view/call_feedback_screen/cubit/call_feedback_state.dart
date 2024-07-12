part of 'call_feedback_cubit.dart';

@freezed
class CallFeedbackState with _$CallFeedbackState {
  const factory CallFeedbackState({
    @Default(AppStatus.init) AppStatus checkLeadStatus,
    Lead? lead,
    String? feedback,
    @Default(AppStatus.init) AppStatus addActivityStatus,
    @Default(false) bool requestNumber,
    String? number,
  }) = _CallFeedbackState;
}
