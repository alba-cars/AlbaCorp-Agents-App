// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTaskState {
  Status get addLeadStatus => throw _privateConstructorUsedError;
  String? get addLeadError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskStateCopyWith<AddTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskStateCopyWith<$Res> {
  factory $AddTaskStateCopyWith(
          AddTaskState value, $Res Function(AddTaskState) then) =
      _$AddTaskStateCopyWithImpl<$Res, AddTaskState>;
  @useResult
  $Res call({Status addLeadStatus, String? addLeadError});
}

/// @nodoc
class _$AddTaskStateCopyWithImpl<$Res, $Val extends AddTaskState>
    implements $AddTaskStateCopyWith<$Res> {
  _$AddTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addLeadStatus = null,
    Object? addLeadError = freezed,
  }) {
    return _then(_value.copyWith(
      addLeadStatus: null == addLeadStatus
          ? _value.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addLeadError: freezed == addLeadError
          ? _value.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTaskStateImplCopyWith<$Res>
    implements $AddTaskStateCopyWith<$Res> {
  factory _$$AddTaskStateImplCopyWith(
          _$AddTaskStateImpl value, $Res Function(_$AddTaskStateImpl) then) =
      __$$AddTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status addLeadStatus, String? addLeadError});
}

/// @nodoc
class __$$AddTaskStateImplCopyWithImpl<$Res>
    extends _$AddTaskStateCopyWithImpl<$Res, _$AddTaskStateImpl>
    implements _$$AddTaskStateImplCopyWith<$Res> {
  __$$AddTaskStateImplCopyWithImpl(
      _$AddTaskStateImpl _value, $Res Function(_$AddTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addLeadStatus = null,
    Object? addLeadError = freezed,
  }) {
    return _then(_$AddTaskStateImpl(
      addLeadStatus: null == addLeadStatus
          ? _value.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addLeadError: freezed == addLeadError
          ? _value.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddTaskStateImpl implements _AddTaskState {
  const _$AddTaskStateImpl(
      {this.addLeadStatus = Status.init, this.addLeadError});

  @override
  @JsonKey()
  final Status addLeadStatus;
  @override
  final String? addLeadError;

  @override
  String toString() {
    return 'AddTaskState(addLeadStatus: $addLeadStatus, addLeadError: $addLeadError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskStateImpl &&
            (identical(other.addLeadStatus, addLeadStatus) ||
                other.addLeadStatus == addLeadStatus) &&
            (identical(other.addLeadError, addLeadError) ||
                other.addLeadError == addLeadError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addLeadStatus, addLeadError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskStateImplCopyWith<_$AddTaskStateImpl> get copyWith =>
      __$$AddTaskStateImplCopyWithImpl<_$AddTaskStateImpl>(this, _$identity);
}

abstract class _AddTaskState implements AddTaskState {
  const factory _AddTaskState(
      {final Status addLeadStatus,
      final String? addLeadError}) = _$AddTaskStateImpl;

  @override
  Status get addLeadStatus;
  @override
  String? get addLeadError;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskStateImplCopyWith<_$AddTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
