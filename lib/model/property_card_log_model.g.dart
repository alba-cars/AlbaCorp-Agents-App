// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_card_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PropertyCardLog _$PropertyCardLogFromJson(Map<String, dynamic> json) =>
    _PropertyCardLog(
      message: json['message'] as String,
      createdBy: json['createdBy'] == null
          ? null
          : CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      type: json['type'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      id: readId(json, 'id') as String,
    );

Map<String, dynamic> _$PropertyCardLogToJson(_PropertyCardLog instance) =>
    <String, dynamic>{
      'message': instance.message,
      'createdBy': instance.createdBy,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
    };
