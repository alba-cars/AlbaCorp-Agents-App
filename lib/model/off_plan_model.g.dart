// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'off_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OffPlanModel _$OffPlanModelFromJson(Map<String, dynamic> json) =>
    _OffPlanModel(
      id: json['_id'] as String,
      templateVersion: json['templateVersion'] as String,
      developmentName: json['developmentName'] as String,
      emirate: json['emirate'] as String,
      community:
          OffPlanCommunity.fromJson(json['community'] as Map<String, dynamic>),
      slug: json['slug'] as String,
      downpayment: (json['downpayment'] as num).toInt(),
      completionDate: DateTime.parse(json['completionDate'] as String),
      developmentDescription: json['developmentDescription'] as String,
      developmentLogo: json['developmentLogo'] as String,
      propertyTypes: (json['propertyTypes'] as List<dynamic>)
          .map((e) => PropertyType.fromJson(e as Map<String, dynamic>))
          .toList(),
      startingPrice: (json['startingPrice'] as num).toInt(),
      amenities: (json['amenities'] as List<dynamic>)
          .map((e) => OffPlanAmenity.fromJson(e as Map<String, dynamic>))
          .toList(),
      developer: Developer.fromJson(json['developer'] as Map<String, dynamic>),
      footer: Footer.fromJson(json['footer'] as Map<String, dynamic>),
      developmentPhotos: (json['developmentPhotos'] as List<dynamic>)
          .map((e) => DevelopmentPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      video: json['video'] as String,
      brochure: json['brochure'] as String,
      headerImage: json['headerImage'] as String,
      priceImage: json['priceImage'] as String,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      metaDescription: json['metaDescription'] as String,
      metaTitle: json['metaTitle'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$OffPlanModelToJson(_OffPlanModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'templateVersion': instance.templateVersion,
      'developmentName': instance.developmentName,
      'emirate': instance.emirate,
      'community': instance.community,
      'slug': instance.slug,
      'downpayment': instance.downpayment,
      'completionDate': instance.completionDate.toIso8601String(),
      'developmentDescription': instance.developmentDescription,
      'developmentLogo': instance.developmentLogo,
      'propertyTypes': instance.propertyTypes,
      'startingPrice': instance.startingPrice,
      'amenities': instance.amenities,
      'developer': instance.developer,
      'footer': instance.footer,
      'developmentPhotos': instance.developmentPhotos,
      'video': instance.video,
      'brochure': instance.brochure,
      'headerImage': instance.headerImage,
      'priceImage': instance.priceImage,
      'keywords': instance.keywords,
      'metaDescription': instance.metaDescription,
      'metaTitle': instance.metaTitle,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'status': instance.status,
    };

_OffPlanCommunity _$OffPlanCommunityFromJson(Map<String, dynamic> json) =>
    _OffPlanCommunity(
      name: json['name'] as String,
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$OffPlanCommunityToJson(_OffPlanCommunity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'position': instance.position,
      '_id': instance.id,
    };

_Position _$PositionFromJson(Map<String, dynamic> json) => _Position(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$PositionToJson(_Position instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      '_id': instance.id,
    };

_Amenity _$AmenityFromJson(Map<String, dynamic> json) => _Amenity(
      title: json['title'] as String,
      photo: json['photo'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$AmenityToJson(_Amenity instance) => <String, dynamic>{
      'title': instance.title,
      'photo': instance.photo,
      '_id': instance.id,
    };

_Developer _$DeveloperFromJson(Map<String, dynamic> json) => _Developer(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      logo: json['logo'] as String,
      backgroundImage: json['backgroundImage'] as String,
      headerTitle: json['headerTitle'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DeveloperToJson(_Developer instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'logo': instance.logo,
      'backgroundImage': instance.backgroundImage,
      'headerTitle': instance.headerTitle,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_Footer _$FooterFromJson(Map<String, dynamic> json) => _Footer(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      logo: json['logo'] as String,
      type: json['type'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FooterToJson(_Footer instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'logo': instance.logo,
      'type': instance.type,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_DevelopmentPhoto _$DevelopmentPhotoFromJson(Map<String, dynamic> json) =>
    _DevelopmentPhoto(
      file: json['file'] as String,
      label: json['label'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$DevelopmentPhotoToJson(_DevelopmentPhoto instance) =>
    <String, dynamic>{
      'file': instance.file,
      'label': instance.label,
      '_id': instance.id,
    };
