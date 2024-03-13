part of 'tickets_screen_cubit.dart';

@freezed
class TicketsScreenState with _$TicketsScreenState {
  const factory TicketsScreenState({
    @Default([]) List<Ticket> ticketsList,
    @Default(Status.init) Status getTicketsListStatus,
    String? getTicketsListError,
    Paginator? ticketsPaginator,
    @Default(0) int currentTab,
  }) = _TicketsScreenState;
}
