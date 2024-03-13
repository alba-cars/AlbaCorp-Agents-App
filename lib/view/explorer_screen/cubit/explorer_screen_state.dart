part of 'explorer_screen_cubit.dart';

@freezed
class ExplorerScreenState with _$ExplorerScreenState {
  const factory ExplorerScreenState({
    @Default(Status.init) Status getExplorerListStatus,
    @Default([]) List<PropertyCard> explorerList,
    String? getExplorerListError,
    @Default(Status.init) Status getCheckedOutExplorerListStatus,
    @Default([]) List<PropertyCard> checkedOutExplorerList,
    String? getCheckedOutExplorerListError,
    @Default(Status.init) Status checkInLeadStatus,
    String? checkInLeadError,
    @Default(Status.init) Status checkOutLeadStatus,
    String? checkOutLeadError,
    @Default(0) currentTab,
  }) = _ExplorerScreenState;
}
