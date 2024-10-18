// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalSettingsImpl _$$GlobalSettingsImplFromJson(Map<String, dynamic> json) =>
    _$GlobalSettingsImpl(
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

Map<String, dynamic> _$$GlobalSettingsImplToJson(
        _$GlobalSettingsImpl instance) =>
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

_$CheckoutLimitImpl _$$CheckoutLimitImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutLimitImpl(
      limit: (json['limit'] as num).toInt(),
      tolerance: (json['tolerance'] as num).toInt(),
      unassignAfter: json['unassignAfter'] as String,
    );

Map<String, dynamic> _$$CheckoutLimitImplToJson(_$CheckoutLimitImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'tolerance': instance.tolerance,
      'unassignAfter': instance.unassignAfter,
    };
