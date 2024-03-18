part of 'listings_cubit.dart';

@freezed
class ListingsState with _$ListingsState {
  const factory ListingsState({
    @Default([]) List<Property> listings,
    @Default(Status.init) Status getListingsStatus,
    String? getListingsError,
    Paginator? listingsPaginator,
    @Default([]) List<PropertyCard> pocketListings,
    @Default(Status.init) Status getPocketListingsStatus,
    String? getPocketListingsError,
    Paginator? pocketListingsPaginator,
    @Default(0) int currentTab,
    String? listingsSearch,
    String? pocketListingsSearch,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(Status.init) Status getPropertyTypeListStatus,
    @Default([]) List<Community> communityList,
    @Default(Status.init) Status getCommunityListStatus,
    @Default([]) List<Building> buildingList,
    @Default(Status.init) Status getBuildingListStatus,
    Map<String, dynamic>? listingsFilter,
    Map<String, dynamic>? pocketListingsFilter,
  }) = _ListingsState;
}
