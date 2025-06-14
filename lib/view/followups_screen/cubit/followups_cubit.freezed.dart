// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followups_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowupsState {
  Map<TaskFilterEnum, AppStatus> get fetchStatus;
  Map<TaskFilterEnum, Paginator?> get paginator;
  Map<TaskFilterEnum, List<Activity>> get activities;
  Map<TaskFilterEnum, String> get error;
  Map<String, dynamic>? get activityFilter;
  Map<TaskFilterEnum, int> get tabCounts;
  String? get leadSourceType;

  /// Create a copy of FollowupsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowupsStateCopyWith<FollowupsState> get copyWith =>
      _$FollowupsStateCopyWithImpl<FollowupsState>(
          this as FollowupsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowupsState &&
            const DeepCollectionEquality()
                .equals(other.fetchStatus, fetchStatus) &&
            const DeepCollectionEquality().equals(other.paginator, paginator) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.activityFilter, activityFilter) &&
            const DeepCollectionEquality().equals(other.tabCounts, tabCounts) &&
            (identical(other.leadSourceType, leadSourceType) ||
                other.leadSourceType == leadSourceType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fetchStatus),
      const DeepCollectionEquality().hash(paginator),
      const DeepCollectionEquality().hash(activities),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(activityFilter),
      const DeepCollectionEquality().hash(tabCounts),
      leadSourceType);

  @override
  String toString() {
    return 'FollowupsState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error, activityFilter: $activityFilter, tabCounts: $tabCounts, leadSourceType: $leadSourceType)';
  }
}

/// @nodoc
abstract mixin class $FollowupsStateCopyWith<$Res> {
  factory $FollowupsStateCopyWith(
          FollowupsState value, $Res Function(FollowupsState) _then) =
      _$FollowupsStateCopyWithImpl;
  @useResult
  $Res call(
      {Map<TaskFilterEnum, AppStatus> fetchStatus,
      Map<TaskFilterEnum, Paginator?> paginator,
      Map<TaskFilterEnum, List<Activity>> activities,
      Map<TaskFilterEnum, String> error,
      Map<String, dynamic>? activityFilter,
      Map<TaskFilterEnum, int> tabCounts,
      String? leadSourceType});
}

/// @nodoc
class _$FollowupsStateCopyWithImpl<$Res>
    implements $FollowupsStateCopyWith<$Res> {
  _$FollowupsStateCopyWithImpl(this._self, this._then);

  final FollowupsState _self;
  final $Res Function(FollowupsState) _then;

  /// Create a copy of FollowupsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = null,
    Object? activities = null,
    Object? error = null,
    Object? activityFilter = freezed,
    Object? tabCounts = null,
    Object? leadSourceType = freezed,
  }) {
    return _then(_self.copyWith(
      fetchStatus: null == fetchStatus
          ? _self.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, AppStatus>,
      paginator: null == paginator
          ? _self.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, Paginator?>,
      activities: null == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, List<Activity>>,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, String>,
      activityFilter: freezed == activityFilter
          ? _self.activityFilter
          : activityFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tabCounts: null == tabCounts
          ? _self.tabCounts
          : tabCounts // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, int>,
      leadSourceType: freezed == leadSourceType
          ? _self.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _FollowupsState implements FollowupsState {
  const _FollowupsState(
      {final Map<TaskFilterEnum, AppStatus> fetchStatus = const {
        TaskFilterEnum.FollowUpToday: AppStatus.initial,
        TaskFilterEnum.FollowUpTomorrow: AppStatus.initial,
        TaskFilterEnum.FollowUpOverDue: AppStatus.initial,
        TaskFilterEnum.FollowUpAll: AppStatus.initial
      },
      final Map<TaskFilterEnum, Paginator?> paginator = const {},
      final Map<TaskFilterEnum, List<Activity>> activities = const {},
      final Map<TaskFilterEnum, String> error = const {},
      final Map<String, dynamic>? activityFilter,
      final Map<TaskFilterEnum, int> tabCounts = const {},
      this.leadSourceType = 'hot'})
      : _fetchStatus = fetchStatus,
        _paginator = paginator,
        _activities = activities,
        _error = error,
        _activityFilter = activityFilter,
        _tabCounts = tabCounts;

  final Map<TaskFilterEnum, AppStatus> _fetchStatus;
  @override
  @JsonKey()
  Map<TaskFilterEnum, AppStatus> get fetchStatus {
    if (_fetchStatus is EqualUnmodifiableMapView) return _fetchStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fetchStatus);
  }

  final Map<TaskFilterEnum, Paginator?> _paginator;
  @override
  @JsonKey()
  Map<TaskFilterEnum, Paginator?> get paginator {
    if (_paginator is EqualUnmodifiableMapView) return _paginator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paginator);
  }

  final Map<TaskFilterEnum, List<Activity>> _activities;
  @override
  @JsonKey()
  Map<TaskFilterEnum, List<Activity>> get activities {
    if (_activities is EqualUnmodifiableMapView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_activities);
  }

  final Map<TaskFilterEnum, String> _error;
  @override
  @JsonKey()
  Map<TaskFilterEnum, String> get error {
    if (_error is EqualUnmodifiableMapView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_error);
  }

  final Map<String, dynamic>? _activityFilter;
  @override
  Map<String, dynamic>? get activityFilter {
    final value = _activityFilter;
    if (value == null) return null;
    if (_activityFilter is EqualUnmodifiableMapView) return _activityFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<TaskFilterEnum, int> _tabCounts;
  @override
  @JsonKey()
  Map<TaskFilterEnum, int> get tabCounts {
    if (_tabCounts is EqualUnmodifiableMapView) return _tabCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tabCounts);
  }

  @override
  @JsonKey()
  final String? leadSourceType;

  /// Create a copy of FollowupsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FollowupsStateCopyWith<_FollowupsState> get copyWith =>
      __$FollowupsStateCopyWithImpl<_FollowupsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowupsState &&
            const DeepCollectionEquality()
                .equals(other._fetchStatus, _fetchStatus) &&
            const DeepCollectionEquality()
                .equals(other._paginator, _paginator) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality().equals(other._error, _error) &&
            const DeepCollectionEquality()
                .equals(other._activityFilter, _activityFilter) &&
            const DeepCollectionEquality()
                .equals(other._tabCounts, _tabCounts) &&
            (identical(other.leadSourceType, leadSourceType) ||
                other.leadSourceType == leadSourceType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fetchStatus),
      const DeepCollectionEquality().hash(_paginator),
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_error),
      const DeepCollectionEquality().hash(_activityFilter),
      const DeepCollectionEquality().hash(_tabCounts),
      leadSourceType);

  @override
  String toString() {
    return 'FollowupsState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error, activityFilter: $activityFilter, tabCounts: $tabCounts, leadSourceType: $leadSourceType)';
  }
}

/// @nodoc
abstract mixin class _$FollowupsStateCopyWith<$Res>
    implements $FollowupsStateCopyWith<$Res> {
  factory _$FollowupsStateCopyWith(
          _FollowupsState value, $Res Function(_FollowupsState) _then) =
      __$FollowupsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<TaskFilterEnum, AppStatus> fetchStatus,
      Map<TaskFilterEnum, Paginator?> paginator,
      Map<TaskFilterEnum, List<Activity>> activities,
      Map<TaskFilterEnum, String> error,
      Map<String, dynamic>? activityFilter,
      Map<TaskFilterEnum, int> tabCounts,
      String? leadSourceType});
}

/// @nodoc
class __$FollowupsStateCopyWithImpl<$Res>
    implements _$FollowupsStateCopyWith<$Res> {
  __$FollowupsStateCopyWithImpl(this._self, this._then);

  final _FollowupsState _self;
  final $Res Function(_FollowupsState) _then;

  /// Create a copy of FollowupsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = null,
    Object? activities = null,
    Object? error = null,
    Object? activityFilter = freezed,
    Object? tabCounts = null,
    Object? leadSourceType = freezed,
  }) {
    return _then(_FollowupsState(
      fetchStatus: null == fetchStatus
          ? _self._fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, AppStatus>,
      paginator: null == paginator
          ? _self._paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, Paginator?>,
      activities: null == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, List<Activity>>,
      error: null == error
          ? _self._error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, String>,
      activityFilter: freezed == activityFilter
          ? _self._activityFilter
          : activityFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tabCounts: null == tabCounts
          ? _self._tabCounts
          : tabCounts // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, int>,
      leadSourceType: freezed == leadSourceType
          ? _self.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
