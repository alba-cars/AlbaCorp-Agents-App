// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_expiration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeadExpirationModel _$LeadExpirationModelFromJson(Map<String, dynamic> json) =>
    _LeadExpirationModel(
      numberOfExpirations: (json['numberOfExpirations'] as num).toInt(),
      lastExpirationRecord: ExpirationRecord.fromJson(
          json['lastExpirationRecord'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$LeadExpirationModelToJson(
        _LeadExpirationModel instance) =>
    <String, dynamic>{
      'numberOfExpirations': instance.numberOfExpirations,
      'lastExpirationRecord': instance.lastExpirationRecord,
      'id': instance.id,
    };

_ExpirationRecord _$ExpirationRecordFromJson(Map<String, dynamic> json) =>
    _ExpirationRecord(
      id: json['_id'] as String,
      agent: AgentModel.fromJson(json['agent'] as Map<String, dynamic>),
      lead: LeadModel.fromJson(json['lead'] as Map<String, dynamic>),
      typeOfExpiration: json['typeOfExpiration'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ExpirationRecordToJson(_ExpirationRecord instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'agent': instance.agent,
      'lead': instance.lead,
      'typeOfExpiration': instance.typeOfExpiration,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_AgentModel _$AgentModelFromJson(Map<String, dynamic> json) => _AgentModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      photo: json['photo'] as String?,
      leader: json['leader'] as String?,
      isLeader: json['isLeader'] as bool? ?? false,
      recordId: json['_id'] as String,
    );

Map<String, dynamic> _$AgentModelToJson(_AgentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'phone': instance.phone,
      'photo': instance.photo,
      'leader': instance.leader,
      'isLeader': instance.isLeader,
      '_id': instance.recordId,
    };

_LeadModel _$LeadModelFromJson(Map<String, dynamic> json) => _LeadModel(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      leadStatus: json['leadStatus'] as String,
      leadSource:
          LeadSourceModel.fromJson(json['leadSource'] as Map<String, dynamic>),
      last_activity_type: json['last_activity_type'] as String,
      last_activity_date: DateTime.parse(json['last_activity_date'] as String),
      last_activity_is_complete: json['last_activity_is_complete'] as bool,
      recordId: json['_id'] as String,
    );

Map<String, dynamic> _$LeadModelToJson(_LeadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'leadStatus': instance.leadStatus,
      'leadSource': instance.leadSource,
      'last_activity_type': instance.last_activity_type,
      'last_activity_date': instance.last_activity_date.toIso8601String(),
      'last_activity_is_complete': instance.last_activity_is_complete,
      '_id': instance.recordId,
    };

_LeadSourceModel _$LeadSourceModelFromJson(Map<String, dynamic> json) =>
    _LeadSourceModel(
      id: json['id'] as String,
      name: json['name'] as String,
      leadSourceType: json['leadSourceType'] as String,
      weight: (json['weight'] as num).toInt(),
      recordId: json['_id'] as String,
    );

Map<String, dynamic> _$LeadSourceModelToJson(_LeadSourceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'leadSourceType': instance.leadSourceType,
      'weight': instance.weight,
      '_id': instance.recordId,
    };
