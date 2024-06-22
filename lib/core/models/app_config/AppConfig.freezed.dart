// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AppConfig.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) {
  return _AppConfig.fromJson(json);
}

/// @nodoc
mixin _$AppConfig {
  bool get underMaintenance => throw _privateConstructorUsedError;
  String get minVersion => throw _privateConstructorUsedError;
  String get latestVersion => throw _privateConstructorUsedError;
  String get currentVersion => throw _privateConstructorUsedError;
  String? get playStoreUrl => throw _privateConstructorUsedError;
  String? get appStoreUrl => throw _privateConstructorUsedError;
  String? get huaweiUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppConfigCopyWith<AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) then) =
      _$AppConfigCopyWithImpl<$Res, AppConfig>;
  @useResult
  $Res call(
      {bool underMaintenance,
      String minVersion,
      String latestVersion,
      String currentVersion,
      String? playStoreUrl,
      String? appStoreUrl,
      String? huaweiUrl});
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res, $Val extends AppConfig>
    implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? underMaintenance = null,
    Object? minVersion = null,
    Object? latestVersion = null,
    Object? currentVersion = null,
    Object? playStoreUrl = freezed,
    Object? appStoreUrl = freezed,
    Object? huaweiUrl = freezed,
  }) {
    return _then(_value.copyWith(
      underMaintenance: null == underMaintenance
          ? _value.underMaintenance
          : underMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      minVersion: null == minVersion
          ? _value.minVersion
          : minVersion // ignore: cast_nullable_to_non_nullable
              as String,
      latestVersion: null == latestVersion
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      currentVersion: null == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      playStoreUrl: freezed == playStoreUrl
          ? _value.playStoreUrl
          : playStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreUrl: freezed == appStoreUrl
          ? _value.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      huaweiUrl: freezed == huaweiUrl
          ? _value.huaweiUrl
          : huaweiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppConfigImplCopyWith<$Res>
    implements $AppConfigCopyWith<$Res> {
  factory _$$AppConfigImplCopyWith(
          _$AppConfigImpl value, $Res Function(_$AppConfigImpl) then) =
      __$$AppConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool underMaintenance,
      String minVersion,
      String latestVersion,
      String currentVersion,
      String? playStoreUrl,
      String? appStoreUrl,
      String? huaweiUrl});
}

/// @nodoc
class __$$AppConfigImplCopyWithImpl<$Res>
    extends _$AppConfigCopyWithImpl<$Res, _$AppConfigImpl>
    implements _$$AppConfigImplCopyWith<$Res> {
  __$$AppConfigImplCopyWithImpl(
      _$AppConfigImpl _value, $Res Function(_$AppConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? underMaintenance = null,
    Object? minVersion = null,
    Object? latestVersion = null,
    Object? currentVersion = null,
    Object? playStoreUrl = freezed,
    Object? appStoreUrl = freezed,
    Object? huaweiUrl = freezed,
  }) {
    return _then(_$AppConfigImpl(
      underMaintenance: null == underMaintenance
          ? _value.underMaintenance
          : underMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      minVersion: null == minVersion
          ? _value.minVersion
          : minVersion // ignore: cast_nullable_to_non_nullable
              as String,
      latestVersion: null == latestVersion
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      currentVersion: null == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      playStoreUrl: freezed == playStoreUrl
          ? _value.playStoreUrl
          : playStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreUrl: freezed == appStoreUrl
          ? _value.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      huaweiUrl: freezed == huaweiUrl
          ? _value.huaweiUrl
          : huaweiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppConfigImpl extends _AppConfig {
  const _$AppConfigImpl(
      {required this.underMaintenance,
      required this.minVersion,
      required this.latestVersion,
      this.currentVersion = "1.0.0",
      this.playStoreUrl,
      this.appStoreUrl,
      this.huaweiUrl})
      : super._();

  factory _$AppConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppConfigImplFromJson(json);

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
  final String? appStoreUrl;
  @override
  final String? huaweiUrl;

  @override
  String toString() {
    return 'AppConfig(underMaintenance: $underMaintenance, minVersion: $minVersion, latestVersion: $latestVersion, currentVersion: $currentVersion, playStoreUrl: $playStoreUrl, appStoreUrl: $appStoreUrl, huaweiUrl: $huaweiUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigImpl &&
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
            (identical(other.appStoreUrl, appStoreUrl) ||
                other.appStoreUrl == appStoreUrl) &&
            (identical(other.huaweiUrl, huaweiUrl) ||
                other.huaweiUrl == huaweiUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, underMaintenance, minVersion,
      latestVersion, currentVersion, playStoreUrl, appStoreUrl, huaweiUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      __$$AppConfigImplCopyWithImpl<_$AppConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppConfigImplToJson(
      this,
    );
  }
}

abstract class _AppConfig extends AppConfig {
  const factory _AppConfig(
      {required final bool underMaintenance,
      required final String minVersion,
      required final String latestVersion,
      final String currentVersion,
      final String? playStoreUrl,
      final String? appStoreUrl,
      final String? huaweiUrl}) = _$AppConfigImpl;
  const _AppConfig._() : super._();

  factory _AppConfig.fromJson(Map<String, dynamic> json) =
      _$AppConfigImpl.fromJson;

  @override
  bool get underMaintenance;
  @override
  String get minVersion;
  @override
  String get latestVersion;
  @override
  String get currentVersion;
  @override
  String? get playStoreUrl;
  @override
  String? get appStoreUrl;
  @override
  String? get huaweiUrl;
  @override
  @JsonKey(ignore: true)
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
