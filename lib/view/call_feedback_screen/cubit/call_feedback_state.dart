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
    @Default(AppStatus.init) AppStatus addLeadStatus,
    String? addLeadError,
    @Default([]) List<LeadSource> leadSources,
    @Default(AppStatus.init) AppStatus getLeadSourceStatus,
    @Default({}) Map<String, dynamic> val,
    @Default([]) List<Activity> activities,
    @Default(AppStatus.init) AppStatus getActivitiesStatus,
    String? getActivitiesError,
  }) = _CallFeedbackState;
}
