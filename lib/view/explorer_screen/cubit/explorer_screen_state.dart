part of 'explorer_screen_cubit.dart';

@freezed
class ExplorerScreenState with _$ExplorerScreenState {
  const factory ExplorerScreenState({
    @Default(Status.init) Status getExplorerListStatus,
    @Default([]) List<PropertyCard> explorerList,
    String? getExplorerListError,
    Paginator? explorerPaginator,
    @Default(Status.init) Status getCheckedOutExplorerListStatus,
    @Default([]) List<PropertyCard> checkedOutExplorerList,
    String? getCheckedOutExplorerListError,
    Paginator? checkedOutPaginator,
    @Default(Status.init) Status checkInLeadStatus,
    String? checkInLeadError,
    @Default(Status.init) Status checkOutLeadStatus,
    String? checkOutLeadError,
    @Default(Status.init) Status randomLeadsAssignmentStatus,
    String? randomLeadsAssignmentError,
    @Default(0) currentTab,
    String? explorerSearch,
    String? checkedOutSearch,
    Map<String, dynamic>? explorerFilter,
    Map<String, dynamic>? checkedOutFilter,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(Status.init) Status getPropertyTypeListStatus,
    @Default([]) List<Community> communityList,
    @Default(Status.init) Status getCommunityListStatus,
    @Default([]) List<Building> buildingList,
    @Default(Status.init) Status getBuildingListStatus,
    @Default(false) bool selectModeEnabled,
    @Default([]) List<String> selectedPropertyCards,
  }) = _ExplorerScreenState;
}
