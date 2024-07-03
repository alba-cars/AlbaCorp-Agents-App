// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadImpl _$$LeadImplFromJson(Map<String, dynamic> json) => _$LeadImpl(
      id: readId(json, 'id') as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String? ?? '',
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      nationality: json['nationality'] as String?,
      photo: json['photo'] as String?,
      providerId: json['provider_id'] as String?,
      provider: json['provider'] as String?,
      active: json['active'] as bool? ?? true,
      leadSource: json['lead_source'] as String,
      leadStatus: $enumDecodeNullable(_$LeadStatusEnumMap, json['lead_status']),
      languages: json['languages'] as List<dynamic>? ?? const [],
      lastActivityType: json['last_activity_type'] as String?,
      lastActivityDate: json['last_activity_date'] == null
          ? null
          : DateTime.parse(json['last_activity_date'] as String),
      lastActivityIsComplete:
          json['last_activity_is_complete'] as bool? ?? false,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdBy: json['created_by'] as String?,
      modifiedBy: json['modified_by'] as String?,
      preference: json['preference'] == null
          ? null
          : Preference.fromJson(json['preference'] as Map<String, dynamic>),
      preferredLanguages:
          json['preferred_languages'] as List<dynamic>? ?? const [],
      currentAgent: readCurrentAgent(json, 'currentAgent') == null
          ? null
          : Agent.fromJson(
              readCurrentAgent(json, 'currentAgent') as Map<String, dynamic>),
      notes: json['notes'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      dndStatus: json['DndStatus'] as bool? ?? false,
    );

Map<String, dynamic> _$$LeadImplToJson(_$LeadImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'nationality': instance.nationality,
      'photo': instance.photo,
      'provider_id': instance.providerId,
      'provider': instance.provider,
      'active': instance.active,
      'lead_source': instance.leadSource,
      'lead_status': _$LeadStatusEnumMap[instance.leadStatus],
      'languages': instance.languages,
      'last_activity_type': instance.lastActivityType,
      'last_activity_date': instance.lastActivityDate?.toIso8601String(),
      'last_activity_is_complete': instance.lastActivityIsComplete,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_by': instance.createdBy,
      'modified_by': instance.modifiedBy,
      'preference': instance.preference,
      'preferred_languages': instance.preferredLanguages,
      'currentAgent': instance.currentAgent,
      'notes': instance.notes,
      'tags': instance.tags,
      'DndStatus': instance.dndStatus,
    };

const _$LeadStatusEnumMap = {
  LeadStatus.Unassigned: 'Unassigned',
  LeadStatus.Fresh: 'Fresh',
  LeadStatus.FollowUp: 'Follow up',
  LeadStatus.Disqualified: 'Disqualified',
  LeadStatus.Appointment: 'Appointment',
  LeadStatus.Viewing: 'Viewing',
  LeadStatus.Deal: 'Deal',
  LeadStatus.Won: 'Won',
  LeadStatus.Lost: 'Lost',
  LeadStatus.ForListing: 'For Listing',
  LeadStatus.Prospect: 'Prospect',
  LeadStatus.Negotiating: 'Negotiating',
};

_$PreferenceImpl _$$PreferenceImplFromJson(Map<String, dynamic> json) =>
    _$PreferenceImpl(
      plotNumber: json['plotNumber'],
      rooms: json['rooms'],
      area: json['area'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$PreferenceImplToJson(_$PreferenceImpl instance) =>
    <String, dynamic>{
      'plotNumber': instance.plotNumber,
      'rooms': instance.rooms,
      'area': instance.area,
      'location': instance.location,
    };
