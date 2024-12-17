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
  AppStatus get getTaskStatus => throw _privateConstructorUsedError;
  String? get getTaskError => throw _privateConstructorUsedError;
  Activity? get task => throw _privateConstructorUsedError;
  AppStatus get updateTaskStatus => throw _privateConstructorUsedError;
  String? get updateTaskError => throw _privateConstructorUsedError;
  List<Activity> get sortedActivity => throw _privateConstructorUsedError;
  AppStatus? get getSortedActivitiesStatus =>
      throw _privateConstructorUsedError;
  String? get getSortedActivitiesError => throw _privateConstructorUsedError;
  Paginator? get sortedActivityPaginator => throw _privateConstructorUsedError;
  AppStatus? get addTaskStatus => throw _privateConstructorUsedError;
  String? get addTaskError => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  AppStatus get getActivitiesStatus => throw _privateConstructorUsedError;
  String? get getActivitiesError => throw _privateConstructorUsedError;
  AppStatus get getPropertyCardsListStatus =>
      throw _privateConstructorUsedError;
  List<LeadPropertyCardModel> get propertyCardsList =>
      throw _privateConstructorUsedError;
  String? get getPropertyCardsListError => throw _privateConstructorUsedError;
  Paginator? get propertyCardPaginator => throw _privateConstructorUsedError;
  Paginator? get listingsPaginator => throw _privateConstructorUsedError;
  double? get ratingValue => throw _privateConstructorUsedError;
  CallProcessingState? get callProcessingState =>
      throw _privateConstructorUsedError;

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
      AppStatus getTaskStatus,
      String? getTaskError,
      Activity? task,
      AppStatus updateTaskStatus,
      String? updateTaskError,
      List<Activity> sortedActivity,
      AppStatus? getSortedActivitiesStatus,
      String? getSortedActivitiesError,
      Paginator? sortedActivityPaginator,
      AppStatus? addTaskStatus,
      String? addTaskError,
      List<Activity> activities,
      AppStatus getActivitiesStatus,
      String? getActivitiesError,
      AppStatus getPropertyCardsListStatus,
      List<LeadPropertyCardModel> propertyCardsList,
      String? getPropertyCardsListError,
      Paginator? propertyCardPaginator,
      Paginator? listingsPaginator,
      double? ratingValue,
      CallProcessingState? callProcessingState});

  $ActivityCopyWith<$Res>? get task;
  $PaginatorCopyWith<$Res>? get sortedActivityPaginator;
  $PaginatorCopyWith<$Res>? get propertyCardPaginator;
  $PaginatorCopyWith<$Res>? get listingsPaginator;
  $CallProcessingStateCopyWith<$Res>? get callProcessingState;
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
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = freezed,
    Object? getPropertyCardsListStatus = null,
    Object? propertyCardsList = null,
    Object? getPropertyCardsListError = freezed,
    Object? propertyCardPaginator = freezed,
    Object? listingsPaginator = freezed,
    Object? ratingValue = freezed,
    Object? callProcessingState = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      getTaskStatus: null == getTaskStatus
          ? _value.getTaskStatus
          : getTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
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
              as AppStatus,
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
              as AppStatus?,
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
              as AppStatus?,
      addTaskError: freezed == addTaskError
          ? _value.addTaskError
          : addTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _value.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      getPropertyCardsListStatus: null == getPropertyCardsListStatus
          ? _value.getPropertyCardsListStatus
          : getPropertyCardsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyCardsList: null == propertyCardsList
          ? _value.propertyCardsList
          : propertyCardsList // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModel>,
      getPropertyCardsListError: freezed == getPropertyCardsListError
          ? _value.getPropertyCardsListError
          : getPropertyCardsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyCardPaginator: freezed == propertyCardPaginator
          ? _value.propertyCardPaginator
          : propertyCardPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      listingsPaginator: freezed == listingsPaginator
          ? _value.listingsPaginator
          : listingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      ratingValue: freezed == ratingValue
          ? _value.ratingValue
          : ratingValue // ignore: cast_nullable_to_non_nullable
              as double?,
      callProcessingState: freezed == callProcessingState
          ? _value.callProcessingState
          : callProcessingState // ignore: cast_nullable_to_non_nullable
              as CallProcessingState?,
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

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get propertyCardPaginator {
    if (_value.propertyCardPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.propertyCardPaginator!, (value) {
      return _then(_value.copyWith(propertyCardPaginator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get listingsPaginator {
    if (_value.listingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.listingsPaginator!, (value) {
      return _then(_value.copyWith(listingsPaginator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CallProcessingStateCopyWith<$Res>? get callProcessingState {
    if (_value.callProcessingState == null) {
      return null;
    }

    return $CallProcessingStateCopyWith<$Res>(_value.callProcessingState!,
        (value) {
      return _then(_value.copyWith(callProcessingState: value) as $Val);
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
      AppStatus getTaskStatus,
      String? getTaskError,
      Activity? task,
      AppStatus updateTaskStatus,
      String? updateTaskError,
      List<Activity> sortedActivity,
      AppStatus? getSortedActivitiesStatus,
      String? getSortedActivitiesError,
      Paginator? sortedActivityPaginator,
      AppStatus? addTaskStatus,
      String? addTaskError,
      List<Activity> activities,
      AppStatus getActivitiesStatus,
      String? getActivitiesError,
      AppStatus getPropertyCardsListStatus,
      List<LeadPropertyCardModel> propertyCardsList,
      String? getPropertyCardsListError,
      Paginator? propertyCardPaginator,
      Paginator? listingsPaginator,
      double? ratingValue,
      CallProcessingState? callProcessingState});

  @override
  $ActivityCopyWith<$Res>? get task;
  @override
  $PaginatorCopyWith<$Res>? get sortedActivityPaginator;
  @override
  $PaginatorCopyWith<$Res>? get propertyCardPaginator;
  @override
  $PaginatorCopyWith<$Res>? get listingsPaginator;
  @override
  $CallProcessingStateCopyWith<$Res>? get callProcessingState;
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
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = freezed,
    Object? getPropertyCardsListStatus = null,
    Object? propertyCardsList = null,
    Object? getPropertyCardsListError = freezed,
    Object? propertyCardPaginator = freezed,
    Object? listingsPaginator = freezed,
    Object? ratingValue = freezed,
    Object? callProcessingState = freezed,
  }) {
    return _then(_$TaskDetailStateImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      getTaskStatus: null == getTaskStatus
          ? _value.getTaskStatus
          : getTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
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
              as AppStatus,
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
              as AppStatus?,
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
              as AppStatus?,
      addTaskError: freezed == addTaskError
          ? _value.addTaskError
          : addTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _value.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      getPropertyCardsListStatus: null == getPropertyCardsListStatus
          ? _value.getPropertyCardsListStatus
          : getPropertyCardsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyCardsList: null == propertyCardsList
          ? _value._propertyCardsList
          : propertyCardsList // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModel>,
      getPropertyCardsListError: freezed == getPropertyCardsListError
          ? _value.getPropertyCardsListError
          : getPropertyCardsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyCardPaginator: freezed == propertyCardPaginator
          ? _value.propertyCardPaginator
          : propertyCardPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      listingsPaginator: freezed == listingsPaginator
          ? _value.listingsPaginator
          : listingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      ratingValue: freezed == ratingValue
          ? _value.ratingValue
          : ratingValue // ignore: cast_nullable_to_non_nullable
              as double?,
      callProcessingState: freezed == callProcessingState
          ? _value.callProcessingState
          : callProcessingState // ignore: cast_nullable_to_non_nullable
              as CallProcessingState?,
    ));
  }
}

/// @nodoc

class _$TaskDetailStateImpl implements _TaskDetailState {
  const _$TaskDetailStateImpl(
      {required this.taskId,
      this.getTaskStatus = AppStatus.init,
      this.getTaskError,
      this.task,
      this.updateTaskStatus = AppStatus.init,
      this.updateTaskError,
      final List<Activity> sortedActivity = const [],
      this.getSortedActivitiesStatus = AppStatus.init,
      this.getSortedActivitiesError,
      this.sortedActivityPaginator,
      this.addTaskStatus = AppStatus.init,
      this.addTaskError,
      final List<Activity> activities = const [],
      this.getActivitiesStatus = AppStatus.init,
      this.getActivitiesError,
      this.getPropertyCardsListStatus = AppStatus.init,
      final List<LeadPropertyCardModel> propertyCardsList = const [],
      this.getPropertyCardsListError,
      this.propertyCardPaginator,
      this.listingsPaginator,
      this.ratingValue = 5.0,
      this.callProcessingState})
      : _sortedActivity = sortedActivity,
        _activities = activities,
        _propertyCardsList = propertyCardsList;

  @override
  final String taskId;
  @override
  @JsonKey()
  final AppStatus getTaskStatus;
  @override
  final String? getTaskError;
  @override
  final Activity? task;
  @override
  @JsonKey()
  final AppStatus updateTaskStatus;
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
  final AppStatus? getSortedActivitiesStatus;
  @override
  final String? getSortedActivitiesError;
  @override
  final Paginator? sortedActivityPaginator;
  @override
  @JsonKey()
  final AppStatus? addTaskStatus;
  @override
  final String? addTaskError;
  final List<Activity> _activities;
  @override
  @JsonKey()
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  @JsonKey()
  final AppStatus getActivitiesStatus;
  @override
  final String? getActivitiesError;
  @override
  @JsonKey()
  final AppStatus getPropertyCardsListStatus;
  final List<LeadPropertyCardModel> _propertyCardsList;
  @override
  @JsonKey()
  List<LeadPropertyCardModel> get propertyCardsList {
    if (_propertyCardsList is EqualUnmodifiableListView)
      return _propertyCardsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_propertyCardsList);
  }

  @override
  final String? getPropertyCardsListError;
  @override
  final Paginator? propertyCardPaginator;
  @override
  final Paginator? listingsPaginator;
  @override
  @JsonKey()
  final double? ratingValue;
  @override
  final CallProcessingState? callProcessingState;

  @override
  String toString() {
    return 'TaskDetailState(taskId: $taskId, getTaskStatus: $getTaskStatus, getTaskError: $getTaskError, task: $task, updateTaskStatus: $updateTaskStatus, updateTaskError: $updateTaskError, sortedActivity: $sortedActivity, getSortedActivitiesStatus: $getSortedActivitiesStatus, getSortedActivitiesError: $getSortedActivitiesError, sortedActivityPaginator: $sortedActivityPaginator, addTaskStatus: $addTaskStatus, addTaskError: $addTaskError, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, getPropertyCardsListStatus: $getPropertyCardsListStatus, propertyCardsList: $propertyCardsList, getPropertyCardsListError: $getPropertyCardsListError, propertyCardPaginator: $propertyCardPaginator, listingsPaginator: $listingsPaginator, ratingValue: $ratingValue, callProcessingState: $callProcessingState)';
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
            (identical(other.getSortedActivitiesStatus, getSortedActivitiesStatus) ||
                other.getSortedActivitiesStatus == getSortedActivitiesStatus) &&
            (identical(other.getSortedActivitiesError, getSortedActivitiesError) ||
                other.getSortedActivitiesError == getSortedActivitiesError) &&
            (identical(other.sortedActivityPaginator, sortedActivityPaginator) ||
                other.sortedActivityPaginator == sortedActivityPaginator) &&
            (identical(other.addTaskStatus, addTaskStatus) ||
                other.addTaskStatus == addTaskStatus) &&
            (identical(other.addTaskError, addTaskError) ||
                other.addTaskError == addTaskError) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.getActivitiesError, getActivitiesError) ||
                other.getActivitiesError == getActivitiesError) &&
            (identical(other.getPropertyCardsListStatus,
                    getPropertyCardsListStatus) ||
                other.getPropertyCardsListStatus ==
                    getPropertyCardsListStatus) &&
            const DeepCollectionEquality()
                .equals(other._propertyCardsList, _propertyCardsList) &&
            (identical(other.getPropertyCardsListError, getPropertyCardsListError) ||
                other.getPropertyCardsListError == getPropertyCardsListError) &&
            (identical(other.propertyCardPaginator, propertyCardPaginator) ||
                other.propertyCardPaginator == propertyCardPaginator) &&
            (identical(other.listingsPaginator, listingsPaginator) ||
                other.listingsPaginator == listingsPaginator) &&
            (identical(other.ratingValue, ratingValue) ||
                other.ratingValue == ratingValue) &&
            (identical(other.callProcessingState, callProcessingState) ||
                other.callProcessingState == callProcessingState));
  }

  @override
  int get hashCode => Object.hashAll([
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
        addTaskError,
        const DeepCollectionEquality().hash(_activities),
        getActivitiesStatus,
        getActivitiesError,
        getPropertyCardsListStatus,
        const DeepCollectionEquality().hash(_propertyCardsList),
        getPropertyCardsListError,
        propertyCardPaginator,
        listingsPaginator,
        ratingValue,
        callProcessingState
      ]);

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
      final AppStatus getTaskStatus,
      final String? getTaskError,
      final Activity? task,
      final AppStatus updateTaskStatus,
      final String? updateTaskError,
      final List<Activity> sortedActivity,
      final AppStatus? getSortedActivitiesStatus,
      final String? getSortedActivitiesError,
      final Paginator? sortedActivityPaginator,
      final AppStatus? addTaskStatus,
      final String? addTaskError,
      final List<Activity> activities,
      final AppStatus getActivitiesStatus,
      final String? getActivitiesError,
      final AppStatus getPropertyCardsListStatus,
      final List<LeadPropertyCardModel> propertyCardsList,
      final String? getPropertyCardsListError,
      final Paginator? propertyCardPaginator,
      final Paginator? listingsPaginator,
      final double? ratingValue,
      final CallProcessingState? callProcessingState}) = _$TaskDetailStateImpl;

  @override
  String get taskId;
  @override
  AppStatus get getTaskStatus;
  @override
  String? get getTaskError;
  @override
  Activity? get task;
  @override
  AppStatus get updateTaskStatus;
  @override
  String? get updateTaskError;
  @override
  List<Activity> get sortedActivity;
  @override
  AppStatus? get getSortedActivitiesStatus;
  @override
  String? get getSortedActivitiesError;
  @override
  Paginator? get sortedActivityPaginator;
  @override
  AppStatus? get addTaskStatus;
  @override
  String? get addTaskError;
  @override
  List<Activity> get activities;
  @override
  AppStatus get getActivitiesStatus;
  @override
  String? get getActivitiesError;
  @override
  AppStatus get getPropertyCardsListStatus;
  @override
  List<LeadPropertyCardModel> get propertyCardsList;
  @override
  String? get getPropertyCardsListError;
  @override
  Paginator? get propertyCardPaginator;
  @override
  Paginator? get listingsPaginator;
  @override
  double? get ratingValue;
  @override
  CallProcessingState? get callProcessingState;
  @override
  @JsonKey(ignore: true)
  _$$TaskDetailStateImplCopyWith<_$TaskDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CallProcessingState {
  bool get isProcessing => throw _privateConstructorUsedError;
  String get callId => throw _privateConstructorUsedError;
  String get activityId => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  CallProcessingStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallProcessingStateCopyWith<CallProcessingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallProcessingStateCopyWith<$Res> {
  factory $CallProcessingStateCopyWith(
          CallProcessingState value, $Res Function(CallProcessingState) then) =
      _$CallProcessingStateCopyWithImpl<$Res, CallProcessingState>;
  @useResult
  $Res call(
      {bool isProcessing,
      String callId,
      String activityId,
      String? summary,
      String? error,
      CallProcessingStatus status});
}

/// @nodoc
class _$CallProcessingStateCopyWithImpl<$Res, $Val extends CallProcessingState>
    implements $CallProcessingStateCopyWith<$Res> {
  _$CallProcessingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProcessing = null,
    Object? callId = null,
    Object? activityId = null,
    Object? summary = freezed,
    Object? error = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CallProcessingStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallProcessingStateImplCopyWith<$Res>
    implements $CallProcessingStateCopyWith<$Res> {
  factory _$$CallProcessingStateImplCopyWith(_$CallProcessingStateImpl value,
          $Res Function(_$CallProcessingStateImpl) then) =
      __$$CallProcessingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isProcessing,
      String callId,
      String activityId,
      String? summary,
      String? error,
      CallProcessingStatus status});
}

/// @nodoc
class __$$CallProcessingStateImplCopyWithImpl<$Res>
    extends _$CallProcessingStateCopyWithImpl<$Res, _$CallProcessingStateImpl>
    implements _$$CallProcessingStateImplCopyWith<$Res> {
  __$$CallProcessingStateImplCopyWithImpl(_$CallProcessingStateImpl _value,
      $Res Function(_$CallProcessingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProcessing = null,
    Object? callId = null,
    Object? activityId = null,
    Object? summary = freezed,
    Object? error = freezed,
    Object? status = null,
  }) {
    return _then(_$CallProcessingStateImpl(
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CallProcessingStatus,
    ));
  }
}

/// @nodoc

class _$CallProcessingStateImpl implements _CallProcessingState {
  const _$CallProcessingStateImpl(
      {this.isProcessing = false,
      this.callId = '',
      required this.activityId,
      this.summary,
      this.error,
      this.status = CallProcessingStatus.initial});

  @override
  @JsonKey()
  final bool isProcessing;
  @override
  @JsonKey()
  final String callId;
  @override
  final String activityId;
  @override
  final String? summary;
  @override
  final String? error;
  @override
  @JsonKey()
  final CallProcessingStatus status;

  @override
  String toString() {
    return 'CallProcessingState(isProcessing: $isProcessing, callId: $callId, activityId: $activityId, summary: $summary, error: $error, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallProcessingStateImpl &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.callId, callId) || other.callId == callId) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isProcessing, callId, activityId, summary, error, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CallProcessingStateImplCopyWith<_$CallProcessingStateImpl> get copyWith =>
      __$$CallProcessingStateImplCopyWithImpl<_$CallProcessingStateImpl>(
          this, _$identity);
}

abstract class _CallProcessingState implements CallProcessingState {
  const factory _CallProcessingState(
      {final bool isProcessing,
      final String callId,
      required final String activityId,
      final String? summary,
      final String? error,
      final CallProcessingStatus status}) = _$CallProcessingStateImpl;

  @override
  bool get isProcessing;
  @override
  String get callId;
  @override
  String get activityId;
  @override
  String? get summary;
  @override
  String? get error;
  @override
  CallProcessingStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$CallProcessingStateImplCopyWith<_$CallProcessingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
