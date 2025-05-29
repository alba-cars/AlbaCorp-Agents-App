// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelCategory {
  String? get image;
  String get name;

  /// Create a copy of ModelCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelCategoryCopyWith<ModelCategory> get copyWith =>
      _$ModelCategoryCopyWithImpl<ModelCategory>(
          this as ModelCategory, _$identity);

  /// Serializes this ModelCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelCategory &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, name);

  @override
  String toString() {
    return 'ModelCategory(image: $image, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ModelCategoryCopyWith<$Res> {
  factory $ModelCategoryCopyWith(
          ModelCategory value, $Res Function(ModelCategory) _then) =
      _$ModelCategoryCopyWithImpl;
  @useResult
  $Res call({String? image, String name});
}

/// @nodoc
class _$ModelCategoryCopyWithImpl<$Res>
    implements $ModelCategoryCopyWith<$Res> {
  _$ModelCategoryCopyWithImpl(this._self, this._then);

  final ModelCategory _self;
  final $Res Function(ModelCategory) _then;

  /// Create a copy of ModelCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ModelCategory implements ModelCategory {
  const _ModelCategory({this.image, required this.name});
  factory _ModelCategory.fromJson(Map<String, dynamic> json) =>
      _$ModelCategoryFromJson(json);

  @override
  final String? image;
  @override
  final String name;

  /// Create a copy of ModelCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelCategoryCopyWith<_ModelCategory> get copyWith =>
      __$ModelCategoryCopyWithImpl<_ModelCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelCategory &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, name);

  @override
  String toString() {
    return 'ModelCategory(image: $image, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ModelCategoryCopyWith<$Res>
    implements $ModelCategoryCopyWith<$Res> {
  factory _$ModelCategoryCopyWith(
          _ModelCategory value, $Res Function(_ModelCategory) _then) =
      __$ModelCategoryCopyWithImpl;
  @override
  @useResult
  $Res call({String? image, String name});
}

/// @nodoc
class __$ModelCategoryCopyWithImpl<$Res>
    implements _$ModelCategoryCopyWith<$Res> {
  __$ModelCategoryCopyWithImpl(this._self, this._then);

  final _ModelCategory _self;
  final $Res Function(_ModelCategory) _then;

  /// Create a copy of ModelCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = freezed,
    Object? name = null,
  }) {
    return _then(_ModelCategory(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
