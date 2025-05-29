// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketDetailsState {
  Ticket? get ticket;
  String get ticketId;
  AppStatus get getTicketStatus;
  String? get getTicketError;

  /// Create a copy of TicketDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TicketDetailsStateCopyWith<TicketDetailsState> get copyWith =>
      _$TicketDetailsStateCopyWithImpl<TicketDetailsState>(
          this as TicketDetailsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TicketDetailsState &&
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

  @override
  String toString() {
    return 'TicketDetailsState(ticket: $ticket, ticketId: $ticketId, getTicketStatus: $getTicketStatus, getTicketError: $getTicketError)';
  }
}

/// @nodoc
abstract mixin class $TicketDetailsStateCopyWith<$Res> {
  factory $TicketDetailsStateCopyWith(
          TicketDetailsState value, $Res Function(TicketDetailsState) _then) =
      _$TicketDetailsStateCopyWithImpl;
  @useResult
  $Res call(
      {Ticket? ticket,
      String ticketId,
      AppStatus getTicketStatus,
      String? getTicketError});

  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class _$TicketDetailsStateCopyWithImpl<$Res>
    implements $TicketDetailsStateCopyWith<$Res> {
  _$TicketDetailsStateCopyWithImpl(this._self, this._then);

  final TicketDetailsState _self;
  final $Res Function(TicketDetailsState) _then;

  /// Create a copy of TicketDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = freezed,
    Object? ticketId = null,
    Object? getTicketStatus = null,
    Object? getTicketError = freezed,
  }) {
    return _then(_self.copyWith(
      ticket: freezed == ticket
          ? _self.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      ticketId: null == ticketId
          ? _self.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      getTicketStatus: null == getTicketStatus
          ? _self.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTicketError: freezed == getTicketError
          ? _self.getTicketError
          : getTicketError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TicketDetailsState
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
}

/// @nodoc

class _TicketDetailsState implements TicketDetailsState {
  const _TicketDetailsState(
      {this.ticket,
      required this.ticketId,
      this.getTicketStatus = AppStatus.init,
      this.getTicketError});

  @override
  final Ticket? ticket;
  @override
  final String ticketId;
  @override
  @JsonKey()
  final AppStatus getTicketStatus;
  @override
  final String? getTicketError;

  /// Create a copy of TicketDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TicketDetailsStateCopyWith<_TicketDetailsState> get copyWith =>
      __$TicketDetailsStateCopyWithImpl<_TicketDetailsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TicketDetailsState &&
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

  @override
  String toString() {
    return 'TicketDetailsState(ticket: $ticket, ticketId: $ticketId, getTicketStatus: $getTicketStatus, getTicketError: $getTicketError)';
  }
}

/// @nodoc
abstract mixin class _$TicketDetailsStateCopyWith<$Res>
    implements $TicketDetailsStateCopyWith<$Res> {
  factory _$TicketDetailsStateCopyWith(
          _TicketDetailsState value, $Res Function(_TicketDetailsState) _then) =
      __$TicketDetailsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Ticket? ticket,
      String ticketId,
      AppStatus getTicketStatus,
      String? getTicketError});

  @override
  $TicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class __$TicketDetailsStateCopyWithImpl<$Res>
    implements _$TicketDetailsStateCopyWith<$Res> {
  __$TicketDetailsStateCopyWithImpl(this._self, this._then);

  final _TicketDetailsState _self;
  final $Res Function(_TicketDetailsState) _then;

  /// Create a copy of TicketDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ticket = freezed,
    Object? ticketId = null,
    Object? getTicketStatus = null,
    Object? getTicketError = freezed,
  }) {
    return _then(_TicketDetailsState(
      ticket: freezed == ticket
          ? _self.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      ticketId: null == ticketId
          ? _self.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      getTicketStatus: null == getTicketStatus
          ? _self.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTicketError: freezed == getTicketError
          ? _self.getTicketError
          : getTicketError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TicketDetailsState
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
}

// dart format on
