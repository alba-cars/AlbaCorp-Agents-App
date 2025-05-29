// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityFeedback _$ActivityFeedbackFromJson(Map<String, dynamic> json) =>
    _ActivityFeedback(
      isInterested: json['isInterested'] as bool?,
      notes: json['notes'] as String?,
      status: json['status'] as String?,
      tags: json['tags'] as List<dynamic>?,
    );

Map<String, dynamic> _$ActivityFeedbackToJson(_ActivityFeedback instance) =>
    <String, dynamic>{
      'isInterested': instance.isInterested,
      'notes': instance.notes,
      'status': instance.status,
      'tags': instance.tags,
    };
