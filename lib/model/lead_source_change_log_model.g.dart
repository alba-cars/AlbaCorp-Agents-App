// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_source_change_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadSourceChangeLogModelImpl _$$LeadSourceChangeLogModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeadSourceChangeLogModelImpl(
      id: json['id'] as String,
      newLead: LeadSource.fromJson(json['newLead'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LeadSourceChangeLogModelImplToJson(
        _$LeadSourceChangeLogModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'newLead': instance.newLead,
    };
