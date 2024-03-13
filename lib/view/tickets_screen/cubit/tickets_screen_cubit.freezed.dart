// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketsScreenState {
  List<Ticket> get ticketsList => throw _privateConstructorUsedError;
  Status get getTicketsListStatus => throw _privateConstructorUsedError;
  String? get getTicketsListError => throw _privateConstructorUsedError;
  Paginator? get ticketsPaginator => throw _privateConstructorUsedError;
  int get currentTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsScreenStateCopyWith<TicketsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsScreenStateCopyWith<$Res> {
  factory $TicketsScreenStateCopyWith(
          TicketsScreenState value, $Res Function(TicketsScreenState) then) =
      _$TicketsScreenStateCopyWithImpl<$Res, TicketsScreenState>;
  @useResult
  $Res call(
      {List<Ticket> ticketsList,
      Status getTicketsListStatus,
      String? getTicketsListError,
      Paginator? ticketsPaginator,
      int currentTab});

  $PaginatorCopyWith<$Res>? get ticketsPaginator;
}

/// @nodoc
class _$TicketsScreenStateCopyWithImpl<$Res, $Val extends TicketsScreenState>
    implements $TicketsScreenStateCopyWith<$Res> {
  _$TicketsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketsList = null,
    Object? getTicketsListStatus = null,
    Object? getTicketsListError = freezed,
    Object? ticketsPaginator = freezed,
    Object? currentTab = null,
  }) {
    return _then(_value.copyWith(
      ticketsList: null == ticketsList
          ? _value.ticketsList
          : ticketsList // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      getTicketsListStatus: null == getTicketsListStatus
          ? _value.getTicketsListStatus
          : getTicketsListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getTicketsListError: freezed == getTicketsListError
          ? _value.getTicketsListError
          : getTicketsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsPaginator: freezed == ticketsPaginator
          ? _value.ticketsPaginator
          : ticketsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get ticketsPaginator {
    if (_value.ticketsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.ticketsPaginator!, (value) {
      return _then(_value.copyWith(ticketsPaginator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketsScreenStateImplCopyWith<$Res>
    implements $TicketsScreenStateCopyWith<$Res> {
  factory _$$TicketsScreenStateImplCopyWith(_$TicketsScreenStateImpl value,
          $Res Function(_$TicketsScreenStateImpl) then) =
      __$$TicketsScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Ticket> ticketsList,
      Status getTicketsListStatus,
      String? getTicketsListError,
      Paginator? ticketsPaginator,
      int currentTab});

  @override
  $PaginatorCopyWith<$Res>? get ticketsPaginator;
}

/// @nodoc
class __$$TicketsScreenStateImplCopyWithImpl<$Res>
    extends _$TicketsScreenStateCopyWithImpl<$Res, _$TicketsScreenStateImpl>
    implements _$$TicketsScreenStateImplCopyWith<$Res> {
  __$$TicketsScreenStateImplCopyWithImpl(_$TicketsScreenStateImpl _value,
      $Res Function(_$TicketsScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketsList = null,
    Object? getTicketsListStatus = null,
    Object? getTicketsListError = freezed,
    Object? ticketsPaginator = freezed,
    Object? currentTab = null,
  }) {
    return _then(_$TicketsScreenStateImpl(
      ticketsList: null == ticketsList
          ? _value._ticketsList
          : ticketsList // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      getTicketsListStatus: null == getTicketsListStatus
          ? _value.getTicketsListStatus
          : getTicketsListStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getTicketsListError: freezed == getTicketsListError
          ? _value.getTicketsListError
          : getTicketsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsPaginator: freezed == ticketsPaginator
          ? _value.ticketsPaginator
          : ticketsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TicketsScreenStateImpl implements _TicketsScreenState {
  const _$TicketsScreenStateImpl(
      {final List<Ticket> ticketsList = const [],
      this.getTicketsListStatus = Status.init,
      this.getTicketsListError,
      this.ticketsPaginator,
      this.currentTab = 0})
      : _ticketsList = ticketsList;

  final List<Ticket> _ticketsList;
  @override
  @JsonKey()
  List<Ticket> get ticketsList {
    if (_ticketsList is EqualUnmodifiableListView) return _ticketsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticketsList);
  }

  @override
  @JsonKey()
  final Status getTicketsListStatus;
  @override
  final String? getTicketsListError;
  @override
  final Paginator? ticketsPaginator;
  @override
  @JsonKey()
  final int currentTab;

  @override
  String toString() {
    return 'TicketsScreenState(ticketsList: $ticketsList, getTicketsListStatus: $getTicketsListStatus, getTicketsListError: $getTicketsListError, ticketsPaginator: $ticketsPaginator, currentTab: $currentTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._ticketsList, _ticketsList) &&
            (identical(other.getTicketsListStatus, getTicketsListStatus) ||
                other.getTicketsListStatus == getTicketsListStatus) &&
            (identical(other.getTicketsListError, getTicketsListError) ||
                other.getTicketsListError == getTicketsListError) &&
            (identical(other.ticketsPaginator, ticketsPaginator) ||
                other.ticketsPaginator == ticketsPaginator) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ticketsList),
      getTicketsListStatus,
      getTicketsListError,
      ticketsPaginator,
      currentTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsScreenStateImplCopyWith<_$TicketsScreenStateImpl> get copyWith =>
      __$$TicketsScreenStateImplCopyWithImpl<_$TicketsScreenStateImpl>(
          this, _$identity);
}

abstract class _TicketsScreenState implements TicketsScreenState {
  const factory _TicketsScreenState(
      {final List<Ticket> ticketsList,
      final Status getTicketsListStatus,
      final String? getTicketsListError,
      final Paginator? ticketsPaginator,
      final int currentTab}) = _$TicketsScreenStateImpl;

  @override
  List<Ticket> get ticketsList;
  @override
  Status get getTicketsListStatus;
  @override
  String? get getTicketsListError;
  @override
  Paginator? get ticketsPaginator;
  @override
  int get currentTab;
  @override
  @JsonKey(ignore: true)
  _$$TicketsScreenStateImplCopyWith<_$TicketsScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
