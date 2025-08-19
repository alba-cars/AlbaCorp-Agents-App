// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_access_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuickAccessSection _$QuickAccessSectionFromJson(Map<String, dynamic> json) =>
    _QuickAccessSection(
      id: json['id'] as String,
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      cards: (json['cards'] as List<dynamic>)
          .map((e) => QuickAccessCard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuickAccessSectionToJson(_QuickAccessSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'cards': instance.cards,
    };

_QuickAccessCard _$QuickAccessCardFromJson(Map<String, dynamic> json) =>
    _QuickAccessCard(
      id: json['id'] as String,
      title: json['title'] as String,
      link: json['link'] as String,
      sectionId: json['section_id'] as String,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$QuickAccessCardToJson(_QuickAccessCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'section_id': instance.sectionId,
      'order': instance.order,
    };
