import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/model/agent_model.dart';
import 'package:real_estate_app/model/lead_model.dart';

part 'lead_expiration_model.freezed.dart';
part 'lead_expiration_model.g.dart';

@freezed
class LeadExpirationModel with _$LeadExpirationModel {
  const factory LeadExpirationModel({
    required int numberOfExpirations,
    required ExpirationRecord lastExpirationRecord,
    required String id,
  }) = _LeadExpirationModel;

  factory LeadExpirationModel.fromJson(Map<String, dynamic> json) =>
      _$LeadExpirationModelFromJson(json);
}

@freezed
class ExpirationRecord with _$ExpirationRecord {
  const factory ExpirationRecord({
    @JsonKey(name: '_id') required String id,
    required AgentModel agent,
    required LeadModel lead,
    required String typeOfExpiration,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ExpirationRecord;

  factory ExpirationRecord.fromJson(Map<String, dynamic> json) =>
      _$ExpirationRecordFromJson(json);
}

@freezed
class AgentModel with _$AgentModel {
  const factory AgentModel({
     required String id,
    required String userId,
    required String name,
    required String phone,
     String? photo,
     String? leader,
    @Default(false) bool isLeader,
    @JsonKey(name: '_id') required String recordId,
  }) = _AgentModel;

  factory AgentModel.fromJson(Map<String, dynamic> json) =>
      _$AgentModelFromJson(json);
}

@freezed
class LeadModel with _$LeadModel {
  const factory LeadModel({
    required String id,
    required String name,
    required String phone,
    required String leadStatus,
    required LeadSourceModel leadSource,
    required String last_activity_type,
    required DateTime last_activity_date,
    required bool last_activity_is_complete,
    @JsonKey(name: '_id') required String recordId,
  }) = _LeadModel;

  factory LeadModel.fromJson(Map<String, dynamic> json) =>
      _$LeadModelFromJson(json);
}

@freezed
class LeadSourceModel with _$LeadSourceModel {
  const factory LeadSourceModel({
    required String id,
    required String name,
    required String leadSourceType,
    required int weight,
    @JsonKey(name: '_id') required String recordId,
  }) = _LeadSourceModel;

  factory LeadSourceModel.fromJson(Map<String, dynamic> json) =>
      _$LeadSourceModelFromJson(json);
}