part of 'listings_cubit.dart';

@freezed
class ListingsState with _$ListingsState {
  const factory ListingsState({
    @Default([]) List<Property> listings,
    @Default(AppStatus.init) AppStatus getListingsStatus,
    String? getListingsError,
    Paginator? listingsPaginator,
    @Default([]) List<Property> myListings,
    @Default(AppStatus.init) AppStatus getMyListingsStatus,
    String? getMyListingsError,
    Paginator? myListingsPaginator,
    @Default([]) List<PropertyCard> pocketListings,
    @Default(AppStatus.init) AppStatus getPocketListingsStatus,
    String? getPocketListingsError,
    Paginator? pocketListingsPaginator,
    @Default([]) List<PropertyCard> myPocketListings,
    @Default(AppStatus.init) AppStatus getMyPocketListingsStatus,
    String? getMyPocketListingsError,
    Paginator? myPocketListingsPaginator,
    @Default(0) int currentTab,
    String? listingsSearch,
    String? pocketListingsSearch,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(AppStatus.init) AppStatus getPropertyTypeListStatus,
    @Default([]) List<Community> communityList,
    @Default(AppStatus.init) AppStatus getCommunityListStatus,
    @Default([]) List<Building> buildingList,
    @Default(AppStatus.init) AppStatus getBuildingListStatus,
    @Default([]) List<Agent> agentList,
    @Default(AppStatus.init) AppStatus getAgentListStatus,
    @Default([]) List<Amenity> amenityList,
    @Default(AppStatus.init) AppStatus getAmenityListStatus,
    Map<String, dynamic>? listingsFilter,
    Map<String, dynamic>? pocketListingsFilter,
  }) = _ListingsState;
}
