// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enquiries_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EnquiriesState {
  Map<TaskFilterEnum, AppStatus> get fetchStatus =>
      throw _privateConstructorUsedError;
  Map<TaskFilterEnum, Paginator?> get paginator =>
      throw _privateConstructorUsedError;
  Map<TaskFilterEnum, List<Activity>> get activities =>
      throw _privateConstructorUsedError;
  Map<TaskFilterEnum, String> get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnquiriesStateCopyWith<EnquiriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnquiriesStateCopyWith<$Res> {
  factory $EnquiriesStateCopyWith(
          EnquiriesState value, $Res Function(EnquiriesState) then) =
      _$EnquiriesStateCopyWithImpl<$Res, EnquiriesState>;
  @useResult
  $Res call(
      {Map<TaskFilterEnum, AppStatus> fetchStatus,
      Map<TaskFilterEnum, Paginator?> paginator,
      Map<TaskFilterEnum, List<Activity>> activities,
      Map<TaskFilterEnum, String> error});
}

/// @nodoc
class _$EnquiriesStateCopyWithImpl<$Res, $Val extends EnquiriesState>
    implements $EnquiriesStateCopyWith<$Res> {
  _$EnquiriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = null,
    Object? activities = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, AppStatus>,
      paginator: null == paginator
          ? _value.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, Paginator?>,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, List<Activity>>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnquiriesStateImplCopyWith<$Res>
    implements $EnquiriesStateCopyWith<$Res> {
  factory _$$EnquiriesStateImplCopyWith(_$EnquiriesStateImpl value,
          $Res Function(_$EnquiriesStateImpl) then) =
      __$$EnquiriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<TaskFilterEnum, AppStatus> fetchStatus,
      Map<TaskFilterEnum, Paginator?> paginator,
      Map<TaskFilterEnum, List<Activity>> activities,
      Map<TaskFilterEnum, String> error});
}

/// @nodoc
class __$$EnquiriesStateImplCopyWithImpl<$Res>
    extends _$EnquiriesStateCopyWithImpl<$Res, _$EnquiriesStateImpl>
    implements _$$EnquiriesStateImplCopyWith<$Res> {
  __$$EnquiriesStateImplCopyWithImpl(
      _$EnquiriesStateImpl _value, $Res Function(_$EnquiriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? paginator = null,
    Object? activities = null,
    Object? error = null,
  }) {
    return _then(_$EnquiriesStateImpl(
      fetchStatus: null == fetchStatus
          ? _value._fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, AppStatus>,
      paginator: null == paginator
          ? _value._paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, Paginator?>,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, List<Activity>>,
      error: null == error
          ? _value._error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<TaskFilterEnum, String>,
    ));
  }
}

/// @nodoc

class _$EnquiriesStateImpl implements _EnquiriesState {
  const _$EnquiriesStateImpl(
      {final Map<TaskFilterEnum, AppStatus> fetchStatus = const {
        TaskFilterEnum.New: AppStatus.initial,
        TaskFilterEnum.FollowUp: AppStatus.initial,
        TaskFilterEnum.Favourites: AppStatus.initial
      },
      final Map<TaskFilterEnum, Paginator?> paginator = const {},
      final Map<TaskFilterEnum, List<Activity>> activities = const {},
      final Map<TaskFilterEnum, String> error = const {}})
      : _fetchStatus = fetchStatus,
        _paginator = paginator,
        _activities = activities,
        _error = error;

  final Map<TaskFilterEnum, AppStatus> _fetchStatus;
  @override
  @JsonKey()
  Map<TaskFilterEnum, AppStatus> get fetchStatus {
    if (_fetchStatus is EqualUnmodifiableMapView) return _fetchStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fetchStatus);
  }

  final Map<TaskFilterEnum, Paginator?> _paginator;
  @override
  @JsonKey()
  Map<TaskFilterEnum, Paginator?> get paginator {
    if (_paginator is EqualUnmodifiableMapView) return _paginator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paginator);
  }

  final Map<TaskFilterEnum, List<Activity>> _activities;
  @override
  @JsonKey()
  Map<TaskFilterEnum, List<Activity>> get activities {
    if (_activities is EqualUnmodifiableMapView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_activities);
  }

  final Map<TaskFilterEnum, String> _error;
  @override
  @JsonKey()
  Map<TaskFilterEnum, String> get error {
    if (_error is EqualUnmodifiableMapView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_error);
  }

  @override
  String toString() {
    return 'EnquiriesState(fetchStatus: $fetchStatus, paginator: $paginator, activities: $activities, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnquiriesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._fetchStatus, _fetchStatus) &&
            const DeepCollectionEquality()
                .equals(other._paginator, _paginator) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality().equals(other._error, _error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fetchStatus),
      const DeepCollectionEquality().hash(_paginator),
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnquiriesStateImplCopyWith<_$EnquiriesStateImpl> get copyWith =>
      __$$EnquiriesStateImplCopyWithImpl<_$EnquiriesStateImpl>(
          this, _$identity);
}

abstract class _EnquiriesState implements EnquiriesState {
  const factory _EnquiriesState(
      {final Map<TaskFilterEnum, AppStatus> fetchStatus,
      final Map<TaskFilterEnum, Paginator?> paginator,
      final Map<TaskFilterEnum, List<Activity>> activities,
      final Map<TaskFilterEnum, String> error}) = _$EnquiriesStateImpl;

  @override
  Map<TaskFilterEnum, AppStatus> get fetchStatus;
  @override
  Map<TaskFilterEnum, Paginator?> get paginator;
  @override
  Map<TaskFilterEnum, List<Activity>> get activities;
  @override
  Map<TaskFilterEnum, String> get error;
  @override
  @JsonKey(ignore: true)
  _$$EnquiriesStateImplCopyWith<_$EnquiriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
