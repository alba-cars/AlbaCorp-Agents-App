// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      id: json['id'] as String,
      userId: readUserId(json, 'userId') as String,
      propertyListId: readPropertyListId(json, 'propertyListId') as String?,
      lead: readLead(json, 'lead') == null
          ? null
          : Lead.fromJson(readLead(json, 'lead') as Map<String, dynamic>),
      activityWeight:
          (readActivityWeight(json, 'activityWeight') as num?)?.toDouble() ?? 0,
      type: json['type'] as String,
      description: json['description'] as String?,
      date: DateTime.parse(readDate(json, 'date') as String),
      completedDate: readCompletedDate(json, 'completedDate') == null
          ? null
          : DateTime.parse(readCompletedDate(json, 'completedDate') as String),
      isScheduled: readIsScheduled(json, 'isScheduled') as bool?,
      status: json['status'] as String? ?? 'Pending',
      preferredLanguages:
          (readPreferredLanguages(json, 'preferredLanguages') as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      notes: json['notes'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isInterested: readIsInterested(json, 'isInterested') as bool?,
      offplanId: readOffplanId(json, 'offplanId') as String?,
      propertyType: readPropertyType(json, 'propertyType') as String?,
      overdueAt: readOverdueAt(json, 'overdueAt') == null
          ? null
          : DateTime.parse(readOverdueAt(json, 'overdueAt') as String),
      createdAt: readCreatedAt(json, 'createdAt') == null
          ? null
          : DateTime.parse(readCreatedAt(json, 'createdAt') as String),
      updatedAt: readUpdatedAt(json, 'updatedAt') == null
          ? null
          : DateTime.parse(readUpdatedAt(json, 'updatedAt') as String),
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'propertyListId': instance.propertyListId,
      'lead': instance.lead,
      'activityWeight': instance.activityWeight,
      'type': instance.type,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'completedDate': instance.completedDate?.toIso8601String(),
      'isScheduled': instance.isScheduled,
      'status': instance.status,
      'preferredLanguages': instance.preferredLanguages,
      'notes': instance.notes,
      'tags': instance.tags,
      'isInterested': instance.isInterested,
      'offplanId': instance.offplanId,
      'propertyType': instance.propertyType,
      'overdueAt': instance.overdueAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
