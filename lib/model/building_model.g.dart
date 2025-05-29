// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Building _$BuildingFromJson(Map<String, dynamic> json) => _Building(
      id: readId(json, 'id') as String,
      name: json['name'] as String,
      buildingNumber: json['buildingNumber'] as String?,
      communityId: json['communityId'] as String?,
      floors: (json['floors'] as num?)?.toInt(),
      type: json['type'] as String?,
      createdBy: json['createdBy'] as String?,
      distances: json['distances'] as List<dynamic>?,
    );

Map<String, dynamic> _$BuildingToJson(_Building instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'buildingNumber': instance.buildingNumber,
      'communityId': instance.communityId,
      'floors': instance.floors,
      'type': instance.type,
      'createdBy': instance.createdBy,
      'distances': instance.distances,
    };
