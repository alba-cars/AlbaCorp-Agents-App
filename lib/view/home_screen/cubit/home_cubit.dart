import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/category_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../model/activity_model.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._activityRepo) : super(HomeState()) {
    Future.wait(List.generate(7, (index) => getActivities(filterCode: index)));

    pendingViewingActivitiesCount();
    completedActivitiesCount();
  }

  final ActivityRepo _activityRepo;

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

  selectCategory(ModelCategory category) {
    emit(state.copyWith(selectedCategory: category));
    getActivities(filterCode: 0);
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
}
