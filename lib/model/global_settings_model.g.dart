// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GlobalSettings _$GlobalSettingsFromJson(Map<String, dynamic> json) =>
    _GlobalSettings(
      id: json['id'] as String,
      timeUntilTicketArchived: json['timeUntilTicketArchived'] as String?,
      checkoutLimit:
          CheckoutLimit.fromJson(json['checkoutLimit'] as Map<String, dynamic>),
      unAssignLeadAfter: json['unAssignLeadAfter'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      blockLeadFor: json['blockLeadFor'] as String?,
      dealReminderAfter: json['dealReminderAfter'] as String?,
      newLeadFlagDateLimit: json['newLeadFlagDateLimit'] as String?,
      enablePbx: json['enablePbx'] ?? false,
    );

Map<String, dynamic> _$GlobalSettingsToJson(_GlobalSettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timeUntilTicketArchived': instance.timeUntilTicketArchived,
      'checkoutLimit': instance.checkoutLimit,
      'unAssignLeadAfter': instance.unAssignLeadAfter,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'blockLeadFor': instance.blockLeadFor,
      'dealReminderAfter': instance.dealReminderAfter,
      'newLeadFlagDateLimit': instance.newLeadFlagDateLimit,
      'enablePbx': instance.enablePbx,
    };

_CheckoutLimit _$CheckoutLimitFromJson(Map<String, dynamic> json) =>
    _CheckoutLimit(
      limit: (json['limit'] as num).toInt(),
      tolerance: (json['tolerance'] as num).toInt(),
      unassignAfter: json['unassignAfter'] as String,
    );

Map<String, dynamic> _$CheckoutLimitToJson(_CheckoutLimit instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'tolerance': instance.tolerance,
      'unassignAfter': instance.unassignAfter,
    };
