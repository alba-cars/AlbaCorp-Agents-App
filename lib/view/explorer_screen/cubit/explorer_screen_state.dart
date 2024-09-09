part of 'explorer_screen_cubit.dart';

@freezed
class ExplorerScreenState with _$ExplorerScreenState {
  const factory ExplorerScreenState({
    @Default(AppStatus.init) AppStatus getExplorerListStatus,
    @Default([]) List<PropertyCard> explorerList,
    String? getExplorerListError,
    Paginator? explorerPaginator,
    @Default(AppStatus.init) AppStatus getCheckedOutExplorerListStatus,
    @Default([]) List<PropertyCard> checkedOutExplorerList,
    String? getCheckedOutExplorerListError,
    Paginator? checkedOutPaginator,
    @Default(AppStatus.init) AppStatus checkInLeadStatus,
    String? checkInLeadError,
    @Default(AppStatus.init) AppStatus checkOutLeadStatus,
    String? checkOutLeadError,
    @Default(AppStatus.init) AppStatus randomLeadsAssignmentStatus,
    String? randomLeadsAssignmentError,
    @Default(0) currentTab,
    String? explorerSearch,
    String? checkedOutSearch,
    Map<String, dynamic>? explorerFilter,
    Map<String, dynamic>? checkedOutFilter,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(AppStatus.init) AppStatus getPropertyTypeListStatus,
    @Default([]) List<CommunityTeamModel> communityList,
    @Default(AppStatus.init) AppStatus getCommunityListStatus,
    @Default([]) List<Building> buildingList,
    @Default(AppStatus.init) AppStatus getBuildingListStatus,
    @Default(false) bool selectModeEnabled,
    @Default([]) List<String> selectedPropertyCards,
    @Default(true) bool showOnlyAvailable,
  }) = _ExplorerScreenState;
}
