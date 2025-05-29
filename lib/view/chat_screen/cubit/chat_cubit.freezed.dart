// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatState {
  String get ticketId;
  Ticket? get ticket;
  AppStatus get getTicketStatus;
  String? get getTicketError;
  List<TicketMessage> get messages;
  AppStatus get getMessagesStatus;
  Paginator? get messagesPaginator;
  String? get getMessagesError;
  List<Message> get chatMessages;
  AppStatus get addMessagesStatus;
  String? get addMessagesError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatStateCopyWith<ChatState> get copyWith =>
      _$ChatStateCopyWithImpl<ChatState>(this as ChatState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatState &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.getTicketStatus, getTicketStatus) ||
                other.getTicketStatus == getTicketStatus) &&
            (identical(other.getTicketError, getTicketError) ||
                other.getTicketError == getTicketError) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            (identical(other.getMessagesStatus, getMessagesStatus) ||
                other.getMessagesStatus == getMessagesStatus) &&
            (identical(other.messagesPaginator, messagesPaginator) ||
                other.messagesPaginator == messagesPaginator) &&
            (identical(other.getMessagesError, getMessagesError) ||
                other.getMessagesError == getMessagesError) &&
            const DeepCollectionEquality()
                .equals(other.chatMessages, chatMessages) &&
            (identical(other.addMessagesStatus, addMessagesStatus) ||
                other.addMessagesStatus == addMessagesStatus) &&
            (identical(other.addMessagesError, addMessagesError) ||
                other.addMessagesError == addMessagesError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      ticketId,
      ticket,
      getTicketStatus,
      getTicketError,
      const DeepCollectionEquality().hash(messages),
      getMessagesStatus,
      messagesPaginator,
      getMessagesError,
      const DeepCollectionEquality().hash(chatMessages),
      addMessagesStatus,
      addMessagesError);

  @override
  String toString() {
    return 'ChatState(ticketId: $ticketId, ticket: $ticket, getTicketStatus: $getTicketStatus, getTicketError: $getTicketError, messages: $messages, getMessagesStatus: $getMessagesStatus, messagesPaginator: $messagesPaginator, getMessagesError: $getMessagesError, chatMessages: $chatMessages, addMessagesStatus: $addMessagesStatus, addMessagesError: $addMessagesError)';
  }
}

/// @nodoc
abstract mixin class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) _then) =
      _$ChatStateCopyWithImpl;
  @useResult
  $Res call(
      {String ticketId,
      Ticket? ticket,
      AppStatus getTicketStatus,
      String? getTicketError,
      List<TicketMessage> messages,
      AppStatus getMessagesStatus,
      Paginator? messagesPaginator,
      String? getMessagesError,
      List<Message> chatMessages,
      AppStatus addMessagesStatus,
      String? addMessagesError});

  $TicketCopyWith<$Res>? get ticket;
  $PaginatorCopyWith<$Res>? get messagesPaginator;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._self, this._then);

  final ChatState _self;
  final $Res Function(ChatState) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketId = null,
    Object? ticket = freezed,
    Object? getTicketStatus = null,
    Object? getTicketError = freezed,
    Object? messages = null,
    Object? getMessagesStatus = null,
    Object? messagesPaginator = freezed,
    Object? getMessagesError = freezed,
    Object? chatMessages = null,
    Object? addMessagesStatus = null,
    Object? addMessagesError = freezed,
  }) {
    return _then(_self.copyWith(
      ticketId: null == ticketId
          ? _self.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: freezed == ticket
          ? _self.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      getTicketStatus: null == getTicketStatus
          ? _self.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTicketError: freezed == getTicketError
          ? _self.getTicketError
          : getTicketError // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: null == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<TicketMessage>,
      getMessagesStatus: null == getMessagesStatus
          ? _self.getMessagesStatus
          : getMessagesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      messagesPaginator: freezed == messagesPaginator
          ? _self.messagesPaginator
          : messagesPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      getMessagesError: freezed == getMessagesError
          ? _self.getMessagesError
          : getMessagesError // ignore: cast_nullable_to_non_nullable
              as String?,
      chatMessages: null == chatMessages
          ? _self.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      addMessagesStatus: null == addMessagesStatus
          ? _self.addMessagesStatus
          : addMessagesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addMessagesError: freezed == addMessagesError
          ? _self.addMessagesError
          : addMessagesError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res>? get ticket {
    if (_self.ticket == null) {
      return null;
    }

    return $TicketCopyWith<$Res>(_self.ticket!, (value) {
      return _then(_self.copyWith(ticket: value));
    });
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get messagesPaginator {
    if (_self.messagesPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.messagesPaginator!, (value) {
      return _then(_self.copyWith(messagesPaginator: value));
    });
  }
}

/// @nodoc

class _ChatState implements ChatState {
  const _ChatState(
      {required this.ticketId,
      this.ticket,
      this.getTicketStatus = AppStatus.init,
      this.getTicketError,
      final List<TicketMessage> messages = const [],
      this.getMessagesStatus = AppStatus.init,
      this.messagesPaginator,
      this.getMessagesError,
      final List<Message> chatMessages = const [],
      this.addMessagesStatus = AppStatus.init,
      this.addMessagesError})
      : _messages = messages,
        _chatMessages = chatMessages;

  @override
  final String ticketId;
  @override
  final Ticket? ticket;
  @override
  @JsonKey()
  final AppStatus getTicketStatus;
  @override
  final String? getTicketError;
  final List<TicketMessage> _messages;
  @override
  @JsonKey()
  List<TicketMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final AppStatus getMessagesStatus;
  @override
  final Paginator? messagesPaginator;
  @override
  final String? getMessagesError;
  final List<Message> _chatMessages;
  @override
  @JsonKey()
  List<Message> get chatMessages {
    if (_chatMessages is EqualUnmodifiableListView) return _chatMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatMessages);
  }

  @override
  @JsonKey()
  final AppStatus addMessagesStatus;
  @override
  final String? addMessagesError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatState &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.getTicketStatus, getTicketStatus) ||
                other.getTicketStatus == getTicketStatus) &&
            (identical(other.getTicketError, getTicketError) ||
                other.getTicketError == getTicketError) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.getMessagesStatus, getMessagesStatus) ||
                other.getMessagesStatus == getMessagesStatus) &&
            (identical(other.messagesPaginator, messagesPaginator) ||
                other.messagesPaginator == messagesPaginator) &&
            (identical(other.getMessagesError, getMessagesError) ||
                other.getMessagesError == getMessagesError) &&
            const DeepCollectionEquality()
                .equals(other._chatMessages, _chatMessages) &&
            (identical(other.addMessagesStatus, addMessagesStatus) ||
                other.addMessagesStatus == addMessagesStatus) &&
            (identical(other.addMessagesError, addMessagesError) ||
                other.addMessagesError == addMessagesError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      ticketId,
      ticket,
      getTicketStatus,
      getTicketError,
      const DeepCollectionEquality().hash(_messages),
      getMessagesStatus,
      messagesPaginator,
      getMessagesError,
      const DeepCollectionEquality().hash(_chatMessages),
      addMessagesStatus,
      addMessagesError);

  @override
  String toString() {
    return 'ChatState(ticketId: $ticketId, ticket: $ticket, getTicketStatus: $getTicketStatus, getTicketError: $getTicketError, messages: $messages, getMessagesStatus: $getMessagesStatus, messagesPaginator: $messagesPaginator, getMessagesError: $getMessagesError, chatMessages: $chatMessages, addMessagesStatus: $addMessagesStatus, addMessagesError: $addMessagesError)';
  }
}

/// @nodoc
abstract mixin class _$ChatStateCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) _then) =
      __$ChatStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String ticketId,
      Ticket? ticket,
      AppStatus getTicketStatus,
      String? getTicketError,
      List<TicketMessage> messages,
      AppStatus getMessagesStatus,
      Paginator? messagesPaginator,
      String? getMessagesError,
      List<Message> chatMessages,
      AppStatus addMessagesStatus,
      String? addMessagesError});

  @override
  $TicketCopyWith<$Res>? get ticket;
  @override
  $PaginatorCopyWith<$Res>? get messagesPaginator;
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(this._self, this._then);

  final _ChatState _self;
  final $Res Function(_ChatState) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ticketId = null,
    Object? ticket = freezed,
    Object? getTicketStatus = null,
    Object? getTicketError = freezed,
    Object? messages = null,
    Object? getMessagesStatus = null,
    Object? messagesPaginator = freezed,
    Object? getMessagesError = freezed,
    Object? chatMessages = null,
    Object? addMessagesStatus = null,
    Object? addMessagesError = freezed,
  }) {
    return _then(_ChatState(
      ticketId: null == ticketId
          ? _self.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: freezed == ticket
          ? _self.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      getTicketStatus: null == getTicketStatus
          ? _self.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTicketError: freezed == getTicketError
          ? _self.getTicketError
          : getTicketError // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: null == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<TicketMessage>,
      getMessagesStatus: null == getMessagesStatus
          ? _self.getMessagesStatus
          : getMessagesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      messagesPaginator: freezed == messagesPaginator
          ? _self.messagesPaginator
          : messagesPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      getMessagesError: freezed == getMessagesError
          ? _self.getMessagesError
          : getMessagesError // ignore: cast_nullable_to_non_nullable
              as String?,
      chatMessages: null == chatMessages
          ? _self._chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      addMessagesStatus: null == addMessagesStatus
          ? _self.addMessagesStatus
          : addMessagesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addMessagesError: freezed == addMessagesError
          ? _self.addMessagesError
          : addMessagesError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res>? get ticket {
    if (_self.ticket == null) {
      return null;
    }

    return $TicketCopyWith<$Res>(_self.ticket!, (value) {
      return _then(_self.copyWith(ticket: value));
    });
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get messagesPaginator {
    if (_self.messagesPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.messagesPaginator!, (value) {
      return _then(_self.copyWith(messagesPaginator: value));
    });
  }
}

// dart format on
