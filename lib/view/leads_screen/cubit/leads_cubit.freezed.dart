// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leads_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeadsState {
  List<Lead> get leads;
  AppStatus get getLeadsStatus;
  String? get getLeadsError;
  Paginator? get leadsPaginator;
  String? get leadsSearch;
  Map<String, dynamic>? get leadsFilter;
  QuickFilter? get quickFilter;
  int get sortDir;
  bool get selectModeEnabled;
  List<String> get selectedLeads;
  AppStatus get returnLeadsStatus;
  String? get returnLeadsError;

  /// Create a copy of LeadsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadsStateCopyWith<LeadsState> get copyWith =>
      _$LeadsStateCopyWithImpl<LeadsState>(this as LeadsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadsState &&
            const DeepCollectionEquality().equals(other.leads, leads) &&
            (identical(other.getLeadsStatus, getLeadsStatus) ||
                other.getLeadsStatus == getLeadsStatus) &&
            (identical(other.getLeadsError, getLeadsError) ||
                other.getLeadsError == getLeadsError) &&
            (identical(other.leadsPaginator, leadsPaginator) ||
                other.leadsPaginator == leadsPaginator) &&
            (identical(other.leadsSearch, leadsSearch) ||
                other.leadsSearch == leadsSearch) &&
            const DeepCollectionEquality()
                .equals(other.leadsFilter, leadsFilter) &&
            (identical(other.quickFilter, quickFilter) ||
                other.quickFilter == quickFilter) &&
            (identical(other.sortDir, sortDir) || other.sortDir == sortDir) &&
            (identical(other.selectModeEnabled, selectModeEnabled) ||
                other.selectModeEnabled == selectModeEnabled) &&
            const DeepCollectionEquality()
                .equals(other.selectedLeads, selectedLeads) &&
            (identical(other.returnLeadsStatus, returnLeadsStatus) ||
                other.returnLeadsStatus == returnLeadsStatus) &&
            (identical(other.returnLeadsError, returnLeadsError) ||
                other.returnLeadsError == returnLeadsError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(leads),
      getLeadsStatus,
      getLeadsError,
      leadsPaginator,
      leadsSearch,
      const DeepCollectionEquality().hash(leadsFilter),
      quickFilter,
      sortDir,
      selectModeEnabled,
      const DeepCollectionEquality().hash(selectedLeads),
      returnLeadsStatus,
      returnLeadsError);

  @override
  String toString() {
    return 'LeadsState(leads: $leads, getLeadsStatus: $getLeadsStatus, getLeadsError: $getLeadsError, leadsPaginator: $leadsPaginator, leadsSearch: $leadsSearch, leadsFilter: $leadsFilter, quickFilter: $quickFilter, sortDir: $sortDir, selectModeEnabled: $selectModeEnabled, selectedLeads: $selectedLeads, returnLeadsStatus: $returnLeadsStatus, returnLeadsError: $returnLeadsError)';
  }
}

/// @nodoc
abstract mixin class $LeadsStateCopyWith<$Res> {
  factory $LeadsStateCopyWith(
          LeadsState value, $Res Function(LeadsState) _then) =
      _$LeadsStateCopyWithImpl;
  @useResult
  $Res call(
      {List<Lead> leads,
      AppStatus getLeadsStatus,
      String? getLeadsError,
      Paginator? leadsPaginator,
      String? leadsSearch,
      Map<String, dynamic>? leadsFilter,
      QuickFilter? quickFilter,
      int sortDir,
      bool selectModeEnabled,
      List<String> selectedLeads,
      AppStatus returnLeadsStatus,
      String? returnLeadsError});

  $PaginatorCopyWith<$Res>? get leadsPaginator;
}

/// @nodoc
class _$LeadsStateCopyWithImpl<$Res> implements $LeadsStateCopyWith<$Res> {
  _$LeadsStateCopyWithImpl(this._self, this._then);

  final LeadsState _self;
  final $Res Function(LeadsState) _then;

  /// Create a copy of LeadsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leads = null,
    Object? getLeadsStatus = null,
    Object? getLeadsError = freezed,
    Object? leadsPaginator = freezed,
    Object? leadsSearch = freezed,
    Object? leadsFilter = freezed,
    Object? quickFilter = freezed,
    Object? sortDir = null,
    Object? selectModeEnabled = null,
    Object? selectedLeads = null,
    Object? returnLeadsStatus = null,
    Object? returnLeadsError = freezed,
  }) {
    return _then(_self.copyWith(
      leads: null == leads
          ? _self.leads
          : leads // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadsStatus: null == getLeadsStatus
          ? _self.getLeadsStatus
          : getLeadsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getLeadsError: freezed == getLeadsError
          ? _self.getLeadsError
          : getLeadsError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadsPaginator: freezed == leadsPaginator
          ? _self.leadsPaginator
          : leadsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      leadsSearch: freezed == leadsSearch
          ? _self.leadsSearch
          : leadsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      leadsFilter: freezed == leadsFilter
          ? _self.leadsFilter
          : leadsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      quickFilter: freezed == quickFilter
          ? _self.quickFilter
          : quickFilter // ignore: cast_nullable_to_non_nullable
              as QuickFilter?,
      sortDir: null == sortDir
          ? _self.sortDir
          : sortDir // ignore: cast_nullable_to_non_nullable
              as int,
      selectModeEnabled: null == selectModeEnabled
          ? _self.selectModeEnabled
          : selectModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedLeads: null == selectedLeads
          ? _self.selectedLeads
          : selectedLeads // ignore: cast_nullable_to_non_nullable
              as List<String>,
      returnLeadsStatus: null == returnLeadsStatus
          ? _self.returnLeadsStatus
          : returnLeadsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      returnLeadsError: freezed == returnLeadsError
          ? _self.returnLeadsError
          : returnLeadsError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LeadsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get leadsPaginator {
    if (_self.leadsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.leadsPaginator!, (value) {
      return _then(_self.copyWith(leadsPaginator: value));
    });
  }
}

/// @nodoc

class _LeadsState implements LeadsState {
  const _LeadsState(
      {final List<Lead> leads = const [],
      this.getLeadsStatus = AppStatus.init,
      this.getLeadsError,
      this.leadsPaginator,
      this.leadsSearch,
      final Map<String, dynamic>? leadsFilter,
      this.quickFilter,
      this.sortDir = -1,
      this.selectModeEnabled = false,
      final List<String> selectedLeads = const [],
      this.returnLeadsStatus = AppStatus.init,
      this.returnLeadsError})
      : _leads = leads,
        _leadsFilter = leadsFilter,
        _selectedLeads = selectedLeads;

  final List<Lead> _leads;
  @override
  @JsonKey()
  List<Lead> get leads {
    if (_leads is EqualUnmodifiableListView) return _leads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leads);
  }

  @override
  @JsonKey()
  final AppStatus getLeadsStatus;
  @override
  final String? getLeadsError;
  @override
  final Paginator? leadsPaginator;
  @override
  final String? leadsSearch;
  final Map<String, dynamic>? _leadsFilter;
  @override
  Map<String, dynamic>? get leadsFilter {
    final value = _leadsFilter;
    if (value == null) return null;
    if (_leadsFilter is EqualUnmodifiableMapView) return _leadsFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final QuickFilter? quickFilter;
  @override
  @JsonKey()
  final int sortDir;
  @override
  @JsonKey()
  final bool selectModeEnabled;
  final List<String> _selectedLeads;
  @override
  @JsonKey()
  List<String> get selectedLeads {
    if (_selectedLeads is EqualUnmodifiableListView) return _selectedLeads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedLeads);
  }

  @override
  @JsonKey()
  final AppStatus returnLeadsStatus;
  @override
  final String? returnLeadsError;

  /// Create a copy of LeadsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadsStateCopyWith<_LeadsState> get copyWith =>
      __$LeadsStateCopyWithImpl<_LeadsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadsState &&
            const DeepCollectionEquality().equals(other._leads, _leads) &&
            (identical(other.getLeadsStatus, getLeadsStatus) ||
                other.getLeadsStatus == getLeadsStatus) &&
            (identical(other.getLeadsError, getLeadsError) ||
                other.getLeadsError == getLeadsError) &&
            (identical(other.leadsPaginator, leadsPaginator) ||
                other.leadsPaginator == leadsPaginator) &&
            (identical(other.leadsSearch, leadsSearch) ||
                other.leadsSearch == leadsSearch) &&
            const DeepCollectionEquality()
                .equals(other._leadsFilter, _leadsFilter) &&
            (identical(other.quickFilter, quickFilter) ||
                other.quickFilter == quickFilter) &&
            (identical(other.sortDir, sortDir) || other.sortDir == sortDir) &&
            (identical(other.selectModeEnabled, selectModeEnabled) ||
                other.selectModeEnabled == selectModeEnabled) &&
            const DeepCollectionEquality()
                .equals(other._selectedLeads, _selectedLeads) &&
            (identical(other.returnLeadsStatus, returnLeadsStatus) ||
                other.returnLeadsStatus == returnLeadsStatus) &&
            (identical(other.returnLeadsError, returnLeadsError) ||
                other.returnLeadsError == returnLeadsError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_leads),
      getLeadsStatus,
      getLeadsError,
      leadsPaginator,
      leadsSearch,
      const DeepCollectionEquality().hash(_leadsFilter),
      quickFilter,
      sortDir,
      selectModeEnabled,
      const DeepCollectionEquality().hash(_selectedLeads),
      returnLeadsStatus,
      returnLeadsError);

  @override
  String toString() {
    return 'LeadsState(leads: $leads, getLeadsStatus: $getLeadsStatus, getLeadsError: $getLeadsError, leadsPaginator: $leadsPaginator, leadsSearch: $leadsSearch, leadsFilter: $leadsFilter, quickFilter: $quickFilter, sortDir: $sortDir, selectModeEnabled: $selectModeEnabled, selectedLeads: $selectedLeads, returnLeadsStatus: $returnLeadsStatus, returnLeadsError: $returnLeadsError)';
  }
}

/// @nodoc
abstract mixin class _$LeadsStateCopyWith<$Res>
    implements $LeadsStateCopyWith<$Res> {
  factory _$LeadsStateCopyWith(
          _LeadsState value, $Res Function(_LeadsState) _then) =
      __$LeadsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Lead> leads,
      AppStatus getLeadsStatus,
      String? getLeadsError,
      Paginator? leadsPaginator,
      String? leadsSearch,
      Map<String, dynamic>? leadsFilter,
      QuickFilter? quickFilter,
      int sortDir,
      bool selectModeEnabled,
      List<String> selectedLeads,
      AppStatus returnLeadsStatus,
      String? returnLeadsError});

  @override
  $PaginatorCopyWith<$Res>? get leadsPaginator;
}

/// @nodoc
class __$LeadsStateCopyWithImpl<$Res> implements _$LeadsStateCopyWith<$Res> {
  __$LeadsStateCopyWithImpl(this._self, this._then);

  final _LeadsState _self;
  final $Res Function(_LeadsState) _then;

  /// Create a copy of LeadsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? leads = null,
    Object? getLeadsStatus = null,
    Object? getLeadsError = freezed,
    Object? leadsPaginator = freezed,
    Object? leadsSearch = freezed,
    Object? leadsFilter = freezed,
    Object? quickFilter = freezed,
    Object? sortDir = null,
    Object? selectModeEnabled = null,
    Object? selectedLeads = null,
    Object? returnLeadsStatus = null,
    Object? returnLeadsError = freezed,
  }) {
    return _then(_LeadsState(
      leads: null == leads
          ? _self._leads
          : leads // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadsStatus: null == getLeadsStatus
          ? _self.getLeadsStatus
          : getLeadsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getLeadsError: freezed == getLeadsError
          ? _self.getLeadsError
          : getLeadsError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadsPaginator: freezed == leadsPaginator
          ? _self.leadsPaginator
          : leadsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      leadsSearch: freezed == leadsSearch
          ? _self.leadsSearch
          : leadsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      leadsFilter: freezed == leadsFilter
          ? _self._leadsFilter
          : leadsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      quickFilter: freezed == quickFilter
          ? _self.quickFilter
          : quickFilter // ignore: cast_nullable_to_non_nullable
              as QuickFilter?,
      sortDir: null == sortDir
          ? _self.sortDir
          : sortDir // ignore: cast_nullable_to_non_nullable
              as int,
      selectModeEnabled: null == selectModeEnabled
          ? _self.selectModeEnabled
          : selectModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedLeads: null == selectedLeads
          ? _self._selectedLeads
          : selectedLeads // ignore: cast_nullable_to_non_nullable
              as List<String>,
      returnLeadsStatus: null == returnLeadsStatus
          ? _self.returnLeadsStatus
          : returnLeadsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      returnLeadsError: freezed == returnLeadsError
          ? _self.returnLeadsError
          : returnLeadsError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LeadsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get leadsPaginator {
    if (_self.leadsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.leadsPaginator!, (value) {
      return _then(_self.copyWith(leadsPaginator: value));
    });
  }
}

// dart format on
