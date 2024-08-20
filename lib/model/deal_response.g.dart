// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealResponseImpl _$$DealResponseImplFromJson(Map<String, dynamic> json) =>
    _$DealResponseImpl(
      id: json['id'] as String,
      referenceNumber: json['reference_number'] as String,
      creationDate: DateTime.parse(json['creation_date'] as String),
      category: json['category'] as String,
      roleType: (json['roleType'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      agreedSalePrice: (json['agreedSalePrice'] as num).toDouble(),
      agreedCommission: (json['agreedCommission'] as num?)?.toDouble(),
      assignedAgent: json['assignedAgent'] as String?,
      status: json['status'] as String,
      rejection: (json['rejection'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      userId: json['user_id'] as String?,
      active: json['active'] as bool,
      createdBy: User.fromJson(json['created_by'] as Map<String, dynamic>),
      client: json['user'] == null
          ? null
          : Lead.fromJson(json['user'] as Map<String, dynamic>),
      sellerInternalUser: json['sellerInternalUser'] == null
          ? null
          : Lead.fromJson(json['sellerInternalUser'] as Map<String, dynamic>),
      buyerInternalUser: json['buyerInternalUser'] == null
          ? null
          : Lead.fromJson(json['buyerInternalUser'] as Map<String, dynamic>),
      buyerExternalUser: json['buyerExternalUser'] == null
          ? null
          : Agency.fromJson(json['buyerExternalUser'] as Map<String, dynamic>),
      sellerExternalUser: json['sellerExternalUser'] == null
          ? null
          : Agency.fromJson(json['sellerExternalUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DealResponseImplToJson(_$DealResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference_number': instance.referenceNumber,
      'creation_date': instance.creationDate.toIso8601String(),
      'category': instance.category,
      'roleType': instance.roleType,
      'agreedSalePrice': instance.agreedSalePrice,
      'agreedCommission': instance.agreedCommission,
      'assignedAgent': instance.assignedAgent,
      'status': instance.status,
      'rejection': instance.rejection,
      'user_id': instance.userId,
      'active': instance.active,
      'created_by': instance.createdBy,
      'user': instance.client,
      'sellerInternalUser': instance.sellerInternalUser,
      'buyerInternalUser': instance.buyerInternalUser,
      'buyerExternalUser': instance.buyerExternalUser,
      'sellerExternalUser': instance.sellerExternalUser,
    };
