part of 'add_pocket_listing_cubit.dart';

@freezed
class AddPocketListingState with _$AddPocketListingState {
  const factory AddPocketListingState(
      {@Default(AppStatus.init) AppStatus addPocketListingStatus,
      String? addPocketListingError,
      @Default([]) List<PropertyType> propertyTypeList,
      @Default(AppStatus.init) AppStatus getPropertyTypeListStatus,
      @Default([]) List<Community> communityList,
      @Default(AppStatus.init) AppStatus getCommunityListStatus,
      @Default([]) List<Building> buildingList,
      @Default(AppStatus.init) AppStatus getBuildingListStatus,
      @Default([]) List<Lead> leadList,
      @Default(AppStatus.init) AppStatus getLeadListStatus,
      @Default(0) int currentTab,
      @Default({}) Map<String, dynamic> rawValues,
      @Default({}) Map<String, dynamic> values}) = _AddPocketListingState;
}
