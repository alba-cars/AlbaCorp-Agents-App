// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AppConfig.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppConfig {
  bool get underMaintenance;
  String get minVersion;
  String get latestVersion;
  String get currentVersion;
  String? get playStoreUrl;
  String? get companyPortfolioUrl;
  String? get internetAccessPortal;
  String? get appStoreUrl;
  String? get huaweiUrl;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppConfigCopyWith<AppConfig> get copyWith =>
      _$AppConfigCopyWithImpl<AppConfig>(this as AppConfig, _$identity);

  /// Serializes this AppConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppConfig &&
            (identical(other.underMaintenance, underMaintenance) ||
                other.underMaintenance == underMaintenance) &&
            (identical(other.minVersion, minVersion) ||
                other.minVersion == minVersion) &&
            (identical(other.latestVersion, latestVersion) ||
                other.latestVersion == latestVersion) &&
            (identical(other.currentVersion, currentVersion) ||
                other.currentVersion == currentVersion) &&
            (identical(other.playStoreUrl, playStoreUrl) ||
                other.playStoreUrl == playStoreUrl) &&
            (identical(other.companyPortfolioUrl, companyPortfolioUrl) ||
                other.companyPortfolioUrl == companyPortfolioUrl) &&
            (identical(other.internetAccessPortal, internetAccessPortal) ||
                other.internetAccessPortal == internetAccessPortal) &&
            (identical(other.appStoreUrl, appStoreUrl) ||
                other.appStoreUrl == appStoreUrl) &&
            (identical(other.huaweiUrl, huaweiUrl) ||
                other.huaweiUrl == huaweiUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      underMaintenance,
      minVersion,
      latestVersion,
      currentVersion,
      playStoreUrl,
      companyPortfolioUrl,
      internetAccessPortal,
      appStoreUrl,
      huaweiUrl);

  @override
  String toString() {
    return 'AppConfig(underMaintenance: $underMaintenance, minVersion: $minVersion, latestVersion: $latestVersion, currentVersion: $currentVersion, playStoreUrl: $playStoreUrl, companyPortfolioUrl: $companyPortfolioUrl, internetAccessPortal: $internetAccessPortal, appStoreUrl: $appStoreUrl, huaweiUrl: $huaweiUrl)';
  }
}

/// @nodoc
abstract mixin class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) _then) =
      _$AppConfigCopyWithImpl;
  @useResult
  $Res call(
      {bool underMaintenance,
      String minVersion,
      String latestVersion,
      String currentVersion,
      String? playStoreUrl,
      String? companyPortfolioUrl,
      String? internetAccessPortal,
      String? appStoreUrl,
      String? huaweiUrl});
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res> implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._self, this._then);

  final AppConfig _self;
  final $Res Function(AppConfig) _then;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? underMaintenance = null,
    Object? minVersion = null,
    Object? latestVersion = null,
    Object? currentVersion = null,
    Object? playStoreUrl = freezed,
    Object? companyPortfolioUrl = freezed,
    Object? internetAccessPortal = freezed,
    Object? appStoreUrl = freezed,
    Object? huaweiUrl = freezed,
  }) {
    return _then(_self.copyWith(
      underMaintenance: null == underMaintenance
          ? _self.underMaintenance
          : underMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      minVersion: null == minVersion
          ? _self.minVersion
          : minVersion // ignore: cast_nullable_to_non_nullable
              as String,
      latestVersion: null == latestVersion
          ? _self.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      currentVersion: null == currentVersion
          ? _self.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      playStoreUrl: freezed == playStoreUrl
          ? _self.playStoreUrl
          : playStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPortfolioUrl: freezed == companyPortfolioUrl
          ? _self.companyPortfolioUrl
          : companyPortfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      internetAccessPortal: freezed == internetAccessPortal
          ? _self.internetAccessPortal
          : internetAccessPortal // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreUrl: freezed == appStoreUrl
          ? _self.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      huaweiUrl: freezed == huaweiUrl
          ? _self.huaweiUrl
          : huaweiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppConfig extends AppConfig {
  const _AppConfig(
      {required this.underMaintenance,
      required this.minVersion,
      required this.latestVersion,
      this.currentVersion = "1.0.0",
      this.playStoreUrl,
      this.companyPortfolioUrl,
      this.internetAccessPortal,
      this.appStoreUrl,
      this.huaweiUrl})
      : super._();
  factory _AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  @override
  final bool underMaintenance;
  @override
  final String minVersion;
  @override
  final String latestVersion;
  @override
  @JsonKey()
  final String currentVersion;
  @override
  final String? playStoreUrl;
  @override
  final String? companyPortfolioUrl;
  @override
  final String? internetAccessPortal;
  @override
  final String? appStoreUrl;
  @override
  final String? huaweiUrl;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppConfigCopyWith<_AppConfig> get copyWith =>
      __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppConfig &&
            (identical(other.underMaintenance, underMaintenance) ||
                other.underMaintenance == underMaintenance) &&
            (identical(other.minVersion, minVersion) ||
                other.minVersion == minVersion) &&
            (identical(other.latestVersion, latestVersion) ||
                other.latestVersion == latestVersion) &&
            (identical(other.currentVersion, currentVersion) ||
                other.currentVersion == currentVersion) &&
            (identical(other.playStoreUrl, playStoreUrl) ||
                other.playStoreUrl == playStoreUrl) &&
            (identical(other.companyPortfolioUrl, companyPortfolioUrl) ||
                other.companyPortfolioUrl == companyPortfolioUrl) &&
            (identical(other.internetAccessPortal, internetAccessPortal) ||
                other.internetAccessPortal == internetAccessPortal) &&
            (identical(other.appStoreUrl, appStoreUrl) ||
                other.appStoreUrl == appStoreUrl) &&
            (identical(other.huaweiUrl, huaweiUrl) ||
                other.huaweiUrl == huaweiUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      underMaintenance,
      minVersion,
      latestVersion,
      currentVersion,
      playStoreUrl,
      companyPortfolioUrl,
      internetAccessPortal,
      appStoreUrl,
      huaweiUrl);

  @override
  String toString() {
    return 'AppConfig(underMaintenance: $underMaintenance, minVersion: $minVersion, latestVersion: $latestVersion, currentVersion: $currentVersion, playStoreUrl: $playStoreUrl, companyPortfolioUrl: $companyPortfolioUrl, internetAccessPortal: $internetAccessPortal, appStoreUrl: $appStoreUrl, huaweiUrl: $huaweiUrl)';
  }
}

/// @nodoc
abstract mixin class _$AppConfigCopyWith<$Res>
    implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(
          _AppConfig value, $Res Function(_AppConfig) _then) =
      __$AppConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool underMaintenance,
      String minVersion,
      String latestVersion,
      String currentVersion,
      String? playStoreUrl,
      String? companyPortfolioUrl,
      String? internetAccessPortal,
      String? appStoreUrl,
      String? huaweiUrl});
}

/// @nodoc
class __$AppConfigCopyWithImpl<$Res> implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(this._self, this._then);

  final _AppConfig _self;
  final $Res Function(_AppConfig) _then;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? underMaintenance = null,
    Object? minVersion = null,
    Object? latestVersion = null,
    Object? currentVersion = null,
    Object? playStoreUrl = freezed,
    Object? companyPortfolioUrl = freezed,
    Object? internetAccessPortal = freezed,
    Object? appStoreUrl = freezed,
    Object? huaweiUrl = freezed,
  }) {
    return _then(_AppConfig(
      underMaintenance: null == underMaintenance
          ? _self.underMaintenance
          : underMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      minVersion: null == minVersion
          ? _self.minVersion
          : minVersion // ignore: cast_nullable_to_non_nullable
              as String,
      latestVersion: null == latestVersion
          ? _self.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      currentVersion: null == currentVersion
          ? _self.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      playStoreUrl: freezed == playStoreUrl
          ? _self.playStoreUrl
          : playStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPortfolioUrl: freezed == companyPortfolioUrl
          ? _self.companyPortfolioUrl
          : companyPortfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      internetAccessPortal: freezed == internetAccessPortal
          ? _self.internetAccessPortal
          : internetAccessPortal // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreUrl: freezed == appStoreUrl
          ? _self.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      huaweiUrl: freezed == huaweiUrl
          ? _self.huaweiUrl
          : huaweiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
