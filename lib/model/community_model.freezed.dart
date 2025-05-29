// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Community {
  @JsonKey(readValue: readId)
  String get id;
  String get community;
  String? get slug;
  String? get icon;
  @JsonKey(name: 'image_alt')
  String? get imageAlt;
  @JsonKey(name: 'meta_description')
  String? get metaDescription;
  @JsonKey(name: 'meta_keywords')
  String? get metaKeywords;
  @JsonKey(name: 'meta_title')
  String? get metaTitle;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<Community> get copyWith =>
      _$CommunityCopyWithImpl<Community>(this as Community, _$identity);

  /// Serializes this Community to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Community &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.imageAlt, imageAlt) ||
                other.imageAlt == imageAlt) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.metaKeywords, metaKeywords) ||
                other.metaKeywords == metaKeywords) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, community, slug, icon,
      imageAlt, metaDescription, metaKeywords, metaTitle);

  @override
  String toString() {
    return 'Community(id: $id, community: $community, slug: $slug, icon: $icon, imageAlt: $imageAlt, metaDescription: $metaDescription, metaKeywords: $metaKeywords, metaTitle: $metaTitle)';
  }
}

/// @nodoc
abstract mixin class $CommunityCopyWith<$Res> {
  factory $CommunityCopyWith(Community value, $Res Function(Community) _then) =
      _$CommunityCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String community,
      String? slug,
      String? icon,
      @JsonKey(name: 'image_alt') String? imageAlt,
      @JsonKey(name: 'meta_description') String? metaDescription,
      @JsonKey(name: 'meta_keywords') String? metaKeywords,
      @JsonKey(name: 'meta_title') String? metaTitle});
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res> implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._self, this._then);

  final Community _self;
  final $Res Function(Community) _then;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? community = null,
    Object? slug = freezed,
    Object? icon = freezed,
    Object? imageAlt = freezed,
    Object? metaDescription = freezed,
    Object? metaKeywords = freezed,
    Object? metaTitle = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAlt: freezed == imageAlt
          ? _self.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _self.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metaKeywords: freezed == metaKeywords
          ? _self.metaKeywords
          : metaKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _self.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Community implements Community {
  const _Community(
      {@JsonKey(readValue: readId) required this.id,
      required this.community,
      this.slug,
      this.icon,
      @JsonKey(name: 'image_alt') this.imageAlt,
      @JsonKey(name: 'meta_description') this.metaDescription,
      @JsonKey(name: 'meta_keywords') this.metaKeywords,
      @JsonKey(name: 'meta_title') this.metaTitle});
  factory _Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final String community;
  @override
  final String? slug;
  @override
  final String? icon;
  @override
  @JsonKey(name: 'image_alt')
  final String? imageAlt;
  @override
  @JsonKey(name: 'meta_description')
  final String? metaDescription;
  @override
  @JsonKey(name: 'meta_keywords')
  final String? metaKeywords;
  @override
  @JsonKey(name: 'meta_title')
  final String? metaTitle;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommunityCopyWith<_Community> get copyWith =>
      __$CommunityCopyWithImpl<_Community>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CommunityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Community &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.imageAlt, imageAlt) ||
                other.imageAlt == imageAlt) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.metaKeywords, metaKeywords) ||
                other.metaKeywords == metaKeywords) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, community, slug, icon,
      imageAlt, metaDescription, metaKeywords, metaTitle);

  @override
  String toString() {
    return 'Community(id: $id, community: $community, slug: $slug, icon: $icon, imageAlt: $imageAlt, metaDescription: $metaDescription, metaKeywords: $metaKeywords, metaTitle: $metaTitle)';
  }
}

/// @nodoc
abstract mixin class _$CommunityCopyWith<$Res>
    implements $CommunityCopyWith<$Res> {
  factory _$CommunityCopyWith(
          _Community value, $Res Function(_Community) _then) =
      __$CommunityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String community,
      String? slug,
      String? icon,
      @JsonKey(name: 'image_alt') String? imageAlt,
      @JsonKey(name: 'meta_description') String? metaDescription,
      @JsonKey(name: 'meta_keywords') String? metaKeywords,
      @JsonKey(name: 'meta_title') String? metaTitle});
}

/// @nodoc
class __$CommunityCopyWithImpl<$Res> implements _$CommunityCopyWith<$Res> {
  __$CommunityCopyWithImpl(this._self, this._then);

  final _Community _self;
  final $Res Function(_Community) _then;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? community = null,
    Object? slug = freezed,
    Object? icon = freezed,
    Object? imageAlt = freezed,
    Object? metaDescription = freezed,
    Object? metaKeywords = freezed,
    Object? metaTitle = freezed,
  }) {
    return _then(_Community(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAlt: freezed == imageAlt
          ? _self.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _self.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metaKeywords: freezed == metaKeywords
          ? _self.metaKeywords
          : metaKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _self.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
