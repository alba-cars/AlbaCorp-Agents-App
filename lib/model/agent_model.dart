import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'user.dart';

part 'agent_model.freezed.dart';
part 'agent_model.g.dart';

@freezed
class Agent with _$Agent {
  const factory Agent({
    required String id,
    required String userId,
    @Default([]) List<String> languages,
    String? RERANo,
    String? DEDNo,
    String? PERMITNo,
    @Default(false) bool RICSCertified,
    @Default(0) int creditsBalance,
    @Default(0) int creditsLimit,
    required User user, // Assuming you have a User model defined similarly
  }) = _Agent;

  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);
}
