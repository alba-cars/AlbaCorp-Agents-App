// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityState {
  ActivityFeedback? get activityFeedback => throw _privateConstructorUsedError;
  Activity? get lastActivity => throw _privateConstructorUsedError;
  bool get newSpecialLeadsTasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res, ActivityState>;
  @useResult
  $Res call(
      {ActivityFeedback? activityFeedback,
      Activity? lastActivity,
      bool newSpecialLeadsTasks});

  $ActivityFeedbackCopyWith<$Res>? get activityFeedback;
  $ActivityCopyWith<$Res>? get lastActivity;
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res, $Val extends ActivityState>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityFeedback = freezed,
    Object? lastActivity = freezed,
    Object? newSpecialLeadsTasks = null,
  }) {
    return _then(_value.copyWith(
      activityFeedback: freezed == activityFeedback
          ? _value.activityFeedback
          : activityFeedback // ignore: cast_nullable_to_non_nullable
              as ActivityFeedback?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as Activity?,
      newSpecialLeadsTasks: null == newSpecialLeadsTasks
          ? _value.newSpecialLeadsTasks
          : newSpecialLeadsTasks // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityFeedbackCopyWith<$Res>? get activityFeedback {
    if (_value.activityFeedback == null) {
      return null;
    }

    return $ActivityFeedbackCopyWith<$Res>(_value.activityFeedback!, (value) {
      return _then(_value.copyWith(activityFeedback: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res>? get lastActivity {
    if (_value.lastActivity == null) {
      return null;
    }

    return $ActivityCopyWith<$Res>(_value.lastActivity!, (value) {
      return _then(_value.copyWith(lastActivity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityStateImplCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$$ActivityStateImplCopyWith(
          _$ActivityStateImpl value, $Res Function(_$ActivityStateImpl) then) =
      __$$ActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActivityFeedback? activityFeedback,
      Activity? lastActivity,
      bool newSpecialLeadsTasks});

  @override
  $ActivityFeedbackCopyWith<$Res>? get activityFeedback;
  @override
  $ActivityCopyWith<$Res>? get lastActivity;
}

/// @nodoc
class __$$ActivityStateImplCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$ActivityStateImpl>
    implements _$$ActivityStateImplCopyWith<$Res> {
  __$$ActivityStateImplCopyWithImpl(
      _$ActivityStateImpl _value, $Res Function(_$ActivityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityFeedback = freezed,
    Object? lastActivity = freezed,
    Object? newSpecialLeadsTasks = null,
  }) {
    return _then(_$ActivityStateImpl(
      activityFeedback: freezed == activityFeedback
          ? _value.activityFeedback
          : activityFeedback // ignore: cast_nullable_to_non_nullable
              as ActivityFeedback?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as Activity?,
      newSpecialLeadsTasks: null == newSpecialLeadsTasks
          ? _value.newSpecialLeadsTasks
          : newSpecialLeadsTasks // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ActivityStateImpl implements _ActivityState {
  const _$ActivityStateImpl(
      {this.activityFeedback,
      this.lastActivity,
      this.newSpecialLeadsTasks = false});

  @override
  final ActivityFeedback? activityFeedback;
  @override
  final Activity? lastActivity;
  @override
  @JsonKey()
  final bool newSpecialLeadsTasks;

  @override
  String toString() {
    return 'ActivityState(activityFeedback: $activityFeedback, lastActivity: $lastActivity, newSpecialLeadsTasks: $newSpecialLeadsTasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateImpl &&
            (identical(other.activityFeedback, activityFeedback) ||
                other.activityFeedback == activityFeedback) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.newSpecialLeadsTasks, newSpecialLeadsTasks) ||
                other.newSpecialLeadsTasks == newSpecialLeadsTasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, activityFeedback, lastActivity, newSpecialLeadsTasks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      __$$ActivityStateImplCopyWithImpl<_$ActivityStateImpl>(this, _$identity);
}

abstract class _ActivityState implements ActivityState {
  const factory _ActivityState(
      {final ActivityFeedback? activityFeedback,
      final Activity? lastActivity,
      final bool newSpecialLeadsTasks}) = _$ActivityStateImpl;

  @override
  ActivityFeedback? get activityFeedback;
  @override
  Activity? get lastActivity;
  @override
  bool get newSpecialLeadsTasks;
  @override
  @JsonKey(ignore: true)
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
