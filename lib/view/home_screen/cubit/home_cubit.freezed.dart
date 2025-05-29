// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  Map<int, List<Activity>> get activities;
  Map<int, AppStatus?> get getActivitiesStatus;
  Map<int, String?> get getActivitiesError;
  Map<int, Paginator?> get activityPaginator;
  ModelCategory get selectedCategory;
  List<ModelCategory> get categories;
  int get completedTasksCount;
  int get pendingTasksCount;
  int get viewingTasksCount;
  Set<ListType> get listType;
  List<Activity> get sortedActivity;
  AppStatus? get getSortedActivitiesStatus;
  String? get getSortedActivitiesError;
  Paginator? get sortedActivityPaginator;
  AppStatus get updateTaskStatus;
  String? get updateTaskError;
  String? get nameSearch;
  Map<String, dynamic>? get activityFilter;
  List<Community> get communityList;
  AppStatus get getCommunityListStatus;
  List<Building> get buildingList;
  AppStatus get getBuildingListStatus;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            const DeepCollectionEquality()
                .equals(other.getActivitiesStatus, getActivitiesStatus) &&
            const DeepCollectionEquality()
                .equals(other.getActivitiesError, getActivitiesError) &&
            const DeepCollectionEquality()
                .equals(other.activityPaginator, activityPaginator) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.completedTasksCount, completedTasksCount) ||
                other.completedTasksCount == completedTasksCount) &&
            (identical(other.pendingTasksCount, pendingTasksCount) ||
                other.pendingTasksCount == pendingTasksCount) &&
            (identical(other.viewingTasksCount, viewingTasksCount) ||
                other.viewingTasksCount == viewingTasksCount) &&
            const DeepCollectionEquality().equals(other.listType, listType) &&
            const DeepCollectionEquality()
                .equals(other.sortedActivity, sortedActivity) &&
            (identical(other.getSortedActivitiesStatus,
                    getSortedActivitiesStatus) ||
                other.getSortedActivitiesStatus == getSortedActivitiesStatus) &&
            (identical(
                    other.getSortedActivitiesError, getSortedActivitiesError) ||
                other.getSortedActivitiesError == getSortedActivitiesError) &&
            (identical(
                    other.sortedActivityPaginator, sortedActivityPaginator) ||
                other.sortedActivityPaginator == sortedActivityPaginator) &&
            (identical(other.updateTaskStatus, updateTaskStatus) ||
                other.updateTaskStatus == updateTaskStatus) &&
            (identical(other.updateTaskError, updateTaskError) ||
                other.updateTaskError == updateTaskError) &&
            (identical(other.nameSearch, nameSearch) ||
                other.nameSearch == nameSearch) &&
            const DeepCollectionEquality()
                .equals(other.activityFilter, activityFilter) &&
            const DeepCollectionEquality()
                .equals(other.communityList, communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus) &&
            const DeepCollectionEquality()
                .equals(other.buildingList, buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) ||
                other.getBuildingListStatus == getBuildingListStatus));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(activities),
        const DeepCollectionEquality().hash(getActivitiesStatus),
        const DeepCollectionEquality().hash(getActivitiesError),
        const DeepCollectionEquality().hash(activityPaginator),
        selectedCategory,
        const DeepCollectionEquality().hash(categories),
        completedTasksCount,
        pendingTasksCount,
        viewingTasksCount,
        const DeepCollectionEquality().hash(listType),
        const DeepCollectionEquality().hash(sortedActivity),
        getSortedActivitiesStatus,
        getSortedActivitiesError,
        sortedActivityPaginator,
        updateTaskStatus,
        updateTaskError,
        nameSearch,
        const DeepCollectionEquality().hash(activityFilter),
        const DeepCollectionEquality().hash(communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(buildingList),
        getBuildingListStatus
      ]);

  @override
  String toString() {
    return 'HomeState(activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, activityPaginator: $activityPaginator, selectedCategory: $selectedCategory, categories: $categories, completedTasksCount: $completedTasksCount, pendingTasksCount: $pendingTasksCount, viewingTasksCount: $viewingTasksCount, listType: $listType, sortedActivity: $sortedActivity, getSortedActivitiesStatus: $getSortedActivitiesStatus, getSortedActivitiesError: $getSortedActivitiesError, sortedActivityPaginator: $sortedActivityPaginator, updateTaskStatus: $updateTaskStatus, updateTaskError: $updateTaskError, nameSearch: $nameSearch, activityFilter: $activityFilter, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {Map<int, List<Activity>> activities,
      Map<int, AppStatus?> getActivitiesStatus,
      Map<int, String?> getActivitiesError,
      Map<int, Paginator?> activityPaginator,
      ModelCategory selectedCategory,
      List<ModelCategory> categories,
      int completedTasksCount,
      int pendingTasksCount,
      int viewingTasksCount,
      Set<ListType> listType,
      List<Activity> sortedActivity,
      AppStatus? getSortedActivitiesStatus,
      String? getSortedActivitiesError,
      Paginator? sortedActivityPaginator,
      AppStatus updateTaskStatus,
      String? updateTaskError,
      String? nameSearch,
      Map<String, dynamic>? activityFilter,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus});

  $ModelCategoryCopyWith<$Res> get selectedCategory;
  $PaginatorCopyWith<$Res>? get sortedActivityPaginator;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
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
    Object? listType = null,
    Object? sortedActivity = null,
    Object? getSortedActivitiesStatus = freezed,
    Object? getSortedActivitiesError = freezed,
    Object? sortedActivityPaginator = freezed,
    Object? updateTaskStatus = null,
    Object? updateTaskError = freezed,
    Object? nameSearch = freezed,
    Object? activityFilter = freezed,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
  }) {
    return _then(_self.copyWith(
      activities: null == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Activity>>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _self.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as Map<int, AppStatus?>,
      getActivitiesError: null == getActivitiesError
          ? _self.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as Map<int, String?>,
      activityPaginator: null == activityPaginator
          ? _self.activityPaginator
          : activityPaginator // ignore: cast_nullable_to_non_nullable
              as Map<int, Paginator?>,
      selectedCategory: null == selectedCategory
          ? _self.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ModelCategory,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ModelCategory>,
      completedTasksCount: null == completedTasksCount
          ? _self.completedTasksCount
          : completedTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      pendingTasksCount: null == pendingTasksCount
          ? _self.pendingTasksCount
          : pendingTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewingTasksCount: null == viewingTasksCount
          ? _self.viewingTasksCount
          : viewingTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      listType: null == listType
          ? _self.listType
          : listType // ignore: cast_nullable_to_non_nullable
              as Set<ListType>,
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
      updateTaskStatus: null == updateTaskStatus
          ? _self.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateTaskError: freezed == updateTaskError
          ? _self.updateTaskError
          : updateTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSearch: freezed == nameSearch
          ? _self.nameSearch
          : nameSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      activityFilter: freezed == activityFilter
          ? _self.activityFilter
          : activityFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      communityList: null == communityList
          ? _self.communityList
          : communityList // ignore: cast_nullable_to_non_nullable
              as List<Community>,
      getCommunityListStatus: null == getCommunityListStatus
          ? _self.getCommunityListStatus
          : getCommunityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buildingList: null == buildingList
          ? _self.buildingList
          : buildingList // ignore: cast_nullable_to_non_nullable
              as List<Building>,
      getBuildingListStatus: null == getBuildingListStatus
          ? _self.getBuildingListStatus
          : getBuildingListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModelCategoryCopyWith<$Res> get selectedCategory {
    return $ModelCategoryCopyWith<$Res>(_self.selectedCategory, (value) {
      return _then(_self.copyWith(selectedCategory: value));
    });
  }

  /// Create a copy of HomeState
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
}

/// @nodoc

class _HomeState implements HomeState {
  const _HomeState(
      {final Map<int, List<Activity>> activities = const {},
      final Map<int, AppStatus?> getActivitiesStatus = const {},
      final Map<int, String?> getActivitiesError = const {},
      final Map<int, Paginator?> activityPaginator = const {},
      this.selectedCategory = const ModelCategory(name: 'ALL'),
      final List<ModelCategory> categories = categoryList,
      this.completedTasksCount = 0,
      this.pendingTasksCount = 0,
      this.viewingTasksCount = 0,
      final Set<ListType> listType = const {ListType.Categorized},
      final List<Activity> sortedActivity = const [],
      this.getSortedActivitiesStatus = AppStatus.init,
      this.getSortedActivitiesError,
      this.sortedActivityPaginator,
      this.updateTaskStatus = AppStatus.init,
      this.updateTaskError,
      this.nameSearch,
      final Map<String, dynamic>? activityFilter,
      final List<Community> communityList = const [],
      this.getCommunityListStatus = AppStatus.init,
      final List<Building> buildingList = const [],
      this.getBuildingListStatus = AppStatus.init})
      : _activities = activities,
        _getActivitiesStatus = getActivitiesStatus,
        _getActivitiesError = getActivitiesError,
        _activityPaginator = activityPaginator,
        _categories = categories,
        _listType = listType,
        _sortedActivity = sortedActivity,
        _activityFilter = activityFilter,
        _communityList = communityList,
        _buildingList = buildingList;

  final Map<int, List<Activity>> _activities;
  @override
  @JsonKey()
  Map<int, List<Activity>> get activities {
    if (_activities is EqualUnmodifiableMapView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_activities);
  }

  final Map<int, AppStatus?> _getActivitiesStatus;
  @override
  @JsonKey()
  Map<int, AppStatus?> get getActivitiesStatus {
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
  final Set<ListType> _listType;
  @override
  @JsonKey()
  Set<ListType> get listType {
    if (_listType is EqualUnmodifiableSetView) return _listType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_listType);
  }

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
  final AppStatus updateTaskStatus;
  @override
  final String? updateTaskError;
  @override
  final String? nameSearch;
  final Map<String, dynamic>? _activityFilter;
  @override
  Map<String, dynamic>? get activityFilter {
    final value = _activityFilter;
    if (value == null) return null;
    if (_activityFilter is EqualUnmodifiableMapView) return _activityFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Community> _communityList;
  @override
  @JsonKey()
  List<Community> get communityList {
    if (_communityList is EqualUnmodifiableListView) return _communityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_communityList);
  }

  @override
  @JsonKey()
  final AppStatus getCommunityListStatus;
  final List<Building> _buildingList;
  @override
  @JsonKey()
  List<Building> get buildingList {
    if (_buildingList is EqualUnmodifiableListView) return _buildingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buildingList);
  }

  @override
  @JsonKey()
  final AppStatus getBuildingListStatus;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
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
                other.viewingTasksCount == viewingTasksCount) &&
            const DeepCollectionEquality().equals(other._listType, _listType) &&
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
            (identical(other.updateTaskStatus, updateTaskStatus) ||
                other.updateTaskStatus == updateTaskStatus) &&
            (identical(other.updateTaskError, updateTaskError) ||
                other.updateTaskError == updateTaskError) &&
            (identical(other.nameSearch, nameSearch) ||
                other.nameSearch == nameSearch) &&
            const DeepCollectionEquality()
                .equals(other._activityFilter, _activityFilter) &&
            const DeepCollectionEquality()
                .equals(other._communityList, _communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus) &&
            const DeepCollectionEquality()
                .equals(other._buildingList, _buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) ||
                other.getBuildingListStatus == getBuildingListStatus));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_activities),
        const DeepCollectionEquality().hash(_getActivitiesStatus),
        const DeepCollectionEquality().hash(_getActivitiesError),
        const DeepCollectionEquality().hash(_activityPaginator),
        selectedCategory,
        const DeepCollectionEquality().hash(_categories),
        completedTasksCount,
        pendingTasksCount,
        viewingTasksCount,
        const DeepCollectionEquality().hash(_listType),
        const DeepCollectionEquality().hash(_sortedActivity),
        getSortedActivitiesStatus,
        getSortedActivitiesError,
        sortedActivityPaginator,
        updateTaskStatus,
        updateTaskError,
        nameSearch,
        const DeepCollectionEquality().hash(_activityFilter),
        const DeepCollectionEquality().hash(_communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(_buildingList),
        getBuildingListStatus
      ]);

  @override
  String toString() {
    return 'HomeState(activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, activityPaginator: $activityPaginator, selectedCategory: $selectedCategory, categories: $categories, completedTasksCount: $completedTasksCount, pendingTasksCount: $pendingTasksCount, viewingTasksCount: $viewingTasksCount, listType: $listType, sortedActivity: $sortedActivity, getSortedActivitiesStatus: $getSortedActivitiesStatus, getSortedActivitiesError: $getSortedActivitiesError, sortedActivityPaginator: $sortedActivityPaginator, updateTaskStatus: $updateTaskStatus, updateTaskError: $updateTaskError, nameSearch: $nameSearch, activityFilter: $activityFilter, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<int, List<Activity>> activities,
      Map<int, AppStatus?> getActivitiesStatus,
      Map<int, String?> getActivitiesError,
      Map<int, Paginator?> activityPaginator,
      ModelCategory selectedCategory,
      List<ModelCategory> categories,
      int completedTasksCount,
      int pendingTasksCount,
      int viewingTasksCount,
      Set<ListType> listType,
      List<Activity> sortedActivity,
      AppStatus? getSortedActivitiesStatus,
      String? getSortedActivitiesError,
      Paginator? sortedActivityPaginator,
      AppStatus updateTaskStatus,
      String? updateTaskError,
      String? nameSearch,
      Map<String, dynamic>? activityFilter,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus});

  @override
  $ModelCategoryCopyWith<$Res> get selectedCategory;
  @override
  $PaginatorCopyWith<$Res>? get sortedActivityPaginator;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? listType = null,
    Object? sortedActivity = null,
    Object? getSortedActivitiesStatus = freezed,
    Object? getSortedActivitiesError = freezed,
    Object? sortedActivityPaginator = freezed,
    Object? updateTaskStatus = null,
    Object? updateTaskError = freezed,
    Object? nameSearch = freezed,
    Object? activityFilter = freezed,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
  }) {
    return _then(_HomeState(
      activities: null == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Activity>>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _self._getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as Map<int, AppStatus?>,
      getActivitiesError: null == getActivitiesError
          ? _self._getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as Map<int, String?>,
      activityPaginator: null == activityPaginator
          ? _self._activityPaginator
          : activityPaginator // ignore: cast_nullable_to_non_nullable
              as Map<int, Paginator?>,
      selectedCategory: null == selectedCategory
          ? _self.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ModelCategory,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ModelCategory>,
      completedTasksCount: null == completedTasksCount
          ? _self.completedTasksCount
          : completedTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      pendingTasksCount: null == pendingTasksCount
          ? _self.pendingTasksCount
          : pendingTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewingTasksCount: null == viewingTasksCount
          ? _self.viewingTasksCount
          : viewingTasksCount // ignore: cast_nullable_to_non_nullable
              as int,
      listType: null == listType
          ? _self._listType
          : listType // ignore: cast_nullable_to_non_nullable
              as Set<ListType>,
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
      updateTaskStatus: null == updateTaskStatus
          ? _self.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateTaskError: freezed == updateTaskError
          ? _self.updateTaskError
          : updateTaskError // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSearch: freezed == nameSearch
          ? _self.nameSearch
          : nameSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      activityFilter: freezed == activityFilter
          ? _self._activityFilter
          : activityFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      communityList: null == communityList
          ? _self._communityList
          : communityList // ignore: cast_nullable_to_non_nullable
              as List<Community>,
      getCommunityListStatus: null == getCommunityListStatus
          ? _self.getCommunityListStatus
          : getCommunityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buildingList: null == buildingList
          ? _self._buildingList
          : buildingList // ignore: cast_nullable_to_non_nullable
              as List<Building>,
      getBuildingListStatus: null == getBuildingListStatus
          ? _self.getBuildingListStatus
          : getBuildingListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModelCategoryCopyWith<$Res> get selectedCategory {
    return $ModelCategoryCopyWith<$Res>(_self.selectedCategory, (value) {
      return _then(_self.copyWith(selectedCategory: value));
    });
  }

  /// Create a copy of HomeState
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
}

// dart format on
