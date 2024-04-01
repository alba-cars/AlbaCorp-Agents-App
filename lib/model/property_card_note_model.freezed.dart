// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_card_note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyCardNoteModel _$PropertyCardNoteModelFromJson(
    Map<String, dynamic> json) {
  return _PropertyCardNoteModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyCardNoteModel {
  @JsonKey(name: 'propertyCard')
  String? get propertyCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdBy')
  User? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCardNoteModelCopyWith<PropertyCardNoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCardNoteModelCopyWith<$Res> {
  factory $PropertyCardNoteModelCopyWith(PropertyCardNoteModel value,
          $Res Function(PropertyCardNoteModel) then) =
      _$PropertyCardNoteModelCopyWithImpl<$Res, PropertyCardNoteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'propertyCard') String? propertyCard,
      @JsonKey(name: 'createdBy') User? createdBy,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'id') String? id});

  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$PropertyCardNoteModelCopyWithImpl<$Res,
        $Val extends PropertyCardNoteModel>
    implements $PropertyCardNoteModelCopyWith<$Res> {
  _$PropertyCardNoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyCard = freezed,
    Object? createdBy = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      propertyCard: freezed == propertyCard
          ? _value.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyCardNoteModelImplCopyWith<$Res>
    implements $PropertyCardNoteModelCopyWith<$Res> {
  factory _$$PropertyCardNoteModelImplCopyWith(
          _$PropertyCardNoteModelImpl value,
          $Res Function(_$PropertyCardNoteModelImpl) then) =
      __$$PropertyCardNoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'propertyCard') String? propertyCard,
      @JsonKey(name: 'createdBy') User? createdBy,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'id') String? id});

  @override
  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$PropertyCardNoteModelImplCopyWithImpl<$Res>
    extends _$PropertyCardNoteModelCopyWithImpl<$Res,
        _$PropertyCardNoteModelImpl>
    implements _$$PropertyCardNoteModelImplCopyWith<$Res> {
  __$$PropertyCardNoteModelImplCopyWithImpl(_$PropertyCardNoteModelImpl _value,
      $Res Function(_$PropertyCardNoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyCard = freezed,
    Object? createdBy = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$PropertyCardNoteModelImpl(
      propertyCard: freezed == propertyCard
          ? _value.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyCardNoteModelImpl implements _PropertyCardNoteModel {
  const _$PropertyCardNoteModelImpl(
      {@JsonKey(name: 'propertyCard') this.propertyCard,
      @JsonKey(name: 'createdBy') this.createdBy,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'id') this.id});

  factory _$PropertyCardNoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyCardNoteModelImplFromJson(json);

  @override
  @JsonKey(name: 'propertyCard')
  final String? propertyCard;
  @override
  @JsonKey(name: 'createdBy')
  final User? createdBy;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'PropertyCardNoteModel(propertyCard: $propertyCard, createdBy: $createdBy, message: $message, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyCardNoteModelImpl &&
            (identical(other.propertyCard, propertyCard) ||
                other.propertyCard == propertyCard) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, propertyCard, createdBy, message, createdAt, updatedAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyCardNoteModelImplCopyWith<_$PropertyCardNoteModelImpl>
      get copyWith => __$$PropertyCardNoteModelImplCopyWithImpl<
          _$PropertyCardNoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyCardNoteModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyCardNoteModel implements PropertyCardNoteModel {
  const factory _PropertyCardNoteModel(
      {@JsonKey(name: 'propertyCard') final String? propertyCard,
      @JsonKey(name: 'createdBy') final User? createdBy,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'createdAt') final DateTime? createdAt,
      @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
      @JsonKey(name: 'id') final String? id}) = _$PropertyCardNoteModelImpl;

  factory _PropertyCardNoteModel.fromJson(Map<String, dynamic> json) =
      _$PropertyCardNoteModelImpl.fromJson;

  @override
  @JsonKey(name: 'propertyCard')
  String? get propertyCard;
  @override
  @JsonKey(name: 'createdBy')
  User? get createdBy;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$PropertyCardNoteModelImplCopyWith<_$PropertyCardNoteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
