import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/new_leads_screen/widget/new_leads_page.dart';
import '../../../util/status.dart';
import '../../followups_screen/cubit/followups_cubit.dart'; // Updated import
part 'new_leads_state.dart';
part 'new_leads_cubit.freezed.dart';

@injectable
class NewLeadsCubit extends Cubit<NewLeadsState> {
  NewLeadsCubit({required this.activityRepo})
      : super(NewLeadsState(activityFilter: {
          'sortBy': {"label": "Latest", "value": 'latest'}
        }));

  final ActivityRepo activityRepo;

  fetchHoteads(NewLeadTaskFilterEnum filterType,
      {Paginator? paginator, bool fetchOnlyCount = false}) async {
    try {
      // If we are only fetching the count, and we already have a count, don't re-fetch.
      if (fetchOnlyCount && (state.tabCounts[filterType] ?? 0) > 0) {
        // Optionally, we could ensure the status isn't loading if we want to allow re-fetching counts if a previous attempt failed.
        // For now, if a count exists, we assume it's fresh enough.
        return;
      }

      // Prevent re-fetching if already loading, unless it's a count-only fetch for a tab that doesn't have a count yet.
      if (state.fetchStatus[filterType] == AppStatus.loading &&
          !(fetchOnlyCount && (state.tabCounts[filterType] ?? 0) == 0)) {
        return;
      }

      var fetchStatus = {...state.fetchStatus};
      fetchStatus[filterType] = AppStatus.loading;

      if (paginator == null && !fetchOnlyCount) {
        // Reset activities only if fetching full data for the first page
        emit(state.copyWith(
            activities: {...state.activities, filterType: []},
            fetchStatus: fetchStatus,
            paginator: {...state.paginator, filterType: null}));
      } else {
        emit(state.copyWith(
          fetchStatus: fetchStatus,
        ));
      }

      final Result<
          List<
              Activity>> result = await activityRepo.fetchActivitiesSorted(
          filter: {
            ...getPayload(filterType),
            if (state.activityFilter != null && !fetchOnlyCount)
              ...state
                  .activityFilter!, // Apply filters only when fetching full data
          },
          paginator:
              paginator); // For count fetching, paginator will be null (first page)

      switch (result) {
        case (Success<List<Activity>> success):
          _handleEnquiriesFetchSuccess(
              success.value, success.paginator, filterType, fetchOnlyCount);
          break;
        case (Error error):
          Logger().d("On failure scenario for $filterType");
          _handleEnquiriesFetchError(error.exception, filterType);
          break;
      }
    } catch (e) {
      Logger().e("Error fetching hot leads for $filterType: $e");
      _handleEnquiriesFetchError(
          "Something went wrong while fetching ${filterType.getName()}",
          filterType);
    }
  }

  Future<void> fetchAllTabCounts({NewLeadTaskFilterEnum? currentTab}) async {
    for (var filterEnum in NewLeadTaskFilterEnum.values) {
      if (filterEnum == currentTab) {
        // Full data for current tab is already being fetched or has been fetched.
        // The count will be updated as part of its normal fetch cycle.
        continue;
      }
      // Fetch only count for other tabs if not already available
      if ((state.tabCounts[filterEnum] ?? 0) == 0 &&
          state.fetchStatus[filterEnum] != AppStatus.loading) {
        fetchHoteads(filterEnum, fetchOnlyCount: true);
      }
    }
  }

  Map<String, dynamic> getPayload(NewLeadTaskFilterEnum filterType) {
    final sortby = state.activityFilter?['sortBy']?['value'];
    switch (filterType) {
      case NewLeadTaskFilterEnum.Enquiry:
        return {
          "leadSourceType": "hot",
          "leadStatus": "Fresh",
          "sortBy": sortby ?? 'latest'
        };
      // case NewLeadTaskFilterEnum.Partner:
      //   return {
      //     "leadSourceType": "hot",
      //     "partnersOnly": true,
      //     "sortBy": sortby ?? 'latest'
      //   };
      case NewLeadTaskFilterEnum.Cold: // Renamed from Cold
        return {
          "leadSourceType":
              'cold', // This might need to be 'followup' or similar
          "leadStatus": "Fresh", // This might need to be 'FollowUp' or similar
          "sortBy": sortby ?? 'latest'
        };
    }
  }

  void _handleEnquiriesFetchSuccess(
      List<Activity> activities,
      Paginator? responsePaginator,
      NewLeadTaskFilterEnum filterType,
      bool fetchOnlyCount) {
    var fetchStatus = {...state.fetchStatus};
    fetchStatus[filterType] = AppStatus.success;

    var currentPaginatorMap = {...state.paginator};
    var currentActivitiesMap = {...state.activities};
    var currentTabCountsMap = {...state.tabCounts};

    // Update count from the first page's paginator total
    if (responsePaginator != null) {
      // Check if paginator itself is not null
      currentTabCountsMap[filterType] =
          responsePaginator.itemCount; // Use itemCount
    }

    if (!fetchOnlyCount) {
      // If not only fetching count, update activities and paginator for the tab
      currentPaginatorMap[filterType] = responsePaginator;
      final existingActivities = state.activities[filterType] ?? [];
      if (responsePaginator?.currentPage == 1 ||
          responsePaginator?.currentPage == null) {
        // if it's the first page (or paginator is null from initial load), replace activities
        currentActivitiesMap[filterType] = activities;
      } else {
        // otherwise, append
        currentActivitiesMap[filterType] = [
          ...existingActivities,
          ...activities
        ];
      }
    } else {
      // If only fetching count, ensure activities for this tab are not accidentally cleared or modified
      // if they were loaded previously by a full fetch.
      // The activities are managed by full fetches, counts are separate.
      // No change to currentActivitiesMap[filterType] or currentPaginatorMap[filterType] here.
    }

    emit(state.copyWith(
      fetchStatus: fetchStatus,
      paginator: currentPaginatorMap,
      activities: currentActivitiesMap,
      tabCounts: currentTabCountsMap,
    ));

    // After successfully fetching the primary tab's data (not just count),
    // trigger fetching counts for other tabs.
    if (!fetchOnlyCount) {
      fetchAllTabCounts(currentTab: filterType);
    }
  }

  void _handleEnquiriesFetchError(
      String exception, NewLeadTaskFilterEnum filterType) {
    var fetchStatus = {...state.fetchStatus};
    fetchStatus[filterType] = AppStatus.failure;

    var currentErrorMessage = {...state.error};
    currentErrorMessage[filterType] = exception;
    Logger()
        .d("Going to emit the errror status with message $currentErrorMessage");
    emit(state.copyWith(fetchStatus: fetchStatus, error: currentErrorMessage));
  }

  void setActivityFilters(
      Map<String, dynamic>? filter, NewLeadTaskFilterEnum valu) {
    emit(state.copyWith(activityFilter: filter));

    fetchHoteads(
      valu,
      paginator: null,
    );
  }
}
