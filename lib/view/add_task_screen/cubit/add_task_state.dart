part of 'add_task_cubit.dart';

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState({
    @Default(AppStatus.init) AppStatus addLeadStatus,
    String? addLeadError,
  }) = _AddTaskState;
}
