import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

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
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    String? email,
    String? phone,
    String? country,
    String? city,
    String? address,
    String? nationality,
    String? photo,
    @JsonKey(name: 'provider_id') String? providerId,
    String? provider,
    @Default(true) bool active,
    @JsonKey(name: 'lead_source') required String leadSource,
    @JsonKey(name: 'lead_status') LeadStatus? leadStatus,
    @Default([]) List<dynamic> languages,
    @JsonKey(name: 'last_activity_type') String? lastActivityType,
    @JsonKey(name: 'last_activity_date') DateTime? lastActivityDate,
    @JsonKey(name: 'last_activity_is_complete')
    @Default(false)
    bool lastActivityIsComplete,
    @JsonKey(readValue: readCreatedAt) DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    Preference? preference,
    @JsonKey(name: 'preferred_languages')
    @Default([])
    List<dynamic> preferredLanguages,
    @JsonKey(readValue: readCurrentAgent) Agent? currentAgent,
    String? notes,
    @Default([]) List<String> tags,
    @JsonKey(name: 'DndStatus') @Default(false) bool dndStatus,
    @JsonKey(readValue: readCompletedActivityCount)
    @Default(0)
    int completedActivityCount,
  }) = _Lead;

  factory Lead.fromJson(Map<String, dynamic> json) => _$LeadFromJson(json);
}

String? readCreatedAt(Map p1, String p2) {
  return p1[p2] != null ? p1[p2] : p1['created_at'];
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
