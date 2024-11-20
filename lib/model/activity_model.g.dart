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
      activityWeight: (json['activityWeight'] as num?)?.toDouble() ?? 0,
      type: json['type'] as String,
      description: json['description'] as String?,
      date: DateTime.parse(json['date'] as String),
      completedDate: json['completed_date'] == null
          ? null
          : DateTime.parse(json['completed_date'] as String),
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
      property_list: json['property_list'] == null
          ? null
          : Property.fromJson(json['property_list'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'propertyListId': instance.propertyListId,
      'user': instance.lead,
      'activityWeight': instance.activityWeight,
      'type': instance.type,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'completed_date': instance.completedDate?.toIso8601String(),
      'isScheduled': instance.isScheduled,
      'status': instance.status,
      'preferredLanguages': instance.preferredLanguages,
      'notes': instance.notes,
      'tags': instance.tags,
      'isInterested': instance.isInterested,
      'offplanId': instance.offplanId,
      'propertyType': instance.propertyType,
      'overdueAt': instance.overdueAt?.toIso8601String(),
      'property_list': instance.property_list,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
