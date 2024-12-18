// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentImpl _$$AgentImplFromJson(Map<String, dynamic> json) => _$AgentImpl(
      id: json['id'] as String,
      userId: userIdFromJson(json, 'userId') as String,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      RERANo: json['RERANo'] as String?,
      DEDNo: json['DEDNo'] as String?,
      PERMITNo: json['PERMITNo'] as String?,
      RICSCertified: json['RICSCertified'] as bool? ?? false,
      creditsBalance: (json['creditsBalance'] as num?)?.toInt() ?? 0,
      creditsLimit: (json['creditsLimit'] as num?)?.toInt() ?? 0,
      user: User.fromJson(userFromJson(json, 'user') as Map<String, dynamic>),
      usePbx: json['usePbx'] as bool? ?? false,
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
      'creditsBalance': instance.creditsBalance,
      'creditsLimit': instance.creditsLimit,
      'user': instance.user,
      'usePbx': instance.usePbx,
    };
