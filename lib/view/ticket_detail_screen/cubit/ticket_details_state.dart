part of 'ticket_details_cubit.dart';

@freezed
abstract class TicketDetailsState with _$TicketDetailsState {
  const factory TicketDetailsState({
    Ticket? ticket,
    required String ticketId,
    @Default(AppStatus.init) AppStatus getTicketStatus,
    String? getTicketError,
  }) = _TicketDetailsState;
}
