// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityState {
  ActivityFeedback? get activityFeedback;
  Activity? get lastActivity;
  bool get newSpecialLeadsTasks;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      _$ActivityStateCopyWithImpl<ActivityState>(
          this as ActivityState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActivityState &&
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

  @override
  String toString() {
    return 'ActivityState(activityFeedback: $activityFeedback, lastActivity: $lastActivity, newSpecialLeadsTasks: $newSpecialLeadsTasks)';
  }
}

/// @nodoc
abstract mixin class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) _then) =
      _$ActivityStateCopyWithImpl;
  @useResult
  $Res call(
      {ActivityFeedback? activityFeedback,
      Activity? lastActivity,
      bool newSpecialLeadsTasks});

  $ActivityFeedbackCopyWith<$Res>? get activityFeedback;
  $ActivityCopyWith<$Res>? get lastActivity;
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._self, this._then);

  final ActivityState _self;
  final $Res Function(ActivityState) _then;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityFeedback = freezed,
    Object? lastActivity = freezed,
    Object? newSpecialLeadsTasks = null,
  }) {
    return _then(_self.copyWith(
      activityFeedback: freezed == activityFeedback
          ? _self.activityFeedback
          : activityFeedback // ignore: cast_nullable_to_non_nullable
              as ActivityFeedback?,
      lastActivity: freezed == lastActivity
          ? _self.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as Activity?,
      newSpecialLeadsTasks: null == newSpecialLeadsTasks
          ? _self.newSpecialLeadsTasks
          : newSpecialLeadsTasks // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityFeedbackCopyWith<$Res>? get activityFeedback {
    if (_self.activityFeedback == null) {
      return null;
    }

    return $ActivityFeedbackCopyWith<$Res>(_self.activityFeedback!, (value) {
      return _then(_self.copyWith(activityFeedback: value));
    });
  }

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res>? get lastActivity {
    if (_self.lastActivity == null) {
      return null;
    }

    return $ActivityCopyWith<$Res>(_self.lastActivity!, (value) {
      return _then(_self.copyWith(lastActivity: value));
    });
  }
}

/// @nodoc

class _ActivityState implements ActivityState {
  const _ActivityState(
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

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActivityStateCopyWith<_ActivityState> get copyWith =>
      __$ActivityStateCopyWithImpl<_ActivityState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivityState &&
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

  @override
  String toString() {
    return 'ActivityState(activityFeedback: $activityFeedback, lastActivity: $lastActivity, newSpecialLeadsTasks: $newSpecialLeadsTasks)';
  }
}

/// @nodoc
abstract mixin class _$ActivityStateCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$ActivityStateCopyWith(
          _ActivityState value, $Res Function(_ActivityState) _then) =
      __$ActivityStateCopyWithImpl;
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
class __$ActivityStateCopyWithImpl<$Res>
    implements _$ActivityStateCopyWith<$Res> {
  __$ActivityStateCopyWithImpl(this._self, this._then);

  final _ActivityState _self;
  final $Res Function(_ActivityState) _then;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? activityFeedback = freezed,
    Object? lastActivity = freezed,
    Object? newSpecialLeadsTasks = null,
  }) {
    return _then(_ActivityState(
      activityFeedback: freezed == activityFeedback
          ? _self.activityFeedback
          : activityFeedback // ignore: cast_nullable_to_non_nullable
              as ActivityFeedback?,
      lastActivity: freezed == lastActivity
          ? _self.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as Activity?,
      newSpecialLeadsTasks: null == newSpecialLeadsTasks
          ? _self.newSpecialLeadsTasks
          : newSpecialLeadsTasks // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityFeedbackCopyWith<$Res>? get activityFeedback {
    if (_self.activityFeedback == null) {
      return null;
    }

    return $ActivityFeedbackCopyWith<$Res>(_self.activityFeedback!, (value) {
      return _then(_self.copyWith(activityFeedback: value));
    });
  }

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res>? get lastActivity {
    if (_self.lastActivity == null) {
      return null;
    }

    return $ActivityCopyWith<$Res>(_self.lastActivity!, (value) {
      return _then(_self.copyWith(lastActivity: value));
    });
  }
}

// dart format on
