// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Map<int, List<Activity>> get activities => throw _privateConstructorUsedError;
  Map<int, Status?> get getActivitiesStatus =>
      throw _privateConstructorUsedError;
  Map<int, String?> get getActivitiesError =>
      throw _privateConstructorUsedError;
  Map<int, Paginator?> get activityPaginator =>
      throw _privateConstructorUsedError;
  ModelCategory get selectedCategory => throw _privateConstructorUsedError;
  List<ModelCategory> get categories => throw _privateConstructorUsedError;
  int get completedTasksCount => throw _privateConstructorUsedError;
  int get pendingTasksCount => throw _privateConstructorUsedError;
  int get viewingTasksCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Map<int, List<Activity>> activities,
      Map<int, Status?> getActivitiesStatus,
      Map<int, String?> getActivitiesError,
      Map<int, Paginator?> activityPaginator,
      ModelCategory selectedCategory,
      List<ModelCategory> categories,
      int completedTasksCount,
      int pendingTasksCount,
      int viewingTasksCount});

  $ModelCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = null,
    Object? activityPaginator = null,
    Object? selectedCategory = null,
    Object? categories = null,
    Object? completedTasksCount = null,
    Object? pendingTasksCount = null,
    Object? viewingTasksCount = null,
  }) {
    return _then(_value.copyWith(
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Activity>>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as Map<int, Status?>,
      getActivitiesError: null == getActivitiesError
          ? _value.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as Map<int, String?>,
      activityPaginator: null == activityPaginator
          ? _value.activityPaginator
          : activityPaginator // ignore: cast_nullable_to_non_nullable
              as Map<int, Paginator?>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ModelCategory,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ModelCategory>,
      completedTasksCount: null == completedTasksCount
          ? _value.completedTasksCount
          : completedTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      pendingTasksCount: null == pendingTasksCount
          ? _value.pendingTasksCount
          : pendingTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewingTasksCount: null == viewingTasksCount
          ? _value.viewingTasksCount
          : viewingTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModelCategoryCopyWith<$Res> get selectedCategory {
    return $ModelCategoryCopyWith<$Res>(_value.selectedCategory, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, List<Activity>> activities,
      Map<int, Status?> getActivitiesStatus,
      Map<int, String?> getActivitiesError,
      Map<int, Paginator?> activityPaginator,
      ModelCategory selectedCategory,
      List<ModelCategory> categories,
      int completedTasksCount,
      int pendingTasksCount,
      int viewingTasksCount});

  @override
  $ModelCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = null,
    Object? activityPaginator = null,
    Object? selectedCategory = null,
    Object? categories = null,
    Object? completedTasksCount = null,
    Object? pendingTasksCount = null,
    Object? viewingTasksCount = null,
  }) {
    return _then(_$HomeStateImpl(
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Activity>>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value._getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as Map<int, Status?>,
      getActivitiesError: null == getActivitiesError
          ? _value._getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as Map<int, String?>,
      activityPaginator: null == activityPaginator
          ? _value._activityPaginator
          : activityPaginator // ignore: cast_nullable_to_non_nullable
              as Map<int, Paginator?>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ModelCategory,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ModelCategory>,
      completedTasksCount: null == completedTasksCount
          ? _value.completedTasksCount
          : completedTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      pendingTasksCount: null == pendingTasksCount
          ? _value.pendingTasksCount
          : pendingTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewingTasksCount: null == viewingTasksCount
          ? _value.viewingTasksCount
          : viewingTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final Map<int, List<Activity>> activities = const {},
      final Map<int, Status?> getActivitiesStatus = const {},
      final Map<int, String?> getActivitiesError = const {},
      final Map<int, Paginator?> activityPaginator = const {},
      this.selectedCategory = const ModelCategory(name: 'ALL'),
      final List<ModelCategory> categories = categoryList,
      this.completedTasksCount = 0,
      this.pendingTasksCount = 0,
      this.viewingTasksCount = 0})
      : _activities = activities,
        _getActivitiesStatus = getActivitiesStatus,
        _getActivitiesError = getActivitiesError,
        _activityPaginator = activityPaginator,
        _categories = categories;

  final Map<int, List<Activity>> _activities;
  @override
  @JsonKey()
  Map<int, List<Activity>> get activities {
    if (_activities is EqualUnmodifiableMapView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_activities);
  }

  final Map<int, Status?> _getActivitiesStatus;
  @override
  @JsonKey()
  Map<int, Status?> get getActivitiesStatus {
    if (_getActivitiesStatus is EqualUnmodifiableMapView)
      return _getActivitiesStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_getActivitiesStatus);
  }

  final Map<int, String?> _getActivitiesError;
  @override
  @JsonKey()
  Map<int, String?> get getActivitiesError {
    if (_getActivitiesError is EqualUnmodifiableMapView)
      return _getActivitiesError;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_getActivitiesError);
  }

  final Map<int, Paginator?> _activityPaginator;
  @override
  @JsonKey()
  Map<int, Paginator?> get activityPaginator {
    if (_activityPaginator is EqualUnmodifiableMapView)
      return _activityPaginator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_activityPaginator);
  }

  @override
  @JsonKey()
  final ModelCategory selectedCategory;
  final List<ModelCategory> _categories;
  @override
  @JsonKey()
  List<ModelCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final int completedTasksCount;
  @override
  @JsonKey()
  final int pendingTasksCount;
  @override
  @JsonKey()
  final int viewingTasksCount;

  @override
  String toString() {
    return 'HomeState(activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, activityPaginator: $activityPaginator, selectedCategory: $selectedCategory, categories: $categories, completedTasksCount: $completedTasksCount, pendingTasksCount: $pendingTasksCount, viewingTasksCount: $viewingTasksCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality()
                .equals(other._getActivitiesStatus, _getActivitiesStatus) &&
            const DeepCollectionEquality()
                .equals(other._getActivitiesError, _getActivitiesError) &&
            const DeepCollectionEquality()
                .equals(other._activityPaginator, _activityPaginator) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.completedTasksCount, completedTasksCount) ||
                other.completedTasksCount == completedTasksCount) &&
            (identical(other.pendingTasksCount, pendingTasksCount) ||
                other.pendingTasksCount == pendingTasksCount) &&
            (identical(other.viewingTasksCount, viewingTasksCount) ||
                other.viewingTasksCount == viewingTasksCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_getActivitiesStatus),
      const DeepCollectionEquality().hash(_getActivitiesError),
      const DeepCollectionEquality().hash(_activityPaginator),
      selectedCategory,
      const DeepCollectionEquality().hash(_categories),
      completedTasksCount,
      pendingTasksCount,
      viewingTasksCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final Map<int, List<Activity>> activities,
      final Map<int, Status?> getActivitiesStatus,
      final Map<int, String?> getActivitiesError,
      final Map<int, Paginator?> activityPaginator,
      final ModelCategory selectedCategory,
      final List<ModelCategory> categories,
      final int completedTasksCount,
      final int pendingTasksCount,
      final int viewingTasksCount}) = _$HomeStateImpl;

  @override
  Map<int, List<Activity>> get activities;
  @override
  Map<int, Status?> get getActivitiesStatus;
  @override
  Map<int, String?> get getActivitiesError;
  @override
  Map<int, Paginator?> get activityPaginator;
  @override
  ModelCategory get selectedCategory;
  @override
  List<ModelCategory> get categories;
  @override
  int get completedTasksCount;
  @override
  int get pendingTasksCount;
  @override
  int get viewingTasksCount;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
