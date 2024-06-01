part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required String ticketId,
    Ticket? ticket,
    @Default(AppStatus.init) AppStatus getTicketStatus,
    String? getTicketError,
    @Default([]) List<TicketMessage> messages,
    @Default(AppStatus.init) AppStatus getMessagesStatus,
    Paginator? messagesPaginator,
    String? getMessagesError,
    @Default([]) List<Message> chatMessages,
    @Default(AppStatus.init) AppStatus addMessagesStatus,
    String? addMessagesError,
  }) = _ChatState;
}
