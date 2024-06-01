// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amenity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AmenityImpl _$$AmenityImplFromJson(Map<String, dynamic> json) =>
    _$AmenityImpl(
      id: json['id'] as String,
      amenity: json['amenity'] as String,
      icon: json['icon'] as String?,
      amenityCategoryId: json['amenityCategoryId'] as String?,
    );

Map<String, dynamic> _$$AmenityImplToJson(_$AmenityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amenity': instance.amenity,
      'icon': instance.icon,
      'amenityCategoryId': instance.amenityCategoryId,
    };
