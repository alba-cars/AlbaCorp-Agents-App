// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  String get ticketId => throw _privateConstructorUsedError;
  Ticket? get ticket => throw _privateConstructorUsedError;
  AppStatus get getTicketStatus => throw _privateConstructorUsedError;
  String? get getTicketError => throw _privateConstructorUsedError;
  List<TicketMessage> get messages => throw _privateConstructorUsedError;
  AppStatus get getMessagesStatus => throw _privateConstructorUsedError;
  Paginator? get messagesPaginator => throw _privateConstructorUsedError;
  String? get getMessagesError => throw _privateConstructorUsedError;
  List<Message> get chatMessages => throw _privateConstructorUsedError;
  AppStatus get addMessagesStatus => throw _privateConstructorUsedError;
  String? get addMessagesError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
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
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      getTicketStatus: null == getTicketStatus
          ? _value.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTicketError: freezed == getTicketError
          ? _value.getTicketError
          : getTicketError // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<TicketMessage>,
      getMessagesStatus: null == getMessagesStatus
          ? _value.getMessagesStatus
          : getMessagesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      messagesPaginator: freezed == messagesPaginator
          ? _value.messagesPaginator
          : messagesPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      getMessagesError: freezed == getMessagesError
          ? _value.getMessagesError
          : getMessagesError // ignore: cast_nullable_to_non_nullable
              as String?,
      chatMessages: null == chatMessages
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      addMessagesStatus: null == addMessagesStatus
          ? _value.addMessagesStatus
          : addMessagesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addMessagesError: freezed == addMessagesError
          ? _value.addMessagesError
          : addMessagesError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $TicketCopyWith<$Res>(_value.ticket!, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get messagesPaginator {
    if (_value.messagesPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.messagesPaginator!, (value) {
      return _then(_value.copyWith(messagesPaginator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
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
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$ChatStateImpl(
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      getTicketStatus: null == getTicketStatus
          ? _value.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTicketError: freezed == getTicketError
          ? _value.getTicketError
          : getTicketError // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<TicketMessage>,
      getMessagesStatus: null == getMessagesStatus
          ? _value.getMessagesStatus
          : getMessagesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      messagesPaginator: freezed == messagesPaginator
          ? _value.messagesPaginator
          : messagesPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      getMessagesError: freezed == getMessagesError
          ? _value.getMessagesError
          : getMessagesError // ignore: cast_nullable_to_non_nullable
              as String?,
      chatMessages: null == chatMessages
          ? _value._chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      addMessagesStatus: null == addMessagesStatus
          ? _value.addMessagesStatus
          : addMessagesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addMessagesError: freezed == addMessagesError
          ? _value.addMessagesError
          : addMessagesError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
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

  @override
  String toString() {
    return 'ChatState(ticketId: $ticketId, ticket: $ticket, getTicketStatus: $getTicketStatus, getTicketError: $getTicketError, messages: $messages, getMessagesStatus: $getMessagesStatus, messagesPaginator: $messagesPaginator, getMessagesError: $getMessagesError, chatMessages: $chatMessages, addMessagesStatus: $addMessagesStatus, addMessagesError: $addMessagesError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final String ticketId,
      final Ticket? ticket,
      final AppStatus getTicketStatus,
      final String? getTicketError,
      final List<TicketMessage> messages,
      final AppStatus getMessagesStatus,
      final Paginator? messagesPaginator,
      final String? getMessagesError,
      final List<Message> chatMessages,
      final AppStatus addMessagesStatus,
      final String? addMessagesError}) = _$ChatStateImpl;

  @override
  String get ticketId;
  @override
  Ticket? get ticket;
  @override
  AppStatus get getTicketStatus;
  @override
  String? get getTicketError;
  @override
  List<TicketMessage> get messages;
  @override
  AppStatus get getMessagesStatus;
  @override
  Paginator? get messagesPaginator;
  @override
  String? get getMessagesError;
  @override
  List<Message> get chatMessages;
  @override
  AppStatus get addMessagesStatus;
  @override
  String? get addMessagesError;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
