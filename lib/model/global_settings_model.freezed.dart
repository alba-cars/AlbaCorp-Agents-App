// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GlobalSettings {
  String get id;
  String? get timeUntilTicketArchived;
  CheckoutLimit get checkoutLimit;
  String? get unAssignLeadAfter;
  DateTime? get createdAt;
  DateTime? get updatedAt;
  String? get blockLeadFor;
  String? get dealReminderAfter;
  String? get newLeadFlagDateLimit;
  dynamic get enablePbx;

  /// Create a copy of GlobalSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GlobalSettingsCopyWith<GlobalSettings> get copyWith =>
      _$GlobalSettingsCopyWithImpl<GlobalSettings>(
          this as GlobalSettings, _$identity);

  /// Serializes this GlobalSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GlobalSettings &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.timeUntilTicketArchived, timeUntilTicketArchived) ||
                other.timeUntilTicketArchived == timeUntilTicketArchived) &&
            (identical(other.checkoutLimit, checkoutLimit) ||
                other.checkoutLimit == checkoutLimit) &&
            (identical(other.unAssignLeadAfter, unAssignLeadAfter) ||
                other.unAssignLeadAfter == unAssignLeadAfter) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.blockLeadFor, blockLeadFor) ||
                other.blockLeadFor == blockLeadFor) &&
            (identical(other.dealReminderAfter, dealReminderAfter) ||
                other.dealReminderAfter == dealReminderAfter) &&
            (identical(other.newLeadFlagDateLimit, newLeadFlagDateLimit) ||
                other.newLeadFlagDateLimit == newLeadFlagDateLimit) &&
            const DeepCollectionEquality().equals(other.enablePbx, enablePbx));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timeUntilTicketArchived,
      checkoutLimit,
      unAssignLeadAfter,
      createdAt,
      updatedAt,
      blockLeadFor,
      dealReminderAfter,
      newLeadFlagDateLimit,
      const DeepCollectionEquality().hash(enablePbx));

  @override
  String toString() {
    return 'GlobalSettings(id: $id, timeUntilTicketArchived: $timeUntilTicketArchived, checkoutLimit: $checkoutLimit, unAssignLeadAfter: $unAssignLeadAfter, createdAt: $createdAt, updatedAt: $updatedAt, blockLeadFor: $blockLeadFor, dealReminderAfter: $dealReminderAfter, newLeadFlagDateLimit: $newLeadFlagDateLimit, enablePbx: $enablePbx)';
  }
}

/// @nodoc
abstract mixin class $GlobalSettingsCopyWith<$Res> {
  factory $GlobalSettingsCopyWith(
          GlobalSettings value, $Res Function(GlobalSettings) _then) =
      _$GlobalSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String? timeUntilTicketArchived,
      CheckoutLimit checkoutLimit,
      String? unAssignLeadAfter,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? blockLeadFor,
      String? dealReminderAfter,
      String? newLeadFlagDateLimit,
      dynamic enablePbx});

  $CheckoutLimitCopyWith<$Res> get checkoutLimit;
}

/// @nodoc
class _$GlobalSettingsCopyWithImpl<$Res>
    implements $GlobalSettingsCopyWith<$Res> {
  _$GlobalSettingsCopyWithImpl(this._self, this._then);

  final GlobalSettings _self;
  final $Res Function(GlobalSettings) _then;

  /// Create a copy of GlobalSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeUntilTicketArchived = freezed,
    Object? checkoutLimit = null,
    Object? unAssignLeadAfter = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? blockLeadFor = freezed,
    Object? dealReminderAfter = freezed,
    Object? newLeadFlagDateLimit = freezed,
    Object? enablePbx = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timeUntilTicketArchived: freezed == timeUntilTicketArchived
          ? _self.timeUntilTicketArchived
          : timeUntilTicketArchived // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutLimit: null == checkoutLimit
          ? _self.checkoutLimit
          : checkoutLimit // ignore: cast_nullable_to_non_nullable
              as CheckoutLimit,
      unAssignLeadAfter: freezed == unAssignLeadAfter
          ? _self.unAssignLeadAfter
          : unAssignLeadAfter // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blockLeadFor: freezed == blockLeadFor
          ? _self.blockLeadFor
          : blockLeadFor // ignore: cast_nullable_to_non_nullable
              as String?,
      dealReminderAfter: freezed == dealReminderAfter
          ? _self.dealReminderAfter
          : dealReminderAfter // ignore: cast_nullable_to_non_nullable
              as String?,
      newLeadFlagDateLimit: freezed == newLeadFlagDateLimit
          ? _self.newLeadFlagDateLimit
          : newLeadFlagDateLimit // ignore: cast_nullable_to_non_nullable
              as String?,
      enablePbx: freezed == enablePbx
          ? _self.enablePbx
          : enablePbx // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  /// Create a copy of GlobalSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckoutLimitCopyWith<$Res> get checkoutLimit {
    return $CheckoutLimitCopyWith<$Res>(_self.checkoutLimit, (value) {
      return _then(_self.copyWith(checkoutLimit: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GlobalSettings implements GlobalSettings {
  const _GlobalSettings(
      {required this.id,
      this.timeUntilTicketArchived,
      required this.checkoutLimit,
      this.unAssignLeadAfter,
      this.createdAt,
      this.updatedAt,
      this.blockLeadFor,
      this.dealReminderAfter,
      this.newLeadFlagDateLimit,
      this.enablePbx = false});
  factory _GlobalSettings.fromJson(Map<String, dynamic> json) =>
      _$GlobalSettingsFromJson(json);

  @override
  final String id;
  @override
  final String? timeUntilTicketArchived;
  @override
  final CheckoutLimit checkoutLimit;
  @override
  final String? unAssignLeadAfter;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? blockLeadFor;
  @override
  final String? dealReminderAfter;
  @override
  final String? newLeadFlagDateLimit;
  @override
  @JsonKey()
  final dynamic enablePbx;

  /// Create a copy of GlobalSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GlobalSettingsCopyWith<_GlobalSettings> get copyWith =>
      __$GlobalSettingsCopyWithImpl<_GlobalSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GlobalSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GlobalSettings &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.timeUntilTicketArchived, timeUntilTicketArchived) ||
                other.timeUntilTicketArchived == timeUntilTicketArchived) &&
            (identical(other.checkoutLimit, checkoutLimit) ||
                other.checkoutLimit == checkoutLimit) &&
            (identical(other.unAssignLeadAfter, unAssignLeadAfter) ||
                other.unAssignLeadAfter == unAssignLeadAfter) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.blockLeadFor, blockLeadFor) ||
                other.blockLeadFor == blockLeadFor) &&
            (identical(other.dealReminderAfter, dealReminderAfter) ||
                other.dealReminderAfter == dealReminderAfter) &&
            (identical(other.newLeadFlagDateLimit, newLeadFlagDateLimit) ||
                other.newLeadFlagDateLimit == newLeadFlagDateLimit) &&
            const DeepCollectionEquality().equals(other.enablePbx, enablePbx));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timeUntilTicketArchived,
      checkoutLimit,
      unAssignLeadAfter,
      createdAt,
      updatedAt,
      blockLeadFor,
      dealReminderAfter,
      newLeadFlagDateLimit,
      const DeepCollectionEquality().hash(enablePbx));

  @override
  String toString() {
    return 'GlobalSettings(id: $id, timeUntilTicketArchived: $timeUntilTicketArchived, checkoutLimit: $checkoutLimit, unAssignLeadAfter: $unAssignLeadAfter, createdAt: $createdAt, updatedAt: $updatedAt, blockLeadFor: $blockLeadFor, dealReminderAfter: $dealReminderAfter, newLeadFlagDateLimit: $newLeadFlagDateLimit, enablePbx: $enablePbx)';
  }
}

/// @nodoc
abstract mixin class _$GlobalSettingsCopyWith<$Res>
    implements $GlobalSettingsCopyWith<$Res> {
  factory _$GlobalSettingsCopyWith(
          _GlobalSettings value, $Res Function(_GlobalSettings) _then) =
      __$GlobalSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String? timeUntilTicketArchived,
      CheckoutLimit checkoutLimit,
      String? unAssignLeadAfter,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? blockLeadFor,
      String? dealReminderAfter,
      String? newLeadFlagDateLimit,
      dynamic enablePbx});

  @override
  $CheckoutLimitCopyWith<$Res> get checkoutLimit;
}

/// @nodoc
class __$GlobalSettingsCopyWithImpl<$Res>
    implements _$GlobalSettingsCopyWith<$Res> {
  __$GlobalSettingsCopyWithImpl(this._self, this._then);

  final _GlobalSettings _self;
  final $Res Function(_GlobalSettings) _then;

  /// Create a copy of GlobalSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? timeUntilTicketArchived = freezed,
    Object? checkoutLimit = null,
    Object? unAssignLeadAfter = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? blockLeadFor = freezed,
    Object? dealReminderAfter = freezed,
    Object? newLeadFlagDateLimit = freezed,
    Object? enablePbx = freezed,
  }) {
    return _then(_GlobalSettings(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timeUntilTicketArchived: freezed == timeUntilTicketArchived
          ? _self.timeUntilTicketArchived
          : timeUntilTicketArchived // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutLimit: null == checkoutLimit
          ? _self.checkoutLimit
          : checkoutLimit // ignore: cast_nullable_to_non_nullable
              as CheckoutLimit,
      unAssignLeadAfter: freezed == unAssignLeadAfter
          ? _self.unAssignLeadAfter
          : unAssignLeadAfter // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blockLeadFor: freezed == blockLeadFor
          ? _self.blockLeadFor
          : blockLeadFor // ignore: cast_nullable_to_non_nullable
              as String?,
      dealReminderAfter: freezed == dealReminderAfter
          ? _self.dealReminderAfter
          : dealReminderAfter // ignore: cast_nullable_to_non_nullable
              as String?,
      newLeadFlagDateLimit: freezed == newLeadFlagDateLimit
          ? _self.newLeadFlagDateLimit
          : newLeadFlagDateLimit // ignore: cast_nullable_to_non_nullable
              as String?,
      enablePbx: freezed == enablePbx
          ? _self.enablePbx
          : enablePbx // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  /// Create a copy of GlobalSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckoutLimitCopyWith<$Res> get checkoutLimit {
    return $CheckoutLimitCopyWith<$Res>(_self.checkoutLimit, (value) {
      return _then(_self.copyWith(checkoutLimit: value));
    });
  }
}

/// @nodoc
mixin _$CheckoutLimit {
  int get limit;
  int get tolerance;
  String get unassignAfter;

  /// Create a copy of CheckoutLimit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckoutLimitCopyWith<CheckoutLimit> get copyWith =>
      _$CheckoutLimitCopyWithImpl<CheckoutLimit>(
          this as CheckoutLimit, _$identity);

  /// Serializes this CheckoutLimit to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckoutLimit &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.tolerance, tolerance) ||
                other.tolerance == tolerance) &&
            (identical(other.unassignAfter, unassignAfter) ||
                other.unassignAfter == unassignAfter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, tolerance, unassignAfter);

  @override
  String toString() {
    return 'CheckoutLimit(limit: $limit, tolerance: $tolerance, unassignAfter: $unassignAfter)';
  }
}

/// @nodoc
abstract mixin class $CheckoutLimitCopyWith<$Res> {
  factory $CheckoutLimitCopyWith(
          CheckoutLimit value, $Res Function(CheckoutLimit) _then) =
      _$CheckoutLimitCopyWithImpl;
  @useResult
  $Res call({int limit, int tolerance, String unassignAfter});
}

/// @nodoc
class _$CheckoutLimitCopyWithImpl<$Res>
    implements $CheckoutLimitCopyWith<$Res> {
  _$CheckoutLimitCopyWithImpl(this._self, this._then);

  final CheckoutLimit _self;
  final $Res Function(CheckoutLimit) _then;

  /// Create a copy of CheckoutLimit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? tolerance = null,
    Object? unassignAfter = null,
  }) {
    return _then(_self.copyWith(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      tolerance: null == tolerance
          ? _self.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as int,
      unassignAfter: null == unassignAfter
          ? _self.unassignAfter
          : unassignAfter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CheckoutLimit implements CheckoutLimit {
  const _CheckoutLimit(
      {required this.limit,
      required this.tolerance,
      required this.unassignAfter});
  factory _CheckoutLimit.fromJson(Map<String, dynamic> json) =>
      _$CheckoutLimitFromJson(json);

  @override
  final int limit;
  @override
  final int tolerance;
  @override
  final String unassignAfter;

  /// Create a copy of CheckoutLimit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckoutLimitCopyWith<_CheckoutLimit> get copyWith =>
      __$CheckoutLimitCopyWithImpl<_CheckoutLimit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CheckoutLimitToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckoutLimit &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.tolerance, tolerance) ||
                other.tolerance == tolerance) &&
            (identical(other.unassignAfter, unassignAfter) ||
                other.unassignAfter == unassignAfter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, tolerance, unassignAfter);

  @override
  String toString() {
    return 'CheckoutLimit(limit: $limit, tolerance: $tolerance, unassignAfter: $unassignAfter)';
  }
}

/// @nodoc
abstract mixin class _$CheckoutLimitCopyWith<$Res>
    implements $CheckoutLimitCopyWith<$Res> {
  factory _$CheckoutLimitCopyWith(
          _CheckoutLimit value, $Res Function(_CheckoutLimit) _then) =
      __$CheckoutLimitCopyWithImpl;
  @override
  @useResult
  $Res call({int limit, int tolerance, String unassignAfter});
}

/// @nodoc
class __$CheckoutLimitCopyWithImpl<$Res>
    implements _$CheckoutLimitCopyWith<$Res> {
  __$CheckoutLimitCopyWithImpl(this._self, this._then);

  final _CheckoutLimit _self;
  final $Res Function(_CheckoutLimit) _then;

  /// Create a copy of CheckoutLimit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? limit = null,
    Object? tolerance = null,
    Object? unassignAfter = null,
  }) {
    return _then(_CheckoutLimit(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      tolerance: null == tolerance
          ? _self.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as int,
      unassignAfter: null == unassignAfter
          ? _self.unassignAfter
          : unassignAfter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
