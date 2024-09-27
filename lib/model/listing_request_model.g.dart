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
      propertyTypeId: json['property_type_id'] as String?,
      communityId: json['community_id'] as String?,
      buildingId: json['building_id'] as String?,
      multiple: json['multiple'] as bool,
      type: json['type'] as String?,
      beds: json['beds'] as String?,
      baths: json['baths'] as String?,
      price: json['price'] as num?,
      size: json['size'] as num?,
      propertyType: json['property_type'] == null
          ? null
          : PropertyType.fromJson(
              json['property_type'] as Map<String, dynamic>),
      community: json['community'] == null
          ? null
          : Community.fromJson(json['community'] as Map<String, dynamic>),
      building: json['building'] == null
          ? null
          : Building.fromJson(json['building'] as Map<String, dynamic>),
      furnishing: json['furnishing'] as String?,
      contractValidity: json['contractValidity'] as String?,
      vacancy: json['vacancy'] as String?,
      numberOfCheques: (json['numberOfCheques'] as num?)?.toInt(),
      exclusive: json['exclusive'] as bool? ?? false,
      isOffPlanResale: json['isOffPlanResale'] as bool? ?? false,
      vacantOnTransfer: json['vacantOnTransfer'] as bool? ?? false,
      relatedInfo: json['relatedInfo'] as String?,
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
      'furnishing': instance.furnishing,
      'contractValidity': instance.contractValidity,
      'vacancy': instance.vacancy,
      'numberOfCheques': instance.numberOfCheques,
      'exclusive': instance.exclusive,
      'isOffPlanResale': instance.isOffPlanResale,
      'vacantOnTransfer': instance.vacantOnTransfer,
      'relatedInfo': instance.relatedInfo,
    };
