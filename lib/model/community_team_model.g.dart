// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityTeamModelImpl _$$CommunityTeamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommunityTeamModelImpl(
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

Map<String, dynamic> _$$CommunityTeamModelImplToJson(
        _$CommunityTeamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teamName': instance.teamName,
      'members': instance.members,
      'communities': instance.communities,
      'nextAssigned': instance.nextAssigned,
    };

_$CommunityNameImpl _$$CommunityNameImplFromJson(Map<String, dynamic> json) =>
    _$CommunityNameImpl(
      id: json['_id'] as String,
      community: json['community'] as String,
      teamId: json['team_id'] as String,
    );

Map<String, dynamic> _$$CommunityNameImplToJson(_$CommunityNameImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'community': instance.community,
      'team_id': instance.teamId,
    };
