// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_feedback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityFeedback {
  bool? get isInterested;
  String? get notes;
  @JsonKey(name: 'status')
  String? get status;
  List<dynamic>? get tags;

  /// Create a copy of ActivityFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActivityFeedbackCopyWith<ActivityFeedback> get copyWith =>
      _$ActivityFeedbackCopyWithImpl<ActivityFeedback>(
          this as ActivityFeedback, _$identity);

  /// Serializes this ActivityFeedback to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActivityFeedback &&
            (identical(other.isInterested, isInterested) ||
                other.isInterested == isInterested) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isInterested, notes, status,
      const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'ActivityFeedback(isInterested: $isInterested, notes: $notes, status: $status, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $ActivityFeedbackCopyWith<$Res> {
  factory $ActivityFeedbackCopyWith(
          ActivityFeedback value, $Res Function(ActivityFeedback) _then) =
      _$ActivityFeedbackCopyWithImpl;
  @useResult
  $Res call(
      {bool? isInterested,
      String? notes,
      @JsonKey(name: 'status') String? status,
      List<dynamic>? tags});
}

/// @nodoc
class _$ActivityFeedbackCopyWithImpl<$Res>
    implements $ActivityFeedbackCopyWith<$Res> {
  _$ActivityFeedbackCopyWithImpl(this._self, this._then);

  final ActivityFeedback _self;
  final $Res Function(ActivityFeedback) _then;

  /// Create a copy of ActivityFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInterested = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? tags = freezed,
  }) {
    return _then(_self.copyWith(
      isInterested: freezed == isInterested
          ? _self.isInterested
          : isInterested // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ActivityFeedback implements ActivityFeedback {
  _ActivityFeedback(
      {this.isInterested,
      this.notes,
      @JsonKey(name: 'status') this.status,
      final List<dynamic>? tags})
      : _tags = tags;
  factory _ActivityFeedback.fromJson(Map<String, dynamic> json) =>
      _$ActivityFeedbackFromJson(json);

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

  /// Create a copy of ActivityFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActivityFeedbackCopyWith<_ActivityFeedback> get copyWith =>
      __$ActivityFeedbackCopyWithImpl<_ActivityFeedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActivityFeedbackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivityFeedback &&
            (identical(other.isInterested, isInterested) ||
                other.isInterested == isInterested) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isInterested, notes, status,
      const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'ActivityFeedback(isInterested: $isInterested, notes: $notes, status: $status, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$ActivityFeedbackCopyWith<$Res>
    implements $ActivityFeedbackCopyWith<$Res> {
  factory _$ActivityFeedbackCopyWith(
          _ActivityFeedback value, $Res Function(_ActivityFeedback) _then) =
      __$ActivityFeedbackCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? isInterested,
      String? notes,
      @JsonKey(name: 'status') String? status,
      List<dynamic>? tags});
}

/// @nodoc
class __$ActivityFeedbackCopyWithImpl<$Res>
    implements _$ActivityFeedbackCopyWith<$Res> {
  __$ActivityFeedbackCopyWithImpl(this._self, this._then);

  final _ActivityFeedback _self;
  final $Res Function(_ActivityFeedback) _then;

  /// Create a copy of ActivityFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isInterested = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? tags = freezed,
  }) {
    return _then(_ActivityFeedback(
      isInterested: freezed == isInterested
          ? _self.isInterested
          : isInterested // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

// dart format on
