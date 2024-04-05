import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/category_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../model/activity_model.dart';
import '../../../widgets/snackbar.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._activityRepo, this._leadRepo) : super(HomeState()) {
    Future.wait(List.generate(7, (index) => getActivities(filterCode: index)));

    pendingViewingActivitiesCount();
    completedActivitiesCount();
  }

  final ActivityRepo _activityRepo;
  final LeadRepo _leadRepo;

  Future<void> getActivities(
      {required int filterCode, bool refresh = false}) async {
    if (state.getActivitiesStatus[filterCode] == Status.loading ||
        state.getActivitiesStatus[filterCode] == Status.loadingMore) {
      return;
    }
    if (refresh || state.activityPaginator[filterCode] == null) {
      final status = {...state.getActivitiesStatus, filterCode: Status.loading};
      final error = {...state.getActivitiesError, filterCode: null};
      final activities = {...state.activities, filterCode: <Activity>[]};
      final paginator = {...state.activityPaginator, filterCode: null};
      emit(state.copyWith(
          activityPaginator: paginator,
          getActivitiesStatus: status,
          activities: activities,
          getActivitiesError: error));
    } else {
      final status = {
        ...state.getActivitiesStatus,
        filterCode: Status.loadingMore
      };
      final error = {...state.getActivitiesError, filterCode: null};
      emit(state.copyWith(
          getActivitiesStatus: status, getActivitiesError: error));
    }

    final result = await _activityRepo.fetchActivities(
        filterCode: filterCode,
        status: switch (state.selectedCategory.name) {
          'Fresh Hot' => LeadStatus.Fresh,
          'Prospect' => LeadStatus.Disqualified,
          _ => null
        },
        paginator: state.activityPaginator[filterCode]);
    switch (result) {
      case (Success<List<Activity>> s):
        final status = {
          ...state.getActivitiesStatus,
          filterCode: Status.success
        };
        final error = {...state.getActivitiesError, filterCode: null};
        final activities = {
          ...state.activities,
          filterCode: [
            ...(state.activities[filterCode] ?? <Activity>[]),
            ...s.value
          ]
        };

        final paginator = {...state.activityPaginator, filterCode: s.paginator};
        emit(state.copyWith(
            activities: activities,
            getActivitiesError: error,
            getActivitiesStatus: status,
            activityPaginator: paginator));
        pendingActivitiesCount();
        break;
      case (Error e):
        final status = {
          ...state.getActivitiesStatus,
          filterCode: Status.failure
        };
        final error = {...state.getActivitiesError, filterCode: e.exception};
        emit(state.copyWith(
            getActivitiesError: error, getActivitiesStatus: status));
    }
  }

  Future<void> getSortedActivities({bool refresh = false}) async {
    if (state.getSortedActivitiesStatus == Status.loading ||
        state.getSortedActivitiesStatus == Status.loadingMore) {
      return;
    }
    if (refresh || state.sortedActivityPaginator == null) {
      emit(state.copyWith(
          sortedActivityPaginator: null,
          getSortedActivitiesStatus: Status.loading,
          sortedActivity: [],
          getSortedActivitiesError: null));
    } else {
      emit(state.copyWith(
          getSortedActivitiesStatus: Status.loadingMore,
          getSortedActivitiesError: null));
    }

    final result = await _activityRepo.fetchActivitiesSorted(
        paginator: state.sortedActivityPaginator);
    switch (result) {
      case (Success<List<Activity>> s):
        emit(state.copyWith(
            sortedActivity: s.value,
            getSortedActivitiesStatus: Status.success,
            sortedActivityPaginator: s.paginator));

        break;
      case (Error e):
        emit(state.copyWith(
            getSortedActivitiesError: e.exception,
            getSortedActivitiesStatus: Status.failure));
    }
  }

  selectCategory(ModelCategory category) {
    emit(state.copyWith(selectedCategory: category));
    getActivities(filterCode: 0);
  }

  selectListType(Set<ListType> type) {
    emit(state.copyWith(listType: type));
    if (type.first == ListType.Categorized) {
      Future.wait(List.generate(
          7, (index) => getActivities(filterCode: index, refresh: true)));
    } else {
      getSortedActivities(refresh: true);
    }
  }

  Future<void> pendingActivitiesCount() async {
    int count = 0;
    state.activityPaginator
        .forEach((key, value) => count = count + (value?.itemCount ?? 0));

    emit(state.copyWith(pendingTasksCount: count));
  }

  Future<void> completedActivitiesCount() async {
    final result = await _activityRepo.completedActivitiesCount();
    switch (result) {
      case (Success s):
        emit(state.copyWith(completedTasksCount: s.value));
        break;
      default:
    }
  }

  Future<void> pendingViewingActivitiesCount() async {
    final result = await _activityRepo.pendingViewingActivitiesCount();
    switch (result) {
      case (Success s):
        emit(state.copyWith(viewingTasksCount: s.value));
        break;
      default:
    }
  }

  Future<void> updateActivity(
      {required BuildContext context,
      required Activity task,
      String? description,
      int? taskSection,
      required int index}) async {
    final result = await _activityRepo.updateActivity(
        activityId: task.id, notes: description);
    switch (result) {
      case (Success s):
        emit(state.copyWith(updateTaskStatus: Status.success));
        if (taskSection != null) {
          if (state.listType.first == ListType.Categorized) {
            final tasks =
                List<Activity>.from(state.activities[taskSection] ?? [])
                  ..removeAt(index);
            final Map<int, List<Activity>> activities = {
              ...state.activities,
              taskSection: tasks
            };
            emit(state.copyWith(activities: activities));
          } else {
            final tasks = List<Activity>.from(state.sortedActivity)
              ..removeAt(index);

            emit(state.copyWith(sortedActivity: tasks));
          }
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
    required Activity task,
    String? description,
  }) async {
    if (task.lead?.id == null) {
      return;
    }
    final result = await _leadRepo.updateLead(leadId: task.lead!.id, value: {
      'lead_status': 'Disqualified',
      'activity': {'notes': description}
    });
    switch (result) {
      case (Success s):
        // await updateActivity(
        //     context: context, task: task, description: description);
        break;
      case (Error e):
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }
}

enum ListType { Categorized, Sorted }
