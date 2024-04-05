part of 'task_detail_cubit.dart';

@freezed
class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState({
    required String taskId,
    @Default(Status.init) Status getTaskStatus,
    String? getTaskError,
    Activity? task,
    @Default(Status.init) Status updateTaskStatus,
    String? updateTaskError,
    @Default([]) List<Activity> sortedActivity,
    @Default(Status.init) Status? getSortedActivitiesStatus,
    String? getSortedActivitiesError,
    Paginator? sortedActivityPaginator,
    @Default(Status.init) Status? addTaskStatus,
    String? addTaskError,
  }) = _TaskDetailState;
}
