// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_feedback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityFeedback _$ActivityFeedbackFromJson(Map<String, dynamic> json) {
  return _ActivityFeedback.fromJson(json);
}

/// @nodoc
mixin _$ActivityFeedback {
  bool? get isInterested => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  List<dynamic>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityFeedbackCopyWith<ActivityFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityFeedbackCopyWith<$Res> {
  factory $ActivityFeedbackCopyWith(
          ActivityFeedback value, $Res Function(ActivityFeedback) then) =
      _$ActivityFeedbackCopyWithImpl<$Res, ActivityFeedback>;
  @useResult
  $Res call(
      {bool? isInterested,
      String? notes,
      @JsonKey(name: 'status') String? status,
      List<dynamic>? tags});
}

/// @nodoc
class _$ActivityFeedbackCopyWithImpl<$Res, $Val extends ActivityFeedback>
    implements $ActivityFeedbackCopyWith<$Res> {
  _$ActivityFeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInterested = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      isInterested: freezed == isInterested
          ? _value.isInterested
          : isInterested // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityFeedbackImplCopyWith<$Res>
    implements $ActivityFeedbackCopyWith<$Res> {
  factory _$$ActivityFeedbackImplCopyWith(_$ActivityFeedbackImpl value,
          $Res Function(_$ActivityFeedbackImpl) then) =
      __$$ActivityFeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isInterested,
      String? notes,
      @JsonKey(name: 'status') String? status,
      List<dynamic>? tags});
}

/// @nodoc
class __$$ActivityFeedbackImplCopyWithImpl<$Res>
    extends _$ActivityFeedbackCopyWithImpl<$Res, _$ActivityFeedbackImpl>
    implements _$$ActivityFeedbackImplCopyWith<$Res> {
  __$$ActivityFeedbackImplCopyWithImpl(_$ActivityFeedbackImpl _value,
      $Res Function(_$ActivityFeedbackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInterested = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$ActivityFeedbackImpl(
      isInterested: freezed == isInterested
          ? _value.isInterested
          : isInterested // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityFeedbackImpl implements _ActivityFeedback {
  _$ActivityFeedbackImpl(
      {this.isInterested,
      this.notes,
      @JsonKey(name: 'status') this.status,
      final List<dynamic>? tags})
      : _tags = tags;

  factory _$ActivityFeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityFeedbackImplFromJson(json);

  @override
  final bool? isInterested;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'status')
  final String? status;
  final List<dynamic>? _tags;
  @override
  List<dynamic>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ActivityFeedback(isInterested: $isInterested, notes: $notes, status: $status, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityFeedbackImpl &&
            (identical(other.isInterested, isInterested) ||
                other.isInterested == isInterested) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isInterested, notes, status,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityFeedbackImplCopyWith<_$ActivityFeedbackImpl> get copyWith =>
      __$$ActivityFeedbackImplCopyWithImpl<_$ActivityFeedbackImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityFeedbackImplToJson(
      this,
    );
  }
}

abstract class _ActivityFeedback implements ActivityFeedback {
  factory _ActivityFeedback(
      {final bool? isInterested,
      final String? notes,
      @JsonKey(name: 'status') final String? status,
      final List<dynamic>? tags}) = _$ActivityFeedbackImpl;

  factory _ActivityFeedback.fromJson(Map<String, dynamic> json) =
      _$ActivityFeedbackImpl.fromJson;

  @override
  bool? get isInterested;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  List<dynamic>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$ActivityFeedbackImplCopyWith<_$ActivityFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
