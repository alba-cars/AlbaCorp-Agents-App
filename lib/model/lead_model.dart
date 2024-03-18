import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

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
    @JsonKey(name: 'last_name') required String lastName,
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
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    Preference? preference,
    @JsonKey(name: 'preferred_languages')
    @Default([])
    List<dynamic> preferredLanguages,
    String? notes,
    @Default([]) List<String> tags,
  }) = _Lead;

  factory Lead.fromJson(Map<String, dynamic> json) => _$LeadFromJson(json);
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
