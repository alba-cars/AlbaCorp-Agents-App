part of 'add_pocket_listing_cubit.dart';

@freezed
class AddPocketListingState with _$AddPocketListingState {
  const factory AddPocketListingState(
      {@Default(Status.init) Status addPocketListingStatus,
      String? addPocketListingError,
      @Default([]) List<PropertyType> propertyTypeList,
      @Default(Status.init) Status getPropertyTypeListStatus,
      @Default([]) List<Community> communityList,
      @Default(Status.init) Status getCommunityListStatus,
      @Default([]) List<Building> buildingList,
      @Default(Status.init) Status getBuildingListStatus,
      @Default([]) List<Lead> leadList,
      @Default(Status.init) Status getLeadListStatus,
      @Default(0) int currentTab,
      @Default({}) Map<String, dynamic> rawValues,
      @Default({}) Map<String, dynamic> values}) = _AddPocketListingState;
}
