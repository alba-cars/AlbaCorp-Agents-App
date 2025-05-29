// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_activities_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyActivitiesState {
  List<Activity> get activities;
  Paginator? get paginator;
  AppStatus get status;
  AppStatus get userLoadStatus;
  List<UserListData> get activityUsers;
  Paginator? get userPaginator;
  DateTime? get startDate;
  DateTime? get endDate;
  String? get activityStatus;
  String? get activityType;

  /// Create a copy of MyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyActivitiesStateCopyWith<MyActivitiesState> get copyWith =>
      _$MyActivitiesStateCopyWithImpl<MyActivitiesState>(
          this as MyActivitiesState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyActivitiesState &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            (identical(other.paginator, paginator) ||
                other.paginator == paginator) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userLoadStatus, userLoadStatus) ||
                other.userLoadStatus == userLoadStatus) &&
            const DeepCollectionEquality()
                .equals(other.activityUsers, activityUsers) &&
            (identical(other.userPaginator, userPaginator) ||
                other.userPaginator == userPaginator) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.activityStatus, activityStatus) ||
                other.activityStatus == activityStatus) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activities),
      paginator,
      status,
      userLoadStatus,
      const DeepCollectionEquality().hash(activityUsers),
      userPaginator,
      startDate,
      endDate,
      activityStatus,
      activityType);

  @override
  String toString() {
    return 'MyActivitiesState(activities: $activities, paginator: $paginator, status: $status, userLoadStatus: $userLoadStatus, activityUsers: $activityUsers, userPaginator: $userPaginator, startDate: $startDate, endDate: $endDate, activityStatus: $activityStatus, activityType: $activityType)';
  }
}

/// @nodoc
abstract mixin class $MyActivitiesStateCopyWith<$Res> {
  factory $MyActivitiesStateCopyWith(
          MyActivitiesState value, $Res Function(MyActivitiesState) _then) =
      _$MyActivitiesStateCopyWithImpl;
  @useResult
  $Res call(
      {List<Activity> activities,
      Paginator? paginator,
      AppStatus status,
      AppStatus userLoadStatus,
      List<UserListData> activityUsers,
      Paginator? userPaginator,
      DateTime? startDate,
      DateTime? endDate,
      String? activityStatus,
      String? activityType});

  $PaginatorCopyWith<$Res>? get paginator;
  $PaginatorCopyWith<$Res>? get userPaginator;
}

/// @nodoc
class _$MyActivitiesStateCopyWithImpl<$Res>
    implements $MyActivitiesStateCopyWith<$Res> {
  _$MyActivitiesStateCopyWithImpl(this._self, this._then);

  final MyActivitiesState _self;
  final $Res Function(MyActivitiesState) _then;

  /// Create a copy of MyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? paginator = freezed,
    Object? status = null,
    Object? userLoadStatus = null,
    Object? activityUsers = null,
    Object? userPaginator = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? activityStatus = freezed,
    Object? activityType = freezed,
  }) {
    return _then(_self.copyWith(
      activities: null == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      paginator: freezed == paginator
          ? _self.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      userLoadStatus: null == userLoadStatus
          ? _self.userLoadStatus
          : userLoadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      activityUsers: null == activityUsers
          ? _self.activityUsers
          : activityUsers // ignore: cast_nullable_to_non_nullable
              as List<UserListData>,
      userPaginator: freezed == userPaginator
          ? _self.userPaginator
          : userPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activityStatus: freezed == activityStatus
          ? _self.activityStatus
          : activityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _self.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MyActivitiesState
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

  /// Create a copy of MyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get userPaginator {
    if (_self.userPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.userPaginator!, (value) {
      return _then(_self.copyWith(userPaginator: value));
    });
  }
}

/// @nodoc

class _MyActivitiesState implements MyActivitiesState {
  const _MyActivitiesState(
      {final List<Activity> activities = const [],
      this.paginator,
      this.status = AppStatus.init,
      this.userLoadStatus = AppStatus.init,
      final List<UserListData> activityUsers = const [],
      this.userPaginator,
      this.startDate,
      this.endDate,
      this.activityStatus,
      this.activityType})
      : _activities = activities,
        _activityUsers = activityUsers;

  final List<Activity> _activities;
  @override
  @JsonKey()
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final Paginator? paginator;
  @override
  @JsonKey()
  final AppStatus status;
  @override
  @JsonKey()
  final AppStatus userLoadStatus;
  final List<UserListData> _activityUsers;
  @override
  @JsonKey()
  List<UserListData> get activityUsers {
    if (_activityUsers is EqualUnmodifiableListView) return _activityUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activityUsers);
  }

  @override
  final Paginator? userPaginator;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? activityStatus;
  @override
  final String? activityType;

  /// Create a copy of MyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyActivitiesStateCopyWith<_MyActivitiesState> get copyWith =>
      __$MyActivitiesStateCopyWithImpl<_MyActivitiesState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyActivitiesState &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.paginator, paginator) ||
                other.paginator == paginator) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userLoadStatus, userLoadStatus) ||
                other.userLoadStatus == userLoadStatus) &&
            const DeepCollectionEquality()
                .equals(other._activityUsers, _activityUsers) &&
            (identical(other.userPaginator, userPaginator) ||
                other.userPaginator == userPaginator) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.activityStatus, activityStatus) ||
                other.activityStatus == activityStatus) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activities),
      paginator,
      status,
      userLoadStatus,
      const DeepCollectionEquality().hash(_activityUsers),
      userPaginator,
      startDate,
      endDate,
      activityStatus,
      activityType);

  @override
  String toString() {
    return 'MyActivitiesState(activities: $activities, paginator: $paginator, status: $status, userLoadStatus: $userLoadStatus, activityUsers: $activityUsers, userPaginator: $userPaginator, startDate: $startDate, endDate: $endDate, activityStatus: $activityStatus, activityType: $activityType)';
  }
}

/// @nodoc
abstract mixin class _$MyActivitiesStateCopyWith<$Res>
    implements $MyActivitiesStateCopyWith<$Res> {
  factory _$MyActivitiesStateCopyWith(
          _MyActivitiesState value, $Res Function(_MyActivitiesState) _then) =
      __$MyActivitiesStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Activity> activities,
      Paginator? paginator,
      AppStatus status,
      AppStatus userLoadStatus,
      List<UserListData> activityUsers,
      Paginator? userPaginator,
      DateTime? startDate,
      DateTime? endDate,
      String? activityStatus,
      String? activityType});

  @override
  $PaginatorCopyWith<$Res>? get paginator;
  @override
  $PaginatorCopyWith<$Res>? get userPaginator;
}

/// @nodoc
class __$MyActivitiesStateCopyWithImpl<$Res>
    implements _$MyActivitiesStateCopyWith<$Res> {
  __$MyActivitiesStateCopyWithImpl(this._self, this._then);

  final _MyActivitiesState _self;
  final $Res Function(_MyActivitiesState) _then;

  /// Create a copy of MyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? activities = null,
    Object? paginator = freezed,
    Object? status = null,
    Object? userLoadStatus = null,
    Object? activityUsers = null,
    Object? userPaginator = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? activityStatus = freezed,
    Object? activityType = freezed,
  }) {
    return _then(_MyActivitiesState(
      activities: null == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      paginator: freezed == paginator
          ? _self.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      userLoadStatus: null == userLoadStatus
          ? _self.userLoadStatus
          : userLoadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      activityUsers: null == activityUsers
          ? _self._activityUsers
          : activityUsers // ignore: cast_nullable_to_non_nullable
              as List<UserListData>,
      userPaginator: freezed == userPaginator
          ? _self.userPaginator
          : userPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activityStatus: freezed == activityStatus
          ? _self.activityStatus
          : activityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _self.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MyActivitiesState
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

  /// Create a copy of MyActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get userPaginator {
    if (_self.userPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.userPaginator!, (value) {
      return _then(_self.copyWith(userPaginator: value));
    });
  }
}

// dart format on
