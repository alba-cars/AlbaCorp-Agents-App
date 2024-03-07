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
  List<Activity> get activities => throw _privateConstructorUsedError;
  Status get getActivitiesStatus => throw _privateConstructorUsedError;
  String? get getActivitiesError => throw _privateConstructorUsedError;
  Paginator? get activityPaginator => throw _privateConstructorUsedError;
  ModelCategory get selectedCategory => throw _privateConstructorUsedError;
  List<ModelCategory> get categories => throw _privateConstructorUsedError;

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
      {List<Activity> activities,
      Status getActivitiesStatus,
      String? getActivitiesError,
      Paginator? activityPaginator,
      ModelCategory selectedCategory,
      List<ModelCategory> categories});

  $PaginatorCopyWith<$Res>? get activityPaginator;
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
    Object? getActivitiesError = freezed,
    Object? activityPaginator = freezed,
    Object? selectedCategory = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getActivitiesError: freezed == getActivitiesError
          ? _value.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      activityPaginator: freezed == activityPaginator
          ? _value.activityPaginator
          : activityPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ModelCategory,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ModelCategory>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get activityPaginator {
    if (_value.activityPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.activityPaginator!, (value) {
      return _then(_value.copyWith(activityPaginator: value) as $Val);
    });
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
      {List<Activity> activities,
      Status getActivitiesStatus,
      String? getActivitiesError,
      Paginator? activityPaginator,
      ModelCategory selectedCategory,
      List<ModelCategory> categories});

  @override
  $PaginatorCopyWith<$Res>? get activityPaginator;
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
    Object? getActivitiesError = freezed,
    Object? activityPaginator = freezed,
    Object? selectedCategory = null,
    Object? categories = null,
  }) {
    return _then(_$HomeStateImpl(
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getActivitiesError: freezed == getActivitiesError
          ? _value.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      activityPaginator: freezed == activityPaginator
          ? _value.activityPaginator
          : activityPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ModelCategory,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ModelCategory>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<Activity> activities = const [],
      this.getActivitiesStatus = Status.init,
      this.getActivitiesError,
      this.activityPaginator,
      this.selectedCategory = const ModelCategory(name: 'ALL'),
      final List<ModelCategory> categories = categoryList})
      : _activities = activities,
        _categories = categories;

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
  final Status getActivitiesStatus;
  @override
  final String? getActivitiesError;
  @override
  final Paginator? activityPaginator;
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
  String toString() {
    return 'HomeState(activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, activityPaginator: $activityPaginator, selectedCategory: $selectedCategory, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.getActivitiesError, getActivitiesError) ||
                other.getActivitiesError == getActivitiesError) &&
            (identical(other.activityPaginator, activityPaginator) ||
                other.activityPaginator == activityPaginator) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activities),
      getActivitiesStatus,
      getActivitiesError,
      activityPaginator,
      selectedCategory,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<Activity> activities,
      final Status getActivitiesStatus,
      final String? getActivitiesError,
      final Paginator? activityPaginator,
      final ModelCategory selectedCategory,
      final List<ModelCategory> categories}) = _$HomeStateImpl;

  @override
  List<Activity> get activities;
  @override
  Status get getActivitiesStatus;
  @override
  String? get getActivitiesError;
  @override
  Paginator? get activityPaginator;
  @override
  ModelCategory get selectedCategory;
  @override
  List<ModelCategory> get categories;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
