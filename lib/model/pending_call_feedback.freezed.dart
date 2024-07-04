// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_call_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PendingCallFeedback _$PendingCallFeedbackFromJson(Map<String, dynamic> json) {
  return _PendingCallFeedback.fromJson(json);
}

/// @nodoc
mixin _$PendingCallFeedback {
  int get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  CallDirection get callDirection => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  bool get isSynced => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendingCallFeedbackCopyWith<PendingCallFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingCallFeedbackCopyWith<$Res> {
  factory $PendingCallFeedbackCopyWith(
          PendingCallFeedback value, $Res Function(PendingCallFeedback) then) =
      _$PendingCallFeedbackCopyWithImpl<$Res, PendingCallFeedback>;
  @useResult
  $Res call(
      {int id,
      String number,
      CallDirection callDirection,
      String? feedback,
      bool isSynced});
}

/// @nodoc
class _$PendingCallFeedbackCopyWithImpl<$Res, $Val extends PendingCallFeedback>
    implements $PendingCallFeedbackCopyWith<$Res> {
  _$PendingCallFeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? callDirection = null,
    Object? feedback = freezed,
    Object? isSynced = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      callDirection: null == callDirection
          ? _value.callDirection
          : callDirection // ignore: cast_nullable_to_non_nullable
              as CallDirection,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      isSynced: null == isSynced
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PendingCallFeedbackImplCopyWith<$Res>
    implements $PendingCallFeedbackCopyWith<$Res> {
  factory _$$PendingCallFeedbackImplCopyWith(_$PendingCallFeedbackImpl value,
          $Res Function(_$PendingCallFeedbackImpl) then) =
      __$$PendingCallFeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String number,
      CallDirection callDirection,
      String? feedback,
      bool isSynced});
}

/// @nodoc
class __$$PendingCallFeedbackImplCopyWithImpl<$Res>
    extends _$PendingCallFeedbackCopyWithImpl<$Res, _$PendingCallFeedbackImpl>
    implements _$$PendingCallFeedbackImplCopyWith<$Res> {
  __$$PendingCallFeedbackImplCopyWithImpl(_$PendingCallFeedbackImpl _value,
      $Res Function(_$PendingCallFeedbackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? callDirection = null,
    Object? feedback = freezed,
    Object? isSynced = null,
  }) {
    return _then(_$PendingCallFeedbackImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      callDirection: null == callDirection
          ? _value.callDirection
          : callDirection // ignore: cast_nullable_to_non_nullable
              as CallDirection,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      isSynced: null == isSynced
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PendingCallFeedbackImpl implements _PendingCallFeedback {
  const _$PendingCallFeedbackImpl(
      {required this.id,
      required this.number,
      required this.callDirection,
      this.feedback,
      this.isSynced = false});

  factory _$PendingCallFeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendingCallFeedbackImplFromJson(json);

  @override
  final int id;
  @override
  final String number;
  @override
  final CallDirection callDirection;
  @override
  final String? feedback;
  @override
  @JsonKey()
  final bool isSynced;

  @override
  String toString() {
    return 'PendingCallFeedback(id: $id, number: $number, callDirection: $callDirection, feedback: $feedback, isSynced: $isSynced)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingCallFeedbackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.callDirection, callDirection) ||
                other.callDirection == callDirection) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, number, callDirection, feedback, isSynced);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingCallFeedbackImplCopyWith<_$PendingCallFeedbackImpl> get copyWith =>
      __$$PendingCallFeedbackImplCopyWithImpl<_$PendingCallFeedbackImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PendingCallFeedbackImplToJson(
      this,
    );
  }
}

abstract class _PendingCallFeedback implements PendingCallFeedback {
  const factory _PendingCallFeedback(
      {required final int id,
      required final String number,
      required final CallDirection callDirection,
      final String? feedback,
      final bool isSynced}) = _$PendingCallFeedbackImpl;

  factory _PendingCallFeedback.fromJson(Map<String, dynamic> json) =
      _$PendingCallFeedbackImpl.fromJson;

  @override
  int get id;
  @override
  String get number;
  @override
  CallDirection get callDirection;
  @override
  String? get feedback;
  @override
  bool get isSynced;
  @override
  @JsonKey(ignore: true)
  _$$PendingCallFeedbackImplCopyWith<_$PendingCallFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
