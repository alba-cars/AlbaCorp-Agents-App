// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_activities_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyActivitiesState {
  List<Activity> get activities => throw _privateConstructorUsedError;
  Paginator? get paginator => throw _privateConstructorUsedError;
  AppStatus get status => throw _privateConstructorUsedError;
  AppStatus get userLoadStatus => throw _privateConstructorUsedError;
  List<UserListData> get activityUsers => throw _privateConstructorUsedError;
  Paginator? get userPaginator => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get activityStatus => throw _privateConstructorUsedError;
  String? get activityType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyActivitiesStateCopyWith<MyActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyActivitiesStateCopyWith<$Res> {
  factory $MyActivitiesStateCopyWith(
          MyActivitiesState value, $Res Function(MyActivitiesState) then) =
      _$MyActivitiesStateCopyWithImpl<$Res, MyActivitiesState>;
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
class _$MyActivitiesStateCopyWithImpl<$Res, $Val extends MyActivitiesState>
    implements $MyActivitiesStateCopyWith<$Res> {
  _$MyActivitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      paginator: freezed == paginator
          ? _value.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      userLoadStatus: null == userLoadStatus
          ? _value.userLoadStatus
          : userLoadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      activityUsers: null == activityUsers
          ? _value.activityUsers
          : activityUsers // ignore: cast_nullable_to_non_nullable
              as List<UserListData>,
      userPaginator: freezed == userPaginator
          ? _value.userPaginator
          : userPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activityStatus: freezed == activityStatus
          ? _value.activityStatus
          : activityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get paginator {
    if (_value.paginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.paginator!, (value) {
      return _then(_value.copyWith(paginator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get userPaginator {
    if (_value.userPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.userPaginator!, (value) {
      return _then(_value.copyWith(userPaginator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyActivitiesStateImplCopyWith<$Res>
    implements $MyActivitiesStateCopyWith<$Res> {
  factory _$$MyActivitiesStateImplCopyWith(_$MyActivitiesStateImpl value,
          $Res Function(_$MyActivitiesStateImpl) then) =
      __$$MyActivitiesStateImplCopyWithImpl<$Res>;
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
class __$$MyActivitiesStateImplCopyWithImpl<$Res>
    extends _$MyActivitiesStateCopyWithImpl<$Res, _$MyActivitiesStateImpl>
    implements _$$MyActivitiesStateImplCopyWith<$Res> {
  __$$MyActivitiesStateImplCopyWithImpl(_$MyActivitiesStateImpl _value,
      $Res Function(_$MyActivitiesStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$MyActivitiesStateImpl(
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      paginator: freezed == paginator
          ? _value.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      userLoadStatus: null == userLoadStatus
          ? _value.userLoadStatus
          : userLoadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      activityUsers: null == activityUsers
          ? _value._activityUsers
          : activityUsers // ignore: cast_nullable_to_non_nullable
              as List<UserListData>,
      userPaginator: freezed == userPaginator
          ? _value.userPaginator
          : userPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activityStatus: freezed == activityStatus
          ? _value.activityStatus
          : activityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MyActivitiesStateImpl implements _MyActivitiesState {
  const _$MyActivitiesStateImpl(
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

  @override
  String toString() {
    return 'MyActivitiesState(activities: $activities, paginator: $paginator, status: $status, userLoadStatus: $userLoadStatus, activityUsers: $activityUsers, userPaginator: $userPaginator, startDate: $startDate, endDate: $endDate, activityStatus: $activityStatus, activityType: $activityType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyActivitiesStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyActivitiesStateImplCopyWith<_$MyActivitiesStateImpl> get copyWith =>
      __$$MyActivitiesStateImplCopyWithImpl<_$MyActivitiesStateImpl>(
          this, _$identity);
}

abstract class _MyActivitiesState implements MyActivitiesState {
  const factory _MyActivitiesState(
      {final List<Activity> activities,
      final Paginator? paginator,
      final AppStatus status,
      final AppStatus userLoadStatus,
      final List<UserListData> activityUsers,
      final Paginator? userPaginator,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? activityStatus,
      final String? activityType}) = _$MyActivitiesStateImpl;

  @override
  List<Activity> get activities;
  @override
  Paginator? get paginator;
  @override
  AppStatus get status;
  @override
  AppStatus get userLoadStatus;
  @override
  List<UserListData> get activityUsers;
  @override
  Paginator? get userPaginator;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get activityStatus;
  @override
  String? get activityType;
  @override
  @JsonKey(ignore: true)
  _$$MyActivitiesStateImplCopyWith<_$MyActivitiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
