// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GlobalSettings _$GlobalSettingsFromJson(Map<String, dynamic> json) {
  return _GlobalSettings.fromJson(json);
}

/// @nodoc
mixin _$GlobalSettings {
  String get id => throw _privateConstructorUsedError;
  String? get timeUntilTicketArchived => throw _privateConstructorUsedError;
  CheckoutLimit get checkoutLimit => throw _privateConstructorUsedError;
  String get unAssignLeadAfter => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get blockLeadFor => throw _privateConstructorUsedError;
  String get dealReminderAfter => throw _privateConstructorUsedError;
  String get newLeadFlagDateLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalSettingsCopyWith<GlobalSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalSettingsCopyWith<$Res> {
  factory $GlobalSettingsCopyWith(
          GlobalSettings value, $Res Function(GlobalSettings) then) =
      _$GlobalSettingsCopyWithImpl<$Res, GlobalSettings>;
  @useResult
  $Res call(
      {String id,
      String? timeUntilTicketArchived,
      CheckoutLimit checkoutLimit,
      String unAssignLeadAfter,
      DateTime createdAt,
      DateTime updatedAt,
      String blockLeadFor,
      String dealReminderAfter,
      String newLeadFlagDateLimit});

  $CheckoutLimitCopyWith<$Res> get checkoutLimit;
}

/// @nodoc
class _$GlobalSettingsCopyWithImpl<$Res, $Val extends GlobalSettings>
    implements $GlobalSettingsCopyWith<$Res> {
  _$GlobalSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeUntilTicketArchived = freezed,
    Object? checkoutLimit = null,
    Object? unAssignLeadAfter = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? blockLeadFor = null,
    Object? dealReminderAfter = null,
    Object? newLeadFlagDateLimit = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timeUntilTicketArchived: freezed == timeUntilTicketArchived
          ? _value.timeUntilTicketArchived
          : timeUntilTicketArchived // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutLimit: null == checkoutLimit
          ? _value.checkoutLimit
          : checkoutLimit // ignore: cast_nullable_to_non_nullable
              as CheckoutLimit,
      unAssignLeadAfter: null == unAssignLeadAfter
          ? _value.unAssignLeadAfter
          : unAssignLeadAfter // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      blockLeadFor: null == blockLeadFor
          ? _value.blockLeadFor
          : blockLeadFor // ignore: cast_nullable_to_non_nullable
              as String,
      dealReminderAfter: null == dealReminderAfter
          ? _value.dealReminderAfter
          : dealReminderAfter // ignore: cast_nullable_to_non_nullable
              as String,
      newLeadFlagDateLimit: null == newLeadFlagDateLimit
          ? _value.newLeadFlagDateLimit
          : newLeadFlagDateLimit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckoutLimitCopyWith<$Res> get checkoutLimit {
    return $CheckoutLimitCopyWith<$Res>(_value.checkoutLimit, (value) {
      return _then(_value.copyWith(checkoutLimit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GlobalSettingsImplCopyWith<$Res>
    implements $GlobalSettingsCopyWith<$Res> {
  factory _$$GlobalSettingsImplCopyWith(_$GlobalSettingsImpl value,
          $Res Function(_$GlobalSettingsImpl) then) =
      __$$GlobalSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? timeUntilTicketArchived,
      CheckoutLimit checkoutLimit,
      String unAssignLeadAfter,
      DateTime createdAt,
      DateTime updatedAt,
      String blockLeadFor,
      String dealReminderAfter,
      String newLeadFlagDateLimit});

  @override
  $CheckoutLimitCopyWith<$Res> get checkoutLimit;
}

/// @nodoc
class __$$GlobalSettingsImplCopyWithImpl<$Res>
    extends _$GlobalSettingsCopyWithImpl<$Res, _$GlobalSettingsImpl>
    implements _$$GlobalSettingsImplCopyWith<$Res> {
  __$$GlobalSettingsImplCopyWithImpl(
      _$GlobalSettingsImpl _value, $Res Function(_$GlobalSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeUntilTicketArchived = freezed,
    Object? checkoutLimit = null,
    Object? unAssignLeadAfter = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? blockLeadFor = null,
    Object? dealReminderAfter = null,
    Object? newLeadFlagDateLimit = null,
  }) {
    return _then(_$GlobalSettingsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timeUntilTicketArchived: freezed == timeUntilTicketArchived
          ? _value.timeUntilTicketArchived
          : timeUntilTicketArchived // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutLimit: null == checkoutLimit
          ? _value.checkoutLimit
          : checkoutLimit // ignore: cast_nullable_to_non_nullable
              as CheckoutLimit,
      unAssignLeadAfter: null == unAssignLeadAfter
          ? _value.unAssignLeadAfter
          : unAssignLeadAfter // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      blockLeadFor: null == blockLeadFor
          ? _value.blockLeadFor
          : blockLeadFor // ignore: cast_nullable_to_non_nullable
              as String,
      dealReminderAfter: null == dealReminderAfter
          ? _value.dealReminderAfter
          : dealReminderAfter // ignore: cast_nullable_to_non_nullable
              as String,
      newLeadFlagDateLimit: null == newLeadFlagDateLimit
          ? _value.newLeadFlagDateLimit
          : newLeadFlagDateLimit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GlobalSettingsImpl implements _GlobalSettings {
  const _$GlobalSettingsImpl(
      {required this.id,
      this.timeUntilTicketArchived,
      required this.checkoutLimit,
      required this.unAssignLeadAfter,
      required this.createdAt,
      required this.updatedAt,
      required this.blockLeadFor,
      required this.dealReminderAfter,
      required this.newLeadFlagDateLimit});

  factory _$GlobalSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlobalSettingsImplFromJson(json);

  @override
  final String id;
  @override
  final String? timeUntilTicketArchived;
  @override
  final CheckoutLimit checkoutLimit;
  @override
  final String unAssignLeadAfter;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String blockLeadFor;
  @override
  final String dealReminderAfter;
  @override
  final String newLeadFlagDateLimit;

  @override
  String toString() {
    return 'GlobalSettings(id: $id, timeUntilTicketArchived: $timeUntilTicketArchived, checkoutLimit: $checkoutLimit, unAssignLeadAfter: $unAssignLeadAfter, createdAt: $createdAt, updatedAt: $updatedAt, blockLeadFor: $blockLeadFor, dealReminderAfter: $dealReminderAfter, newLeadFlagDateLimit: $newLeadFlagDateLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalSettingsImpl &&
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
                other.newLeadFlagDateLimit == newLeadFlagDateLimit));
  }

  @JsonKey(ignore: true)
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
      newLeadFlagDateLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalSettingsImplCopyWith<_$GlobalSettingsImpl> get copyWith =>
      __$$GlobalSettingsImplCopyWithImpl<_$GlobalSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalSettingsImplToJson(
      this,
    );
  }
}

abstract class _GlobalSettings implements GlobalSettings {
  const factory _GlobalSettings(
      {required final String id,
      final String? timeUntilTicketArchived,
      required final CheckoutLimit checkoutLimit,
      required final String unAssignLeadAfter,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String blockLeadFor,
      required final String dealReminderAfter,
      required final String newLeadFlagDateLimit}) = _$GlobalSettingsImpl;

  factory _GlobalSettings.fromJson(Map<String, dynamic> json) =
      _$GlobalSettingsImpl.fromJson;

  @override
  String get id;
  @override
  String? get timeUntilTicketArchived;
  @override
  CheckoutLimit get checkoutLimit;
  @override
  String get unAssignLeadAfter;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get blockLeadFor;
  @override
  String get dealReminderAfter;
  @override
  String get newLeadFlagDateLimit;
  @override
  @JsonKey(ignore: true)
  _$$GlobalSettingsImplCopyWith<_$GlobalSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutLimit _$CheckoutLimitFromJson(Map<String, dynamic> json) {
  return _CheckoutLimit.fromJson(json);
}

/// @nodoc
mixin _$CheckoutLimit {
  int get limit => throw _privateConstructorUsedError;
  int get tolerance => throw _privateConstructorUsedError;
  String get unassignAfter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutLimitCopyWith<CheckoutLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutLimitCopyWith<$Res> {
  factory $CheckoutLimitCopyWith(
          CheckoutLimit value, $Res Function(CheckoutLimit) then) =
      _$CheckoutLimitCopyWithImpl<$Res, CheckoutLimit>;
  @useResult
  $Res call({int limit, int tolerance, String unassignAfter});
}

/// @nodoc
class _$CheckoutLimitCopyWithImpl<$Res, $Val extends CheckoutLimit>
    implements $CheckoutLimitCopyWith<$Res> {
  _$CheckoutLimitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? tolerance = null,
    Object? unassignAfter = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      tolerance: null == tolerance
          ? _value.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as int,
      unassignAfter: null == unassignAfter
          ? _value.unassignAfter
          : unassignAfter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutLimitImplCopyWith<$Res>
    implements $CheckoutLimitCopyWith<$Res> {
  factory _$$CheckoutLimitImplCopyWith(
          _$CheckoutLimitImpl value, $Res Function(_$CheckoutLimitImpl) then) =
      __$$CheckoutLimitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int tolerance, String unassignAfter});
}

/// @nodoc
class __$$CheckoutLimitImplCopyWithImpl<$Res>
    extends _$CheckoutLimitCopyWithImpl<$Res, _$CheckoutLimitImpl>
    implements _$$CheckoutLimitImplCopyWith<$Res> {
  __$$CheckoutLimitImplCopyWithImpl(
      _$CheckoutLimitImpl _value, $Res Function(_$CheckoutLimitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? tolerance = null,
    Object? unassignAfter = null,
  }) {
    return _then(_$CheckoutLimitImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      tolerance: null == tolerance
          ? _value.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as int,
      unassignAfter: null == unassignAfter
          ? _value.unassignAfter
          : unassignAfter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutLimitImpl implements _CheckoutLimit {
  const _$CheckoutLimitImpl(
      {required this.limit,
      required this.tolerance,
      required this.unassignAfter});

  factory _$CheckoutLimitImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutLimitImplFromJson(json);

  @override
  final int limit;
  @override
  final int tolerance;
  @override
  final String unassignAfter;

  @override
  String toString() {
    return 'CheckoutLimit(limit: $limit, tolerance: $tolerance, unassignAfter: $unassignAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutLimitImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.tolerance, tolerance) ||
                other.tolerance == tolerance) &&
            (identical(other.unassignAfter, unassignAfter) ||
                other.unassignAfter == unassignAfter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limit, tolerance, unassignAfter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutLimitImplCopyWith<_$CheckoutLimitImpl> get copyWith =>
      __$$CheckoutLimitImplCopyWithImpl<_$CheckoutLimitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutLimitImplToJson(
      this,
    );
  }
}

abstract class _CheckoutLimit implements CheckoutLimit {
  const factory _CheckoutLimit(
      {required final int limit,
      required final int tolerance,
      required final String unassignAfter}) = _$CheckoutLimitImpl;

  factory _CheckoutLimit.fromJson(Map<String, dynamic> json) =
      _$CheckoutLimitImpl.fromJson;

  @override
  int get limit;
  @override
  int get tolerance;
  @override
  String get unassignAfter;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutLimitImplCopyWith<_$CheckoutLimitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
