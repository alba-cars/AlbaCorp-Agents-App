import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

part 'task_detail_state.dart';
part 'task_detail_cubit.freezed.dart';

@injectable
class TaskDetailCubit extends Cubit<TaskDetailState> {
  TaskDetailCubit(this._activityRepo, @factoryParam String taskId,
      @factoryParam Activity? activity, this._leadRepo)
      : super(TaskDetailState(taskId: taskId, task: activity));

  final ActivityRepo _activityRepo;
  final LeadRepo _leadRepo;

  Future<void> getTask() async {
    emit(state.copyWith(getTaskStatus: Status.loading));
    // final result = await _activityRepo();
    // switch (result) {
    //   case (Success s):
    //     break;
    //   case (Error e):
    //     break;
    // }
  }

  Future<void> updateActivity({
    required BuildContext context,
    String? description,
  }) async {
    final result = await _activityRepo.updateActivity(
        activityId: state.task!.id, notes: description);
    switch (result) {
      case (Success s):
        emit(state.copyWith(updateTaskStatus: Status.success));
        if (context.mounted) {
          context.pop(true);
        }
      case (Error e):
        emit(state.copyWith(
            updateTaskError: e.exception, updateTaskStatus: Status.failure));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> disqualify({
    required BuildContext context,
    String? description,
  }) async {
    if (state.task?.lead?.id == null) {
      return;
    }
    final result =
        await _leadRepo.updateLead(leadId: state.task!.lead!.id, value: {
      'lead_status': 'Disqualified',
      'activity': {'notes': description}
    });
    switch (result) {
      case (Success s):
        await updateActivity(context: context, description: description);
      case (Error e):
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }
}
