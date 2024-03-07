part of 'listing_detail_cubit.dart';

@freezed
class ListingDetailState with _$ListingDetailState {
  const factory ListingDetailState({
    required String listingId,
    @Default(Status.init) Status getListingDetailsStatus,
    Property? listing,
    String? getListingError,
    @Default([]) List<Activity> activities,
    @Default(Status.init) Status getActivitiesStatus,
    String? getActivitiesError,
  }) = _ListingDetailState;
}
