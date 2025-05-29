// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enquiries_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EnquiriesState {
  Map<TaskFilterEnum, AppStatus> get fetchStatus;
  Map<TaskFilterEnum, Paginator?> get paginator;
  Map<TaskFilterEnum, List<Activity>> get activities;
  Map<TaskFilterEnum, String> get error;
  Map<String, dynamic>? get activityFilter;

  /// Create a copy of EnquiriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EnquiriesStateCopyWith<EnquiriesState> get copyWith =>
      _$EnquiriesStateCopyWithImpl<EnquiriesState>(
          this as EnquiriesState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnquiriesState &&
            const DeepCollectionEquality()
                .equals(other.fetchStatus, fetchStatus) &&
            const DeepCollectionEquality().equals(other.paginator, paginator) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.activityFilter, activityFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fetchStatus),
      const DeepCollectionEquality().hash(paginator),
      const DeepCollectionEquality().hash(activities),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(activityFilter));

  @override
  String toString() {
    return 'EnquiriesState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error, activityFilter: $activityFilter)';
  }
}

/// @nodoc
abstract mixin class $EnquiriesStateCopyWith<$Res> {
  factory $EnquiriesStateCopyWith(
          EnquiriesState value, $Res Function(EnquiriesState) _then) =
      _$EnquiriesStateCopyWithImpl;
  @useResult
  $Res call(
      {Map<TaskFilterEnum, AppStatus> fetchStatus,
      Map<TaskFilterEnum, Paginator?> paginator,
      Map<TaskFilterEnum, List<Activity>> activities,
      Map<TaskFilterEnum, String> error,
      Map<String, dynamic>? activityFilter});
}

/// @nodoc
class _$EnquiriesStateCopyWithImpl<$Res>
    implements $EnquiriesStateCopyWith<$Res> {
  _$EnquiriesStateCopyWithImpl(this._self, this._then);

  final EnquiriesState _self;
  final $Res Function(EnquiriesState) _then;

  /// Create a copy of EnquiriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = null,
    Object? activities = null,
    Object? error = null,
    Object? activityFilter = freezed,
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
    ));
  }
}

/// @nodoc

class _EnquiriesState implements EnquiriesState {
  const _EnquiriesState(
      {final Map<TaskFilterEnum, AppStatus> fetchStatus = const {
        TaskFilterEnum.New: AppStatus.initial,
        TaskFilterEnum.FollowUp: AppStatus.initial,
        TaskFilterEnum.Favourites: AppStatus.initial
      },
      final Map<TaskFilterEnum, Paginator?> paginator = const {},
      final Map<TaskFilterEnum, List<Activity>> activities = const {},
      final Map<TaskFilterEnum, String> error = const {},
      final Map<String, dynamic>? activityFilter})
      : _fetchStatus = fetchStatus,
        _paginator = paginator,
        _activities = activities,
        _error = error,
        _activityFilter = activityFilter;

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

  /// Create a copy of EnquiriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EnquiriesStateCopyWith<_EnquiriesState> get copyWith =>
      __$EnquiriesStateCopyWithImpl<_EnquiriesState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EnquiriesState &&
            const DeepCollectionEquality()
                .equals(other._fetchStatus, _fetchStatus) &&
            const DeepCollectionEquality()
                .equals(other._paginator, _paginator) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality().equals(other._error, _error) &&
            const DeepCollectionEquality()
                .equals(other._activityFilter, _activityFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fetchStatus),
      const DeepCollectionEquality().hash(_paginator),
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_error),
      const DeepCollectionEquality().hash(_activityFilter));

  @override
  String toString() {
    return 'EnquiriesState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error, activityFilter: $activityFilter)';
  }
}

/// @nodoc
abstract mixin class _$EnquiriesStateCopyWith<$Res>
    implements $EnquiriesStateCopyWith<$Res> {
  factory _$EnquiriesStateCopyWith(
          _EnquiriesState value, $Res Function(_EnquiriesState) _then) =
      __$EnquiriesStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<TaskFilterEnum, AppStatus> fetchStatus,
      Map<TaskFilterEnum, Paginator?> paginator,
      Map<TaskFilterEnum, List<Activity>> activities,
      Map<TaskFilterEnum, String> error,
      Map<String, dynamic>? activityFilter});
}

/// @nodoc
class __$EnquiriesStateCopyWithImpl<$Res>
    implements _$EnquiriesStateCopyWith<$Res> {
  __$EnquiriesStateCopyWithImpl(this._self, this._then);

  final _EnquiriesState _self;
  final $Res Function(_EnquiriesState) _then;

  /// Create a copy of EnquiriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = null,
    Object? activities = null,
    Object? error = null,
    Object? activityFilter = freezed,
  }) {
    return _then(_EnquiriesState(
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
    ));
  }
}

// dart format on
