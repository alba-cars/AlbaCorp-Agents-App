// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyImpl _$$PropertyImplFromJson(Map<String, dynamic> json) =>
    _$PropertyImpl(
      id: json['id'] as String?,
      listingType: json['listingType'] as String,
      categoryId: json['categoryId'] as String?,
      propertyTypeId: json['propertyTypeId'] as String?,
      propertyTitle: json['propertyTitle'] as String? ?? "",
      propertyDesc: json['propertyDesc'] as String?,
      featured: json['featured'] as bool? ?? false,
      dealOfWeek: json['dealOfWeek'] as bool? ?? false,
      agent: json['agent'] == null
          ? null
          : Agent.fromJson(json['agent'] as Map<String, dynamic>),
      premium: json['premium'] as bool?,
      exclusive: json['exclusive'] as bool?,
      completionStatus: json['completionStatus'] as String?,
      completionDate: json['completionDate'] as String?,
      metaTags: (json['metaTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      metaDesc: json['metaDesc'] as String?,
      commission: json['commission'] as String? ?? '0',
      securityDeposit: json['securityDeposit'] as String?,
      referNo: json['referNo'] as String,
      permitNo: json['permitNo'] as String?,
      permitNoDTCM: json['permitNoDTCM'] as String?,
      buildingId: json['buildingId'] as String?,
      buildingName: json['buildingName'] as String?,
      buildingDistances: json['buildingDistances'] as List<dynamic>?,
      street: json['street'] as String?,
      communityId: json['communityId'] as String?,
      communityName: json['communityName'] as String?,
      subCommunity: json['subCommunity'] as String?,
      emirate: json['emirate'] as String?,
      pinlocation: json['pinlocation'] as String?,
      size: (json['size'] as num?)?.toDouble(),
      villaSize: json['villaSize'] as String?,
      beds: json['beds'] as String?,
      baths: json['baths'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      priceHistory: json['priceHistory'] as List<dynamic>?,
      zipCode: json['zipCode'] as String?,
      emi: json['emi'] as String?,
      amenities: (json['amenities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      amenityIds: json['amenityIds'] as List<dynamic>?,
      amenityObjs: json['amenityObjs'] as List<dynamic>?,
      customField: json['customField'] as List<dynamic>?,
      rentalPeriod: json['rentalPeriod'] as String?,
      rentFinance: json['rentFinance'] as String?,
      askingPrice: (json['askingPrice'] as num?)?.toDouble(),
      pricedrop: json['pricedrop'] as String?,
      oneCheqPrice: (json['oneCheqPrice'] as num?)?.toDouble(),
      twoCheqPrice: (json['twoCheqPrice'] as num?)?.toDouble(),
      fourCheqPrice: (json['fourCheqPrice'] as num?)?.toDouble(),
      sixCheqPrice: (json['sixCheqPrice'] as num?)?.toDouble(),
      twelveCheqPrice: (json['twelveCheqPrice'] as num?)?.toDouble(),
      fees: json['fees'] as List<dynamic>?,
      unitStatus: json['unitStatus'] as String?,
      unitReraNo: json['unitReraNo'] as String?,
      makaniNo: json['makaniNo'] as String?,
      dewaNo: json['dewaNo'] as String?,
      propertyOwnerId: json['property_owner_id'] as String?,
      propertyListId: json['propertyListId'] as String?,
      image: json['image'] as String?,
      images: json['images'] as List<dynamic>?,
      floorPlans: (json['floorPlans'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videos:
          (json['videos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      matterportLink: (json['matterportLink'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      agentStatus: json['agentStatus'] as String?,
      agentId: json['agentId'] as String?,
      status: json['status'] as String?,
      propertyStatus: json['propertyStatus'] as bool?,
      soldOrReserved: json['soldOrReserved'] as String?,
      soldDate: json['soldDate'] == null
          ? null
          : DateTime.parse(json['soldDate'] as String),
      reservedDate: json['reservedDate'] == null
          ? null
          : DateTime.parse(json['reservedDate'] as String),
      statusArray: (json['statusArray'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$$PropertyImplToJson(_$PropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listingType': instance.listingType,
      'categoryId': instance.categoryId,
      'propertyTypeId': instance.propertyTypeId,
      'propertyTitle': instance.propertyTitle,
      'propertyDesc': instance.propertyDesc,
      'featured': instance.featured,
      'dealOfWeek': instance.dealOfWeek,
      'agent': instance.agent,
      'premium': instance.premium,
      'exclusive': instance.exclusive,
      'completionStatus': instance.completionStatus,
      'completionDate': instance.completionDate,
      'metaTags': instance.metaTags,
      'metaDesc': instance.metaDesc,
      'commission': instance.commission,
      'securityDeposit': instance.securityDeposit,
      'referNo': instance.referNo,
      'permitNo': instance.permitNo,
      'permitNoDTCM': instance.permitNoDTCM,
      'buildingId': instance.buildingId,
      'buildingName': instance.buildingName,
      'buildingDistances': instance.buildingDistances,
      'street': instance.street,
      'communityId': instance.communityId,
      'communityName': instance.communityName,
      'subCommunity': instance.subCommunity,
      'emirate': instance.emirate,
      'pinlocation': instance.pinlocation,
      'size': instance.size,
      'villaSize': instance.villaSize,
      'beds': instance.beds,
      'baths': instance.baths,
      'lat': instance.lat,
      'lng': instance.lng,
      'priceHistory': instance.priceHistory,
      'zipCode': instance.zipCode,
      'emi': instance.emi,
      'amenities': instance.amenities,
      'amenityIds': instance.amenityIds,
      'amenityObjs': instance.amenityObjs,
      'customField': instance.customField,
      'rentalPeriod': instance.rentalPeriod,
      'rentFinance': instance.rentFinance,
      'askingPrice': instance.askingPrice,
      'pricedrop': instance.pricedrop,
      'oneCheqPrice': instance.oneCheqPrice,
      'twoCheqPrice': instance.twoCheqPrice,
      'fourCheqPrice': instance.fourCheqPrice,
      'sixCheqPrice': instance.sixCheqPrice,
      'twelveCheqPrice': instance.twelveCheqPrice,
      'fees': instance.fees,
      'unitStatus': instance.unitStatus,
      'unitReraNo': instance.unitReraNo,
      'makaniNo': instance.makaniNo,
      'dewaNo': instance.dewaNo,
      'property_owner_id': instance.propertyOwnerId,
      'propertyListId': instance.propertyListId,
      'image': instance.image,
      'images': instance.images,
      'floorPlans': instance.floorPlans,
      'videos': instance.videos,
      'matterportLink': instance.matterportLink,
      'agentStatus': instance.agentStatus,
      'agentId': instance.agentId,
      'status': instance.status,
      'propertyStatus': instance.propertyStatus,
      'soldOrReserved': instance.soldOrReserved,
      'soldDate': instance.soldDate?.toIso8601String(),
      'reservedDate': instance.reservedDate?.toIso8601String(),
      'statusArray': instance.statusArray,
      'createdBy': instance.createdBy,
    };

_$PropertyImageImpl _$$PropertyImageImplFromJson(Map<String, dynamic> json) =>
    _$PropertyImageImpl(
      thumbnail: json['thumbnail'] as String,
      original: json['original'] as String,
    );

Map<String, dynamic> _$$PropertyImageImplToJson(_$PropertyImageImpl instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'original': instance.original,
    };
