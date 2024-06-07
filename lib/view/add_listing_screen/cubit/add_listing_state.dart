part of 'add_listing_cubit.dart';

@freezed
class AddListingState with _$AddListingState {
  const factory AddListingState({
    @Default(AppStatus.init) AppStatus addListingStatus,
    String? addListingError,
    NewListingRequest? dealListingResponse,
    DealResponse? dealResponse,
    @Default(AppStatus.init) AppStatus addListingDocumentsStatus,
    String? addListingDocumentsError,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(AppStatus.init) AppStatus getPropertyTypeListStatus,
    @Default([]) List<Community> communityList,
    @Default(AppStatus.init) AppStatus getCommunityListStatus,
    @Default([]) List<Building> buildingList,
    @Default(AppStatus.init) AppStatus getBuildingListStatus,
    @Default([]) List<Amenity> amenityList,
    @Default(AppStatus.init) AppStatus getAmenityListStatus,
    @Default([]) List<Lead> leadList,
    @Default(AppStatus.init) AppStatus getLeadListStatus,
    @Default(0) int currentTab,
    Map<String, dynamic>? initialValues,
  }) = _AddListingState;
}
