// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketDetailsState {
  Ticket? get ticket => throw _privateConstructorUsedError;
  String get ticketId => throw _privateConstructorUsedError;
  Status get getTicketStatus => throw _privateConstructorUsedError;
  String? get getTicketError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketDetailsStateCopyWith<TicketDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDetailsStateCopyWith<$Res> {
  factory $TicketDetailsStateCopyWith(
          TicketDetailsState value, $Res Function(TicketDetailsState) then) =
      _$TicketDetailsStateCopyWithImpl<$Res, TicketDetailsState>;
  @useResult
  $Res call(
      {Ticket? ticket,
      String ticketId,
      Status getTicketStatus,
      String? getTicketError});

  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class _$TicketDetailsStateCopyWithImpl<$Res, $Val extends TicketDetailsState>
    implements $TicketDetailsStateCopyWith<$Res> {
  _$TicketDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = freezed,
    Object? ticketId = null,
    Object? getTicketStatus = null,
    Object? getTicketError = freezed,
  }) {
    return _then(_value.copyWith(
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      getTicketStatus: null == getTicketStatus
          ? _value.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getTicketError: freezed == getTicketError
          ? _value.getTicketError
          : getTicketError // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$TicketDetailsStateImplCopyWith<$Res>
    implements $TicketDetailsStateCopyWith<$Res> {
  factory _$$TicketDetailsStateImplCopyWith(_$TicketDetailsStateImpl value,
          $Res Function(_$TicketDetailsStateImpl) then) =
      __$$TicketDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Ticket? ticket,
      String ticketId,
      Status getTicketStatus,
      String? getTicketError});

  @override
  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class __$$TicketDetailsStateImplCopyWithImpl<$Res>
    extends _$TicketDetailsStateCopyWithImpl<$Res, _$TicketDetailsStateImpl>
    implements _$$TicketDetailsStateImplCopyWith<$Res> {
  __$$TicketDetailsStateImplCopyWithImpl(_$TicketDetailsStateImpl _value,
      $Res Function(_$TicketDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = freezed,
    Object? ticketId = null,
    Object? getTicketStatus = null,
    Object? getTicketError = freezed,
  }) {
    return _then(_$TicketDetailsStateImpl(
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      getTicketStatus: null == getTicketStatus
          ? _value.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getTicketError: freezed == getTicketError
          ? _value.getTicketError
          : getTicketError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TicketDetailsStateImpl implements _TicketDetailsState {
  const _$TicketDetailsStateImpl(
      {this.ticket,
      required this.ticketId,
      this.getTicketStatus = Status.init,
      this.getTicketError});

  @override
  final Ticket? ticket;
  @override
  final String ticketId;
  @override
  @JsonKey()
  final Status getTicketStatus;
  @override
  final String? getTicketError;

  @override
  String toString() {
    return 'TicketDetailsState(ticket: $ticket, ticketId: $ticketId, getTicketStatus: $getTicketStatus, getTicketError: $getTicketError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketDetailsStateImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.getTicketStatus, getTicketStatus) ||
                other.getTicketStatus == getTicketStatus) &&
            (identical(other.getTicketError, getTicketError) ||
                other.getTicketError == getTicketError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, ticket, ticketId, getTicketStatus, getTicketError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketDetailsStateImplCopyWith<_$TicketDetailsStateImpl> get copyWith =>
      __$$TicketDetailsStateImplCopyWithImpl<_$TicketDetailsStateImpl>(
          this, _$identity);
}

abstract class _TicketDetailsState implements TicketDetailsState {
  const factory _TicketDetailsState(
      {final Ticket? ticket,
      required final String ticketId,
      final Status getTicketStatus,
      final String? getTicketError}) = _$TicketDetailsStateImpl;

  @override
  Ticket? get ticket;
  @override
  String get ticketId;
  @override
  Status get getTicketStatus;
  @override
  String? get getTicketError;
  @override
  @JsonKey(ignore: true)
  _$$TicketDetailsStateImplCopyWith<_$TicketDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
