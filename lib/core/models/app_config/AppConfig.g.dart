// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppConfigImpl _$$AppConfigImplFromJson(Map<String, dynamic> json) =>
    _$AppConfigImpl(
      underMaintenance: json['underMaintenance'] as bool,
      minVersion: json['minVersion'] as String,
      latestVersion: json['latestVersion'] as String,
      currentVersion: json['currentVersion'] as String? ?? "1.0.0",
      playStoreUrl: json['playStoreUrl'] as String?,
      companyPortfolioUrl: json['companyPortfolioUrl'] as String?,
      internetAccessPortal: json['internetAccessPortal'] as String?,
      appStoreUrl: json['appStoreUrl'] as String?,
      huaweiUrl: json['huaweiUrl'] as String?,
    );

Map<String, dynamic> _$$AppConfigImplToJson(_$AppConfigImpl instance) =>
    <String, dynamic>{
      'underMaintenance': instance.underMaintenance,
      'minVersion': instance.minVersion,
      'latestVersion': instance.latestVersion,
      'currentVersion': instance.currentVersion,
      'playStoreUrl': instance.playStoreUrl,
      'companyPortfolioUrl': instance.companyPortfolioUrl,
      'internetAccessPortal': instance.internetAccessPortal,
      'appStoreUrl': instance.appStoreUrl,
      'huaweiUrl': instance.huaweiUrl,
    };
