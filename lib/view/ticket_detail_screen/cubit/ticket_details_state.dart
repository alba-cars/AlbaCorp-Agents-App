part of 'ticket_details_cubit.dart';

@freezed
class TicketDetailsState with _$TicketDetailsState {
  const factory TicketDetailsState({
    Ticket? ticket,
    required String ticketId,
    @Default(Status.init) Status getTicketStatus,
    String? getTicketError,
  }) = _TicketDetailsState;
}
