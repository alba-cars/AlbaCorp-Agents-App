// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskDetailState {
  String get taskId => throw _privateConstructorUsedError;
  Status get getTaskStatus => throw _privateConstructorUsedError;
  String? get getTaskError => throw _privateConstructorUsedError;
  Activity? get task => throw _privateConstructorUsedError;
  Status get updateTaskStatus => throw _privateConstructorUsedError;
  String? get updateTaskError => throw _privateConstructorUsedError;
  List<Activity> get sortedActivity => throw _privateConstructorUsedError;
  Status? get getSortedActivitiesStatus => throw _privateConstructorUsedError;
  String? get getSortedActivitiesError => throw _privateConstructorUsedError;
  Paginator? get sortedActivityPaginator => throw _privateConstructorUsedError;
  Status? get addTaskStatus => throw _privateConstructorUsedError;
  String? get addTaskError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDetailStateCopyWith<TaskDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailStateCopyWith(
          TaskDetailState value, $Res Function(TaskDetailState) then) =
      _$TaskDetailStateCopyWithImpl<$Res, TaskDetailState>;
  @useResult
  $Res call(
      {String taskId,
      Status getTaskStatus,
      String? getTaskError,
      Activity? task,
      Status updateTaskStatus,
      String? updateTaskError,
      List<Activity> sortedActivity,
      Status? getSortedActivitiesStatus,
      String? getSortedActivitiesError,
      Paginator? sortedActivityPaginator,
      Status? addTaskStatus,
      String? addTaskError});

  $ActivityCopyWith<$Res>? get task;
  $PaginatorCopyWith<$Res>? get sortedActivityPaginator;
}

/// @nodoc
class _$TaskDetailStateCopyWithImpl<$Res, $Val extends TaskDetailState>
    implements $TaskDetailStateCopyWith<$Res> {
  _$TaskDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? getTaskStatus = null,
    Object? getTaskError = freezed,
    Object? task = freezed,
    Object? updateTaskStatus = null,
    Object? updateTaskError = freezed,
    Object? sortedActivity = null,
    Object? getSortedActivitiesStatus = freezed,
    Object? getSortedActivitiesError = freezed,
    Object? sortedActivityPaginator = freezed,
    Object? addTaskStatus = freezed,
    Object? addTaskError = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      getTaskStatus: null == getTaskStatus
          ? _value.getTaskStatus
          : getTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getTaskError: freezed == getTaskError
          ? _value.getTaskError
          : getTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Activity?,
      updateTaskStatus: null == updateTaskStatus
          ? _value.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      updateTaskError: freezed == updateTaskError
          ? _value.updateTaskError
          : updateTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      sortedActivity: null == sortedActivity
          ? _value.sortedActivity
          : sortedActivity // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getSortedActivitiesStatus: freezed == getSortedActivitiesStatus
          ? _value.getSortedActivitiesStatus
          : getSortedActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as Status?,
      getSortedActivitiesError: freezed == getSortedActivitiesError
          ? _value.getSortedActivitiesError
          : getSortedActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      sortedActivityPaginator: freezed == sortedActivityPaginator
          ? _value.sortedActivityPaginator
          : sortedActivityPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      addTaskStatus: freezed == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status?,
      addTaskError: freezed == addTaskError
          ? _value.addTaskError
          : addTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $ActivityCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get sortedActivityPaginator {
    if (_value.sortedActivityPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.sortedActivityPaginator!, (value) {
      return _then(_value.copyWith(sortedActivityPaginator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskDetailStateImplCopyWith<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  factory _$$TaskDetailStateImplCopyWith(_$TaskDetailStateImpl value,
          $Res Function(_$TaskDetailStateImpl) then) =
      __$$TaskDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskId,
      Status getTaskStatus,
      String? getTaskError,
      Activity? task,
      Status updateTaskStatus,
      String? updateTaskError,
      List<Activity> sortedActivity,
      Status? getSortedActivitiesStatus,
      String? getSortedActivitiesError,
      Paginator? sortedActivityPaginator,
      Status? addTaskStatus,
      String? addTaskError});

  @override
  $ActivityCopyWith<$Res>? get task;
  @override
  $PaginatorCopyWith<$Res>? get sortedActivityPaginator;
}

/// @nodoc
class __$$TaskDetailStateImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailStateImpl>
    implements _$$TaskDetailStateImplCopyWith<$Res> {
  __$$TaskDetailStateImplCopyWithImpl(
      _$TaskDetailStateImpl _value, $Res Function(_$TaskDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? getTaskStatus = null,
    Object? getTaskError = freezed,
    Object? task = freezed,
    Object? updateTaskStatus = null,
    Object? updateTaskError = freezed,
    Object? sortedActivity = null,
    Object? getSortedActivitiesStatus = freezed,
    Object? getSortedActivitiesError = freezed,
    Object? sortedActivityPaginator = freezed,
    Object? addTaskStatus = freezed,
    Object? addTaskError = freezed,
  }) {
    return _then(_$TaskDetailStateImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      getTaskStatus: null == getTaskStatus
          ? _value.getTaskStatus
          : getTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getTaskError: freezed == getTaskError
          ? _value.getTaskError
          : getTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Activity?,
      updateTaskStatus: null == updateTaskStatus
          ? _value.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      updateTaskError: freezed == updateTaskError
          ? _value.updateTaskError
          : updateTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      sortedActivity: null == sortedActivity
          ? _value._sortedActivity
          : sortedActivity // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getSortedActivitiesStatus: freezed == getSortedActivitiesStatus
          ? _value.getSortedActivitiesStatus
          : getSortedActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as Status?,
      getSortedActivitiesError: freezed == getSortedActivitiesError
          ? _value.getSortedActivitiesError
          : getSortedActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      sortedActivityPaginator: freezed == sortedActivityPaginator
          ? _value.sortedActivityPaginator
          : sortedActivityPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      addTaskStatus: freezed == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status?,
      addTaskError: freezed == addTaskError
          ? _value.addTaskError
          : addTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TaskDetailStateImpl implements _TaskDetailState {
  const _$TaskDetailStateImpl(
      {required this.taskId,
      this.getTaskStatus = Status.init,
      this.getTaskError,
      this.task,
      this.updateTaskStatus = Status.init,
      this.updateTaskError,
      final List<Activity> sortedActivity = const [],
      this.getSortedActivitiesStatus = Status.init,
      this.getSortedActivitiesError,
      this.sortedActivityPaginator,
      this.addTaskStatus = Status.init,
      this.addTaskError})
      : _sortedActivity = sortedActivity;

  @override
  final String taskId;
  @override
  @JsonKey()
  final Status getTaskStatus;
  @override
  final String? getTaskError;
  @override
  final Activity? task;
  @override
  @JsonKey()
  final Status updateTaskStatus;
  @override
  final String? updateTaskError;
  final List<Activity> _sortedActivity;
  @override
  @JsonKey()
  List<Activity> get sortedActivity {
    if (_sortedActivity is EqualUnmodifiableListView) return _sortedActivity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortedActivity);
  }

  @override
  @JsonKey()
  final Status? getSortedActivitiesStatus;
  @override
  final String? getSortedActivitiesError;
  @override
  final Paginator? sortedActivityPaginator;
  @override
  @JsonKey()
  final Status? addTaskStatus;
  @override
  final String? addTaskError;

  @override
  String toString() {
    return 'TaskDetailState(taskId: $taskId, getTaskStatus: $getTaskStatus, getTaskError: $getTaskError, task: $task, updateTaskStatus: $updateTaskStatus, updateTaskError: $updateTaskError, sortedActivity: $sortedActivity, getSortedActivitiesStatus: $getSortedActivitiesStatus, getSortedActivitiesError: $getSortedActivitiesError, sortedActivityPaginator: $sortedActivityPaginator, addTaskStatus: $addTaskStatus, addTaskError: $addTaskError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStateImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.getTaskStatus, getTaskStatus) ||
                other.getTaskStatus == getTaskStatus) &&
            (identical(other.getTaskError, getTaskError) ||
                other.getTaskError == getTaskError) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.updateTaskStatus, updateTaskStatus) ||
                other.updateTaskStatus == updateTaskStatus) &&
            (identical(other.updateTaskError, updateTaskError) ||
                other.updateTaskError == updateTaskError) &&
            const DeepCollectionEquality()
                .equals(other._sortedActivity, _sortedActivity) &&
            (identical(other.getSortedActivitiesStatus,
                    getSortedActivitiesStatus) ||
                other.getSortedActivitiesStatus == getSortedActivitiesStatus) &&
            (identical(
                    other.getSortedActivitiesError, getSortedActivitiesError) ||
                other.getSortedActivitiesError == getSortedActivitiesError) &&
            (identical(
                    other.sortedActivityPaginator, sortedActivityPaginator) ||
                other.sortedActivityPaginator == sortedActivityPaginator) &&
            (identical(other.addTaskStatus, addTaskStatus) ||
                other.addTaskStatus == addTaskStatus) &&
            (identical(other.addTaskError, addTaskError) ||
                other.addTaskError == addTaskError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      taskId,
      getTaskStatus,
      getTaskError,
      task,
      updateTaskStatus,
      updateTaskError,
      const DeepCollectionEquality().hash(_sortedActivity),
      getSortedActivitiesStatus,
      getSortedActivitiesError,
      sortedActivityPaginator,
      addTaskStatus,
      addTaskError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailStateImplCopyWith<_$TaskDetailStateImpl> get copyWith =>
      __$$TaskDetailStateImplCopyWithImpl<_$TaskDetailStateImpl>(
          this, _$identity);
}

abstract class _TaskDetailState implements TaskDetailState {
  const factory _TaskDetailState(
      {required final String taskId,
      final Status getTaskStatus,
      final String? getTaskError,
      final Activity? task,
      final Status updateTaskStatus,
      final String? updateTaskError,
      final List<Activity> sortedActivity,
      final Status? getSortedActivitiesStatus,
      final String? getSortedActivitiesError,
      final Paginator? sortedActivityPaginator,
      final Status? addTaskStatus,
      final String? addTaskError}) = _$TaskDetailStateImpl;

  @override
  String get taskId;
  @override
  Status get getTaskStatus;
  @override
  String? get getTaskError;
  @override
  Activity? get task;
  @override
  Status get updateTaskStatus;
  @override
  String? get updateTaskError;
  @override
  List<Activity> get sortedActivity;
  @override
  Status? get getSortedActivitiesStatus;
  @override
  String? get getSortedActivitiesError;
  @override
  Paginator? get sortedActivityPaginator;
  @override
  Status? get addTaskStatus;
  @override
  String? get addTaskError;
  @override
  @JsonKey(ignore: true)
  _$$TaskDetailStateImplCopyWith<_$TaskDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
