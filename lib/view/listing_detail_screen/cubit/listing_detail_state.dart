part of 'listing_detail_cubit.dart';

@freezed
class ListingDetailState with _$ListingDetailState {
  const factory ListingDetailState({
    required String listingId,
    @Default(AppStatus.init) AppStatus getListingDetailsStatus,
    Property? listing,
    String? getListingError,
    @Default([]) List<Activity> activities,
    @Default(AppStatus.init) AppStatus getActivitiesStatus,
    String? getActivitiesError,
  }) = _ListingDetailState;
}
