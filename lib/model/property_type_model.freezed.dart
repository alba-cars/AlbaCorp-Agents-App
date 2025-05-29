// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyType {
  @JsonKey(readValue: readId)
  String get id;
  String get propertyType;
  String? get icon;
  String? get categoryId;
  List<Bed> get beds;

  /// Create a copy of PropertyType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyTypeCopyWith<PropertyType> get copyWith =>
      _$PropertyTypeCopyWithImpl<PropertyType>(
          this as PropertyType, _$identity);

  /// Serializes this PropertyType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other.beds, beds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, propertyType, icon,
      categoryId, const DeepCollectionEquality().hash(beds));

  @override
  String toString() {
    return 'PropertyType(id: $id, propertyType: $propertyType, icon: $icon, categoryId: $categoryId, beds: $beds)';
  }
}

/// @nodoc
abstract mixin class $PropertyTypeCopyWith<$Res> {
  factory $PropertyTypeCopyWith(
          PropertyType value, $Res Function(PropertyType) _then) =
      _$PropertyTypeCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String propertyType,
      String? icon,
      String? categoryId,
      List<Bed> beds});
}

/// @nodoc
class _$PropertyTypeCopyWithImpl<$Res> implements $PropertyTypeCopyWith<$Res> {
  _$PropertyTypeCopyWithImpl(this._self, this._then);

  final PropertyType _self;
  final $Res Function(PropertyType) _then;

  /// Create a copy of PropertyType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyType = null,
    Object? icon = freezed,
    Object? categoryId = freezed,
    Object? beds = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: null == beds
          ? _self.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as List<Bed>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PropertyType implements PropertyType {
  const _PropertyType(
      {@JsonKey(readValue: readId) required this.id,
      required this.propertyType,
      this.icon,
      this.categoryId,
      final List<Bed> beds = const []})
      : _beds = beds;
  factory _PropertyType.fromJson(Map<String, dynamic> json) =>
      _$PropertyTypeFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final String propertyType;
  @override
  final String? icon;
  @override
  final String? categoryId;
  final List<Bed> _beds;
  @override
  @JsonKey()
  List<Bed> get beds {
    if (_beds is EqualUnmodifiableListView) return _beds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beds);
  }

  /// Create a copy of PropertyType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyTypeCopyWith<_PropertyType> get copyWith =>
      __$PropertyTypeCopyWithImpl<_PropertyType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other._beds, _beds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, propertyType, icon,
      categoryId, const DeepCollectionEquality().hash(_beds));

  @override
  String toString() {
    return 'PropertyType(id: $id, propertyType: $propertyType, icon: $icon, categoryId: $categoryId, beds: $beds)';
  }
}

/// @nodoc
abstract mixin class _$PropertyTypeCopyWith<$Res>
    implements $PropertyTypeCopyWith<$Res> {
  factory _$PropertyTypeCopyWith(
          _PropertyType value, $Res Function(_PropertyType) _then) =
      __$PropertyTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String propertyType,
      String? icon,
      String? categoryId,
      List<Bed> beds});
}

/// @nodoc
class __$PropertyTypeCopyWithImpl<$Res>
    implements _$PropertyTypeCopyWith<$Res> {
  __$PropertyTypeCopyWithImpl(this._self, this._then);

  final _PropertyType _self;
  final $Res Function(_PropertyType) _then;

  /// Create a copy of PropertyType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? propertyType = null,
    Object? icon = freezed,
    Object? categoryId = freezed,
    Object? beds = null,
  }) {
    return _then(_PropertyType(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: null == beds
          ? _self._beds
          : beds // ignore: cast_nullable_to_non_nullable
              as List<Bed>,
    ));
  }
}

/// @nodoc
mixin _$Bed {
  String get name;
  int get startingPrice;
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of Bed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BedCopyWith<Bed> get copyWith =>
      _$BedCopyWithImpl<Bed>(this as Bed, _$identity);

  /// Serializes this Bed to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Bed &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, startingPrice, id);

  @override
  String toString() {
    return 'Bed(name: $name, startingPrice: $startingPrice, id: $id)';
  }
}

/// @nodoc
abstract mixin class $BedCopyWith<$Res> {
  factory $BedCopyWith(Bed value, $Res Function(Bed) _then) = _$BedCopyWithImpl;
  @useResult
  $Res call({String name, int startingPrice, @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$BedCopyWithImpl<$Res> implements $BedCopyWith<$Res> {
  _$BedCopyWithImpl(this._self, this._then);

  final Bed _self;
  final $Res Function(Bed) _then;

  /// Create a copy of Bed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startingPrice = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startingPrice: null == startingPrice
          ? _self.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Bed implements Bed {
  _Bed(
      {required this.name,
      required this.startingPrice,
      @JsonKey(name: '_id') required this.id});
  factory _Bed.fromJson(Map<String, dynamic> json) => _$BedFromJson(json);

  @override
  final String name;
  @override
  final int startingPrice;
  @override
  @JsonKey(name: '_id')
  final String id;

  /// Create a copy of Bed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BedCopyWith<_Bed> get copyWith =>
      __$BedCopyWithImpl<_Bed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bed &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, startingPrice, id);

  @override
  String toString() {
    return 'Bed(name: $name, startingPrice: $startingPrice, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$BedCopyWith<$Res> implements $BedCopyWith<$Res> {
  factory _$BedCopyWith(_Bed value, $Res Function(_Bed) _then) =
      __$BedCopyWithImpl;
  @override
  @useResult
  $Res call({String name, int startingPrice, @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$BedCopyWithImpl<$Res> implements _$BedCopyWith<$Res> {
  __$BedCopyWithImpl(this._self, this._then);

  final _Bed _self;
  final $Res Function(_Bed) _then;

  /// Create a copy of Bed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? startingPrice = null,
    Object? id = null,
  }) {
    return _then(_Bed(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startingPrice: null == startingPrice
          ? _self.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
