// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketsScreenState {
  List<Ticket> get ticketsList;
  AppStatus get getTicketsListStatus;
  String? get getTicketsListError;
  Paginator? get ticketsPaginator;
  int get currentTab;
  String? get ticketsSearch;
  Map<String, dynamic>? get ticketsFilter;
  List<Department> get departments;
  AppStatus get getDepartmentsStatus;

  /// Create a copy of TicketsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TicketsScreenStateCopyWith<TicketsScreenState> get copyWith =>
      _$TicketsScreenStateCopyWithImpl<TicketsScreenState>(
          this as TicketsScreenState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TicketsScreenState &&
            const DeepCollectionEquality()
                .equals(other.ticketsList, ticketsList) &&
            (identical(other.getTicketsListStatus, getTicketsListStatus) ||
                other.getTicketsListStatus == getTicketsListStatus) &&
            (identical(other.getTicketsListError, getTicketsListError) ||
                other.getTicketsListError == getTicketsListError) &&
            (identical(other.ticketsPaginator, ticketsPaginator) ||
                other.ticketsPaginator == ticketsPaginator) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.ticketsSearch, ticketsSearch) ||
                other.ticketsSearch == ticketsSearch) &&
            const DeepCollectionEquality()
                .equals(other.ticketsFilter, ticketsFilter) &&
            const DeepCollectionEquality()
                .equals(other.departments, departments) &&
            (identical(other.getDepartmentsStatus, getDepartmentsStatus) ||
                other.getDepartmentsStatus == getDepartmentsStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ticketsList),
      getTicketsListStatus,
      getTicketsListError,
      ticketsPaginator,
      currentTab,
      ticketsSearch,
      const DeepCollectionEquality().hash(ticketsFilter),
      const DeepCollectionEquality().hash(departments),
      getDepartmentsStatus);

  @override
  String toString() {
    return 'TicketsScreenState(ticketsList: $ticketsList, getTicketsListStatus: $getTicketsListStatus, getTicketsListError: $getTicketsListError, ticketsPaginator: $ticketsPaginator, currentTab: $currentTab, ticketsSearch: $ticketsSearch, ticketsFilter: $ticketsFilter, departments: $departments, getDepartmentsStatus: $getDepartmentsStatus)';
  }
}

/// @nodoc
abstract mixin class $TicketsScreenStateCopyWith<$Res> {
  factory $TicketsScreenStateCopyWith(
          TicketsScreenState value, $Res Function(TicketsScreenState) _then) =
      _$TicketsScreenStateCopyWithImpl;
  @useResult
  $Res call(
      {List<Ticket> ticketsList,
      AppStatus getTicketsListStatus,
      String? getTicketsListError,
      Paginator? ticketsPaginator,
      int currentTab,
      String? ticketsSearch,
      Map<String, dynamic>? ticketsFilter,
      List<Department> departments,
      AppStatus getDepartmentsStatus});

  $PaginatorCopyWith<$Res>? get ticketsPaginator;
}

/// @nodoc
class _$TicketsScreenStateCopyWithImpl<$Res>
    implements $TicketsScreenStateCopyWith<$Res> {
  _$TicketsScreenStateCopyWithImpl(this._self, this._then);

  final TicketsScreenState _self;
  final $Res Function(TicketsScreenState) _then;

  /// Create a copy of TicketsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketsList = null,
    Object? getTicketsListStatus = null,
    Object? getTicketsListError = freezed,
    Object? ticketsPaginator = freezed,
    Object? currentTab = null,
    Object? ticketsSearch = freezed,
    Object? ticketsFilter = freezed,
    Object? departments = null,
    Object? getDepartmentsStatus = null,
  }) {
    return _then(_self.copyWith(
      ticketsList: null == ticketsList
          ? _self.ticketsList
          : ticketsList // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      getTicketsListStatus: null == getTicketsListStatus
          ? _self.getTicketsListStatus
          : getTicketsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTicketsListError: freezed == getTicketsListError
          ? _self.getTicketsListError
          : getTicketsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsPaginator: freezed == ticketsPaginator
          ? _self.ticketsPaginator
          : ticketsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      ticketsSearch: freezed == ticketsSearch
          ? _self.ticketsSearch
          : ticketsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsFilter: freezed == ticketsFilter
          ? _self.ticketsFilter
          : ticketsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      departments: null == departments
          ? _self.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
      getDepartmentsStatus: null == getDepartmentsStatus
          ? _self.getDepartmentsStatus
          : getDepartmentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of TicketsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get ticketsPaginator {
    if (_self.ticketsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.ticketsPaginator!, (value) {
      return _then(_self.copyWith(ticketsPaginator: value));
    });
  }
}

/// @nodoc

class _TicketsScreenState implements TicketsScreenState {
  const _TicketsScreenState(
      {final List<Ticket> ticketsList = const [],
      this.getTicketsListStatus = AppStatus.init,
      this.getTicketsListError,
      this.ticketsPaginator,
      this.currentTab = 0,
      this.ticketsSearch,
      final Map<String, dynamic>? ticketsFilter,
      final List<Department> departments = const [],
      this.getDepartmentsStatus = AppStatus.init})
      : _ticketsList = ticketsList,
        _ticketsFilter = ticketsFilter,
        _departments = departments;

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
  final AppStatus getTicketsListStatus;
  @override
  final String? getTicketsListError;
  @override
  final Paginator? ticketsPaginator;
  @override
  @JsonKey()
  final int currentTab;
  @override
  final String? ticketsSearch;
  final Map<String, dynamic>? _ticketsFilter;
  @override
  Map<String, dynamic>? get ticketsFilter {
    final value = _ticketsFilter;
    if (value == null) return null;
    if (_ticketsFilter is EqualUnmodifiableMapView) return _ticketsFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Department> _departments;
  @override
  @JsonKey()
  List<Department> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  @JsonKey()
  final AppStatus getDepartmentsStatus;

  /// Create a copy of TicketsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TicketsScreenStateCopyWith<_TicketsScreenState> get copyWith =>
      __$TicketsScreenStateCopyWithImpl<_TicketsScreenState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TicketsScreenState &&
            const DeepCollectionEquality()
                .equals(other._ticketsList, _ticketsList) &&
            (identical(other.getTicketsListStatus, getTicketsListStatus) ||
                other.getTicketsListStatus == getTicketsListStatus) &&
            (identical(other.getTicketsListError, getTicketsListError) ||
                other.getTicketsListError == getTicketsListError) &&
            (identical(other.ticketsPaginator, ticketsPaginator) ||
                other.ticketsPaginator == ticketsPaginator) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.ticketsSearch, ticketsSearch) ||
                other.ticketsSearch == ticketsSearch) &&
            const DeepCollectionEquality()
                .equals(other._ticketsFilter, _ticketsFilter) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments) &&
            (identical(other.getDepartmentsStatus, getDepartmentsStatus) ||
                other.getDepartmentsStatus == getDepartmentsStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ticketsList),
      getTicketsListStatus,
      getTicketsListError,
      ticketsPaginator,
      currentTab,
      ticketsSearch,
      const DeepCollectionEquality().hash(_ticketsFilter),
      const DeepCollectionEquality().hash(_departments),
      getDepartmentsStatus);

  @override
  String toString() {
    return 'TicketsScreenState(ticketsList: $ticketsList, getTicketsListStatus: $getTicketsListStatus, getTicketsListError: $getTicketsListError, ticketsPaginator: $ticketsPaginator, currentTab: $currentTab, ticketsSearch: $ticketsSearch, ticketsFilter: $ticketsFilter, departments: $departments, getDepartmentsStatus: $getDepartmentsStatus)';
  }
}

/// @nodoc
abstract mixin class _$TicketsScreenStateCopyWith<$Res>
    implements $TicketsScreenStateCopyWith<$Res> {
  factory _$TicketsScreenStateCopyWith(
          _TicketsScreenState value, $Res Function(_TicketsScreenState) _then) =
      __$TicketsScreenStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Ticket> ticketsList,
      AppStatus getTicketsListStatus,
      String? getTicketsListError,
      Paginator? ticketsPaginator,
      int currentTab,
      String? ticketsSearch,
      Map<String, dynamic>? ticketsFilter,
      List<Department> departments,
      AppStatus getDepartmentsStatus});

  @override
  $PaginatorCopyWith<$Res>? get ticketsPaginator;
}

/// @nodoc
class __$TicketsScreenStateCopyWithImpl<$Res>
    implements _$TicketsScreenStateCopyWith<$Res> {
  __$TicketsScreenStateCopyWithImpl(this._self, this._then);

  final _TicketsScreenState _self;
  final $Res Function(_TicketsScreenState) _then;

  /// Create a copy of TicketsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ticketsList = null,
    Object? getTicketsListStatus = null,
    Object? getTicketsListError = freezed,
    Object? ticketsPaginator = freezed,
    Object? currentTab = null,
    Object? ticketsSearch = freezed,
    Object? ticketsFilter = freezed,
    Object? departments = null,
    Object? getDepartmentsStatus = null,
  }) {
    return _then(_TicketsScreenState(
      ticketsList: null == ticketsList
          ? _self._ticketsList
          : ticketsList // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      getTicketsListStatus: null == getTicketsListStatus
          ? _self.getTicketsListStatus
          : getTicketsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTicketsListError: freezed == getTicketsListError
          ? _self.getTicketsListError
          : getTicketsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsPaginator: freezed == ticketsPaginator
          ? _self.ticketsPaginator
          : ticketsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      ticketsSearch: freezed == ticketsSearch
          ? _self.ticketsSearch
          : ticketsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsFilter: freezed == ticketsFilter
          ? _self._ticketsFilter
          : ticketsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      departments: null == departments
          ? _self._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
      getDepartmentsStatus: null == getDepartmentsStatus
          ? _self.getDepartmentsStatus
          : getDepartmentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of TicketsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get ticketsPaginator {
    if (_self.ticketsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.ticketsPaginator!, (value) {
      return _then(_self.copyWith(ticketsPaginator: value));
    });
  }
}

// dart format on
