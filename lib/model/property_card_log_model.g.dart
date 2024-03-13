// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_card_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyCardLogImpl _$$PropertyCardLogImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyCardLogImpl(
      message: json['message'] as String,
      createdBy: CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      type: json['type'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      id: readId(json, 'id') as String,
    );

Map<String, dynamic> _$$PropertyCardLogImplToJson(
        _$PropertyCardLogImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'createdBy': instance.createdBy,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
    };
