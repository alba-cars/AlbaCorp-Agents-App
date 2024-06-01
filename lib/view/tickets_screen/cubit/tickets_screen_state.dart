part of 'tickets_screen_cubit.dart';

@freezed
class TicketsScreenState with _$TicketsScreenState {
  const factory TicketsScreenState({
    @Default([]) List<Ticket> ticketsList,
    @Default(AppStatus.init) AppStatus getTicketsListStatus,
    String? getTicketsListError,
    Paginator? ticketsPaginator,
    @Default(0) int currentTab,
    String? ticketsSearch,
    Map<String, dynamic>? ticketsFilter,
    @Default([]) List<Department> departments,
    @Default(AppStatus.init) AppStatus getDepartmentsStatus,
  }) = _TicketsScreenState;
}
