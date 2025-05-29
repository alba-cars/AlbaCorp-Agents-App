// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amenity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Amenity implements DiagnosticableTreeMixin {
  String get id;
  String get amenity;
  String? get icon;
  String? get amenityCategoryId;

  /// Create a copy of Amenity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AmenityCopyWith<Amenity> get copyWith =>
      _$AmenityCopyWithImpl<Amenity>(this as Amenity, _$identity);

  /// Serializes this Amenity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Amenity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('amenity', amenity))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('amenityCategoryId', amenityCategoryId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Amenity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amenity, amenity) || other.amenity == amenity) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.amenityCategoryId, amenityCategoryId) ||
                other.amenityCategoryId == amenityCategoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amenity, icon, amenityCategoryId);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Amenity(id: $id, amenity: $amenity, icon: $icon, amenityCategoryId: $amenityCategoryId)';
  }
}

/// @nodoc
abstract mixin class $AmenityCopyWith<$Res> {
  factory $AmenityCopyWith(Amenity value, $Res Function(Amenity) _then) =
      _$AmenityCopyWithImpl;
  @useResult
  $Res call(
      {String id, String amenity, String? icon, String? amenityCategoryId});
}

/// @nodoc
class _$AmenityCopyWithImpl<$Res> implements $AmenityCopyWith<$Res> {
  _$AmenityCopyWithImpl(this._self, this._then);

  final Amenity _self;
  final $Res Function(Amenity) _then;

  /// Create a copy of Amenity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amenity = null,
    Object? icon = freezed,
    Object? amenityCategoryId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amenity: null == amenity
          ? _self.amenity
          : amenity // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      amenityCategoryId: freezed == amenityCategoryId
          ? _self.amenityCategoryId
          : amenityCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Amenity with DiagnosticableTreeMixin implements Amenity {
  const _Amenity(
      {required this.id,
      required this.amenity,
      this.icon,
      this.amenityCategoryId});
  factory _Amenity.fromJson(Map<String, dynamic> json) =>
      _$AmenityFromJson(json);

  @override
  final String id;
  @override
  final String amenity;
  @override
  final String? icon;
  @override
  final String? amenityCategoryId;

  /// Create a copy of Amenity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AmenityCopyWith<_Amenity> get copyWith =>
      __$AmenityCopyWithImpl<_Amenity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AmenityToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Amenity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('amenity', amenity))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('amenityCategoryId', amenityCategoryId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Amenity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amenity, amenity) || other.amenity == amenity) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.amenityCategoryId, amenityCategoryId) ||
                other.amenityCategoryId == amenityCategoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amenity, icon, amenityCategoryId);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Amenity(id: $id, amenity: $amenity, icon: $icon, amenityCategoryId: $amenityCategoryId)';
  }
}

/// @nodoc
abstract mixin class _$AmenityCopyWith<$Res> implements $AmenityCopyWith<$Res> {
  factory _$AmenityCopyWith(_Amenity value, $Res Function(_Amenity) _then) =
      __$AmenityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id, String amenity, String? icon, String? amenityCategoryId});
}

/// @nodoc
class __$AmenityCopyWithImpl<$Res> implements _$AmenityCopyWith<$Res> {
  __$AmenityCopyWithImpl(this._self, this._then);

  final _Amenity _self;
  final $Res Function(_Amenity) _then;

  /// Create a copy of Amenity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? amenity = null,
    Object? icon = freezed,
    Object? amenityCategoryId = freezed,
  }) {
    return _then(_Amenity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amenity: null == amenity
          ? _self.amenity
          : amenity // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      amenityCategoryId: freezed == amenityCategoryId
          ? _self.amenityCategoryId
          : amenityCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
