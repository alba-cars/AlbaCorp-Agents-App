part of 'task_detail_cubit.dart';

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
  }) = _TaskDetailState;
}
