part of 'add_listing_cubit.dart';

@freezed
class AddListingState with _$AddListingState {
  const factory AddListingState({
    @Default(Status.init) Status addListingStatus,
    String? addListingError,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(Status.init) Status getPropertyTypeListStatus,
    @Default([]) List<Community> communityList,
    @Default(Status.init) Status getCommunityListStatus,
    @Default([]) List<Building> buildingList,
    @Default(Status.init) Status getBuildingListStatus,
    @Default([]) List<Lead> leadList,
    @Default(Status.init) Status getLeadListStatus,
    @Default(0) int currentTab,
  }) = _AddListingState;
}
