part of 'edit_pocket_listing_cubit.dart';

@freezed
abstract class EditPocketListingState with _$EditPocketListingState {
  const factory EditPocketListingState({
    @Default(AppStatus.init) AppStatus updatePocketListingStatus,
    String? updatePocketListingError,
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
    @Default({}) Map<String, dynamic> values,
    PropertyCardDetailsModel? propertyCard,
  }) = _EditPocketListingState;
}
