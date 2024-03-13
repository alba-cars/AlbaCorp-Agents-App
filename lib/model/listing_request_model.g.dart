// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewListingRequestImpl _$$NewListingRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$NewListingRequestImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      propertyTypeId: json['property_type_id'] as String,
      communityId: json['community_id'] as String,
      buildingId: json['building_id'] as String,
      multiple: json['multiple'] as bool,
      type: json['type'] as String,
      beds: json['beds'] as String,
      baths: json['baths'] as String,
      price: json['price'] as int,
      size: json['size'] as int,
      propertyType:
          PropertyType.fromJson(json['property_type'] as Map<String, dynamic>),
      community: Community.fromJson(json['community'] as Map<String, dynamic>),
      building: json['building'] == null
          ? null
          : Building.fromJson(json['building'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewListingRequestImplToJson(
        _$NewListingRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'property_type_id': instance.propertyTypeId,
      'community_id': instance.communityId,
      'building_id': instance.buildingId,
      'multiple': instance.multiple,
      'type': instance.type,
      'beds': instance.beds,
      'baths': instance.baths,
      'price': instance.price,
      'size': instance.size,
      'property_type': instance.propertyType,
      'community': instance.community,
      'building': instance.building,
    };
