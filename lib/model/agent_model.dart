import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'user.dart';

part 'agent_model.freezed.dart';
part 'agent_model.g.dart';

@freezed
class Agent with _$Agent {
  const factory Agent({
    required String id,
    @JsonKey(readValue: userIdFromJson) required String userId,
    @Default([]) List<String> languages,
    String? RERANo,
    String? DEDNo,
    String? PERMITNo,
    @Default(false) bool RICSCertified,
    @Default(0) int creditsBalance,
    @Default(0) int creditsLimit,
    @JsonKey(readValue: userFromJson) required User user,
  }) = _Agent;

  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);
}

Object userIdFromJson(Map p1, String p2) {
  return p1[p2] is Map ? p1[p2]['id'] : p1[p2];
}

Object userFromJson(Map p1, String p2) {
  return p1[p2] is Map<String, dynamic>
      ? p1[p2]
      : p1['userId'] is Map<String, dynamic>
          ? p1["userId"]
          : {};
}
