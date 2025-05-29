// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Community _$CommunityFromJson(Map<String, dynamic> json) => _Community(
      id: readId(json, 'id') as String,
      community: json['community'] as String,
      slug: json['slug'] as String?,
      icon: json['icon'] as String?,
      imageAlt: json['image_alt'] as String?,
      metaDescription: json['meta_description'] as String?,
      metaKeywords: json['meta_keywords'] as String?,
      metaTitle: json['meta_title'] as String?,
    );

Map<String, dynamic> _$CommunityToJson(_Community instance) =>
    <String, dynamic>{
      'id': instance.id,
      'community': instance.community,
      'slug': instance.slug,
      'icon': instance.icon,
      'image_alt': instance.imageAlt,
      'meta_description': instance.metaDescription,
      'meta_keywords': instance.metaKeywords,
      'meta_title': instance.metaTitle,
    };
