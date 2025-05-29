// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommunityTeamModel _$CommunityTeamModelFromJson(Map<String, dynamic> json) =>
    _CommunityTeamModel(
      id: json['id'] as String,
      teamName: json['teamName'] as String,
      members: (json['members'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      communities: (json['communities'] as List<dynamic>)
          .map((e) => CommunityName.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextAssigned: json['nextAssigned'] as String,
    );

Map<String, dynamic> _$CommunityTeamModelToJson(_CommunityTeamModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teamName': instance.teamName,
      'members': instance.members,
      'communities': instance.communities,
      'nextAssigned': instance.nextAssigned,
    };

_CommunityName _$CommunityNameFromJson(Map<String, dynamic> json) =>
    _CommunityName(
      id: json['_id'] as String,
      community: json['community'] as String,
      teamId: json['team_id'] as String,
    );

Map<String, dynamic> _$CommunityNameToJson(_CommunityName instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'community': instance.community,
      'team_id': instance.teamId,
    };
