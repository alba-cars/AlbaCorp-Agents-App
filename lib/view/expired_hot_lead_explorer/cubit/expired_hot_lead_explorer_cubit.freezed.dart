// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expired_hot_lead_explorer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpiredHotLeadExplorerState {
  List<LeadExpirationModel> get expiredHotLeads;
  AppStatus get getExpiredHotLeadStatus;
  String? get getExpiredHotLeadError;
  Paginator? get expiredHotLeadsPaginator;
  AppStatus get assignLeadStatus;
  String? get assignLeadError;
  String? get assigningLeadId; // Added for in-card loading
  List<LeadSourceCategory> get leadSourceCategories;
  AppStatus get getLeadSourceCategories;
  List<LeadSourceItem> get selectedLeadSources;

  /// Create a copy of ExpiredHotLeadExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpiredHotLeadExplorerStateCopyWith<ExpiredHotLeadExplorerState>
      get copyWith => _$ExpiredHotLeadExplorerStateCopyWithImpl<
              ExpiredHotLeadExplorerState>(
          this as ExpiredHotLeadExplorerState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpiredHotLeadExplorerState &&
            const DeepCollectionEquality()
                .equals(other.expiredHotLeads, expiredHotLeads) &&
            (identical(
                    other.getExpiredHotLeadStatus, getExpiredHotLeadStatus) ||
                other.getExpiredHotLeadStatus == getExpiredHotLeadStatus) &&
            (identical(other.getExpiredHotLeadError, getExpiredHotLeadError) ||
                other.getExpiredHotLeadError == getExpiredHotLeadError) &&
            (identical(
                    other.expiredHotLeadsPaginator, expiredHotLeadsPaginator) ||
                other.expiredHotLeadsPaginator == expiredHotLeadsPaginator) &&
            (identical(other.assignLeadStatus, assignLeadStatus) ||
                other.assignLeadStatus == assignLeadStatus) &&
            (identical(other.assignLeadError, assignLeadError) ||
                other.assignLeadError == assignLeadError) &&
            (identical(other.assigningLeadId, assigningLeadId) ||
                other.assigningLeadId == assigningLeadId) &&
            const DeepCollectionEquality()
                .equals(other.leadSourceCategories, leadSourceCategories) &&
            (identical(
                    other.getLeadSourceCategories, getLeadSourceCategories) ||
                other.getLeadSourceCategories == getLeadSourceCategories) &&
            const DeepCollectionEquality()
                .equals(other.selectedLeadSources, selectedLeadSources));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(expiredHotLeads),
      getExpiredHotLeadStatus,
      getExpiredHotLeadError,
      expiredHotLeadsPaginator,
      assignLeadStatus,
      assignLeadError,
      assigningLeadId,
      const DeepCollectionEquality().hash(leadSourceCategories),
      getLeadSourceCategories,
      const DeepCollectionEquality().hash(selectedLeadSources));

  @override
  String toString() {
    return 'ExpiredHotLeadExplorerState(expiredHotLeads: $expiredHotLeads, getExpiredHotLeadStatus: $getExpiredHotLeadStatus, getExpiredHotLeadError: $getExpiredHotLeadError, expiredHotLeadsPaginator: $expiredHotLeadsPaginator, assignLeadStatus: $assignLeadStatus, assignLeadError: $assignLeadError, assigningLeadId: $assigningLeadId, leadSourceCategories: $leadSourceCategories, getLeadSourceCategories: $getLeadSourceCategories, selectedLeadSources: $selectedLeadSources)';
  }
}

/// @nodoc
abstract mixin class $ExpiredHotLeadExplorerStateCopyWith<$Res> {
  factory $ExpiredHotLeadExplorerStateCopyWith(
          ExpiredHotLeadExplorerState value,
          $Res Function(ExpiredHotLeadExplorerState) _then) =
      _$ExpiredHotLeadExplorerStateCopyWithImpl;
  @useResult
  $Res call(
      {List<LeadExpirationModel> expiredHotLeads,
      AppStatus getExpiredHotLeadStatus,
      String? getExpiredHotLeadError,
      Paginator? expiredHotLeadsPaginator,
      AppStatus assignLeadStatus,
      String? assignLeadError,
      String? assigningLeadId,
      List<LeadSourceCategory> leadSourceCategories,
      AppStatus getLeadSourceCategories,
      List<LeadSourceItem> selectedLeadSources});

  $PaginatorCopyWith<$Res>? get expiredHotLeadsPaginator;
}

/// @nodoc
class _$ExpiredHotLeadExplorerStateCopyWithImpl<$Res>
    implements $ExpiredHotLeadExplorerStateCopyWith<$Res> {
  _$ExpiredHotLeadExplorerStateCopyWithImpl(this._self, this._then);

  final ExpiredHotLeadExplorerState _self;
  final $Res Function(ExpiredHotLeadExplorerState) _then;

  /// Create a copy of ExpiredHotLeadExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiredHotLeads = null,
    Object? getExpiredHotLeadStatus = null,
    Object? getExpiredHotLeadError = freezed,
    Object? expiredHotLeadsPaginator = freezed,
    Object? assignLeadStatus = null,
    Object? assignLeadError = freezed,
    Object? assigningLeadId = freezed,
    Object? leadSourceCategories = null,
    Object? getLeadSourceCategories = null,
    Object? selectedLeadSources = null,
  }) {
    return _then(_self.copyWith(
      expiredHotLeads: null == expiredHotLeads
          ? _self.expiredHotLeads
          : expiredHotLeads // ignore: cast_nullable_to_non_nullable
              as List<LeadExpirationModel>,
      getExpiredHotLeadStatus: null == getExpiredHotLeadStatus
          ? _self.getExpiredHotLeadStatus
          : getExpiredHotLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getExpiredHotLeadError: freezed == getExpiredHotLeadError
          ? _self.getExpiredHotLeadError
          : getExpiredHotLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredHotLeadsPaginator: freezed == expiredHotLeadsPaginator
          ? _self.expiredHotLeadsPaginator
          : expiredHotLeadsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      assignLeadStatus: null == assignLeadStatus
          ? _self.assignLeadStatus
          : assignLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      assignLeadError: freezed == assignLeadError
          ? _self.assignLeadError
          : assignLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      assigningLeadId: freezed == assigningLeadId
          ? _self.assigningLeadId
          : assigningLeadId // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSourceCategories: null == leadSourceCategories
          ? _self.leadSourceCategories
          : leadSourceCategories // ignore: cast_nullable_to_non_nullable
              as List<LeadSourceCategory>,
      getLeadSourceCategories: null == getLeadSourceCategories
          ? _self.getLeadSourceCategories
          : getLeadSourceCategories // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      selectedLeadSources: null == selectedLeadSources
          ? _self.selectedLeadSources
          : selectedLeadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSourceItem>,
    ));
  }

  /// Create a copy of ExpiredHotLeadExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get expiredHotLeadsPaginator {
    if (_self.expiredHotLeadsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.expiredHotLeadsPaginator!, (value) {
      return _then(_self.copyWith(expiredHotLeadsPaginator: value));
    });
  }
}

/// @nodoc

class _ExpiredHotLeadExplorerState implements ExpiredHotLeadExplorerState {
  const _ExpiredHotLeadExplorerState(
      {final List<LeadExpirationModel> expiredHotLeads = const [],
      this.getExpiredHotLeadStatus = AppStatus.init,
      this.getExpiredHotLeadError,
      this.expiredHotLeadsPaginator,
      this.assignLeadStatus = AppStatus.init,
      this.assignLeadError,
      this.assigningLeadId,
      final List<LeadSourceCategory> leadSourceCategories = const [],
      this.getLeadSourceCategories = AppStatus.init,
      final List<LeadSourceItem> selectedLeadSources = const []})
      : _expiredHotLeads = expiredHotLeads,
        _leadSourceCategories = leadSourceCategories,
        _selectedLeadSources = selectedLeadSources;

  final List<LeadExpirationModel> _expiredHotLeads;
  @override
  @JsonKey()
  List<LeadExpirationModel> get expiredHotLeads {
    if (_expiredHotLeads is EqualUnmodifiableListView) return _expiredHotLeads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expiredHotLeads);
  }

  @override
  @JsonKey()
  final AppStatus getExpiredHotLeadStatus;
  @override
  final String? getExpiredHotLeadError;
  @override
  final Paginator? expiredHotLeadsPaginator;
  @override
  @JsonKey()
  final AppStatus assignLeadStatus;
  @override
  final String? assignLeadError;
  @override
  final String? assigningLeadId;
// Added for in-card loading
  final List<LeadSourceCategory> _leadSourceCategories;
// Added for in-card loading
  @override
  @JsonKey()
  List<LeadSourceCategory> get leadSourceCategories {
    if (_leadSourceCategories is EqualUnmodifiableListView)
      return _leadSourceCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leadSourceCategories);
  }

  @override
  @JsonKey()
  final AppStatus getLeadSourceCategories;
  final List<LeadSourceItem> _selectedLeadSources;
  @override
  @JsonKey()
  List<LeadSourceItem> get selectedLeadSources {
    if (_selectedLeadSources is EqualUnmodifiableListView)
      return _selectedLeadSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedLeadSources);
  }

  /// Create a copy of ExpiredHotLeadExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpiredHotLeadExplorerStateCopyWith<_ExpiredHotLeadExplorerState>
      get copyWith => __$ExpiredHotLeadExplorerStateCopyWithImpl<
          _ExpiredHotLeadExplorerState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpiredHotLeadExplorerState &&
            const DeepCollectionEquality()
                .equals(other._expiredHotLeads, _expiredHotLeads) &&
            (identical(
                    other.getExpiredHotLeadStatus, getExpiredHotLeadStatus) ||
                other.getExpiredHotLeadStatus == getExpiredHotLeadStatus) &&
            (identical(other.getExpiredHotLeadError, getExpiredHotLeadError) ||
                other.getExpiredHotLeadError == getExpiredHotLeadError) &&
            (identical(
                    other.expiredHotLeadsPaginator, expiredHotLeadsPaginator) ||
                other.expiredHotLeadsPaginator == expiredHotLeadsPaginator) &&
            (identical(other.assignLeadStatus, assignLeadStatus) ||
                other.assignLeadStatus == assignLeadStatus) &&
            (identical(other.assignLeadError, assignLeadError) ||
                other.assignLeadError == assignLeadError) &&
            (identical(other.assigningLeadId, assigningLeadId) ||
                other.assigningLeadId == assigningLeadId) &&
            const DeepCollectionEquality()
                .equals(other._leadSourceCategories, _leadSourceCategories) &&
            (identical(
                    other.getLeadSourceCategories, getLeadSourceCategories) ||
                other.getLeadSourceCategories == getLeadSourceCategories) &&
            const DeepCollectionEquality()
                .equals(other._selectedLeadSources, _selectedLeadSources));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_expiredHotLeads),
      getExpiredHotLeadStatus,
      getExpiredHotLeadError,
      expiredHotLeadsPaginator,
      assignLeadStatus,
      assignLeadError,
      assigningLeadId,
      const DeepCollectionEquality().hash(_leadSourceCategories),
      getLeadSourceCategories,
      const DeepCollectionEquality().hash(_selectedLeadSources));

  @override
  String toString() {
    return 'ExpiredHotLeadExplorerState(expiredHotLeads: $expiredHotLeads, getExpiredHotLeadStatus: $getExpiredHotLeadStatus, getExpiredHotLeadError: $getExpiredHotLeadError, expiredHotLeadsPaginator: $expiredHotLeadsPaginator, assignLeadStatus: $assignLeadStatus, assignLeadError: $assignLeadError, assigningLeadId: $assigningLeadId, leadSourceCategories: $leadSourceCategories, getLeadSourceCategories: $getLeadSourceCategories, selectedLeadSources: $selectedLeadSources)';
  }
}

/// @nodoc
abstract mixin class _$ExpiredHotLeadExplorerStateCopyWith<$Res>
    implements $ExpiredHotLeadExplorerStateCopyWith<$Res> {
  factory _$ExpiredHotLeadExplorerStateCopyWith(
          _ExpiredHotLeadExplorerState value,
          $Res Function(_ExpiredHotLeadExplorerState) _then) =
      __$ExpiredHotLeadExplorerStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<LeadExpirationModel> expiredHotLeads,
      AppStatus getExpiredHotLeadStatus,
      String? getExpiredHotLeadError,
      Paginator? expiredHotLeadsPaginator,
      AppStatus assignLeadStatus,
      String? assignLeadError,
      String? assigningLeadId,
      List<LeadSourceCategory> leadSourceCategories,
      AppStatus getLeadSourceCategories,
      List<LeadSourceItem> selectedLeadSources});

  @override
  $PaginatorCopyWith<$Res>? get expiredHotLeadsPaginator;
}

/// @nodoc
class __$ExpiredHotLeadExplorerStateCopyWithImpl<$Res>
    implements _$ExpiredHotLeadExplorerStateCopyWith<$Res> {
  __$ExpiredHotLeadExplorerStateCopyWithImpl(this._self, this._then);

  final _ExpiredHotLeadExplorerState _self;
  final $Res Function(_ExpiredHotLeadExplorerState) _then;

  /// Create a copy of ExpiredHotLeadExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? expiredHotLeads = null,
    Object? getExpiredHotLeadStatus = null,
    Object? getExpiredHotLeadError = freezed,
    Object? expiredHotLeadsPaginator = freezed,
    Object? assignLeadStatus = null,
    Object? assignLeadError = freezed,
    Object? assigningLeadId = freezed,
    Object? leadSourceCategories = null,
    Object? getLeadSourceCategories = null,
    Object? selectedLeadSources = null,
  }) {
    return _then(_ExpiredHotLeadExplorerState(
      expiredHotLeads: null == expiredHotLeads
          ? _self._expiredHotLeads
          : expiredHotLeads // ignore: cast_nullable_to_non_nullable
              as List<LeadExpirationModel>,
      getExpiredHotLeadStatus: null == getExpiredHotLeadStatus
          ? _self.getExpiredHotLeadStatus
          : getExpiredHotLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getExpiredHotLeadError: freezed == getExpiredHotLeadError
          ? _self.getExpiredHotLeadError
          : getExpiredHotLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredHotLeadsPaginator: freezed == expiredHotLeadsPaginator
          ? _self.expiredHotLeadsPaginator
          : expiredHotLeadsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      assignLeadStatus: null == assignLeadStatus
          ? _self.assignLeadStatus
          : assignLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      assignLeadError: freezed == assignLeadError
          ? _self.assignLeadError
          : assignLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      assigningLeadId: freezed == assigningLeadId
          ? _self.assigningLeadId
          : assigningLeadId // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSourceCategories: null == leadSourceCategories
          ? _self._leadSourceCategories
          : leadSourceCategories // ignore: cast_nullable_to_non_nullable
              as List<LeadSourceCategory>,
      getLeadSourceCategories: null == getLeadSourceCategories
          ? _self.getLeadSourceCategories
          : getLeadSourceCategories // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      selectedLeadSources: null == selectedLeadSources
          ? _self._selectedLeadSources
          : selectedLeadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSourceItem>,
    ));
  }

  /// Create a copy of ExpiredHotLeadExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get expiredHotLeadsPaginator {
    if (_self.expiredHotLeadsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.expiredHotLeadsPaginator!, (value) {
      return _then(_self.copyWith(expiredHotLeadsPaginator: value));
    });
  }
}

// dart format on
