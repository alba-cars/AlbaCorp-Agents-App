// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyType _$PropertyTypeFromJson(Map<String, dynamic> json) {
  return _PropertyType.fromJson(json);
}

/// @nodoc
mixin _$PropertyType {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  String get propertyType => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  List<Bed> get beds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyTypeCopyWith<PropertyType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyTypeCopyWith<$Res> {
  factory $PropertyTypeCopyWith(
          PropertyType value, $Res Function(PropertyType) then) =
      _$PropertyTypeCopyWithImpl<$Res, PropertyType>;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String propertyType,
      String? icon,
      String? categoryId,
      List<Bed> beds});
}

/// @nodoc
class _$PropertyTypeCopyWithImpl<$Res, $Val extends PropertyType>
    implements $PropertyTypeCopyWith<$Res> {
  _$PropertyTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyType = null,
    Object? icon = freezed,
    Object? categoryId = freezed,
    Object? beds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: null == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as List<Bed>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyTypeImplCopyWith<$Res>
    implements $PropertyTypeCopyWith<$Res> {
  factory _$$PropertyTypeImplCopyWith(
          _$PropertyTypeImpl value, $Res Function(_$PropertyTypeImpl) then) =
      __$$PropertyTypeImplCopyWithImpl<$Res>;
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
class __$$PropertyTypeImplCopyWithImpl<$Res>
    extends _$PropertyTypeCopyWithImpl<$Res, _$PropertyTypeImpl>
    implements _$$PropertyTypeImplCopyWith<$Res> {
  __$$PropertyTypeImplCopyWithImpl(
      _$PropertyTypeImpl _value, $Res Function(_$PropertyTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyType = null,
    Object? icon = freezed,
    Object? categoryId = freezed,
    Object? beds = null,
  }) {
    return _then(_$PropertyTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: null == beds
          ? _value._beds
          : beds // ignore: cast_nullable_to_non_nullable
              as List<Bed>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyTypeImpl implements _PropertyType {
  const _$PropertyTypeImpl(
      {@JsonKey(readValue: readId) required this.id,
      required this.propertyType,
      this.icon,
      this.categoryId,
      final List<Bed> beds = const []})
      : _beds = beds;

  factory _$PropertyTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyTypeImplFromJson(json);

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

  @override
  String toString() {
    return 'PropertyType(id: $id, propertyType: $propertyType, icon: $icon, categoryId: $categoryId, beds: $beds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other._beds, _beds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, propertyType, icon,
      categoryId, const DeepCollectionEquality().hash(_beds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyTypeImplCopyWith<_$PropertyTypeImpl> get copyWith =>
      __$$PropertyTypeImplCopyWithImpl<_$PropertyTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyTypeImplToJson(
      this,
    );
  }
}

abstract class _PropertyType implements PropertyType {
  const factory _PropertyType(
      {@JsonKey(readValue: readId) required final String id,
      required final String propertyType,
      final String? icon,
      final String? categoryId,
      final List<Bed> beds}) = _$PropertyTypeImpl;

  factory _PropertyType.fromJson(Map<String, dynamic> json) =
      _$PropertyTypeImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  String get propertyType;
  @override
  String? get icon;
  @override
  String? get categoryId;
  @override
  List<Bed> get beds;
  @override
  @JsonKey(ignore: true)
  _$$PropertyTypeImplCopyWith<_$PropertyTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bed _$BedFromJson(Map<String, dynamic> json) {
  return _Bed.fromJson(json);
}

/// @nodoc
mixin _$Bed {
  String get name => throw _privateConstructorUsedError;
  int get startingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BedCopyWith<Bed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BedCopyWith<$Res> {
  factory $BedCopyWith(Bed value, $Res Function(Bed) then) =
      _$BedCopyWithImpl<$Res, Bed>;
  @useResult
  $Res call({String name, int startingPrice, @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$BedCopyWithImpl<$Res, $Val extends Bed> implements $BedCopyWith<$Res> {
  _$BedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startingPrice = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BedImplCopyWith<$Res> implements $BedCopyWith<$Res> {
  factory _$$BedImplCopyWith(_$BedImpl value, $Res Function(_$BedImpl) then) =
      __$$BedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int startingPrice, @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$BedImplCopyWithImpl<$Res> extends _$BedCopyWithImpl<$Res, _$BedImpl>
    implements _$$BedImplCopyWith<$Res> {
  __$$BedImplCopyWithImpl(_$BedImpl _value, $Res Function(_$BedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startingPrice = null,
    Object? id = null,
  }) {
    return _then(_$BedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BedImpl implements _Bed {
  _$BedImpl(
      {required this.name,
      required this.startingPrice,
      @JsonKey(name: '_id') required this.id});

  factory _$BedImpl.fromJson(Map<String, dynamic> json) =>
      _$$BedImplFromJson(json);

  @override
  final String name;
  @override
  final int startingPrice;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'Bed(name: $name, startingPrice: $startingPrice, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, startingPrice, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BedImplCopyWith<_$BedImpl> get copyWith =>
      __$$BedImplCopyWithImpl<_$BedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BedImplToJson(
      this,
    );
  }
}

abstract class _Bed implements Bed {
  factory _Bed(
      {required final String name,
      required final int startingPrice,
      @JsonKey(name: '_id') required final String id}) = _$BedImpl;

  factory _Bed.fromJson(Map<String, dynamic> json) = _$BedImpl.fromJson;

  @override
  String get name;
  @override
  int get startingPrice;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BedImplCopyWith<_$BedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
