// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyTypeImpl _$$PropertyTypeImplFromJson(Map<String, dynamic> json) =>
    _$PropertyTypeImpl(
      id: _readId(json, 'id') as String,
      propertyType: json['propertyType'] as String,
      icon: json['icon'] as String?,
      categoryId: json['categoryId'] as String?,
      beds: (json['beds'] as List<dynamic>?)
              ?.map((e) => Bed.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PropertyTypeImplToJson(_$PropertyTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'propertyType': instance.propertyType,
      'icon': instance.icon,
      'categoryId': instance.categoryId,
      'beds': instance.beds,
    };

_$BedImpl _$$BedImplFromJson(Map<String, dynamic> json) => _$BedImpl(
      name: json['name'] as String,
      startingPrice: json['startingPrice'] as int,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$BedImplToJson(_$BedImpl instance) => <String, dynamic>{
      'name': instance.name,
      'startingPrice': instance.startingPrice,
      '_id': instance.id,
    };
