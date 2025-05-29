// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_card_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyCardLog {
  String get message;
  CreatedBy? get createdBy;
  String get type;
  String get createdAt;
  String get updatedAt;
  @JsonKey(readValue: readId)
  String get id;

  /// Create a copy of PropertyCardLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyCardLogCopyWith<PropertyCardLog> get copyWith =>
      _$PropertyCardLogCopyWithImpl<PropertyCardLog>(
          this as PropertyCardLog, _$identity);

  /// Serializes this PropertyCardLog to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyCardLog &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, createdBy, type, createdAt, updatedAt, id);

  @override
  String toString() {
    return 'PropertyCardLog(message: $message, createdBy: $createdBy, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class $PropertyCardLogCopyWith<$Res> {
  factory $PropertyCardLogCopyWith(
          PropertyCardLog value, $Res Function(PropertyCardLog) _then) =
      _$PropertyCardLogCopyWithImpl;
  @useResult
  $Res call(
      {String message,
      CreatedBy? createdBy,
      String type,
      String createdAt,
      String updatedAt,
      @JsonKey(readValue: readId) String id});

  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$PropertyCardLogCopyWithImpl<$Res>
    implements $PropertyCardLogCopyWith<$Res> {
  _$PropertyCardLogCopyWithImpl(this._self, this._then);

  final PropertyCardLog _self;
  final $Res Function(PropertyCardLog) _then;

  /// Create a copy of PropertyCardLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? createdBy = freezed,
    Object? type = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of PropertyCardLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PropertyCardLog implements PropertyCardLog {
  const _PropertyCardLog(
      {required this.message,
      required this.createdBy,
      required this.type,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(readValue: readId) required this.id});
  factory _PropertyCardLog.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardLogFromJson(json);

  @override
  final String message;
  @override
  final CreatedBy? createdBy;
  @override
  final String type;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  @JsonKey(readValue: readId)
  final String id;

  /// Create a copy of PropertyCardLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyCardLogCopyWith<_PropertyCardLog> get copyWith =>
      __$PropertyCardLogCopyWithImpl<_PropertyCardLog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyCardLogToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyCardLog &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, createdBy, type, createdAt, updatedAt, id);

  @override
  String toString() {
    return 'PropertyCardLog(message: $message, createdBy: $createdBy, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$PropertyCardLogCopyWith<$Res>
    implements $PropertyCardLogCopyWith<$Res> {
  factory _$PropertyCardLogCopyWith(
          _PropertyCardLog value, $Res Function(_PropertyCardLog) _then) =
      __$PropertyCardLogCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String message,
      CreatedBy? createdBy,
      String type,
      String createdAt,
      String updatedAt,
      @JsonKey(readValue: readId) String id});

  @override
  $CreatedByCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$PropertyCardLogCopyWithImpl<$Res>
    implements _$PropertyCardLogCopyWith<$Res> {
  __$PropertyCardLogCopyWithImpl(this._self, this._then);

  final _PropertyCardLog _self;
  final $Res Function(_PropertyCardLog) _then;

  /// Create a copy of PropertyCardLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? createdBy = freezed,
    Object? type = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? id = null,
  }) {
    return _then(_PropertyCardLog(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of PropertyCardLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

// dart format on
