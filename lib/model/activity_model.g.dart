// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      propertyListId: json['propertyListId'] as String?,
      lead: json['user'] == null
          ? null
          : Lead.fromJson(json['user'] as Map<String, dynamic>),
      createdBy: json['createdBy'] as String?,
      completedBy: json['completedBy'] as String?,
      type: json['type'] as String,
      description: json['description'] as String?,
      date: DateTime.parse(json['date'] as String),
      completedDate: json['completedDate'] == null
          ? null
          : DateTime.parse(json['completedDate'] as String),
      isScheduled: json['isScheduled'] as bool?,
      status: json['status'] as String? ?? 'Pending',
      preferredLanguages: (json['preferredLanguages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      notes: json['notes'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isInterested: json['isInterested'] as bool?,
      offplanId: json['offplanId'] as String?,
      propertyType: json['propertyType'] as String?,
      overdueAt: json['overdueAt'] == null
          ? null
          : DateTime.parse(json['overdueAt'] as String),
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'propertyListId': instance.propertyListId,
      'user': instance.lead,
      'createdBy': instance.createdBy,
      'completedBy': instance.completedBy,
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
    };
