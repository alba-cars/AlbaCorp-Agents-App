part of 'deals_cubit.dart';

@freezed
class DealsState with _$DealsState {
  const factory DealsState({
    @Default([]) List<Deal> deals,
    @Default(AppStatus.init) AppStatus getDealsStatus,
    String? getDealsError,
    Paginator? dealsPaginator,
    String? dealsSearch,
    Map<String, dynamic>? dealsFilter,
    @Default([]) List<Deal> yourListings,
    @Default(AppStatus.init) AppStatus getYourListingsStatus,
    String? getYourListingsError,
    Paginator? yourListingsPaginator,
    String? yourListingsSearch,
    Map<String, dynamic>? yourListingsFilter,
    @Default(0) int currentTab,
  }) = _DealsState;
}
