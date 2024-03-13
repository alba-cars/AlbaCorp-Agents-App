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
  }

  final ActivityRepo _activityRepo;

  Future<void> getActivities(
      {required int filterCode, bool refresh = false}) async {
    if (state.getActivitiesStatus == Status.loading ||
        state.getActivitiesStatus == Status.loadingMore) {
      return;
    }
    if (refresh || state.activityPaginator == null) {
      emit(state.copyWith(
          activityPaginator: null,
          getActivitiesStatus: Status.loading,
          activities: [],
          getActivitiesError: null));
    } else {
      emit(state.copyWith(
          getActivitiesStatus: Status.loadingMore, getActivitiesError: null));
    }

    final result = await _activityRepo.fetchActivities(
        filterCode: 0,
        status: switch (state.selectedCategory.name) {
          'Fresh Hot' => LeadStatus.Fresh,
          'Prospect' => LeadStatus.Disqualified,
          _ => null
        },
        paginator: state.activityPaginator);
    switch (result) {
      case (Success<List<Activity>> s):
        emit(state.copyWith(
            activities: [...state.activities, ...s.value],
            getActivitiesError: null,
            getActivitiesStatus: Status.success,
            activityPaginator: s.paginator));
        break;
      case (Error e):
        emit(state.copyWith(
            getActivitiesError: e.exception,
            getActivitiesStatus: Status.failure));
    }
  }

  selectCategory(ModelCategory category) {
    emit(state.copyWith(selectedCategory: category));
    getActivities(filterCode: 0);
  }
}
