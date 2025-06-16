import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../model/activity_model.dart';

part 'followups_state.dart';
part 'followups_cubit.freezed.dart';

@injectable
class FollowupsCubit extends Cubit<FollowupsState> {
  FollowupsCubit({required this.activityRepo}) : super(FollowupsState());
  final ActivityRepo activityRepo;

  fetchFollowups(TaskFilterEnum filterType,
      {Paginator? paginator, bool fetchOnlyCount = false}) async {
    try {
      // If we are only fetching the count, and it's already there, or if full data is loading for this tab, return.
      if (fetchOnlyCount && (state.tabCounts[filterType] ?? 0) > 0) {
        return;
      }
      // Prevent re-fetching full data if already loading
      if (!fetchOnlyCount &&
          state.fetchStatus[filterType] == AppStatus.loading) {
        return;
      }

      var fetchStatus = {...state.fetchStatus};
      // Only set to loading for full fetches, not for background count fetches unless it's initial.
      if (!fetchOnlyCount) {
        fetchStatus[filterType] = AppStatus.loading;
      }

      if (paginator == null && !fetchOnlyCount) {
        // Resetting activities for the tab when fetching its full data from page 1
        emit(state.copyWith(
          activities: {...state.activities, filterType: []},
          fetchStatus: fetchStatus, // Apply loading status here
          paginator: {...state.paginator, filterType: null},
          // Do not reset tabCounts here, it's fetched once
        ));
      } else if (!fetchOnlyCount) {
        // For subsequent pages of a full fetch
        emit(state.copyWith(
          fetchStatus: fetchStatus,
        ));
      }
      // For fetchOnlyCount, we don't change the main list's loading status or activities immediately

      final Result<
          List<
              Activity>> result = await activityRepo.fetchActivitiesSorted(
          filter: getPayload(filterType),
          paginator: paginator ??
              (fetchOnlyCount
                  ? Paginator(currentPage: 1, perPage: 1, itemCount: 0)
                  : null)); // Corrected: page to currentPage, added itemCount

      switch (result) {
        case (Success<List<Activity>> success):
          // String value = jsonEncode(success.value); // Keep for debugging if needed
          // print(value); // Keep for debugging if needed
          _handleEnquiriesFetchSuccess(
              success.value, success.paginator, filterType, fetchOnlyCount);
          // If this was the initial full load for the active tab, trigger count fetching for other tabs.
          if (!fetchOnlyCount && paginator == null) {
            _fetchAllTabCounts(filterType);
          }
          break;
        case (Error error):
          Logger().d(
              "On failure scenario for $filterType, fetchOnlyCount: $fetchOnlyCount");
          _handleEnquiriesFetchError(error.exception, filterType);
          break;
      }
    } catch (e) {
      Logger().e("Error fetching followups for $filterType: $e");
      _handleEnquiriesFetchError("Something went wrong", filterType);
    }
  }

  Future<void> _fetchAllTabCounts(TaskFilterEnum currentActiveTab) async {
    for (var tabType in TaskFilterEnum.values) {
      if (tabType != currentActiveTab) {
        // Fetch only count if not already fetched or if it's zero
        if ((state.tabCounts[tabType] ?? 0) == 0) {
          // No need to await, let them run in background
          fetchFollowups(tabType, fetchOnlyCount: true);
        }
      }
    }
  }

  Map<String, dynamic> getPayload(TaskFilterEnum filterType) {
    final sortby = state.activityFilter?['sortBy']?['value'];
    final leadSourceType = state.leadSourceType;
    DateTime now = DateTime.now();
    String today =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
    DateTime tomorrowDt = now.add(Duration(days: 1));
    String tomorrow =
        "${tomorrowDt.year}-${tomorrowDt.month.toString().padLeft(2, '0')}-${tomorrowDt.day.toString().padLeft(2, '0')}";
    DateTime yesterdayDt = now.subtract(Duration(days: 1));
    String yesterday =
        "${yesterdayDt.year}-${yesterdayDt.month.toString().padLeft(2, '0')}-${yesterdayDt.day.toString().padLeft(2, '0')}";

    Map<String, dynamic> payload;
    switch (filterType) {
      case TaskFilterEnum.FollowUpToday:
        payload = {
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal"],
          "status": [
            "Pending",
            "Overdue"
          ], // Or whatever status means "due today"
          "fromDate": today,
          "toDate": today,
          "sortBy": sortby ?? 'rating', // Example sort
        };
        break;
      case TaskFilterEnum.FollowUpTomorrow:
        payload = {
          "status": ["Pending"],
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal"],
          "fromDate": tomorrow,
          "toDate": tomorrow,
          "sortBy": sortby ?? 'rating',
        };
        break;
      case TaskFilterEnum.FollowUpOverDue:
        payload = {
          "status": ["Overdue"],
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal"],
          "toDate": yesterday,
          "sortBy": sortby ?? 'oldest',
        };
        break;
      case TaskFilterEnum.FollowUpAll:
        payload = {
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal"],
          "sortBy": sortby ?? 'rating',
        };
        break;
      default:
        payload = {}; // Should not happen if all cases are covered
    }

    if (leadSourceType != null && leadSourceType.isNotEmpty) {
      payload['leadSourceType'] = leadSourceType;
    }
    return payload;
  }

  void _handleEnquiriesFetchSuccess(List<Activity> activities,
      Paginator? paginator, TaskFilterEnum filterType, bool fetchOnlyCount) {
    var fetchStatusMap = {...state.fetchStatus};
    var tabCountsMap = {...state.tabCounts};
    var currentActivitiesMap = {...state.activities};
    var currentPaginatorMap = {...state.paginator};

    if (paginator != null) {
      // Update count regardless of fetchOnlyCount, as this is the source of truth
      tabCountsMap[filterType] =
          paginator.itemCount; // Corrected from paginator.total
    }

    if (fetchOnlyCount) {
      // Only update tab counts and ensure the status isn't stuck on loading if it was a count-only fetch.
      // If it was previously loading (e.g. initial app load), mark success.
      // If it was already success/failure from a full load, don't change it.
      if (fetchStatusMap[filterType] != AppStatus.success) {
        // fetchStatusMap[filterType] = AppStatus.success; // Or keep initial if preferred
      }
      emit(state.copyWith(
        tabCounts: tabCountsMap,
        // fetchStatus: fetchStatusMap, // Decide if status should change for count-only fetches
      ));
    } else {
      // Full data fetch
      fetchStatusMap[filterType] = AppStatus.success;
      currentPaginatorMap[filterType] = paginator;
      // If it's the first page (paginator came in as null for fetchFollowups, or paginator.currentPage is 1)
      // then replace activities, otherwise append.
      // A null paginator for the filterType in the state, or currentPage being 0 or 1, indicates the first page.
      final bool isFirstPage =
          state.paginator[filterType]?.currentPage == null ||
              state.paginator[filterType]?.currentPage == 0 ||
              state.paginator[filterType]?.currentPage == 1;

      currentActivitiesMap = {
        ...state.activities,
        filterType: isFirstPage
            ? activities
            : [...(state.activities[filterType] ?? []), ...activities]
      };
      emit(state.copyWith(
          fetchStatus: fetchStatusMap,
          paginator: currentPaginatorMap,
          activities: currentActivitiesMap,
          tabCounts:
              tabCountsMap // Ensure counts are also updated on full fetch
          ));
    }
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

  void setActivityFilters(Map<String, dynamic>? filter, TaskFilterEnum valu) {
    emit(state.copyWith(activityFilter: filter));

    fetchFollowups(
      valu,
      paginator: null,
    );
  }

  void setLeadSourceTypeFilter(String? leadSourceType) {
    emit(state.copyWith(leadSourceType: leadSourceType));
    // Refetch data for all tabs as this filter applies globally to the screen
    for (var filterType in TaskFilterEnum.values) {
      fetchFollowups(filterType, paginator: null);
    }
  }
}
