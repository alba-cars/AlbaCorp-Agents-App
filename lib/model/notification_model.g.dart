// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: json['id'] as String?,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String?,
      notificationId: json['notificationId'] as String?,
      isRead: json['isRead'] as bool? ?? false,
      requiresAction: json['requiresAction'] as bool? ?? false,
      type: json['type'] as String? ?? 'Normal',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      leadId: json['leadId'] as String?,
      taskId: json['taskId'] as String?,
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'notificationId': instance.notificationId,
      'isRead': instance.isRead,
      'requiresAction': instance.requiresAction,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'leadId': instance.leadId,
      'taskId': instance.taskId,
    };
