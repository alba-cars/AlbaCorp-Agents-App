import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../model/activity_model.dart';
import '../../../model/paginator.dart';
import '../../../util/result.dart';

part 'hot_leads_assigned_today_state.dart';
part 'hot_leads_assigned_today_cubit.freezed.dart';

@injectable
class HotLeadsAssignedTodayCubit extends Cubit<HotLeadsAssignedTodayState> {
  HotLeadsAssignedTodayCubit(this._activityRepo)
      : super(HotLeadsAssignedTodayState()){
        getLeadsExplorerList();
      }

  final ActivityRepo _activityRepo;

  Future<void> getLeadsExplorerList({
    bool refresh = false,
  }) async {
    if (refresh || state.paginator == null) {
      emit(state.copyWith(
          fetchStatus: AppStatus.loading, paginator: null, activities: []));
    } else {
      if (state.fetchStatus == AppStatus.loadingMore) {
        return;
      }
      emit(state.copyWith(fetchStatus: AppStatus.loadingMore));
    }
    final result = await _activityRepo.fetchHotLeadsAssignedTodayActivities(
        paginator: state.paginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            activities: [...state.activities, ...s.value],
            fetchStatus: AppStatus.success,
            paginator: s.paginator));
        break;
      case (Error e):
        emit(
            state.copyWith(fetchStatus: AppStatus.failure, error: e.exception));
    }
  }
}
