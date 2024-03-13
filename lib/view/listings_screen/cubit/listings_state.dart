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
  }) = _ListingsState;
}
