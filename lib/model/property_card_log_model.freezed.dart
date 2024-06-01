// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_card_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyCardLog _$PropertyCardLogFromJson(Map<String, dynamic> json) {
  return _PropertyCardLog.fromJson(json);
}

/// @nodoc
mixin _$PropertyCardLog {
  String get message => throw _privateConstructorUsedError;
  CreatedBy? get createdBy => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCardLogCopyWith<PropertyCardLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCardLogCopyWith<$Res> {
  factory $PropertyCardLogCopyWith(
          PropertyCardLog value, $Res Function(PropertyCardLog) then) =
      _$PropertyCardLogCopyWithImpl<$Res, PropertyCardLog>;
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
class _$PropertyCardLogCopyWithImpl<$Res, $Val extends PropertyCardLog>
    implements $PropertyCardLogCopyWith<$Res> {
  _$PropertyCardLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyCardLogImplCopyWith<$Res>
    implements $PropertyCardLogCopyWith<$Res> {
  factory _$$PropertyCardLogImplCopyWith(_$PropertyCardLogImpl value,
          $Res Function(_$PropertyCardLogImpl) then) =
      __$$PropertyCardLogImplCopyWithImpl<$Res>;
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
class __$$PropertyCardLogImplCopyWithImpl<$Res>
    extends _$PropertyCardLogCopyWithImpl<$Res, _$PropertyCardLogImpl>
    implements _$$PropertyCardLogImplCopyWith<$Res> {
  __$$PropertyCardLogImplCopyWithImpl(
      _$PropertyCardLogImpl _value, $Res Function(_$PropertyCardLogImpl) _then)
      : super(_value, _then);

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
    return _then(_$PropertyCardLogImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyCardLogImpl implements _PropertyCardLog {
  const _$PropertyCardLogImpl(
      {required this.message,
      required this.createdBy,
      required this.type,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(readValue: readId) required this.id});

  factory _$PropertyCardLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyCardLogImplFromJson(json);

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

  @override
  String toString() {
    return 'PropertyCardLog(message: $message, createdBy: $createdBy, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyCardLogImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, createdBy, type, createdAt, updatedAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyCardLogImplCopyWith<_$PropertyCardLogImpl> get copyWith =>
      __$$PropertyCardLogImplCopyWithImpl<_$PropertyCardLogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyCardLogImplToJson(
      this,
    );
  }
}

abstract class _PropertyCardLog implements PropertyCardLog {
  const factory _PropertyCardLog(
          {required final String message,
          required final CreatedBy? createdBy,
          required final String type,
          required final String createdAt,
          required final String updatedAt,
          @JsonKey(readValue: readId) required final String id}) =
      _$PropertyCardLogImpl;

  factory _PropertyCardLog.fromJson(Map<String, dynamic> json) =
      _$PropertyCardLogImpl.fromJson;

  @override
  String get message;
  @override
  CreatedBy? get createdBy;
  @override
  String get type;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$PropertyCardLogImplCopyWith<_$PropertyCardLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
