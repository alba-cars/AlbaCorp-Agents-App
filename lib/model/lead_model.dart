import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../app/auth_bloc/auth_bloc.dart';
import '../service_locator/injectable.dart';
import 'agent_model.dart';
import 'property_type_model.dart';

part 'lead_model.freezed.dart';
part 'lead_model.g.dart';

enum LeadStatus {
  Unassigned,
  Fresh,
  @JsonValue("Follow up")
  FollowUp,
  Disqualified,
  Appointment,
  Viewing,
  Deal,
  Won,
  Lost,
  @JsonValue("For Listing")
  ForListing,
  Prospect,
  Negotiating,
}

@freezed
class Lead with _$Lead {
  const factory Lead({
    @JsonKey(readValue: readId) required String id,
    @JsonKey( readValue: readFirstName) required String firstName,
    @JsonKey( readValue: readLastName) @Default('') String lastName,
    String? email,
    String? phone,
    String? country,
    String? city,
    String? address,
    String? nationality,
    String? photo,
    String? role,
    @JsonKey( readValue: readProviderId) String? providerId,
    String? provider,
    @Default(true) bool active,
    @JsonKey( readValue: readLeadSource) required String leadSource,
    @JsonKey( readValue: readLeadStatus) LeadStatus? leadStatus,
    @Default([]) List<dynamic> languages,
    @JsonKey( readValue: readLastActivityType) String? lastActivityType,
    @JsonKey( readValue: readLastActivityDate) DateTime? lastActivityDate,
    @JsonKey( readValue: readLastActivityIsComplete)
    @Default(false)
    bool lastActivityIsComplete,
    @JsonKey(readValue: readCreatedAt) DateTime? createdAt,
    @JsonKey( readValue: readUpdatedAt) DateTime? updatedAt,
    @JsonKey( readValue: readCreatedBy) String? createdBy,
    Preference? preference,
    @JsonKey( readValue: readPreferredLanguages)
    @Default([])
    List<dynamic> preferredLanguages,
    @JsonKey(readValue: readCurrentAgent) Agent? currentAgent,
    String? notes,
    @Default([]) List<String> tags,
    @JsonKey( readValue: readDndStatus) @Default(false) bool dndStatus,
    @JsonKey(readValue: readCompletedActivityCount)
    @Default(0)
    int completedActivityCount,
  }) = _Lead;

  const Lead._();

  String getFullName(){
    return "${firstName} ${lastName}";
  }

  factory Lead.fromJson(Map<String, dynamic> json) => _$LeadFromJson(json);
}

// Read value helpers
String readFirstName(Map json, String key) {
  return json['first_name'] ?? json['firstName'] ?? '';
}

String readLastName(Map json, String key) {
  return json['last_name'] ?? json['lastName'] ?? '';
}

String? readProviderId(Map json, String key) {
  return json['provider_id'] ?? json['providerId'];
}

String readLeadSource(Map json, String key) {
  return json['lead_source'] ?? json['leadSource'] ?? '';
}

Object? readLeadStatus(Map json, String key) {
  final status = json['lead_status'] ?? json['leadStatus'];
  if (status == null) return null;
  return status;
}

String? readLastActivityType(Map json, String key) {
  return json['last_activity_type'] ?? json['lastActivityType'];
}

Object? readLastActivityDate(Map json, String key) {
  final date = json['last_activity_date'] ?? json['lastActivityDate'];
  if (date == null) return null;
  return date;
}

bool readLastActivityIsComplete(Map json, String key) {
  return json['last_activity_is_complete'] ?? json['lastActivityIsComplete'] ?? false;
}

Object? readUpdatedAt(Map json, String key) {
  final date = json['updated_at'] ?? json['updatedAt'];
  if (date == null) return null;
  return date;
}

String? readCreatedBy(Map json, String key) {
  return json['created_by'] ?? json['createdBy'];
}

String? readModifiedBy(Map json, String key) {
  return json['modified_by'] ?? json['modifiedBy'];
}

List<dynamic> readPreferredLanguages(Map json, String key) {
  return json['preferred_languages'] ?? json['preferredLanguages'] ?? [];
}

bool readDndStatus(Map json, String key) {
  return json['DndStatus'] ?? json['dndStatus'] ?? false;
}

// Keep existing read helpers
String? readCreatedAt(Map p1, String p2) {
  return p1[p2] != null ? p1[p2] : p1['created_at'] ?? p1['createdAt'];
}

Map? readCurrentAgent(Map p1, String p2) {
  return p1[p2] is Map ? p1[p2] : null;
}

int readCompletedActivityCount(Map p1, String p2) {
  if (p1['activities'] is List) {
    final activities = p1['activities'] as List;
    return activities.where((e) => e['status'] == 'Complete').length;
  }
  return 0;
}

@freezed
class Preference with _$Preference {
  const factory Preference({
    @JsonKey(name: 'plotNumber') dynamic plotNumber,
    dynamic rooms,
    String? area,
    String? location,
  }) = _Preference;

  factory Preference.fromJson(Map<String, dynamic> json) =>
      _$PreferenceFromJson(json);
}

extension CheckNew on Lead {
  bool get isNewTag {
    final dateLimit = int.tryParse(
            getIt<AuthBloc>().state.globalSettings?.newLeadFlagDateLimit ??
                '') ??
        7;
    if (leadStatus == LeadStatus.Fresh &&
        createdAt
                ?.isAfter(DateTime.now().subtract(Duration(days: dateLimit))) ==
            true &&
        completedActivityCount <= 1) {
      return true;
    } else {
      return false;
    }
  }
}