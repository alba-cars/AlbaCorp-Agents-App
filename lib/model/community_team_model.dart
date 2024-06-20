import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/model/user.dart';

part 'community_team_model.freezed.dart';
part 'community_team_model.g.dart';

@freezed
class CommunityTeamModel with _$CommunityTeamModel {
  const factory CommunityTeamModel({
    required String id,
    required String teamName,
    required List<User> members,
    required List<CommunityName> communities,
    required String nextAssigned,
  }) = _CommunityTeamModel;

  factory CommunityTeamModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityTeamModelFromJson(json);
}

@freezed
class CommunityName with _$CommunityName {
  const factory CommunityName({
    @JsonKey(name: '_id') required String id,
    required String community,
    @JsonKey(name: 'team_id') required String teamId,
  }) = _CommunityName;

  factory CommunityName.fromJson(Map<String, dynamic> json) =>
      _$CommunityNameFromJson(json);
}
