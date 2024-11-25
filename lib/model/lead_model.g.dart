// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadImpl _$$LeadImplFromJson(Map<String, dynamic> json) => _$LeadImpl(
      id: readId(json, 'id') as String,
      firstName: readFirstName(json, 'firstName') as String,
      lastName: readLastName(json, 'lastName') as String? ?? '',
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      nationality: json['nationality'] as String?,
      photo: json['photo'] as String?,
      role: json['role'] as String?,
      providerId: readProviderId(json, 'providerId') as String?,
      provider: json['provider'] as String?,
      active: json['active'] as bool? ?? true,
      leadSource: readLeadSource(json, 'leadSource') as String,
      leadStatus: $enumDecodeNullable(
          _$LeadStatusEnumMap, readLeadStatus(json, 'leadStatus')),
      languages: json['languages'] as List<dynamic>? ?? const [],
      lastActivityType:
          readLastActivityType(json, 'lastActivityType') as String?,
      lastActivityDate: readLastActivityDate(json, 'lastActivityDate') == null
          ? null
          : DateTime.parse(
              readLastActivityDate(json, 'lastActivityDate') as String),
      lastActivityIsComplete:
          readLastActivityIsComplete(json, 'lastActivityIsComplete') as bool? ??
              false,
      createdAt: readCreatedAt(json, 'createdAt') == null
          ? null
          : DateTime.parse(readCreatedAt(json, 'createdAt') as String),
      updatedAt: readUpdatedAt(json, 'updatedAt') == null
          ? null
          : DateTime.parse(readUpdatedAt(json, 'updatedAt') as String),
      createdBy: readCreatedBy(json, 'createdBy') as String?,
      preference: json['preference'] == null
          ? null
          : Preference.fromJson(json['preference'] as Map<String, dynamic>),
      preferredLanguages: readPreferredLanguages(json, 'preferredLanguages')
              as List<dynamic>? ??
          const [],
      currentAgent: readCurrentAgent(json, 'currentAgent') == null
          ? null
          : Agent.fromJson(
              readCurrentAgent(json, 'currentAgent') as Map<String, dynamic>),
      notes: json['notes'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      dndStatus: readDndStatus(json, 'dndStatus') as bool? ?? false,
      completedActivityCount:
          (readCompletedActivityCount(json, 'completedActivityCount') as num?)
                  ?.toInt() ??
              0,
    );

Map<String, dynamic> _$$LeadImplToJson(_$LeadImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'nationality': instance.nationality,
      'photo': instance.photo,
      'role': instance.role,
      'providerId': instance.providerId,
      'provider': instance.provider,
      'active': instance.active,
      'leadSource': instance.leadSource,
      'leadStatus': _$LeadStatusEnumMap[instance.leadStatus],
      'languages': instance.languages,
      'lastActivityType': instance.lastActivityType,
      'lastActivityDate': instance.lastActivityDate?.toIso8601String(),
      'lastActivityIsComplete': instance.lastActivityIsComplete,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'preference': instance.preference,
      'preferredLanguages': instance.preferredLanguages,
      'currentAgent': instance.currentAgent,
      'notes': instance.notes,
      'tags': instance.tags,
      'dndStatus': instance.dndStatus,
      'completedActivityCount': instance.completedActivityCount,
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
