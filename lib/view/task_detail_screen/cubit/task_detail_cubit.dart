import 'dart:async';

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
import 'package:real_estate_app/view/cold_lead_screen/cubit/cold_lead_cubit.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/task_detail_screen.dart';
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
      getLeadActivities();
      getExplorerList();
    }
  }

  final ActivityRepo _activityRepo;
  final LeadRepo _leadRepo;
  final AgentRepo _agentRepo;
  final ExplorerRepo _explorerRepo;
  TaskType? taskType;
  TaskFilterEnum? taskFilter;

  void setTaskSortType(TaskType? taskType, TaskFilterEnum? taskFilter) {
    this.taskFilter = taskFilter;
    this.taskType = taskType;
    getSortedActivities();
  }

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

  void onRAtingChanged(double value) {
    emit(state.copyWith(ratingValue: value));
  }

  Future<void> updateAndCompleteActivity({
    required BuildContext context,
    required Activity task,
    String? notes,
    required bool addFollowUp,
    bool refresh = false,
    Map<String, dynamic>? values,
    FeedbackTypeEnum? feedbackType,
    Future<void> Function()? onSuccess,
  }) async {
    try {
      // Prepare follow up data if needed
      Map<String, dynamic>? followUpData;
      if (addFollowUp && values != null) {
        final date = (values["date"] as DateTime?)?.addTime(
            values["time"] as TimeOfDay? ?? TimeOfDay(hour: 10, minute: 0));

        if (date != null) {
          followUpData = {
            "date": date.toUtc().toIso8601String(),
            "type": values['type'],
            "description": values['description']
          };
        }
      }

      // Prepare the completion request
      final result = await _activityRepo.completeActivity(
        activityId: state.task!.id,
        type: feedbackType?.value ?? 'interested',
        feedback: notes,
        leadRating: state.ratingValue,
        followUp: followUpData,
      );

      switch (result) {
        case (Success s):
          if (onSuccess != null) {
            await onSuccess();
          }

          getIt<AuthBloc>().add(
              AuthEvent.completedImportantActivity(activityId: state.task!.id));

          emit(state.copyWith(updateTaskStatus: AppStatus.success));

          if (context.mounted) {
            Navigator.of(context).pop(true);
          }

          if (refresh) {
            final activity = state.task?.copyWith(notes: notes);
            final activities = state.activities
                .map((e) => e.id == state.taskId ? e.copyWith(notes: notes) : e)
                .toList();
            emit(state.copyWith(task: activity, sortedActivity: activities));
          }

          getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
          break;

        case (Error e):
          emit(state.copyWith(
              updateTaskError: e.exception,
              updateTaskStatus: AppStatus.failure));
          if (context.mounted) {
            showSnackbar(context, e.exception, SnackBarType.failure);
          }
          break;
      }
    } catch (e) {
      emit(state.copyWith(
          updateTaskError: e.toString(), updateTaskStatus: AppStatus.failure));
      if (context.mounted) {
        showSnackbar(context, e.toString(), SnackBarType.failure);
      }
    }
  }

  Future<void> disqualifyOrInvalidNumber({
    required BuildContext context,
    required Activity task,
    String? description,
   FeedbackTypeEnum feedbackType= FeedbackTypeEnum.disqualify,
  }) async {
    if (state.task?.lead?.id == null) return;

    await updateAndCompleteActivity(
      context: context,
      task: task,
      notes: description,
      addFollowUp: false,
      feedbackType: feedbackType,
    );
  }

  Future<void> makeLost({
    required BuildContext context,
    required Activity task,
    String? description,
  }) async {
    if (state.task?.lead?.id == null) return;

    await updateAndCompleteActivity(
      context: context,
      task: task,
      notes: description,
      addFollowUp: false,
      feedbackType: FeedbackTypeEnum.notInterested,
    );
  }

  Future<void> doNotCall({
    required BuildContext context,
    required Activity task,
    String? description,
  }) async {
    if (state.task?.lead?.id == null) return;

    await updateAndCompleteActivity(
      context: context,
      task: task,
      notes: description,
      addFollowUp: false,
      feedbackType: FeedbackTypeEnum.doNotDial,
    );
  }

  Future<void> makeProspect(
      {required BuildContext context,
      required Activity task,
      String? description,
      required bool addFollowUp,
      Map<String, dynamic>? values}) async {
    if (state.task?.lead?.id == null) return;
    

    await updateAndCompleteActivity(
      context: context,
      task: task,
      notes: description,
      addFollowUp: true,
      values: values,
      feedbackType: FeedbackTypeEnum.veryInterested,
    );
  }

  Future<void> completeAndAddFollowUp(
      {required BuildContext context,
      required Activity task,
      String? currentActivityNotes,
      required bool markAsProspect,
     required Map<String, dynamic> values}) async {
    final date = (values["date"] as DateTime?)?.addTime(
        values["time"] as TimeOfDay? ?? TimeOfDay(hour: 10, minute: 0));

    if (date == null || date.compareTo(DateTime.now()) == -1) {
      if (context.mounted) {
        showSnackbar(context, 'Choose a valid date time', SnackBarType.failure);
        return;
      }
    }

    if (markAsProspect) {
      await makeProspect(
        context: context,
        task: task,
        description: currentActivityNotes,
        addFollowUp: true,
        values: values,
      );
    } else {
      await updateAndCompleteActivity(
        context: context,
        task: task,
        addFollowUp: true,
        values: values,
        notes: currentActivityNotes,
        feedbackType: FeedbackTypeEnum.interested,
      );
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
          sortedActivity: state.task != null ? [state.task!] : [],
          getSortedActivitiesError: null));
    } else {
      emit(state.copyWith(
          getSortedActivitiesStatus: AppStatus.loadingMore,
          getSortedActivitiesError: null));
    }
    final payload = getPayload(taskFilter, taskType);
    Logger().d({payload, taskFilter, taskType});
    final result = await _activityRepo.fetchActivitiesSorted(
        filter: payload, limit: 35, paginator: state.sortedActivityPaginator);
    switch (result) {
      case (Success<List<Activity>> s):
        List<Activity> list = List<Activity>.from(s.value);
        if (getIt<AuthBloc>().state.veryImportantActivities?.isNotEmpty ==
            true) {
          final imp = await _checkForImportantActivity();

          if (imp != null && imp.isNotEmpty) {
            list.addAll(imp);
          }
        }
        if (list.any((d) => d.activityWeight > .8)) {
          list.sort((a, b) => b.activityWeight.compareTo(a.activityWeight));
        }

        final activities = [...state.sortedActivity, ...list];

        final uniqueIds = <String>{}; // A set to track unique IDs
        activities.retainWhere(
            (element) => uniqueIds.add(element.id)); // Keep only unique items

        emit(state.copyWith(
            task: activities.firstOrNull,
            sortedActivity: activities,
            getSortedActivitiesStatus: AppStatus.success,
            sortedActivityPaginator: s.paginator));

        break;
      case (Error e):
        emit(state.copyWith(
            getSortedActivitiesError: e.exception,
            getSortedActivitiesStatus: AppStatus.failure));
    }
  }

  Map<String, dynamic> getPayload(
      TaskFilterEnum? filterType, TaskType? taskType) {
    switch (filterType) {
      case TaskFilterEnum.New:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": "Fresh",
          "sortBy": 'latest'
        };
      case TaskFilterEnum.FollowUp:
        DateTime d = DateTime.now().toUtc();
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal", 'Prospect'],
          "status": ["Pending", "Overdue"],
          "toDate": '${d.year}-${d.month}-${d.day}',
        };
      case TaskFilterEnum.Favourites:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": "Prospect"
        };
      case TaskFilterEnum.Expiring:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "expiring": true
        };
      default:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
        };
    }
  }

  Future<void> updateActivity(
      {required BuildContext context, String? notes}) async {
    final result = await _activityRepo.updateActivity(
        activityId: state.task!.id, notes: notes, completed: false);
    switch (result) {
      case (Success s):
        emit(state.copyWith(updateTaskStatus: AppStatus.success));
        final activity = state.task?.copyWith(notes: notes);
        final activities = state.sortedActivity
            .map((e) => e.id == state.taskId ? e.copyWith(notes: notes) : e)
            .toList();
        emit(state.copyWith(task: activity, sortedActivity: activities));
      case (Error e):
        emit(state.copyWith(
            updateTaskError: e.exception, updateTaskStatus: AppStatus.failure));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
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
        Logger().i(s.value);
        emit(state.copyWith(
            propertyCardsList: s.value,
            getPropertyCardsListStatus: AppStatus.success,
            propertyCardPaginator: s.paginator));
        break;
      case (Error e):
        Logger().e(e);
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

  FutureOr<List<Activity>?> _checkForImportantActivity() async {
    final result = await _activityRepo.fetchActivitiesImportant();
    switch (result) {
      case (Success<List<Activity>> s):
        return s.value;
      case (Error _):
        return null;
    }
  }
}

enum FeedbackTypeEnum {
  interested,
  veryInterested,
  notInterested,
  noAnswer,
  disqualify,
  invalidNumber,
  doNotDial,
  createListing,
  createPocketListing,
  createDeal
}

extension FeedbackTypeExtension on FeedbackTypeEnum {
  String get value {
    return toString().split('.').last;
  }
}
