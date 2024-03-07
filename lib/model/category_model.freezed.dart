// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelCategory _$ModelCategoryFromJson(Map<String, dynamic> json) {
  return _ModelCategory.fromJson(json);
}

/// @nodoc
mixin _$ModelCategory {
  String? get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelCategoryCopyWith<ModelCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCategoryCopyWith<$Res> {
  factory $ModelCategoryCopyWith(
          ModelCategory value, $Res Function(ModelCategory) then) =
      _$ModelCategoryCopyWithImpl<$Res, ModelCategory>;
  @useResult
  $Res call({String? image, String name});
}

/// @nodoc
class _$ModelCategoryCopyWithImpl<$Res, $Val extends ModelCategory>
    implements $ModelCategoryCopyWith<$Res> {
  _$ModelCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelCategoryImplCopyWith<$Res>
    implements $ModelCategoryCopyWith<$Res> {
  factory _$$ModelCategoryImplCopyWith(
          _$ModelCategoryImpl value, $Res Function(_$ModelCategoryImpl) then) =
      __$$ModelCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String name});
}

/// @nodoc
class __$$ModelCategoryImplCopyWithImpl<$Res>
    extends _$ModelCategoryCopyWithImpl<$Res, _$ModelCategoryImpl>
    implements _$$ModelCategoryImplCopyWith<$Res> {
  __$$ModelCategoryImplCopyWithImpl(
      _$ModelCategoryImpl _value, $Res Function(_$ModelCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = null,
  }) {
    return _then(_$ModelCategoryImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelCategoryImpl implements _ModelCategory {
  const _$ModelCategoryImpl({this.image, required this.name});

  factory _$ModelCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelCategoryImplFromJson(json);

  @override
  final String? image;
  @override
  final String name;

  @override
  String toString() {
    return 'ModelCategory(image: $image, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelCategoryImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelCategoryImplCopyWith<_$ModelCategoryImpl> get copyWith =>
      __$$ModelCategoryImplCopyWithImpl<_$ModelCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelCategoryImplToJson(
      this,
    );
  }
}

abstract class _ModelCategory implements ModelCategory {
  const factory _ModelCategory(
      {final String? image, required final String name}) = _$ModelCategoryImpl;

  factory _ModelCategory.fromJson(Map<String, dynamic> json) =
      _$ModelCategoryImpl.fromJson;

  @override
  String? get image;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ModelCategoryImplCopyWith<_$ModelCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
