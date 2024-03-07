part of 'listings_cubit.dart';

@freezed
class ListingsState with _$ListingsState {
  const factory ListingsState({
    @Default([]) List<Property> listings,
    @Default(Status.init) Status getListingsStatus,
    String? getListingsError,
    Paginator? listingsPaginator,
  }) = _ListingsState;
}
