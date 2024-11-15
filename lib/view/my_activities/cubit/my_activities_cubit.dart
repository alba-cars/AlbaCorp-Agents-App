import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/user_list_data.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

part 'my_activities_state.dart';
part 'my_activities_cubit.freezed.dart';

@injectable
class MyActivitiesCubit extends Cubit<MyActivitiesState> {
  final ActivityRepo activityRepo;
  MyActivitiesCubit(this.activityRepo)
      : super(MyActivitiesState(
            startDate: DateTime.now(), endDate: DateTime.now())) {
    getAgentActivities();
  }

  Map<String, dynamic> searchParams = {
    "selectedUser": null,
    "selectedActivityStatus": null,
    "selectedDateTime": null
  };

  getAgentActivities(
      {String? status,
      List<DateTime>? dates,
      String? userId,
      bool loadMore = false}) async {
    try {
      if (state.status == AppStatus.loading) {
        return;
      }else if(loadMore && !(state.paginator?.hasNextPage ?? false)){
        return;
      }

      if (loadMore && (state.paginator?.hasNextPage ?? false)) {
        emit(state.copyWith(
            status: AppStatus.loading,));
      } else {
        emit(state.copyWith(status: AppStatus.loading, paginator: null,activities: []));
      }

      final datesL = dates ?? <DateTime>[];
      if ((dates?.isEmpty ?? true) && state.startDate != null) {
        datesL.add(state.startDate!);
      }
      if ((dates?.isEmpty ?? true) && state.endDate != null) {
        datesL.add(state.endDate!);
      }

      Logger().d(state.paginator);


      final Result<List<Activity>> result =
          await activityRepo.getActivitiesByAgent(
              type: state.activityType,
              status: status ?? state.activityStatus,
              dates: datesL.isNotEmpty ? datesL : null,
              userId: userId,
              paginator: state.paginator);

      switch (result) {
        case (Success<List<Activity>> success):
          Logger().d("On success scenario ${success.paginator}");
          emit(state.copyWith(
              activities:[...state.activities,...success.value],
              paginator: success.paginator,
              status: AppStatus.success));
          break;
        case (Error error):
          Logger().d("On failure scenario ${error.exception}");
          emit(state.copyWith(status: AppStatus.failure));

          break;
      }
    } catch (e) {
      Logger().e(e);
    }
  }

  updateSearchParams(
      {String? selectedType,
      String? selectedStatus,
      DateTime? startDate,
      DateTime? endDate}) {
    emit(state.copyWith(
        activityType: selectedType,
        startDate: startDate,
        endDate: endDate,
        activityStatus: selectedStatus));
    getAgentActivities();
  }
}
