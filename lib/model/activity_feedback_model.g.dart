// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityFeedbackImpl _$$ActivityFeedbackImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityFeedbackImpl(
      isInterested: json['isInterested'] as bool?,
      notes: json['notes'] as String?,
      status: json['status'] as String?,
      tags: json['tags'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ActivityFeedbackImplToJson(
        _$ActivityFeedbackImpl instance) =>
    <String, dynamic>{
      'isInterested': instance.isInterested,
      'notes': instance.notes,
      'status': instance.status,
      'tags': instance.tags,
    };
