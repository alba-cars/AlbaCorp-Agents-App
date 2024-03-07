// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealImpl _$$DealImplFromJson(Map<String, dynamic> json) => _$DealImpl(
      id: json['id'] as String,
      referenceNumber: json['reference_number'] as String,
      creationDate: DateTime.parse(json['creation_date'] as String),
      category: json['category'] as String,
      roleType:
          (json['roleType'] as List<dynamic>).map((e) => e as String).toList(),
      agreedSalePrice: (json['agreedSalePrice'] as num?)?.toDouble(),
      agreedCommission: (json['agreedCommission'] as num?)?.toDouble(),
      assignedAgent: json['assignedAgent'] == null
          ? null
          : Agent.fromJson(json['assignedAgent'] as Map<String, dynamic>),
      type: json['type'] as String?,
      status: json['status'] as String,
      rejection: json['rejection'] as List<dynamic>,
      userId: json['user_id'] as String?,
      newListingRequestId: json['new_listing_request_id'] as String?,
      active: json['active'] as bool,
      createdBy: User.fromJson(json['created_by'] as Map<String, dynamic>),
      client: json['user'] == null
          ? null
          : Lead.fromJson(json['user'] as Map<String, dynamic>),
      purpose: json['purpose'] as String?,
      buyerClientType: json['buyerClientType'] as String?,
      sellerclientType: json['sellerclientType'] as String?,
      buyerInternalUserId: json['buyerInternalUserId'] as String?,
      buyerAssignedAgentId: json['buyerAssignedAgentId'] as String?,
      buyerAgreedCommission:
          (json['buyerAgreedCommission'] as num?)?.toDouble(),
      sellerInternalUserId: json['sellerInternalUserId'] as String?,
      sellerAssignedAgentId: json['sellerAssignedAgentId'] as String?,
      sellerAgreedCommission:
          (json['sellerAgreedCommission'] as num?)?.toDouble(),
      sellerExternalUserId: json['sellerExternalUserId'] as String?,
      sellerExternalAgentName: json['sellerExternalAgentName'] as String?,
      sellerExternalAgentPhone: json['sellerExternalAgentPhone'] as String?,
      sellerExternalClientName: json['sellerExternalClientName'] as String?,
      sellerExternalClientPhone: json['sellerExternalClientPhone'] as String?,
      sellerExternalUser: json['sellerExternalUser'] == null
          ? null
          : Agency.fromJson(json['sellerExternalUser'] as Map<String, dynamic>),
      external_listing_property: json['external_listing_property'] == null
          ? null
          : DealListingResponse.fromJson(
              json['external_listing_property'] as Map<String, dynamic>),
      buyerExternalAgentName: json['buyerExternalAgentName'] as String?,
      buyerExternalAgentPhone: json['buyerExternalAgentPhone'] as String?,
      buyerExternalClientName: json['buyerExternalClientName'] as String?,
      buyerExternalClientPhone: json['buyerExternalClientPhone'] as String?,
      propertyListId: json['property_list_id'] as String?,
      buyerInternalUser: json['buyerInternalUser'] == null
          ? null
          : Lead.fromJson(json['buyerInternalUser'] as Map<String, dynamic>),
      buyerAssignedAgent: json['buyerAssignedAgent'] == null
          ? null
          : Agent.fromJson(json['buyerAssignedAgent'] as Map<String, dynamic>),
      sellerInternalUser: json['sellerInternalUser'] == null
          ? null
          : Lead.fromJson(json['sellerInternalUser'] as Map<String, dynamic>),
      sellerAssignedAgent: json['sellerAssignedAgent'] == null
          ? null
          : Agent.fromJson(json['sellerAssignedAgent'] as Map<String, dynamic>),
      propertyList: json['property_list'] == null
          ? null
          : Property.fromJson(json['property_list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DealImplToJson(_$DealImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference_number': instance.referenceNumber,
      'creation_date': instance.creationDate.toIso8601String(),
      'category': instance.category,
      'roleType': instance.roleType,
      'agreedSalePrice': instance.agreedSalePrice,
      'agreedCommission': instance.agreedCommission,
      'assignedAgent': instance.assignedAgent,
      'type': instance.type,
      'status': instance.status,
      'rejection': instance.rejection,
      'user_id': instance.userId,
      'new_listing_request_id': instance.newListingRequestId,
      'active': instance.active,
      'created_by': instance.createdBy,
      'user': instance.client,
      'purpose': instance.purpose,
      'buyerClientType': instance.buyerClientType,
      'sellerclientType': instance.sellerclientType,
      'buyerInternalUserId': instance.buyerInternalUserId,
      'buyerAssignedAgentId': instance.buyerAssignedAgentId,
      'buyerAgreedCommission': instance.buyerAgreedCommission,
      'sellerInternalUserId': instance.sellerInternalUserId,
      'sellerAssignedAgentId': instance.sellerAssignedAgentId,
      'sellerAgreedCommission': instance.sellerAgreedCommission,
      'sellerExternalUserId': instance.sellerExternalUserId,
      'sellerExternalAgentName': instance.sellerExternalAgentName,
      'sellerExternalAgentPhone': instance.sellerExternalAgentPhone,
      'sellerExternalClientName': instance.sellerExternalClientName,
      'sellerExternalClientPhone': instance.sellerExternalClientPhone,
      'sellerExternalUser': instance.sellerExternalUser,
      'external_listing_property': instance.external_listing_property,
      'buyerExternalAgentName': instance.buyerExternalAgentName,
      'buyerExternalAgentPhone': instance.buyerExternalAgentPhone,
      'buyerExternalClientName': instance.buyerExternalClientName,
      'buyerExternalClientPhone': instance.buyerExternalClientPhone,
      'property_list_id': instance.propertyListId,
      'buyerInternalUser': instance.buyerInternalUser,
      'buyerAssignedAgent': instance.buyerAssignedAgent,
      'sellerInternalUser': instance.sellerInternalUser,
      'sellerAssignedAgent': instance.sellerAssignedAgent,
      'property_list': instance.propertyList,
    };
