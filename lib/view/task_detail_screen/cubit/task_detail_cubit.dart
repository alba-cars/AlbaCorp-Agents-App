import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

part 'task_detail_state.dart';
part 'task_detail_cubit.freezed.dart';

@injectable
class TaskDetailCubit extends Cubit<TaskDetailState> {
  TaskDetailCubit(this._activityRepo, @factoryParam String taskId,
      @factoryParam Activity? activity)
      : super(TaskDetailState(taskId: taskId, task: activity));

  final ActivityRepo _activityRepo;

  Future<void> getTask() async {
    emit(state.copyWith(getTaskStatus: Status.loading));
    final result = await _activityRepo.fetchActivities();
    switch (result) {
      case (Success s):
        break;
      case (Error e):
        break;
    }
  }
}
