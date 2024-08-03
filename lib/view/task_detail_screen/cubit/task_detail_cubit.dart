import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/agent_repo.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/util/date_formatter.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../model/lead_property_card_model.dart';
import '../../../model/paginator.dart';
import '../../../model/property_model.dart';
import '../../../service_locator/injectable.dart';

part 'task_detail_state.dart';
part 'task_detail_cubit.freezed.dart';

@injectable
class TaskDetailCubit extends Cubit<TaskDetailState> {
  TaskDetailCubit(
      this._activityRepo,
      @factoryParam String taskId,
      @factoryParam Activity? activity,
      this._leadRepo,
      this._agentRepo,
      this._explorerRepo)
      : super(TaskDetailState(
          taskId: activity?.id ?? taskId,
          task: activity,
        )) {
    if (activity == null) {
      getTask().then((v) {
        getSortedActivities();
        getLeadActivities();
        getExplorerList();
      });
    } else {
      getSortedActivities();
      getLeadActivities();
      getExplorerList();
    }
  }

  final ActivityRepo _activityRepo;
  final LeadRepo _leadRepo;
  final AgentRepo _agentRepo;
  final ExplorerRepo _explorerRepo;

  Future<void> getTask() async {
    emit(state.copyWith(getTaskStatus: AppStatus.loading));
    final result = await _activityRepo.getActivity(activityId: state.taskId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
          task: s.value,
          getTaskStatus: AppStatus.success,
        ));
        break;
      case (Error e):
        emit(state.copyWith(getTaskStatus: AppStatus.failure));
        break;
    }
  }

  Future<void> updateActivity(
      {required BuildContext context,
      String? description,
      required bool addFollowUp,
      bool refresh = false,
      bool completed = true,
      Map<String, dynamic>? values,
      Future<void> Function()? onSuccess}) async {
    final result = await _activityRepo.updateActivity(
        activityId: state.task!.id, notes: description, completed: completed);
    switch (result) {
      case (Success s):
        if (onSuccess != null) {
          await onSuccess();
        }
        getIt<AuthBloc>().add(
            AuthEvent.completedImportantActivity(activityId: state.task!.id));
        emit(state.copyWith(updateTaskStatus: AppStatus.success));
        if (addFollowUp) {
          final type = values?['type'];
          final propertyId = values?['property'];
          final description = values?["description"];
          final date = (values?["date"] as DateTime?)?.addTime(
              (values?["time"] as TimeOfDay? ?? TimeOfDay(hour: 0, minute: 0)));
          final res = await addActivity(
              context: context,
              leadId: state.task!.lead!.id,
              type: type,
              date: date,
              description: description,
              propertyId: propertyId);
          if (!res) {
            return;
          }
        }
        if (context.mounted) {
          Navigator.of(context).pop(true);
        }
        if (refresh) {
          final activity = state.task?.copyWith(notes: description);
          final activities = state.activities
              .map((e) =>
                  e.id == state.taskId ? e.copyWith(notes: description) : e)
              .toList();
          emit(state.copyWith(task: activity, sortedActivity: activities));
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
      case (Error e):
        emit(state.copyWith(
            updateTaskError: e.exception, updateTaskStatus: AppStatus.failure));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> completeAndAddFollowUp(
      {required BuildContext context,
      String? description,
      required bool markAsProspect,
      Map<String, dynamic>? values}) async {
    final date = (values?["date"] as DateTime?)?.addTime(
        (values?["time"] as TimeOfDay? ?? TimeOfDay(hour: 0, minute: 0)));
    if (date == null || date.compareTo(DateTime.now()) == -1) {
      if (context.mounted) {
        showSnackbar(context, 'Choose a valid date time', SnackBarType.failure);
        return;
      }
    }
    if (markAsProspect) {
      await makeProspect(
          context: context,
          description: description,
          addFollowUp: true,
          values: values);
    } else {
      await updateActivity(
          context: context,
          addFollowUp: true,
          values: values,
          description: description);
    }
  }

  Future<void> disqualify({
    required BuildContext context,
    String? description,
  }) async {
    if (state.task?.lead?.id == null) {
      return;
    }
    await updateActivity(
        context: context,
        description: description,
        addFollowUp: false,
        onSuccess: () async {
          final result =
              await _leadRepo.updateLead(leadId: state.task!.lead!.id, value: {
            'lead_status': 'Disqualified',
            'activity': {'notes': description}
          });
          switch (result) {
            case (Success s):
              {
                break;
              }
            case (Error e):
              {
                if (context.mounted) {
                  showSnackbar(context, e.exception, SnackBarType.failure);
                }
              }
          }
        });
  }

  Future<void> makeLost({
    required BuildContext context,
    String? description,
  }) async {
    if (state.task?.lead?.id == null) {
      return;
    }
    await updateActivity(
        context: context,
        description: description,
        addFollowUp: false,
        onSuccess: () async {
          final result =
              await _leadRepo.updateLead(leadId: state.task!.lead!.id, value: {
            'lead_status': 'Lost',
            'activity': {'notes': description}
          });
          switch (result) {
            case (Success s):
              break;
            case (Error e):
              if (context.mounted) {
                showSnackbar(context, e.exception, SnackBarType.failure);
              }
          }
        });
  }

  Future<void> doNotCall({
    required BuildContext context,
    String? description,
  }) async {
    if (state.task?.lead?.id == null) {
      return;
    }
    await updateActivity(
        context: context,
        description: description,
        addFollowUp: false,
        onSuccess: () async {
          final result =
              await _leadRepo.updateLead(leadId: state.task!.lead!.id, value: {
            'lead_status': 'Lost',
            'activity': {'notes': description},
            "DndStatus": true
          });
          switch (result) {
            case (Success s):
              break;
            case (Error e):
              if (context.mounted) {
                showSnackbar(context, e.exception, SnackBarType.failure);
              }
          }
        });
  }

  Future<void> makeProspect(
      {required BuildContext context,
      String? description,
      required bool addFollowUp,
      Map<String, dynamic>? values}) async {
    if (state.task?.lead?.id == null) {
      return;
    }
    final result = await _leadRepo.updateLead(
        leadId: state.task!.lead!.id, value: {"lead_status": "Prospect"});
    switch (result) {
      case (Success s):
        await updateActivity(
            context: context,
            description: description,
            addFollowUp: true,
            values: values);
      case (Error e):
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> getSortedActivities({bool refresh = false}) async {
    if (state.getSortedActivitiesStatus == AppStatus.loading ||
        state.getSortedActivitiesStatus == AppStatus.loadingMore) {
      return;
    }
    if (refresh || state.sortedActivityPaginator == null) {
      emit(state.copyWith(
          sortedActivityPaginator: null,
          getSortedActivitiesStatus: AppStatus.loading,
          sortedActivity: [state.task!],
          getSortedActivitiesError: null));
    } else {
      emit(state.copyWith(
          getSortedActivitiesStatus: AppStatus.loadingMore,
          getSortedActivitiesError: null));
    }

    final result = await _activityRepo.fetchActivitiesSorted(
        limit: 35, paginator: state.sortedActivityPaginator);
    switch (result) {
      case (Success<List<Activity>> s):
        final list = List<Activity>.from(s.value)
          ..sort((a, b) => b.activityWeight.compareTo(a.activityWeight));
        list.removeWhere((element) => element.id == state.taskId);
        emit(state.copyWith(
            sortedActivity: [...state.sortedActivity, ...list],
            getSortedActivitiesStatus: AppStatus.success,
            sortedActivityPaginator: s.paginator));

        break;
      case (Error e):
        emit(state.copyWith(
            getSortedActivitiesError: e.exception,
            getSortedActivitiesStatus: AppStatus.failure));
    }
  }

  Future<bool> addActivity({
    required BuildContext context,
    required String leadId,
    required String type,
    DateTime? date,
    String? propertyId,
    String? description,
  }) async {
    final result = await _activityRepo.createActivity(
        leadId: leadId,
        type: type,
        date: date,
        description: description,
        propertyId: propertyId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addTaskStatus: AppStatus.success));
        return true;
      case (Error e):
        emit(state.copyWith(
            addTaskError: e.exception, addTaskStatus: AppStatus.failure));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
        return false;
    }
  }

  Future<List<Property>> getListings({String? search}) async {
    final result = await _agentRepo.getAgentProperties(
      agentId: getIt<AuthBloc>().state.agent?.id ?? '',
    );
    switch (result) {
      case (Success s):
        return s.value;
      case (Error e):
        return [];
    }
  }

  Future<void> getLeadActivities() async {
    if (state.task == null) {
      return;
    }
    emit(state.copyWith(getActivitiesStatus: AppStatus.loading));
    final result =
        await _leadRepo.getLeadActivities(leadId: state.task!.lead!.id);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            getActivitiesStatus: AppStatus.success, activities: s.value));

        break;
      case (Error e):
        emit(state.copyWith(
            getActivitiesStatus: AppStatus.failure,
            getActivitiesError: e.exception));

        break;
    }
  }

  Future<void> getExplorerList({
    bool refresh = false,
  }) async {
    if (state.task == null) {
      return;
    }
    if (refresh || state.propertyCardPaginator == null) {
      emit(state.copyWith(
          getPropertyCardsListStatus: AppStatus.loading,
          propertyCardsList: []));
    } else {
      if (state.getPropertyCardsListStatus == AppStatus.loadingMore) {
        return;
      }
      emit(state.copyWith(getPropertyCardsListStatus: AppStatus.loadingMore));
    }

    final result =
        await _explorerRepo.getLeadPropertyCards(leadId: state.task!.lead!.id);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardsList: s.value,
            getPropertyCardsListStatus: AppStatus.success,
            propertyCardPaginator: s.paginator));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardsListStatus: AppStatus.failure,
            getPropertyCardsListError: e.exception));
    }
  }

  void setCurrentTask(int taskIndex) {
    print(taskIndex);
    if (taskIndex > (state.sortedActivity.length - 1)) return;
    emit(state.copyWith(
        task: state.sortedActivity[taskIndex],
        taskId: state.sortedActivity[taskIndex].id));
    getLeadActivities();
    getExplorerList();
  }
}
