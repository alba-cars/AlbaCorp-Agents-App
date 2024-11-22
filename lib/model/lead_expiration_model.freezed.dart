// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_expiration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeadExpirationModel _$LeadExpirationModelFromJson(Map<String, dynamic> json) {
  return _LeadExpirationModel.fromJson(json);
}

/// @nodoc
mixin _$LeadExpirationModel {
  int get numberOfExpirations => throw _privateConstructorUsedError;
  ExpirationRecord get lastExpirationRecord =>
      throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadExpirationModelCopyWith<LeadExpirationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadExpirationModelCopyWith<$Res> {
  factory $LeadExpirationModelCopyWith(
          LeadExpirationModel value, $Res Function(LeadExpirationModel) then) =
      _$LeadExpirationModelCopyWithImpl<$Res, LeadExpirationModel>;
  @useResult
  $Res call(
      {int numberOfExpirations,
      ExpirationRecord lastExpirationRecord,
      String id});

  $ExpirationRecordCopyWith<$Res> get lastExpirationRecord;
}

/// @nodoc
class _$LeadExpirationModelCopyWithImpl<$Res, $Val extends LeadExpirationModel>
    implements $LeadExpirationModelCopyWith<$Res> {
  _$LeadExpirationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfExpirations = null,
    Object? lastExpirationRecord = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      numberOfExpirations: null == numberOfExpirations
          ? _value.numberOfExpirations
          : numberOfExpirations // ignore: cast_nullable_to_non_nullable
              as int,
      lastExpirationRecord: null == lastExpirationRecord
          ? _value.lastExpirationRecord
          : lastExpirationRecord // ignore: cast_nullable_to_non_nullable
              as ExpirationRecord,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpirationRecordCopyWith<$Res> get lastExpirationRecord {
    return $ExpirationRecordCopyWith<$Res>(_value.lastExpirationRecord,
        (value) {
      return _then(_value.copyWith(lastExpirationRecord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadExpirationModelImplCopyWith<$Res>
    implements $LeadExpirationModelCopyWith<$Res> {
  factory _$$LeadExpirationModelImplCopyWith(_$LeadExpirationModelImpl value,
          $Res Function(_$LeadExpirationModelImpl) then) =
      __$$LeadExpirationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numberOfExpirations,
      ExpirationRecord lastExpirationRecord,
      String id});

  @override
  $ExpirationRecordCopyWith<$Res> get lastExpirationRecord;
}

/// @nodoc
class __$$LeadExpirationModelImplCopyWithImpl<$Res>
    extends _$LeadExpirationModelCopyWithImpl<$Res, _$LeadExpirationModelImpl>
    implements _$$LeadExpirationModelImplCopyWith<$Res> {
  __$$LeadExpirationModelImplCopyWithImpl(_$LeadExpirationModelImpl _value,
      $Res Function(_$LeadExpirationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfExpirations = null,
    Object? lastExpirationRecord = null,
    Object? id = null,
  }) {
    return _then(_$LeadExpirationModelImpl(
      numberOfExpirations: null == numberOfExpirations
          ? _value.numberOfExpirations
          : numberOfExpirations // ignore: cast_nullable_to_non_nullable
              as int,
      lastExpirationRecord: null == lastExpirationRecord
          ? _value.lastExpirationRecord
          : lastExpirationRecord // ignore: cast_nullable_to_non_nullable
              as ExpirationRecord,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadExpirationModelImpl implements _LeadExpirationModel {
  const _$LeadExpirationModelImpl(
      {required this.numberOfExpirations,
      required this.lastExpirationRecord,
      required this.id});

  factory _$LeadExpirationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadExpirationModelImplFromJson(json);

  @override
  final int numberOfExpirations;
  @override
  final ExpirationRecord lastExpirationRecord;
  @override
  final String id;

  @override
  String toString() {
    return 'LeadExpirationModel(numberOfExpirations: $numberOfExpirations, lastExpirationRecord: $lastExpirationRecord, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadExpirationModelImpl &&
            (identical(other.numberOfExpirations, numberOfExpirations) ||
                other.numberOfExpirations == numberOfExpirations) &&
            (identical(other.lastExpirationRecord, lastExpirationRecord) ||
                other.lastExpirationRecord == lastExpirationRecord) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, numberOfExpirations, lastExpirationRecord, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadExpirationModelImplCopyWith<_$LeadExpirationModelImpl> get copyWith =>
      __$$LeadExpirationModelImplCopyWithImpl<_$LeadExpirationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadExpirationModelImplToJson(
      this,
    );
  }
}

abstract class _LeadExpirationModel implements LeadExpirationModel {
  const factory _LeadExpirationModel(
      {required final int numberOfExpirations,
      required final ExpirationRecord lastExpirationRecord,
      required final String id}) = _$LeadExpirationModelImpl;

  factory _LeadExpirationModel.fromJson(Map<String, dynamic> json) =
      _$LeadExpirationModelImpl.fromJson;

  @override
  int get numberOfExpirations;
  @override
  ExpirationRecord get lastExpirationRecord;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$LeadExpirationModelImplCopyWith<_$LeadExpirationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpirationRecord _$ExpirationRecordFromJson(Map<String, dynamic> json) {
  return _ExpirationRecord.fromJson(json);
}

/// @nodoc
mixin _$ExpirationRecord {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  AgentModel get agent => throw _privateConstructorUsedError;
  LeadModel get lead => throw _privateConstructorUsedError;
  String get typeOfExpiration => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpirationRecordCopyWith<ExpirationRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpirationRecordCopyWith<$Res> {
  factory $ExpirationRecordCopyWith(
          ExpirationRecord value, $Res Function(ExpirationRecord) then) =
      _$ExpirationRecordCopyWithImpl<$Res, ExpirationRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      AgentModel agent,
      LeadModel lead,
      String typeOfExpiration,
      DateTime createdAt,
      DateTime updatedAt});

  $AgentModelCopyWith<$Res> get agent;
  $LeadModelCopyWith<$Res> get lead;
}

/// @nodoc
class _$ExpirationRecordCopyWithImpl<$Res, $Val extends ExpirationRecord>
    implements $ExpirationRecordCopyWith<$Res> {
  _$ExpirationRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? agent = null,
    Object? lead = null,
    Object? typeOfExpiration = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      agent: null == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as AgentModel,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as LeadModel,
      typeOfExpiration: null == typeOfExpiration
          ? _value.typeOfExpiration
          : typeOfExpiration // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentModelCopyWith<$Res> get agent {
    return $AgentModelCopyWith<$Res>(_value.agent, (value) {
      return _then(_value.copyWith(agent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadModelCopyWith<$Res> get lead {
    return $LeadModelCopyWith<$Res>(_value.lead, (value) {
      return _then(_value.copyWith(lead: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpirationRecordImplCopyWith<$Res>
    implements $ExpirationRecordCopyWith<$Res> {
  factory _$$ExpirationRecordImplCopyWith(_$ExpirationRecordImpl value,
          $Res Function(_$ExpirationRecordImpl) then) =
      __$$ExpirationRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      AgentModel agent,
      LeadModel lead,
      String typeOfExpiration,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $AgentModelCopyWith<$Res> get agent;
  @override
  $LeadModelCopyWith<$Res> get lead;
}

/// @nodoc
class __$$ExpirationRecordImplCopyWithImpl<$Res>
    extends _$ExpirationRecordCopyWithImpl<$Res, _$ExpirationRecordImpl>
    implements _$$ExpirationRecordImplCopyWith<$Res> {
  __$$ExpirationRecordImplCopyWithImpl(_$ExpirationRecordImpl _value,
      $Res Function(_$ExpirationRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? agent = null,
    Object? lead = null,
    Object? typeOfExpiration = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ExpirationRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      agent: null == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as AgentModel,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as LeadModel,
      typeOfExpiration: null == typeOfExpiration
          ? _value.typeOfExpiration
          : typeOfExpiration // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpirationRecordImpl implements _ExpirationRecord {
  const _$ExpirationRecordImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.agent,
      required this.lead,
      required this.typeOfExpiration,
      required this.createdAt,
      required this.updatedAt});

  factory _$ExpirationRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpirationRecordImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final AgentModel agent;
  @override
  final LeadModel lead;
  @override
  final String typeOfExpiration;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ExpirationRecord(id: $id, agent: $agent, lead: $lead, typeOfExpiration: $typeOfExpiration, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpirationRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.typeOfExpiration, typeOfExpiration) ||
                other.typeOfExpiration == typeOfExpiration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, agent, lead, typeOfExpiration, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpirationRecordImplCopyWith<_$ExpirationRecordImpl> get copyWith =>
      __$$ExpirationRecordImplCopyWithImpl<_$ExpirationRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpirationRecordImplToJson(
      this,
    );
  }
}

abstract class _ExpirationRecord implements ExpirationRecord {
  const factory _ExpirationRecord(
      {@JsonKey(name: '_id') required final String id,
      required final AgentModel agent,
      required final LeadModel lead,
      required final String typeOfExpiration,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ExpirationRecordImpl;

  factory _ExpirationRecord.fromJson(Map<String, dynamic> json) =
      _$ExpirationRecordImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  AgentModel get agent;
  @override
  LeadModel get lead;
  @override
  String get typeOfExpiration;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ExpirationRecordImplCopyWith<_$ExpirationRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgentModel _$AgentModelFromJson(Map<String, dynamic> json) {
  return _AgentModel.fromJson(json);
}

/// @nodoc
mixin _$AgentModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get leader => throw _privateConstructorUsedError;
  bool get isLeader => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get recordId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentModelCopyWith<AgentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentModelCopyWith<$Res> {
  factory $AgentModelCopyWith(
          AgentModel value, $Res Function(AgentModel) then) =
      _$AgentModelCopyWithImpl<$Res, AgentModel>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      String phone,
      String? photo,
      String? leader,
      bool isLeader,
      @JsonKey(name: '_id') String recordId});
}

/// @nodoc
class _$AgentModelCopyWithImpl<$Res, $Val extends AgentModel>
    implements $AgentModelCopyWith<$Res> {
  _$AgentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? phone = null,
    Object? photo = freezed,
    Object? leader = freezed,
    Object? isLeader = null,
    Object? recordId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      leader: freezed == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String?,
      isLeader: null == isLeader
          ? _value.isLeader
          : isLeader // ignore: cast_nullable_to_non_nullable
              as bool,
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentModelImplCopyWith<$Res>
    implements $AgentModelCopyWith<$Res> {
  factory _$$AgentModelImplCopyWith(
          _$AgentModelImpl value, $Res Function(_$AgentModelImpl) then) =
      __$$AgentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      String phone,
      String? photo,
      String? leader,
      bool isLeader,
      @JsonKey(name: '_id') String recordId});
}

/// @nodoc
class __$$AgentModelImplCopyWithImpl<$Res>
    extends _$AgentModelCopyWithImpl<$Res, _$AgentModelImpl>
    implements _$$AgentModelImplCopyWith<$Res> {
  __$$AgentModelImplCopyWithImpl(
      _$AgentModelImpl _value, $Res Function(_$AgentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? phone = null,
    Object? photo = freezed,
    Object? leader = freezed,
    Object? isLeader = null,
    Object? recordId = null,
  }) {
    return _then(_$AgentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      leader: freezed == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String?,
      isLeader: null == isLeader
          ? _value.isLeader
          : isLeader // ignore: cast_nullable_to_non_nullable
              as bool,
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentModelImpl implements _AgentModel {
  const _$AgentModelImpl(
      {required this.id,
      required this.userId,
      required this.name,
      required this.phone,
      this.photo,
      this.leader,
      this.isLeader = false,
      @JsonKey(name: '_id') required this.recordId});

  factory _$AgentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String? photo;
  @override
  final String? leader;
  @override
  @JsonKey()
  final bool isLeader;
  @override
  @JsonKey(name: '_id')
  final String recordId;

  @override
  String toString() {
    return 'AgentModel(id: $id, userId: $userId, name: $name, phone: $phone, photo: $photo, leader: $leader, isLeader: $isLeader, recordId: $recordId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.leader, leader) || other.leader == leader) &&
            (identical(other.isLeader, isLeader) ||
                other.isLeader == isLeader) &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, name, phone, photo, leader, isLeader, recordId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentModelImplCopyWith<_$AgentModelImpl> get copyWith =>
      __$$AgentModelImplCopyWithImpl<_$AgentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentModelImplToJson(
      this,
    );
  }
}

abstract class _AgentModel implements AgentModel {
  const factory _AgentModel(
      {required final String id,
      required final String userId,
      required final String name,
      required final String phone,
      final String? photo,
      final String? leader,
      final bool isLeader,
      @JsonKey(name: '_id') required final String recordId}) = _$AgentModelImpl;

  factory _AgentModel.fromJson(Map<String, dynamic> json) =
      _$AgentModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  String get phone;
  @override
  String? get photo;
  @override
  String? get leader;
  @override
  bool get isLeader;
  @override
  @JsonKey(name: '_id')
  String get recordId;
  @override
  @JsonKey(ignore: true)
  _$$AgentModelImplCopyWith<_$AgentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeadModel _$LeadModelFromJson(Map<String, dynamic> json) {
  return _LeadModel.fromJson(json);
}

/// @nodoc
mixin _$LeadModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get leadStatus => throw _privateConstructorUsedError;
  LeadSourceModel get leadSource => throw _privateConstructorUsedError;
  String get last_activity_type => throw _privateConstructorUsedError;
  DateTime get last_activity_date => throw _privateConstructorUsedError;
  bool get last_activity_is_complete => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get recordId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadModelCopyWith<LeadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadModelCopyWith<$Res> {
  factory $LeadModelCopyWith(LeadModel value, $Res Function(LeadModel) then) =
      _$LeadModelCopyWithImpl<$Res, LeadModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String phone,
      String leadStatus,
      LeadSourceModel leadSource,
      String last_activity_type,
      DateTime last_activity_date,
      bool last_activity_is_complete,
      @JsonKey(name: '_id') String recordId});

  $LeadSourceModelCopyWith<$Res> get leadSource;
}

/// @nodoc
class _$LeadModelCopyWithImpl<$Res, $Val extends LeadModel>
    implements $LeadModelCopyWith<$Res> {
  _$LeadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? leadStatus = null,
    Object? leadSource = null,
    Object? last_activity_type = null,
    Object? last_activity_date = null,
    Object? last_activity_is_complete = null,
    Object? recordId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: null == leadStatus
          ? _value.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as String,
      leadSource: null == leadSource
          ? _value.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as LeadSourceModel,
      last_activity_type: null == last_activity_type
          ? _value.last_activity_type
          : last_activity_type // ignore: cast_nullable_to_non_nullable
              as String,
      last_activity_date: null == last_activity_date
          ? _value.last_activity_date
          : last_activity_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      last_activity_is_complete: null == last_activity_is_complete
          ? _value.last_activity_is_complete
          : last_activity_is_complete // ignore: cast_nullable_to_non_nullable
              as bool,
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadSourceModelCopyWith<$Res> get leadSource {
    return $LeadSourceModelCopyWith<$Res>(_value.leadSource, (value) {
      return _then(_value.copyWith(leadSource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadModelImplCopyWith<$Res>
    implements $LeadModelCopyWith<$Res> {
  factory _$$LeadModelImplCopyWith(
          _$LeadModelImpl value, $Res Function(_$LeadModelImpl) then) =
      __$$LeadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String phone,
      String leadStatus,
      LeadSourceModel leadSource,
      String last_activity_type,
      DateTime last_activity_date,
      bool last_activity_is_complete,
      @JsonKey(name: '_id') String recordId});

  @override
  $LeadSourceModelCopyWith<$Res> get leadSource;
}

/// @nodoc
class __$$LeadModelImplCopyWithImpl<$Res>
    extends _$LeadModelCopyWithImpl<$Res, _$LeadModelImpl>
    implements _$$LeadModelImplCopyWith<$Res> {
  __$$LeadModelImplCopyWithImpl(
      _$LeadModelImpl _value, $Res Function(_$LeadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? leadStatus = null,
    Object? leadSource = null,
    Object? last_activity_type = null,
    Object? last_activity_date = null,
    Object? last_activity_is_complete = null,
    Object? recordId = null,
  }) {
    return _then(_$LeadModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: null == leadStatus
          ? _value.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as String,
      leadSource: null == leadSource
          ? _value.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as LeadSourceModel,
      last_activity_type: null == last_activity_type
          ? _value.last_activity_type
          : last_activity_type // ignore: cast_nullable_to_non_nullable
              as String,
      last_activity_date: null == last_activity_date
          ? _value.last_activity_date
          : last_activity_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      last_activity_is_complete: null == last_activity_is_complete
          ? _value.last_activity_is_complete
          : last_activity_is_complete // ignore: cast_nullable_to_non_nullable
              as bool,
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadModelImpl implements _LeadModel {
  const _$LeadModelImpl(
      {required this.id,
      required this.name,
      required this.phone,
      required this.leadStatus,
      required this.leadSource,
      required this.last_activity_type,
      required this.last_activity_date,
      required this.last_activity_is_complete,
      @JsonKey(name: '_id') required this.recordId});

  factory _$LeadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String leadStatus;
  @override
  final LeadSourceModel leadSource;
  @override
  final String last_activity_type;
  @override
  final DateTime last_activity_date;
  @override
  final bool last_activity_is_complete;
  @override
  @JsonKey(name: '_id')
  final String recordId;

  @override
  String toString() {
    return 'LeadModel(id: $id, name: $name, phone: $phone, leadStatus: $leadStatus, leadSource: $leadSource, last_activity_type: $last_activity_type, last_activity_date: $last_activity_date, last_activity_is_complete: $last_activity_is_complete, recordId: $recordId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.leadStatus, leadStatus) ||
                other.leadStatus == leadStatus) &&
            (identical(other.leadSource, leadSource) ||
                other.leadSource == leadSource) &&
            (identical(other.last_activity_type, last_activity_type) ||
                other.last_activity_type == last_activity_type) &&
            (identical(other.last_activity_date, last_activity_date) ||
                other.last_activity_date == last_activity_date) &&
            (identical(other.last_activity_is_complete,
                    last_activity_is_complete) ||
                other.last_activity_is_complete == last_activity_is_complete) &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      phone,
      leadStatus,
      leadSource,
      last_activity_type,
      last_activity_date,
      last_activity_is_complete,
      recordId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadModelImplCopyWith<_$LeadModelImpl> get copyWith =>
      __$$LeadModelImplCopyWithImpl<_$LeadModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadModelImplToJson(
      this,
    );
  }
}

abstract class _LeadModel implements LeadModel {
  const factory _LeadModel(
      {required final String id,
      required final String name,
      required final String phone,
      required final String leadStatus,
      required final LeadSourceModel leadSource,
      required final String last_activity_type,
      required final DateTime last_activity_date,
      required final bool last_activity_is_complete,
      @JsonKey(name: '_id') required final String recordId}) = _$LeadModelImpl;

  factory _LeadModel.fromJson(Map<String, dynamic> json) =
      _$LeadModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String get leadStatus;
  @override
  LeadSourceModel get leadSource;
  @override
  String get last_activity_type;
  @override
  DateTime get last_activity_date;
  @override
  bool get last_activity_is_complete;
  @override
  @JsonKey(name: '_id')
  String get recordId;
  @override
  @JsonKey(ignore: true)
  _$$LeadModelImplCopyWith<_$LeadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeadSourceModel _$LeadSourceModelFromJson(Map<String, dynamic> json) {
  return _LeadSourceModel.fromJson(json);
}

/// @nodoc
mixin _$LeadSourceModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get leadSourceType => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get recordId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadSourceModelCopyWith<LeadSourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadSourceModelCopyWith<$Res> {
  factory $LeadSourceModelCopyWith(
          LeadSourceModel value, $Res Function(LeadSourceModel) then) =
      _$LeadSourceModelCopyWithImpl<$Res, LeadSourceModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String leadSourceType,
      int weight,
      @JsonKey(name: '_id') String recordId});
}

/// @nodoc
class _$LeadSourceModelCopyWithImpl<$Res, $Val extends LeadSourceModel>
    implements $LeadSourceModelCopyWith<$Res> {
  _$LeadSourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? leadSourceType = null,
    Object? weight = null,
    Object? recordId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leadSourceType: null == leadSourceType
          ? _value.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadSourceModelImplCopyWith<$Res>
    implements $LeadSourceModelCopyWith<$Res> {
  factory _$$LeadSourceModelImplCopyWith(_$LeadSourceModelImpl value,
          $Res Function(_$LeadSourceModelImpl) then) =
      __$$LeadSourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String leadSourceType,
      int weight,
      @JsonKey(name: '_id') String recordId});
}

/// @nodoc
class __$$LeadSourceModelImplCopyWithImpl<$Res>
    extends _$LeadSourceModelCopyWithImpl<$Res, _$LeadSourceModelImpl>
    implements _$$LeadSourceModelImplCopyWith<$Res> {
  __$$LeadSourceModelImplCopyWithImpl(
      _$LeadSourceModelImpl _value, $Res Function(_$LeadSourceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? leadSourceType = null,
    Object? weight = null,
    Object? recordId = null,
  }) {
    return _then(_$LeadSourceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leadSourceType: null == leadSourceType
          ? _value.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadSourceModelImpl implements _LeadSourceModel {
  const _$LeadSourceModelImpl(
      {required this.id,
      required this.name,
      required this.leadSourceType,
      required this.weight,
      @JsonKey(name: '_id') required this.recordId});

  factory _$LeadSourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadSourceModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String leadSourceType;
  @override
  final int weight;
  @override
  @JsonKey(name: '_id')
  final String recordId;

  @override
  String toString() {
    return 'LeadSourceModel(id: $id, name: $name, leadSourceType: $leadSourceType, weight: $weight, recordId: $recordId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadSourceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.leadSourceType, leadSourceType) ||
                other.leadSourceType == leadSourceType) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, leadSourceType, weight, recordId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadSourceModelImplCopyWith<_$LeadSourceModelImpl> get copyWith =>
      __$$LeadSourceModelImplCopyWithImpl<_$LeadSourceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadSourceModelImplToJson(
      this,
    );
  }
}

abstract class _LeadSourceModel implements LeadSourceModel {
  const factory _LeadSourceModel(
          {required final String id,
          required final String name,
          required final String leadSourceType,
          required final int weight,
          @JsonKey(name: '_id') required final String recordId}) =
      _$LeadSourceModelImpl;

  factory _LeadSourceModel.fromJson(Map<String, dynamic> json) =
      _$LeadSourceModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get leadSourceType;
  @override
  int get weight;
  @override
  @JsonKey(name: '_id')
  String get recordId;
  @override
  @JsonKey(ignore: true)
  _$$LeadSourceModelImplCopyWith<_$LeadSourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
