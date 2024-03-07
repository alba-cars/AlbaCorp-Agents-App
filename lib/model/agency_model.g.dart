// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgencyImpl _$$AgencyImplFromJson(Map<String, dynamic> json) => _$AgencyImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      documentType: json['documentType'] as String,
      document: json['document'] as String,
      documents: json['documents'] as List<dynamic>,
      active: json['active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      createdBy: json['created_by'] as String,
    );

Map<String, dynamic> _$$AgencyImplToJson(_$AgencyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'documentType': instance.documentType,
      'document': instance.document,
      'documents': instance.documents,
      'active': instance.active,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'created_by': instance.createdBy,
    };
