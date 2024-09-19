part of 'leads_list_explorer_cubit.dart';

@freezed
class LeadsListExplorerState with _$LeadsListExplorerState {
  const factory LeadsListExplorerState({
    @Default(AppStatus.init) AppStatus getExplorerListStatus,
    @Default([]) List<LeadExplorerItem> explorerList,
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
    Paginator? buildingsPaginator,
    @Default(false) bool selectModeEnabled,
    @Default([]) List<LeadExplorerItem> selectedPropertyCards,
    @Default(true) bool showOnlyAvailable,
  }) = _LeadsListExplorerState;
}
