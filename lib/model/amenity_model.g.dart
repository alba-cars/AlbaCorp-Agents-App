// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amenity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Amenity _$AmenityFromJson(Map<String, dynamic> json) => _Amenity(
      id: json['id'] as String,
      amenity: json['amenity'] as String,
      icon: json['icon'] as String?,
      amenityCategoryId: json['amenityCategoryId'] as String?,
    );

Map<String, dynamic> _$AmenityToJson(_Amenity instance) => <String, dynamic>{
      'id': instance.id,
      'amenity': instance.amenity,
      'icon': instance.icon,
      'amenityCategoryId': instance.amenityCategoryId,
    };
