// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_card_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyCardDetailsModelImpl _$$PropertyCardDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyCardDetailsModelImpl(
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
      createdBy: json['createdBy'] == null
          ? null
          : CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      partyType: json['partyType'] as String?,
      status: json['status'] as String?,
      purpose: json['purpose'] as String?,
      amenities: json['amenities'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      checkedOutDate: json['checkedOutDate'] == null
          ? null
          : DateTime.parse(json['checkedOutDate'] as String),
      currentAgent: json['currentAgent'],
      updatedBy: json['updatedBy'] == null
          ? null
          : CreatedBy.fromJson(json['updatedBy'] as Map<String, dynamic>),
      referenceNumber: json['referenceNumber'] as String?,
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
      availableForCheckout: json['availableForCheckout'] as bool? ?? false,
      leadsCount: json['leadsCount'] as int?,
    );

Map<String, dynamic> _$$PropertyCardDetailsModelImplToJson(
        _$PropertyCardDetailsModelImpl instance) =>
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
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'checkedOutDate': instance.checkedOutDate?.toIso8601String(),
      'currentAgent': instance.currentAgent,
      'updatedBy': instance.updatedBy,
      'referenceNumber': instance.referenceNumber,
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'availableForCheckout': instance.availableForCheckout,
      'leadsCount': instance.leadsCount,
    };
