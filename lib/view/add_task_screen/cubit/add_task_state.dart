part of 'add_task_cubit.dart';

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState({
    @Default(Status.init) Status addLeadStatus,
    String? addLeadError,
  }) = _AddTaskState;
}
