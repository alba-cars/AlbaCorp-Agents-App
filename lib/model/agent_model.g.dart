// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentImpl _$$AgentImplFromJson(Map<String, dynamic> json) => _$AgentImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      RERANo: json['RERANo'] as String?,
      DEDNo: json['DEDNo'] as String?,
      PERMITNo: json['PERMITNo'] as String?,
      RICSCertified: json['RICSCertified'] as bool? ?? false,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AgentImplToJson(_$AgentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'languages': instance.languages,
      'RERANo': instance.RERANo,
      'DEDNo': instance.DEDNo,
      'PERMITNo': instance.PERMITNo,
      'RICSCertified': instance.RICSCertified,
      'user': instance.user,
    };
