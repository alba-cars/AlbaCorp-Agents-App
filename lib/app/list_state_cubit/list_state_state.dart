part of 'list_state_cubit.dart';

@freezed
class ListStateState with _$ListStateState {
  const factory ListStateState({
    String? tasksCategorizedView,
    String? taskSortedView,
    String? leadsView,
    String? listingsView,
    String? pocketListingsView,
    String? dealsView,
    String? listingAcquiredView,
  }) = _ListStateState;
}
