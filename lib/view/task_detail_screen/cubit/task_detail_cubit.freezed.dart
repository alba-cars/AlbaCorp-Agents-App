// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskDetailState {
  String get taskId;
  AppStatus get getTaskStatus;
  String? get getTaskError;
  Activity? get task;
  AppStatus get updateTaskStatus;
  String? get updateTaskError;
  List<Activity> get sortedActivity;
  AppStatus? get getSortedActivitiesStatus;
  String? get getSortedActivitiesError;
  Paginator? get sortedActivityPaginator;
  AppStatus? get addTaskStatus;
  String? get addTaskError;
  List<Activity> get activities;
  AppStatus get getActivitiesStatus;
  String? get getActivitiesError;
  AppStatus get getPropertyCardsListStatus;
  List<LeadPropertyCardModel> get propertyCardsList;
  String? get getPropertyCardsListError;
  Paginator? get propertyCardPaginator;
  Paginator? get listingsPaginator;
  double? get ratingValue;
  CallProcessingState? get callProcessingState;

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskDetailStateCopyWith<TaskDetailState> get copyWith =>
      _$TaskDetailStateCopyWithImpl<TaskDetailState>(
          this as TaskDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskDetailState &&
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
                .equals(other.sortedActivity, sortedActivity) &&
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
                .equals(other.activities, activities) &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.getActivitiesError, getActivitiesError) ||
                other.getActivitiesError == getActivitiesError) &&
            (identical(other.getPropertyCardsListStatus,
                    getPropertyCardsListStatus) ||
                other.getPropertyCardsListStatus ==
                    getPropertyCardsListStatus) &&
            const DeepCollectionEquality()
                .equals(other.propertyCardsList, propertyCardsList) &&
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
        const DeepCollectionEquality().hash(sortedActivity),
        getSortedActivitiesStatus,
        getSortedActivitiesError,
        sortedActivityPaginator,
        addTaskStatus,
        addTaskError,
        const DeepCollectionEquality().hash(activities),
        getActivitiesStatus,
        getActivitiesError,
        getPropertyCardsListStatus,
        const DeepCollectionEquality().hash(propertyCardsList),
        getPropertyCardsListError,
        propertyCardPaginator,
        listingsPaginator,
        ratingValue,
        callProcessingState
      ]);

  @override
  String toString() {
    return 'TaskDetailState(taskId: $taskId, getTaskStatus: $getTaskStatus, getTaskError: $getTaskError, task: $task, updateTaskStatus: $updateTaskStatus, updateTaskError: $updateTaskError, sortedActivity: $sortedActivity, getSortedActivitiesStatus: $getSortedActivitiesStatus, getSortedActivitiesError: $getSortedActivitiesError, sortedActivityPaginator: $sortedActivityPaginator, addTaskStatus: $addTaskStatus, addTaskError: $addTaskError, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, getPropertyCardsListStatus: $getPropertyCardsListStatus, propertyCardsList: $propertyCardsList, getPropertyCardsListError: $getPropertyCardsListError, propertyCardPaginator: $propertyCardPaginator, listingsPaginator: $listingsPaginator, ratingValue: $ratingValue, callProcessingState: $callProcessingState)';
  }
}

/// @nodoc
abstract mixin class $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailStateCopyWith(
          TaskDetailState value, $Res Function(TaskDetailState) _then) =
      _$TaskDetailStateCopyWithImpl;
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
class _$TaskDetailStateCopyWithImpl<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  _$TaskDetailStateCopyWithImpl(this._self, this._then);

  final TaskDetailState _self;
  final $Res Function(TaskDetailState) _then;

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      taskId: null == taskId
          ? _self.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      getTaskStatus: null == getTaskStatus
          ? _self.getTaskStatus
          : getTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTaskError: freezed == getTaskError
          ? _self.getTaskError
          : getTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _self.task
          : task // ignore: cast_nullable_to_non_nullable
              as Activity?,
      updateTaskStatus: null == updateTaskStatus
          ? _self.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateTaskError: freezed == updateTaskError
          ? _self.updateTaskError
          : updateTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      sortedActivity: null == sortedActivity
          ? _self.sortedActivity
          : sortedActivity // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getSortedActivitiesStatus: freezed == getSortedActivitiesStatus
          ? _self.getSortedActivitiesStatus
          : getSortedActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus?,
      getSortedActivitiesError: freezed == getSortedActivitiesError
          ? _self.getSortedActivitiesError
          : getSortedActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      sortedActivityPaginator: freezed == sortedActivityPaginator
          ? _self.sortedActivityPaginator
          : sortedActivityPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      addTaskStatus: freezed == addTaskStatus
          ? _self.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus?,
      addTaskError: freezed == addTaskError
          ? _self.addTaskError
          : addTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _self.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _self.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      getPropertyCardsListStatus: null == getPropertyCardsListStatus
          ? _self.getPropertyCardsListStatus
          : getPropertyCardsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyCardsList: null == propertyCardsList
          ? _self.propertyCardsList
          : propertyCardsList // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModel>,
      getPropertyCardsListError: freezed == getPropertyCardsListError
          ? _self.getPropertyCardsListError
          : getPropertyCardsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyCardPaginator: freezed == propertyCardPaginator
          ? _self.propertyCardPaginator
          : propertyCardPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      listingsPaginator: freezed == listingsPaginator
          ? _self.listingsPaginator
          : listingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      ratingValue: freezed == ratingValue
          ? _self.ratingValue
          : ratingValue // ignore: cast_nullable_to_non_nullable
              as double?,
      callProcessingState: freezed == callProcessingState
          ? _self.callProcessingState
          : callProcessingState // ignore: cast_nullable_to_non_nullable
              as CallProcessingState?,
    ));
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res>? get task {
    if (_self.task == null) {
      return null;
    }

    return $ActivityCopyWith<$Res>(_self.task!, (value) {
      return _then(_self.copyWith(task: value));
    });
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get sortedActivityPaginator {
    if (_self.sortedActivityPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.sortedActivityPaginator!, (value) {
      return _then(_self.copyWith(sortedActivityPaginator: value));
    });
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get propertyCardPaginator {
    if (_self.propertyCardPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.propertyCardPaginator!, (value) {
      return _then(_self.copyWith(propertyCardPaginator: value));
    });
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get listingsPaginator {
    if (_self.listingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.listingsPaginator!, (value) {
      return _then(_self.copyWith(listingsPaginator: value));
    });
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallProcessingStateCopyWith<$Res>? get callProcessingState {
    if (_self.callProcessingState == null) {
      return null;
    }

    return $CallProcessingStateCopyWith<$Res>(_self.callProcessingState!,
        (value) {
      return _then(_self.copyWith(callProcessingState: value));
    });
  }
}

/// @nodoc

class _TaskDetailState implements TaskDetailState {
  const _TaskDetailState(
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
      this.ratingValue,
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
  final double? ratingValue;
  @override
  final CallProcessingState? callProcessingState;

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TaskDetailStateCopyWith<_TaskDetailState> get copyWith =>
      __$TaskDetailStateCopyWithImpl<_TaskDetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskDetailState &&
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

  @override
  String toString() {
    return 'TaskDetailState(taskId: $taskId, getTaskStatus: $getTaskStatus, getTaskError: $getTaskError, task: $task, updateTaskStatus: $updateTaskStatus, updateTaskError: $updateTaskError, sortedActivity: $sortedActivity, getSortedActivitiesStatus: $getSortedActivitiesStatus, getSortedActivitiesError: $getSortedActivitiesError, sortedActivityPaginator: $sortedActivityPaginator, addTaskStatus: $addTaskStatus, addTaskError: $addTaskError, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, getPropertyCardsListStatus: $getPropertyCardsListStatus, propertyCardsList: $propertyCardsList, getPropertyCardsListError: $getPropertyCardsListError, propertyCardPaginator: $propertyCardPaginator, listingsPaginator: $listingsPaginator, ratingValue: $ratingValue, callProcessingState: $callProcessingState)';
  }
}

/// @nodoc
abstract mixin class _$TaskDetailStateCopyWith<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  factory _$TaskDetailStateCopyWith(
          _TaskDetailState value, $Res Function(_TaskDetailState) _then) =
      __$TaskDetailStateCopyWithImpl;
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
class __$TaskDetailStateCopyWithImpl<$Res>
    implements _$TaskDetailStateCopyWith<$Res> {
  __$TaskDetailStateCopyWithImpl(this._self, this._then);

  final _TaskDetailState _self;
  final $Res Function(_TaskDetailState) _then;

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_TaskDetailState(
      taskId: null == taskId
          ? _self.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      getTaskStatus: null == getTaskStatus
          ? _self.getTaskStatus
          : getTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getTaskError: freezed == getTaskError
          ? _self.getTaskError
          : getTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _self.task
          : task // ignore: cast_nullable_to_non_nullable
              as Activity?,
      updateTaskStatus: null == updateTaskStatus
          ? _self.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateTaskError: freezed == updateTaskError
          ? _self.updateTaskError
          : updateTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      sortedActivity: null == sortedActivity
          ? _self._sortedActivity
          : sortedActivity // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getSortedActivitiesStatus: freezed == getSortedActivitiesStatus
          ? _self.getSortedActivitiesStatus
          : getSortedActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus?,
      getSortedActivitiesError: freezed == getSortedActivitiesError
          ? _self.getSortedActivitiesError
          : getSortedActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      sortedActivityPaginator: freezed == sortedActivityPaginator
          ? _self.sortedActivityPaginator
          : sortedActivityPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      addTaskStatus: freezed == addTaskStatus
          ? _self.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus?,
      addTaskError: freezed == addTaskError
          ? _self.addTaskError
          : addTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _self.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _self.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      getPropertyCardsListStatus: null == getPropertyCardsListStatus
          ? _self.getPropertyCardsListStatus
          : getPropertyCardsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyCardsList: null == propertyCardsList
          ? _self._propertyCardsList
          : propertyCardsList // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModel>,
      getPropertyCardsListError: freezed == getPropertyCardsListError
          ? _self.getPropertyCardsListError
          : getPropertyCardsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyCardPaginator: freezed == propertyCardPaginator
          ? _self.propertyCardPaginator
          : propertyCardPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      listingsPaginator: freezed == listingsPaginator
          ? _self.listingsPaginator
          : listingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      ratingValue: freezed == ratingValue
          ? _self.ratingValue
          : ratingValue // ignore: cast_nullable_to_non_nullable
              as double?,
      callProcessingState: freezed == callProcessingState
          ? _self.callProcessingState
          : callProcessingState // ignore: cast_nullable_to_non_nullable
              as CallProcessingState?,
    ));
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res>? get task {
    if (_self.task == null) {
      return null;
    }

    return $ActivityCopyWith<$Res>(_self.task!, (value) {
      return _then(_self.copyWith(task: value));
    });
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get sortedActivityPaginator {
    if (_self.sortedActivityPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.sortedActivityPaginator!, (value) {
      return _then(_self.copyWith(sortedActivityPaginator: value));
    });
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get propertyCardPaginator {
    if (_self.propertyCardPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.propertyCardPaginator!, (value) {
      return _then(_self.copyWith(propertyCardPaginator: value));
    });
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get listingsPaginator {
    if (_self.listingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.listingsPaginator!, (value) {
      return _then(_self.copyWith(listingsPaginator: value));
    });
  }

  /// Create a copy of TaskDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallProcessingStateCopyWith<$Res>? get callProcessingState {
    if (_self.callProcessingState == null) {
      return null;
    }

    return $CallProcessingStateCopyWith<$Res>(_self.callProcessingState!,
        (value) {
      return _then(_self.copyWith(callProcessingState: value));
    });
  }
}

/// @nodoc
mixin _$CallProcessingState {
  bool get isProcessing;
  String get callId;
  String get activityId;
  String? get summary;
  String? get error;
  CallProcessingStatus get status;

  /// Create a copy of CallProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CallProcessingStateCopyWith<CallProcessingState> get copyWith =>
      _$CallProcessingStateCopyWithImpl<CallProcessingState>(
          this as CallProcessingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CallProcessingState &&
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

  @override
  String toString() {
    return 'CallProcessingState(isProcessing: $isProcessing, callId: $callId, activityId: $activityId, summary: $summary, error: $error, status: $status)';
  }
}

/// @nodoc
abstract mixin class $CallProcessingStateCopyWith<$Res> {
  factory $CallProcessingStateCopyWith(
          CallProcessingState value, $Res Function(CallProcessingState) _then) =
      _$CallProcessingStateCopyWithImpl;
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
class _$CallProcessingStateCopyWithImpl<$Res>
    implements $CallProcessingStateCopyWith<$Res> {
  _$CallProcessingStateCopyWithImpl(this._self, this._then);

  final CallProcessingState _self;
  final $Res Function(CallProcessingState) _then;

  /// Create a copy of CallProcessingState
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      isProcessing: null == isProcessing
          ? _self.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      callId: null == callId
          ? _self.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _self.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CallProcessingStatus,
    ));
  }
}

/// @nodoc

class _CallProcessingState implements CallProcessingState {
  const _CallProcessingState(
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

  /// Create a copy of CallProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CallProcessingStateCopyWith<_CallProcessingState> get copyWith =>
      __$CallProcessingStateCopyWithImpl<_CallProcessingState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallProcessingState &&
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

  @override
  String toString() {
    return 'CallProcessingState(isProcessing: $isProcessing, callId: $callId, activityId: $activityId, summary: $summary, error: $error, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$CallProcessingStateCopyWith<$Res>
    implements $CallProcessingStateCopyWith<$Res> {
  factory _$CallProcessingStateCopyWith(_CallProcessingState value,
          $Res Function(_CallProcessingState) _then) =
      __$CallProcessingStateCopyWithImpl;
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
class __$CallProcessingStateCopyWithImpl<$Res>
    implements _$CallProcessingStateCopyWith<$Res> {
  __$CallProcessingStateCopyWithImpl(this._self, this._then);

  final _CallProcessingState _self;
  final $Res Function(_CallProcessingState) _then;

  /// Create a copy of CallProcessingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isProcessing = null,
    Object? callId = null,
    Object? activityId = null,
    Object? summary = freezed,
    Object? error = freezed,
    Object? status = null,
  }) {
    return _then(_CallProcessingState(
      isProcessing: null == isProcessing
          ? _self.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      callId: null == callId
          ? _self.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _self.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CallProcessingStatus,
    ));
  }
}

// dart format on
