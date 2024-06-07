// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealDocumentImpl _$$DealDocumentImplFromJson(Map<String, dynamic> json) =>
    _$DealDocumentImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      createdById: json['created_by_id'] as String,
      path: json['path'] as String?,
      type: json['type'] as String,
      documents: json['documents'] as List<dynamic>?,
      dealId: json['deal_id'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : User.fromJson(json['created_by'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DealDocumentImplToJson(_$DealDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_by_id': instance.createdById,
      'path': instance.path,
      'type': instance.type,
      'documents': instance.documents,
      'deal_id': instance.dealId,
      'created_by': instance.createdBy,
    };
