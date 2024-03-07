part of 'task_detail_cubit.dart';

@freezed
class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState({
    required String taskId,
    @Default(Status.init) Status getTaskStatus,
    String? getTaskError,
    Activity? task,
  }) = _TaskDetailState;
}
