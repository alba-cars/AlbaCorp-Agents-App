// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_leads_assigned_today_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HotLeadsAssignedTodayState {
  AppStatus get fetchStatus;
  Paginator? get paginator;
  List<Activity> get activities;
  String? get error;

  /// Create a copy of HotLeadsAssignedTodayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HotLeadsAssignedTodayStateCopyWith<HotLeadsAssignedTodayState>
      get copyWith =>
          _$HotLeadsAssignedTodayStateCopyWithImpl<HotLeadsAssignedTodayState>(
              this as HotLeadsAssignedTodayState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HotLeadsAssignedTodayState &&
            (identical(other.fetchStatus, fetchStatus) ||
                other.fetchStatus == fetchStatus) &&
            (identical(other.paginator, paginator) ||
                other.paginator == paginator) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchStatus, paginator,
      const DeepCollectionEquality().hash(activities), error);

  @override
  String toString() {
    return 'HotLeadsAssignedTodayState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error)';
  }
}

/// @nodoc
abstract mixin class $HotLeadsAssignedTodayStateCopyWith<$Res> {
  factory $HotLeadsAssignedTodayStateCopyWith(HotLeadsAssignedTodayState value,
          $Res Function(HotLeadsAssignedTodayState) _then) =
      _$HotLeadsAssignedTodayStateCopyWithImpl;
  @useResult
  $Res call(
      {AppStatus fetchStatus,
      Paginator? paginator,
      List<Activity> activities,
      String? error});

  $PaginatorCopyWith<$Res>? get paginator;
}

/// @nodoc
class _$HotLeadsAssignedTodayStateCopyWithImpl<$Res>
    implements $HotLeadsAssignedTodayStateCopyWith<$Res> {
  _$HotLeadsAssignedTodayStateCopyWithImpl(this._self, this._then);

  final HotLeadsAssignedTodayState _self;
  final $Res Function(HotLeadsAssignedTodayState) _then;

  /// Create a copy of HotLeadsAssignedTodayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = freezed,
    Object? activities = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      fetchStatus: null == fetchStatus
          ? _self.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      paginator: freezed == paginator
          ? _self.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      activities: null == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of HotLeadsAssignedTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get paginator {
    if (_self.paginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.paginator!, (value) {
      return _then(_self.copyWith(paginator: value));
    });
  }
}

/// @nodoc

class _HotLeadsAssignedTodayState implements HotLeadsAssignedTodayState {
  const _HotLeadsAssignedTodayState(
      {this.fetchStatus = AppStatus.init,
      this.paginator,
      final List<Activity> activities = const [],
      this.error})
      : _activities = activities;

  @override
  @JsonKey()
  final AppStatus fetchStatus;
  @override
  final Paginator? paginator;
  final List<Activity> _activities;
  @override
  @JsonKey()
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final String? error;

  /// Create a copy of HotLeadsAssignedTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HotLeadsAssignedTodayStateCopyWith<_HotLeadsAssignedTodayState>
      get copyWith => __$HotLeadsAssignedTodayStateCopyWithImpl<
          _HotLeadsAssignedTodayState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HotLeadsAssignedTodayState &&
            (identical(other.fetchStatus, fetchStatus) ||
                other.fetchStatus == fetchStatus) &&
            (identical(other.paginator, paginator) ||
                other.paginator == paginator) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchStatus, paginator,
      const DeepCollectionEquality().hash(_activities), error);

  @override
  String toString() {
    return 'HotLeadsAssignedTodayState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$HotLeadsAssignedTodayStateCopyWith<$Res>
    implements $HotLeadsAssignedTodayStateCopyWith<$Res> {
  factory _$HotLeadsAssignedTodayStateCopyWith(
          _HotLeadsAssignedTodayState value,
          $Res Function(_HotLeadsAssignedTodayState) _then) =
      __$HotLeadsAssignedTodayStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppStatus fetchStatus,
      Paginator? paginator,
      List<Activity> activities,
      String? error});

  @override
  $PaginatorCopyWith<$Res>? get paginator;
}

/// @nodoc
class __$HotLeadsAssignedTodayStateCopyWithImpl<$Res>
    implements _$HotLeadsAssignedTodayStateCopyWith<$Res> {
  __$HotLeadsAssignedTodayStateCopyWithImpl(this._self, this._then);

  final _HotLeadsAssignedTodayState _self;
  final $Res Function(_HotLeadsAssignedTodayState) _then;

  /// Create a copy of HotLeadsAssignedTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = freezed,
    Object? activities = null,
    Object? error = freezed,
  }) {
    return _then(_HotLeadsAssignedTodayState(
      fetchStatus: null == fetchStatus
          ? _self.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      paginator: freezed == paginator
          ? _self.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      activities: null == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of HotLeadsAssignedTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get paginator {
    if (_self.paginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.paginator!, (value) {
      return _then(_self.copyWith(paginator: value));
    });
  }
}

// dart format on
