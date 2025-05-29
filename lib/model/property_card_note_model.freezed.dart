// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_card_note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyCardNoteModel {
  @JsonKey(name: 'propertyCard')
  String? get propertyCard;
  @JsonKey(name: 'createdBy')
  User? get createdBy;
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of PropertyCardNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyCardNoteModelCopyWith<PropertyCardNoteModel> get copyWith =>
      _$PropertyCardNoteModelCopyWithImpl<PropertyCardNoteModel>(
          this as PropertyCardNoteModel, _$identity);

  /// Serializes this PropertyCardNoteModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyCardNoteModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, propertyCard, createdBy, message, createdAt, updatedAt, id);

  @override
  String toString() {
    return 'PropertyCardNoteModel(propertyCard: $propertyCard, createdBy: $createdBy, message: $message, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class $PropertyCardNoteModelCopyWith<$Res> {
  factory $PropertyCardNoteModelCopyWith(PropertyCardNoteModel value,
          $Res Function(PropertyCardNoteModel) _then) =
      _$PropertyCardNoteModelCopyWithImpl;
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
class _$PropertyCardNoteModelCopyWithImpl<$Res>
    implements $PropertyCardNoteModelCopyWith<$Res> {
  _$PropertyCardNoteModelCopyWithImpl(this._self, this._then);

  final PropertyCardNoteModel _self;
  final $Res Function(PropertyCardNoteModel) _then;

  /// Create a copy of PropertyCardNoteModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      propertyCard: freezed == propertyCard
          ? _self.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PropertyCardNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PropertyCardNoteModel implements PropertyCardNoteModel {
  const _PropertyCardNoteModel(
      {@JsonKey(name: 'propertyCard') this.propertyCard,
      @JsonKey(name: 'createdBy') this.createdBy,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'id') this.id});
  factory _PropertyCardNoteModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardNoteModelFromJson(json);

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

  /// Create a copy of PropertyCardNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyCardNoteModelCopyWith<_PropertyCardNoteModel> get copyWith =>
      __$PropertyCardNoteModelCopyWithImpl<_PropertyCardNoteModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyCardNoteModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyCardNoteModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, propertyCard, createdBy, message, createdAt, updatedAt, id);

  @override
  String toString() {
    return 'PropertyCardNoteModel(propertyCard: $propertyCard, createdBy: $createdBy, message: $message, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$PropertyCardNoteModelCopyWith<$Res>
    implements $PropertyCardNoteModelCopyWith<$Res> {
  factory _$PropertyCardNoteModelCopyWith(_PropertyCardNoteModel value,
          $Res Function(_PropertyCardNoteModel) _then) =
      __$PropertyCardNoteModelCopyWithImpl;
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
class __$PropertyCardNoteModelCopyWithImpl<$Res>
    implements _$PropertyCardNoteModelCopyWith<$Res> {
  __$PropertyCardNoteModelCopyWithImpl(this._self, this._then);

  final _PropertyCardNoteModel _self;
  final $Res Function(_PropertyCardNoteModel) _then;

  /// Create a copy of PropertyCardNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? propertyCard = freezed,
    Object? createdBy = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_PropertyCardNoteModel(
      propertyCard: freezed == propertyCard
          ? _self.propertyCard
          : propertyCard // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PropertyCardNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

// dart format on
