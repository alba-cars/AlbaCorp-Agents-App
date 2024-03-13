// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Community _$CommunityFromJson(Map<String, dynamic> json) {
  return _Community.fromJson(json);
}

/// @nodoc
mixin _$Community {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  String get community => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_alt')
  String? get imageAlt => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_description')
  String? get metaDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_keywords')
  String? get metaKeywords => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_title')
  String? get metaTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityCopyWith<Community> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityCopyWith<$Res> {
  factory $CommunityCopyWith(Community value, $Res Function(Community) then) =
      _$CommunityCopyWithImpl<$Res, Community>;
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
class _$CommunityCopyWithImpl<$Res, $Val extends Community>
    implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAlt: freezed == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metaKeywords: freezed == metaKeywords
          ? _value.metaKeywords
          : metaKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityImplCopyWith<$Res>
    implements $CommunityCopyWith<$Res> {
  factory _$$CommunityImplCopyWith(
          _$CommunityImpl value, $Res Function(_$CommunityImpl) then) =
      __$$CommunityImplCopyWithImpl<$Res>;
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
class __$$CommunityImplCopyWithImpl<$Res>
    extends _$CommunityCopyWithImpl<$Res, _$CommunityImpl>
    implements _$$CommunityImplCopyWith<$Res> {
  __$$CommunityImplCopyWithImpl(
      _$CommunityImpl _value, $Res Function(_$CommunityImpl) _then)
      : super(_value, _then);

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
    return _then(_$CommunityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAlt: freezed == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metaKeywords: freezed == metaKeywords
          ? _value.metaKeywords
          : metaKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityImpl implements _Community {
  const _$CommunityImpl(
      {@JsonKey(readValue: readId) required this.id,
      required this.community,
      this.slug,
      this.icon,
      @JsonKey(name: 'image_alt') this.imageAlt,
      @JsonKey(name: 'meta_description') this.metaDescription,
      @JsonKey(name: 'meta_keywords') this.metaKeywords,
      @JsonKey(name: 'meta_title') this.metaTitle});

  factory _$CommunityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityImplFromJson(json);

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

  @override
  String toString() {
    return 'Community(id: $id, community: $community, slug: $slug, icon: $icon, imageAlt: $imageAlt, metaDescription: $metaDescription, metaKeywords: $metaKeywords, metaTitle: $metaTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, community, slug, icon,
      imageAlt, metaDescription, metaKeywords, metaTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityImplCopyWith<_$CommunityImpl> get copyWith =>
      __$$CommunityImplCopyWithImpl<_$CommunityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityImplToJson(
      this,
    );
  }
}

abstract class _Community implements Community {
  const factory _Community(
      {@JsonKey(readValue: readId) required final String id,
      required final String community,
      final String? slug,
      final String? icon,
      @JsonKey(name: 'image_alt') final String? imageAlt,
      @JsonKey(name: 'meta_description') final String? metaDescription,
      @JsonKey(name: 'meta_keywords') final String? metaKeywords,
      @JsonKey(name: 'meta_title') final String? metaTitle}) = _$CommunityImpl;

  factory _Community.fromJson(Map<String, dynamic> json) =
      _$CommunityImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  String get community;
  @override
  String? get slug;
  @override
  String? get icon;
  @override
  @JsonKey(name: 'image_alt')
  String? get imageAlt;
  @override
  @JsonKey(name: 'meta_description')
  String? get metaDescription;
  @override
  @JsonKey(name: 'meta_keywords')
  String? get metaKeywords;
  @override
  @JsonKey(name: 'meta_title')
  String? get metaTitle;
  @override
  @JsonKey(ignore: true)
  _$$CommunityImplCopyWith<_$CommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
