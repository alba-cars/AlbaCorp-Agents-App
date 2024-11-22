// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_leads_assigned_today_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HotLeadsAssignedTodayState {
  AppStatus get fetchStatus => throw _privateConstructorUsedError;
  Paginator? get paginator => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotLeadsAssignedTodayStateCopyWith<HotLeadsAssignedTodayState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotLeadsAssignedTodayStateCopyWith<$Res> {
  factory $HotLeadsAssignedTodayStateCopyWith(HotLeadsAssignedTodayState value,
          $Res Function(HotLeadsAssignedTodayState) then) =
      _$HotLeadsAssignedTodayStateCopyWithImpl<$Res,
          HotLeadsAssignedTodayState>;
  @useResult
  $Res call(
      {AppStatus fetchStatus,
      Paginator? paginator,
      List<Activity> activities,
      String? error});

  $PaginatorCopyWith<$Res>? get paginator;
}

/// @nodoc
class _$HotLeadsAssignedTodayStateCopyWithImpl<$Res,
        $Val extends HotLeadsAssignedTodayState>
    implements $HotLeadsAssignedTodayStateCopyWith<$Res> {
  _$HotLeadsAssignedTodayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = freezed,
    Object? activities = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      paginator: freezed == paginator
          ? _value.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$HotLeadsAssignedTodayStateImplCopyWith<$Res>
    implements $HotLeadsAssignedTodayStateCopyWith<$Res> {
  factory _$$HotLeadsAssignedTodayStateImplCopyWith(
          _$HotLeadsAssignedTodayStateImpl value,
          $Res Function(_$HotLeadsAssignedTodayStateImpl) then) =
      __$$HotLeadsAssignedTodayStateImplCopyWithImpl<$Res>;
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
class __$$HotLeadsAssignedTodayStateImplCopyWithImpl<$Res>
    extends _$HotLeadsAssignedTodayStateCopyWithImpl<$Res,
        _$HotLeadsAssignedTodayStateImpl>
    implements _$$HotLeadsAssignedTodayStateImplCopyWith<$Res> {
  __$$HotLeadsAssignedTodayStateImplCopyWithImpl(
      _$HotLeadsAssignedTodayStateImpl _value,
      $Res Function(_$HotLeadsAssignedTodayStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = freezed,
    Object? activities = null,
    Object? error = freezed,
  }) {
    return _then(_$HotLeadsAssignedTodayStateImpl(
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      paginator: freezed == paginator
          ? _value.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HotLeadsAssignedTodayStateImpl implements _HotLeadsAssignedTodayState {
  const _$HotLeadsAssignedTodayStateImpl(
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

  @override
  String toString() {
    return 'HotLeadsAssignedTodayState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotLeadsAssignedTodayStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotLeadsAssignedTodayStateImplCopyWith<_$HotLeadsAssignedTodayStateImpl>
      get copyWith => __$$HotLeadsAssignedTodayStateImplCopyWithImpl<
          _$HotLeadsAssignedTodayStateImpl>(this, _$identity);
}

abstract class _HotLeadsAssignedTodayState
    implements HotLeadsAssignedTodayState {
  const factory _HotLeadsAssignedTodayState(
      {final AppStatus fetchStatus,
      final Paginator? paginator,
      final List<Activity> activities,
      final String? error}) = _$HotLeadsAssignedTodayStateImpl;

  @override
  AppStatus get fetchStatus;
  @override
  Paginator? get paginator;
  @override
  List<Activity> get activities;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$HotLeadsAssignedTodayStateImplCopyWith<_$HotLeadsAssignedTodayStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
