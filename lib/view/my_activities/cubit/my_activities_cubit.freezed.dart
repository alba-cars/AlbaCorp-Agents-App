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
      {List<Activity> activities, Paginator? paginator, AppStatus status});

  $PaginatorCopyWith<$Res>? get paginator;
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
abstract class _$$MyActivitiesStateImplCopyWith<$Res>
    implements $MyActivitiesStateCopyWith<$Res> {
  factory _$$MyActivitiesStateImplCopyWith(_$MyActivitiesStateImpl value,
          $Res Function(_$MyActivitiesStateImpl) then) =
      __$$MyActivitiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Activity> activities, Paginator? paginator, AppStatus status});

  @override
  $PaginatorCopyWith<$Res>? get paginator;
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
    ));
  }
}

/// @nodoc

class _$MyActivitiesStateImpl implements _MyActivitiesState {
  const _$MyActivitiesStateImpl(
      {final List<Activity> activities = const [],
      this.paginator,
      this.status = AppStatus.init})
      : _activities = activities;

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
  String toString() {
    return 'MyActivitiesState(activities: $activities, paginator: $paginator, status: $status)';
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
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_activities), paginator, status);

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
      final AppStatus status}) = _$MyActivitiesStateImpl;

  @override
  List<Activity> get activities;
  @override
  Paginator? get paginator;
  @override
  AppStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$MyActivitiesStateImplCopyWith<_$MyActivitiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
