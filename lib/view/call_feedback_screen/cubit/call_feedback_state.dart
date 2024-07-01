part of 'call_feedback_cubit.dart';

@freezed
class CallFeedbackState with _$CallFeedbackState {
  const factory CallFeedbackState({
    @Default(AppStatus.init) AppStatus checkLeadStatus,
    Lead? lead,
    String? feedback,
  }) = _CallFeedbackState;
}
