part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState({
    ActivityFeedback? activityFeedback,
    Activity? lastActivity,
    @Default(false) bool newSpecialLeadsTasks,
  }) = _ActivityState;
}
