

import 'package:freezed_annotation/freezed_annotation.dart';


part 'AppConfig.freezed.dart';
part 'AppConfig.g.dart';

@freezed
class AppConfig with _$AppConfig {

  const AppConfig._();
  const factory AppConfig({
    required bool underMaintenance,
    required String minVersion,
    required String latestVersion,
    @Default("1.0.0") String currentVersion,
    String? playStoreUrl,
    String? appStoreUrl,
    String? huaweiUrl
}) = _AppConfig;

  bool isMandatoryUpdateRequired(){
    return currentVersion.compareTo(minVersion) < 0;
  }

  bool isOptionalUpdateAvailable() {
    return currentVersion.compareTo(latestVersion) < 0;
  }

  bool hasUpdates(){
    return isOptionalUpdateAvailable() || isOptionalUpdateAvailable();
  }

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);
}
