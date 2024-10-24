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
      beds: json['beds'] as String?,
      baths: (json['baths'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toDouble(),
      propertyType: json['propertyType'] as String?,
      createdBy: readCreatedBy(json, 'createdBy'),
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
      currentOwner: readCreatedBy(json, 'currentOwner'),
      referenceNumber: json['referenceNumber'] as String?,
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
      availableForCheckout: json['availableForCheckout'] as bool? ?? false,
      photos: (json['photos'] as List<dynamic>?)
              ?.map(
                  (e) => PropertyCardPhoto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      leadsCount: (json['leadsCount'] as num?)?.toInt(),
      askingPrice: json['askingPrice'] as num?,
      agentValutionPrice: json['agentValutionPrice'] as num?,
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
      'currentOwner': instance.currentOwner,
      'referenceNumber': instance.referenceNumber,
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'availableForCheckout': instance.availableForCheckout,
      'photos': instance.photos,
      'leadsCount': instance.leadsCount,
      'askingPrice': instance.askingPrice,
      'agentValutionPrice': instance.agentValutionPrice,
    };

_$PropertyCardPhotoImpl _$$PropertyCardPhotoImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyCardPhotoImpl(
      id: readId(json, 'id') as String,
      original: json['original'] as String,
    );

Map<String, dynamic> _$$PropertyCardPhotoImplToJson(
        _$PropertyCardPhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original': instance.original,
    };
