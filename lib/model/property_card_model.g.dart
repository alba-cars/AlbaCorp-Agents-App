// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyCardImpl _$$PropertyCardImplFromJson(Map<String, dynamic> json) =>
    _$PropertyCardImpl(
      id: readId(json, 'id') as String,
      plCreationDate: json['plCreationDate'],
      building: json['building'] == null
          ? null
          : Building.fromJson(json['building'] as Map<String, dynamic>),
      community: json['community'] == null
          ? null
          : Community.fromJson(json['community'] as Map<String, dynamic>),
      beds: json['beds'] as int?,
      baths: json['baths'] as int?,
      size: (json['size'] as num?)?.toDouble(),
      propertyType: json['propertyType'] as String?,
      createdBy: json['createdBy'],
      partyType: json['partyType'] as String?,
      status: json['status'] as String?,
      purpose: json['purpose'] as String?,
      amenities: json['amenities'] as List<dynamic>?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      checkedOutDate: json['checkedOutDate'] as String?,
      currentAgent: json['currentAgent'],
      updatedBy: json['updatedBy'] as String?,
      referenceNumber: json['referenceNumber'] as String?,
      expirationDate: json['expirationDate'] as String?,
      availableForCheckout: json['availableForCheckout'] as bool? ?? false,
      leadsCount: json['leadsCount'] as int?,
    );

Map<String, dynamic> _$$PropertyCardImplToJson(_$PropertyCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plCreationDate': instance.plCreationDate,
      'building': instance.building,
      'community': instance.community,
      'beds': instance.beds,
      'baths': instance.baths,
      'size': instance.size,
      'propertyType': instance.propertyType,
      'createdBy': instance.createdBy,
      'partyType': instance.partyType,
      'status': instance.status,
      'purpose': instance.purpose,
      'amenities': instance.amenities,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'checkedOutDate': instance.checkedOutDate,
      'currentAgent': instance.currentAgent,
      'updatedBy': instance.updatedBy,
      'referenceNumber': instance.referenceNumber,
      'expirationDate': instance.expirationDate,
      'availableForCheckout': instance.availableForCheckout,
      'leadsCount': instance.leadsCount,
    };

_$CreatedByImpl _$$CreatedByImplFromJson(Map<String, dynamic> json) =>
    _$CreatedByImpl(
      id: json['_id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      phone: json['phone'],
    );

Map<String, dynamic> _$$CreatedByImplToJson(_$CreatedByImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
    };
