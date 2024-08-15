import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../model/activity_model.dart';

part 'cold_lead_state.dart';
part 'cold_lead_cubit.freezed.dart';

@injectable
class ColdLeadCubit extends Cubit<ColdLeadState> {
  ColdLeadCubit({required this.activityRepo}) : super(ColdLeadState());
  final ActivityRepo activityRepo;

  fetchColdLeads(TaskFilterEnum filterType, {Paginator? paginator}) async {
    try {
      if (state.fetchStatus[filterType] == AppStatus.loading) {
        return;
      }
      var fetchStatus = {...state.fetchStatus};
      fetchStatus[filterType] = AppStatus.loading;
      if (paginator == null) {
        emit(state.copyWith(
            activities: {...state.activities, filterType: []},
            fetchStatus: fetchStatus,
            paginator: {...state.paginator, filterType: null}));
      } else {
        emit(state.copyWith(
          fetchStatus: fetchStatus,
        ));
      }

      final Result<List<Activity>> result =
          await activityRepo.fetchActivitiesSorted(
              filter: getPayload(filterType), paginator: paginator);

      switch (result) {
        case (Success<List<Activity>> success):
          Logger().d("On success scenario ${success.paginator}");
          _handleEnquiriesFetchSuccess(
              success.value, success.paginator, filterType);
          break;
        case (Error error):
          Logger().d("On failure scenario");
          _handleEnquiriesFetchError(error.exception, filterType);
          break;
      }
    } catch (e) {
      Logger().e(e);
      _handleEnquiriesFetchError("Something went wrong", filterType);
    }
  }

  Map<String, dynamic> getPayload(TaskFilterEnum filterType) {
    switch (filterType) {
      case TaskFilterEnum.New:
        return {
          "leadSourceType": "cold",
          "leadStatus": "Fresh",
          "sortBy": 'latest'
        };
      case TaskFilterEnum.FollowUp:
        DateTime d = DateTime.now();
        return {
          "leadSourceType": 'cold',
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal"],
          "status": [
            "Pending",
          ],
          "toDate": '${d.year}-${d.month}-${d.day}',
        };
      case TaskFilterEnum.Favourites:
        return {"leadSourceType": "cold", "leadStatus": "Prospect"};
      case TaskFilterEnum.Expiring:
        return {"leadSourceType": "cold", "expiring": true};
    }
  }

  void _handleEnquiriesFetchSuccess(List<Activity> activities,
      Paginator? paginator, TaskFilterEnum filterType) {
    var fetchStatus = {...state.fetchStatus};
    fetchStatus[filterType] = AppStatus.success;

    var currentPaginator = {...state.paginator};
    currentPaginator[filterType] = paginator;

    Logger().d("Going to emit the success fetch status");

    emit(state.copyWith(
        fetchStatus: fetchStatus,
        paginator: currentPaginator,
        activities: {
          ...state.activities,
          filterType: [...(state.activities[filterType] ?? []), ...activities]
        }));
  }

  void _handleEnquiriesFetchError(String exception, TaskFilterEnum filterType) {
    var fetchStatus = {...state.fetchStatus};
    fetchStatus[filterType] = AppStatus.failure;

    var currentErrorMessage = {...state.error};
    currentErrorMessage[filterType] = exception;
    Logger()
        .d("Going to emit the errror status with message $currentErrorMessage");
    emit(state.copyWith(fetchStatus: fetchStatus, error: currentErrorMessage));
  }
}
