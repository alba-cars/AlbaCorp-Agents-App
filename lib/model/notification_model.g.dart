// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
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
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
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
    };
