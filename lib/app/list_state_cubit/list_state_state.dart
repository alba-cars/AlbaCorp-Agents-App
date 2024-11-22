part of 'list_state_cubit.dart';

@freezed
class ListStateState with _$ListStateState {
  const factory ListStateState({
    String? tasksCategorizedView,
    String? taskSortedView,
    String? leadsView,
    String? listingsView,
    String? pocketListingsView,
    String? dealsView,
    String? listingAcquiredView,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(AppStatus.init) AppStatus getPropertyTypeListStatus,
    @Default([]) List<CommunityTeamModel> communityList,
    @Default(AppStatus.init) AppStatus getCommunityListStatus,
    @Default([]) List<CommunityName> placesList,
    @Default(AppStatus.init) AppStatus getPlacesListStatus,
    @Default([]) List<Building> buildingList,
    @Default(AppStatus.init) AppStatus getBuildingListStatus,
    Paginator? buildingsPaginator,
    @Default(AppStatus.init) AppStatus getLeadSourcestatus,
    @Default([]) List<LeadSource>? leadSources,
    Paginator? leadSourcePaginator,
    String? leadSourceError,
    String? leadSourceSearch,
  }) = _ListStateState;
}
