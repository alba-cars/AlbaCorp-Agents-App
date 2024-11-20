// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_source_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadSourceCategoryImpl _$$LeadSourceCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$LeadSourceCategoryImpl(
      sources: (json['sources'] as List<dynamic>)
          .map((e) => LeadSourceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] as String,
    );

Map<String, dynamic> _$$LeadSourceCategoryImplToJson(
        _$LeadSourceCategoryImpl instance) =>
    <String, dynamic>{
      'sources': instance.sources,
      'category': instance.category,
    };

_$LeadSourceItemImpl _$$LeadSourceItemImplFromJson(Map<String, dynamic> json) =>
    _$LeadSourceItemImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      leadSourceType: json['leadSourceType'] as String,
      tags: json['tags'] as String,
    );

Map<String, dynamic> _$$LeadSourceItemImplToJson(
        _$LeadSourceItemImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'leadSourceType': instance.leadSourceType,
      'tags': instance.tags,
    };
