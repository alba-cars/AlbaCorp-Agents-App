// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddTaskState {
  AppStatus get addLeadStatus;
  String? get addLeadError;

  /// Create a copy of AddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddTaskStateCopyWith<AddTaskState> get copyWith =>
      _$AddTaskStateCopyWithImpl<AddTaskState>(
          this as AddTaskState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddTaskState &&
            (identical(other.addLeadStatus, addLeadStatus) ||
                other.addLeadStatus == addLeadStatus) &&
            (identical(other.addLeadError, addLeadError) ||
                other.addLeadError == addLeadError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addLeadStatus, addLeadError);

  @override
  String toString() {
    return 'AddTaskState(addLeadStatus: $addLeadStatus, addLeadError: $addLeadError)';
  }
}

/// @nodoc
abstract mixin class $AddTaskStateCopyWith<$Res> {
  factory $AddTaskStateCopyWith(
          AddTaskState value, $Res Function(AddTaskState) _then) =
      _$AddTaskStateCopyWithImpl;
  @useResult
  $Res call({AppStatus addLeadStatus, String? addLeadError});
}

/// @nodoc
class _$AddTaskStateCopyWithImpl<$Res> implements $AddTaskStateCopyWith<$Res> {
  _$AddTaskStateCopyWithImpl(this._self, this._then);

  final AddTaskState _self;
  final $Res Function(AddTaskState) _then;

  /// Create a copy of AddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addLeadStatus = null,
    Object? addLeadError = freezed,
  }) {
    return _then(_self.copyWith(
      addLeadStatus: null == addLeadStatus
          ? _self.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addLeadError: freezed == addLeadError
          ? _self.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _AddTaskState implements AddTaskState {
  const _AddTaskState({this.addLeadStatus = AppStatus.init, this.addLeadError});

  @override
  @JsonKey()
  final AppStatus addLeadStatus;
  @override
  final String? addLeadError;

  /// Create a copy of AddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddTaskStateCopyWith<_AddTaskState> get copyWith =>
      __$AddTaskStateCopyWithImpl<_AddTaskState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTaskState &&
            (identical(other.addLeadStatus, addLeadStatus) ||
                other.addLeadStatus == addLeadStatus) &&
            (identical(other.addLeadError, addLeadError) ||
                other.addLeadError == addLeadError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addLeadStatus, addLeadError);

  @override
  String toString() {
    return 'AddTaskState(addLeadStatus: $addLeadStatus, addLeadError: $addLeadError)';
  }
}

/// @nodoc
abstract mixin class _$AddTaskStateCopyWith<$Res>
    implements $AddTaskStateCopyWith<$Res> {
  factory _$AddTaskStateCopyWith(
          _AddTaskState value, $Res Function(_AddTaskState) _then) =
      __$AddTaskStateCopyWithImpl;
  @override
  @useResult
  $Res call({AppStatus addLeadStatus, String? addLeadError});
}

/// @nodoc
class __$AddTaskStateCopyWithImpl<$Res>
    implements _$AddTaskStateCopyWith<$Res> {
  __$AddTaskStateCopyWithImpl(this._self, this._then);

  final _AddTaskState _self;
  final $Res Function(_AddTaskState) _then;

  /// Create a copy of AddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addLeadStatus = null,
    Object? addLeadError = freezed,
  }) {
    return _then(_AddTaskState(
      addLeadStatus: null == addLeadStatus
          ? _self.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addLeadError: freezed == addLeadError
          ? _self.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
