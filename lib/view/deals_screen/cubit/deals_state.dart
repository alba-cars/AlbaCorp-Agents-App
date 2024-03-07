part of 'deals_cubit.dart';

@freezed
class DealsState with _$DealsState {
  const factory DealsState({
    @Default([]) List<Deal> deals,
    @Default(Status.init) Status getDealsStatus,
    String? getDealsError,
    Paginator? dealsPaginator,
  }) = _DealsState;
}
