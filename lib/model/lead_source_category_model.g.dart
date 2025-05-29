// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_source_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeadSourceCategory _$LeadSourceCategoryFromJson(Map<String, dynamic> json) =>
    _LeadSourceCategory(
      sources: (json['sources'] as List<dynamic>)
          .map((e) => LeadSourceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] as String,
    );

Map<String, dynamic> _$LeadSourceCategoryToJson(_LeadSourceCategory instance) =>
    <String, dynamic>{
      'sources': instance.sources,
      'category': instance.category,
    };

_LeadSourceItem _$LeadSourceItemFromJson(Map<String, dynamic> json) =>
    _LeadSourceItem(
      id: readId(json, '_id') as String,
      name: json['name'] as String,
      leadSourceType: json['leadSourceType'] as String,
      tags: (readTags(json, 'tags') as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LeadSourceItemToJson(_LeadSourceItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'leadSourceType': instance.leadSourceType,
      'tags': instance.tags,
    };
