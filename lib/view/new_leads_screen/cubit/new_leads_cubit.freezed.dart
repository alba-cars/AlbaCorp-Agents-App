// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_leads_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewLeadsState {
  Map<NewLeadTaskFilterEnum, AppStatus> get fetchStatus;
  Map<NewLeadTaskFilterEnum, Paginator?> get paginator;
  Map<NewLeadTaskFilterEnum, List<Activity>> get activities;
  Map<NewLeadTaskFilterEnum, String> get error;
  Map<String, dynamic>? get activityFilter;
  Map<NewLeadTaskFilterEnum, int> get tabCounts;

  /// Create a copy of NewLeadsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewLeadsStateCopyWith<NewLeadsState> get copyWith =>
      _$NewLeadsStateCopyWithImpl<NewLeadsState>(
          this as NewLeadsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewLeadsState &&
            const DeepCollectionEquality()
                .equals(other.fetchStatus, fetchStatus) &&
            const DeepCollectionEquality().equals(other.paginator, paginator) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.activityFilter, activityFilter) &&
            const DeepCollectionEquality().equals(other.tabCounts, tabCounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fetchStatus),
      const DeepCollectionEquality().hash(paginator),
      const DeepCollectionEquality().hash(activities),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(activityFilter),
      const DeepCollectionEquality().hash(tabCounts));

  @override
  String toString() {
    return 'NewLeadsState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error, activityFilter: $activityFilter, tabCounts: $tabCounts)';
  }
}

/// @nodoc
abstract mixin class $NewLeadsStateCopyWith<$Res> {
  factory $NewLeadsStateCopyWith(
          NewLeadsState value, $Res Function(NewLeadsState) _then) =
      _$NewLeadsStateCopyWithImpl;
  @useResult
  $Res call(
      {Map<NewLeadTaskFilterEnum, AppStatus> fetchStatus,
      Map<NewLeadTaskFilterEnum, Paginator?> paginator,
      Map<NewLeadTaskFilterEnum, List<Activity>> activities,
      Map<NewLeadTaskFilterEnum, String> error,
      Map<String, dynamic>? activityFilter,
      Map<NewLeadTaskFilterEnum, int> tabCounts});
}

/// @nodoc
class _$NewLeadsStateCopyWithImpl<$Res>
    implements $NewLeadsStateCopyWith<$Res> {
  _$NewLeadsStateCopyWithImpl(this._self, this._then);

  final NewLeadsState _self;
  final $Res Function(NewLeadsState) _then;

  /// Create a copy of NewLeadsState
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
  }) {
    return _then(_self.copyWith(
      fetchStatus: null == fetchStatus
          ? _self.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, AppStatus>,
      paginator: null == paginator
          ? _self.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, Paginator?>,
      activities: null == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, List<Activity>>,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, String>,
      activityFilter: freezed == activityFilter
          ? _self.activityFilter
          : activityFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tabCounts: null == tabCounts
          ? _self.tabCounts
          : tabCounts // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, int>,
    ));
  }
}

/// @nodoc

class _NewLeadsState implements NewLeadsState {
  const _NewLeadsState(
      {final Map<NewLeadTaskFilterEnum, AppStatus> fetchStatus = const {
        NewLeadTaskFilterEnum.Enquiry: AppStatus.initial,
        NewLeadTaskFilterEnum.Cold: AppStatus.initial
      },
      final Map<NewLeadTaskFilterEnum, Paginator?> paginator = const {},
      final Map<NewLeadTaskFilterEnum, List<Activity>> activities = const {},
      final Map<NewLeadTaskFilterEnum, String> error = const {},
      final Map<String, dynamic>? activityFilter,
      final Map<NewLeadTaskFilterEnum, int> tabCounts = const {}})
      : _fetchStatus = fetchStatus,
        _paginator = paginator,
        _activities = activities,
        _error = error,
        _activityFilter = activityFilter,
        _tabCounts = tabCounts;

  final Map<NewLeadTaskFilterEnum, AppStatus> _fetchStatus;
  @override
  @JsonKey()
  Map<NewLeadTaskFilterEnum, AppStatus> get fetchStatus {
    if (_fetchStatus is EqualUnmodifiableMapView) return _fetchStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fetchStatus);
  }

  final Map<NewLeadTaskFilterEnum, Paginator?> _paginator;
  @override
  @JsonKey()
  Map<NewLeadTaskFilterEnum, Paginator?> get paginator {
    if (_paginator is EqualUnmodifiableMapView) return _paginator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paginator);
  }

  final Map<NewLeadTaskFilterEnum, List<Activity>> _activities;
  @override
  @JsonKey()
  Map<NewLeadTaskFilterEnum, List<Activity>> get activities {
    if (_activities is EqualUnmodifiableMapView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_activities);
  }

  final Map<NewLeadTaskFilterEnum, String> _error;
  @override
  @JsonKey()
  Map<NewLeadTaskFilterEnum, String> get error {
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

  final Map<NewLeadTaskFilterEnum, int> _tabCounts;
  @override
  @JsonKey()
  Map<NewLeadTaskFilterEnum, int> get tabCounts {
    if (_tabCounts is EqualUnmodifiableMapView) return _tabCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tabCounts);
  }

  /// Create a copy of NewLeadsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewLeadsStateCopyWith<_NewLeadsState> get copyWith =>
      __$NewLeadsStateCopyWithImpl<_NewLeadsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewLeadsState &&
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
                .equals(other._tabCounts, _tabCounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fetchStatus),
      const DeepCollectionEquality().hash(_paginator),
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_error),
      const DeepCollectionEquality().hash(_activityFilter),
      const DeepCollectionEquality().hash(_tabCounts));

  @override
  String toString() {
    return 'NewLeadsState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error, activityFilter: $activityFilter, tabCounts: $tabCounts)';
  }
}

/// @nodoc
abstract mixin class _$NewLeadsStateCopyWith<$Res>
    implements $NewLeadsStateCopyWith<$Res> {
  factory _$NewLeadsStateCopyWith(
          _NewLeadsState value, $Res Function(_NewLeadsState) _then) =
      __$NewLeadsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<NewLeadTaskFilterEnum, AppStatus> fetchStatus,
      Map<NewLeadTaskFilterEnum, Paginator?> paginator,
      Map<NewLeadTaskFilterEnum, List<Activity>> activities,
      Map<NewLeadTaskFilterEnum, String> error,
      Map<String, dynamic>? activityFilter,
      Map<NewLeadTaskFilterEnum, int> tabCounts});
}

/// @nodoc
class __$NewLeadsStateCopyWithImpl<$Res>
    implements _$NewLeadsStateCopyWith<$Res> {
  __$NewLeadsStateCopyWithImpl(this._self, this._then);

  final _NewLeadsState _self;
  final $Res Function(_NewLeadsState) _then;

  /// Create a copy of NewLeadsState
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
  }) {
    return _then(_NewLeadsState(
      fetchStatus: null == fetchStatus
          ? _self._fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, AppStatus>,
      paginator: null == paginator
          ? _self._paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, Paginator?>,
      activities: null == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, List<Activity>>,
      error: null == error
          ? _self._error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, String>,
      activityFilter: freezed == activityFilter
          ? _self._activityFilter
          : activityFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tabCounts: null == tabCounts
          ? _self._tabCounts
          : tabCounts // ignore: cast_nullable_to_non_nullable
              as Map<NewLeadTaskFilterEnum, int>,
    ));
  }
}

// dart format on
