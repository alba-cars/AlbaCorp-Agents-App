part of 'task_detail_cubit.dart';

enum CallProcessingStatus {
  initial,
  started,
  recordingFound,
  generatingSummary,
  completed,
  failed
}

@freezed
class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState({
    required String taskId,
    @Default(AppStatus.init) AppStatus getTaskStatus,
    String? getTaskError,
    Activity? task,
    @Default(AppStatus.init) AppStatus updateTaskStatus,
    String? updateTaskError,
    @Default([]) List<Activity> sortedActivity,
    @Default(AppStatus.init) AppStatus? getSortedActivitiesStatus,
    String? getSortedActivitiesError,
    Paginator? sortedActivityPaginator,
    @Default(AppStatus.init) AppStatus? addTaskStatus,
    String? addTaskError,
    @Default([]) List<Activity> activities,
    @Default(AppStatus.init) AppStatus getActivitiesStatus,
    String? getActivitiesError,
    @Default(AppStatus.init) AppStatus getPropertyCardsListStatus,
    @Default([]) List<LeadPropertyCardModel> propertyCardsList,
    String? getPropertyCardsListError,
    Paginator? propertyCardPaginator,
    Paginator? listingsPaginator,
    @Default(5.0) double? ratingValue,
    CallProcessingState? callProcessingState
  }) = _TaskDetailState;
}

@freezed
class CallProcessingState with _$CallProcessingState {
  const factory CallProcessingState({
    @Default(false) bool isProcessing,
    @Default('') String callId,
    required String activityId,
    String? summary,
    String? error,
    @Default(CallProcessingStatus.initial) CallProcessingStatus status,
  }) = _CallProcessingState;
}
