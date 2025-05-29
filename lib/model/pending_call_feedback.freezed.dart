// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_call_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PendingCallFeedback {
  int get id;
  String get number;
  CallDirection get callDirection;
  String? get feedback;
  bool get isSynced;

  /// Create a copy of PendingCallFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PendingCallFeedbackCopyWith<PendingCallFeedback> get copyWith =>
      _$PendingCallFeedbackCopyWithImpl<PendingCallFeedback>(
          this as PendingCallFeedback, _$identity);

  /// Serializes this PendingCallFeedback to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PendingCallFeedback &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.callDirection, callDirection) ||
                other.callDirection == callDirection) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, number, callDirection, feedback, isSynced);

  @override
  String toString() {
    return 'PendingCallFeedback(id: $id, number: $number, callDirection: $callDirection, feedback: $feedback, isSynced: $isSynced)';
  }
}

/// @nodoc
abstract mixin class $PendingCallFeedbackCopyWith<$Res> {
  factory $PendingCallFeedbackCopyWith(
          PendingCallFeedback value, $Res Function(PendingCallFeedback) _then) =
      _$PendingCallFeedbackCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String number,
      CallDirection callDirection,
      String? feedback,
      bool isSynced});
}

/// @nodoc
class _$PendingCallFeedbackCopyWithImpl<$Res>
    implements $PendingCallFeedbackCopyWith<$Res> {
  _$PendingCallFeedbackCopyWithImpl(this._self, this._then);

  final PendingCallFeedback _self;
  final $Res Function(PendingCallFeedback) _then;

  /// Create a copy of PendingCallFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? callDirection = null,
    Object? feedback = freezed,
    Object? isSynced = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      callDirection: null == callDirection
          ? _self.callDirection
          : callDirection // ignore: cast_nullable_to_non_nullable
              as CallDirection,
      feedback: freezed == feedback
          ? _self.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      isSynced: null == isSynced
          ? _self.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PendingCallFeedback implements PendingCallFeedback {
  const _PendingCallFeedback(
      {required this.id,
      required this.number,
      required this.callDirection,
      this.feedback,
      this.isSynced = false});
  factory _PendingCallFeedback.fromJson(Map<String, dynamic> json) =>
      _$PendingCallFeedbackFromJson(json);

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

  /// Create a copy of PendingCallFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PendingCallFeedbackCopyWith<_PendingCallFeedback> get copyWith =>
      __$PendingCallFeedbackCopyWithImpl<_PendingCallFeedback>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PendingCallFeedbackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PendingCallFeedback &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.callDirection, callDirection) ||
                other.callDirection == callDirection) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, number, callDirection, feedback, isSynced);

  @override
  String toString() {
    return 'PendingCallFeedback(id: $id, number: $number, callDirection: $callDirection, feedback: $feedback, isSynced: $isSynced)';
  }
}

/// @nodoc
abstract mixin class _$PendingCallFeedbackCopyWith<$Res>
    implements $PendingCallFeedbackCopyWith<$Res> {
  factory _$PendingCallFeedbackCopyWith(_PendingCallFeedback value,
          $Res Function(_PendingCallFeedback) _then) =
      __$PendingCallFeedbackCopyWithImpl;
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
class __$PendingCallFeedbackCopyWithImpl<$Res>
    implements _$PendingCallFeedbackCopyWith<$Res> {
  __$PendingCallFeedbackCopyWithImpl(this._self, this._then);

  final _PendingCallFeedback _self;
  final $Res Function(_PendingCallFeedback) _then;

  /// Create a copy of PendingCallFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? callDirection = null,
    Object? feedback = freezed,
    Object? isSynced = null,
  }) {
    return _then(_PendingCallFeedback(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      callDirection: null == callDirection
          ? _self.callDirection
          : callDirection // ignore: cast_nullable_to_non_nullable
              as CallDirection,
      feedback: freezed == feedback
          ? _self.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      isSynced: null == isSynced
          ? _self.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
