// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_expiration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeadExpirationModel {
  int get numberOfExpirations;
  ExpirationRecord get lastExpirationRecord;
  String get id;

  /// Create a copy of LeadExpirationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadExpirationModelCopyWith<LeadExpirationModel> get copyWith =>
      _$LeadExpirationModelCopyWithImpl<LeadExpirationModel>(
          this as LeadExpirationModel, _$identity);

  /// Serializes this LeadExpirationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadExpirationModel &&
            (identical(other.numberOfExpirations, numberOfExpirations) ||
                other.numberOfExpirations == numberOfExpirations) &&
            (identical(other.lastExpirationRecord, lastExpirationRecord) ||
                other.lastExpirationRecord == lastExpirationRecord) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, numberOfExpirations, lastExpirationRecord, id);

  @override
  String toString() {
    return 'LeadExpirationModel(numberOfExpirations: $numberOfExpirations, lastExpirationRecord: $lastExpirationRecord, id: $id)';
  }
}

/// @nodoc
abstract mixin class $LeadExpirationModelCopyWith<$Res> {
  factory $LeadExpirationModelCopyWith(
          LeadExpirationModel value, $Res Function(LeadExpirationModel) _then) =
      _$LeadExpirationModelCopyWithImpl;
  @useResult
  $Res call(
      {int numberOfExpirations,
      ExpirationRecord lastExpirationRecord,
      String id});

  $ExpirationRecordCopyWith<$Res> get lastExpirationRecord;
}

/// @nodoc
class _$LeadExpirationModelCopyWithImpl<$Res>
    implements $LeadExpirationModelCopyWith<$Res> {
  _$LeadExpirationModelCopyWithImpl(this._self, this._then);

  final LeadExpirationModel _self;
  final $Res Function(LeadExpirationModel) _then;

  /// Create a copy of LeadExpirationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfExpirations = null,
    Object? lastExpirationRecord = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      numberOfExpirations: null == numberOfExpirations
          ? _self.numberOfExpirations
          : numberOfExpirations // ignore: cast_nullable_to_non_nullable
              as int,
      lastExpirationRecord: null == lastExpirationRecord
          ? _self.lastExpirationRecord
          : lastExpirationRecord // ignore: cast_nullable_to_non_nullable
              as ExpirationRecord,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of LeadExpirationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpirationRecordCopyWith<$Res> get lastExpirationRecord {
    return $ExpirationRecordCopyWith<$Res>(_self.lastExpirationRecord, (value) {
      return _then(_self.copyWith(lastExpirationRecord: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LeadExpirationModel implements LeadExpirationModel {
  const _LeadExpirationModel(
      {required this.numberOfExpirations,
      required this.lastExpirationRecord,
      required this.id});
  factory _LeadExpirationModel.fromJson(Map<String, dynamic> json) =>
      _$LeadExpirationModelFromJson(json);

  @override
  final int numberOfExpirations;
  @override
  final ExpirationRecord lastExpirationRecord;
  @override
  final String id;

  /// Create a copy of LeadExpirationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadExpirationModelCopyWith<_LeadExpirationModel> get copyWith =>
      __$LeadExpirationModelCopyWithImpl<_LeadExpirationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadExpirationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadExpirationModel &&
            (identical(other.numberOfExpirations, numberOfExpirations) ||
                other.numberOfExpirations == numberOfExpirations) &&
            (identical(other.lastExpirationRecord, lastExpirationRecord) ||
                other.lastExpirationRecord == lastExpirationRecord) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, numberOfExpirations, lastExpirationRecord, id);

  @override
  String toString() {
    return 'LeadExpirationModel(numberOfExpirations: $numberOfExpirations, lastExpirationRecord: $lastExpirationRecord, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$LeadExpirationModelCopyWith<$Res>
    implements $LeadExpirationModelCopyWith<$Res> {
  factory _$LeadExpirationModelCopyWith(_LeadExpirationModel value,
          $Res Function(_LeadExpirationModel) _then) =
      __$LeadExpirationModelCopyWithImpl;
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
class __$LeadExpirationModelCopyWithImpl<$Res>
    implements _$LeadExpirationModelCopyWith<$Res> {
  __$LeadExpirationModelCopyWithImpl(this._self, this._then);

  final _LeadExpirationModel _self;
  final $Res Function(_LeadExpirationModel) _then;

  /// Create a copy of LeadExpirationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? numberOfExpirations = null,
    Object? lastExpirationRecord = null,
    Object? id = null,
  }) {
    return _then(_LeadExpirationModel(
      numberOfExpirations: null == numberOfExpirations
          ? _self.numberOfExpirations
          : numberOfExpirations // ignore: cast_nullable_to_non_nullable
              as int,
      lastExpirationRecord: null == lastExpirationRecord
          ? _self.lastExpirationRecord
          : lastExpirationRecord // ignore: cast_nullable_to_non_nullable
              as ExpirationRecord,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of LeadExpirationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpirationRecordCopyWith<$Res> get lastExpirationRecord {
    return $ExpirationRecordCopyWith<$Res>(_self.lastExpirationRecord, (value) {
      return _then(_self.copyWith(lastExpirationRecord: value));
    });
  }
}

/// @nodoc
mixin _$ExpirationRecord {
  @JsonKey(name: '_id')
  String get id;
  AgentModel get agent;
  LeadModel get lead;
  String get typeOfExpiration;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of ExpirationRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpirationRecordCopyWith<ExpirationRecord> get copyWith =>
      _$ExpirationRecordCopyWithImpl<ExpirationRecord>(
          this as ExpirationRecord, _$identity);

  /// Serializes this ExpirationRecord to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpirationRecord &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, agent, lead, typeOfExpiration, createdAt, updatedAt);

  @override
  String toString() {
    return 'ExpirationRecord(id: $id, agent: $agent, lead: $lead, typeOfExpiration: $typeOfExpiration, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ExpirationRecordCopyWith<$Res> {
  factory $ExpirationRecordCopyWith(
          ExpirationRecord value, $Res Function(ExpirationRecord) _then) =
      _$ExpirationRecordCopyWithImpl;
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
class _$ExpirationRecordCopyWithImpl<$Res>
    implements $ExpirationRecordCopyWith<$Res> {
  _$ExpirationRecordCopyWithImpl(this._self, this._then);

  final ExpirationRecord _self;
  final $Res Function(ExpirationRecord) _then;

  /// Create a copy of ExpirationRecord
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      agent: null == agent
          ? _self.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as AgentModel,
      lead: null == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as LeadModel,
      typeOfExpiration: null == typeOfExpiration
          ? _self.typeOfExpiration
          : typeOfExpiration // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of ExpirationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentModelCopyWith<$Res> get agent {
    return $AgentModelCopyWith<$Res>(_self.agent, (value) {
      return _then(_self.copyWith(agent: value));
    });
  }

  /// Create a copy of ExpirationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadModelCopyWith<$Res> get lead {
    return $LeadModelCopyWith<$Res>(_self.lead, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ExpirationRecord implements ExpirationRecord {
  const _ExpirationRecord(
      {@JsonKey(name: '_id') required this.id,
      required this.agent,
      required this.lead,
      required this.typeOfExpiration,
      required this.createdAt,
      required this.updatedAt});
  factory _ExpirationRecord.fromJson(Map<String, dynamic> json) =>
      _$ExpirationRecordFromJson(json);

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

  /// Create a copy of ExpirationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpirationRecordCopyWith<_ExpirationRecord> get copyWith =>
      __$ExpirationRecordCopyWithImpl<_ExpirationRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpirationRecordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpirationRecord &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, agent, lead, typeOfExpiration, createdAt, updatedAt);

  @override
  String toString() {
    return 'ExpirationRecord(id: $id, agent: $agent, lead: $lead, typeOfExpiration: $typeOfExpiration, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ExpirationRecordCopyWith<$Res>
    implements $ExpirationRecordCopyWith<$Res> {
  factory _$ExpirationRecordCopyWith(
          _ExpirationRecord value, $Res Function(_ExpirationRecord) _then) =
      __$ExpirationRecordCopyWithImpl;
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
class __$ExpirationRecordCopyWithImpl<$Res>
    implements _$ExpirationRecordCopyWith<$Res> {
  __$ExpirationRecordCopyWithImpl(this._self, this._then);

  final _ExpirationRecord _self;
  final $Res Function(_ExpirationRecord) _then;

  /// Create a copy of ExpirationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? agent = null,
    Object? lead = null,
    Object? typeOfExpiration = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_ExpirationRecord(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      agent: null == agent
          ? _self.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as AgentModel,
      lead: null == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as LeadModel,
      typeOfExpiration: null == typeOfExpiration
          ? _self.typeOfExpiration
          : typeOfExpiration // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of ExpirationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentModelCopyWith<$Res> get agent {
    return $AgentModelCopyWith<$Res>(_self.agent, (value) {
      return _then(_self.copyWith(agent: value));
    });
  }

  /// Create a copy of ExpirationRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadModelCopyWith<$Res> get lead {
    return $LeadModelCopyWith<$Res>(_self.lead, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }
}

/// @nodoc
mixin _$AgentModel {
  String get id;
  String get userId;
  String get name;
  String get phone;
  String? get photo;
  String? get leader;
  bool get isLeader;
  @JsonKey(name: '_id')
  String get recordId;

  /// Create a copy of AgentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AgentModelCopyWith<AgentModel> get copyWith =>
      _$AgentModelCopyWithImpl<AgentModel>(this as AgentModel, _$identity);

  /// Serializes this AgentModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AgentModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, name, phone, photo, leader, isLeader, recordId);

  @override
  String toString() {
    return 'AgentModel(id: $id, userId: $userId, name: $name, phone: $phone, photo: $photo, leader: $leader, isLeader: $isLeader, recordId: $recordId)';
  }
}

/// @nodoc
abstract mixin class $AgentModelCopyWith<$Res> {
  factory $AgentModelCopyWith(
          AgentModel value, $Res Function(AgentModel) _then) =
      _$AgentModelCopyWithImpl;
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
class _$AgentModelCopyWithImpl<$Res> implements $AgentModelCopyWith<$Res> {
  _$AgentModelCopyWithImpl(this._self, this._then);

  final AgentModel _self;
  final $Res Function(AgentModel) _then;

  /// Create a copy of AgentModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      leader: freezed == leader
          ? _self.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String?,
      isLeader: null == isLeader
          ? _self.isLeader
          : isLeader // ignore: cast_nullable_to_non_nullable
              as bool,
      recordId: null == recordId
          ? _self.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AgentModel implements AgentModel {
  const _AgentModel(
      {required this.id,
      required this.userId,
      required this.name,
      required this.phone,
      this.photo,
      this.leader,
      this.isLeader = false,
      @JsonKey(name: '_id') required this.recordId});
  factory _AgentModel.fromJson(Map<String, dynamic> json) =>
      _$AgentModelFromJson(json);

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

  /// Create a copy of AgentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AgentModelCopyWith<_AgentModel> get copyWith =>
      __$AgentModelCopyWithImpl<_AgentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AgentModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AgentModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, name, phone, photo, leader, isLeader, recordId);

  @override
  String toString() {
    return 'AgentModel(id: $id, userId: $userId, name: $name, phone: $phone, photo: $photo, leader: $leader, isLeader: $isLeader, recordId: $recordId)';
  }
}

/// @nodoc
abstract mixin class _$AgentModelCopyWith<$Res>
    implements $AgentModelCopyWith<$Res> {
  factory _$AgentModelCopyWith(
          _AgentModel value, $Res Function(_AgentModel) _then) =
      __$AgentModelCopyWithImpl;
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
class __$AgentModelCopyWithImpl<$Res> implements _$AgentModelCopyWith<$Res> {
  __$AgentModelCopyWithImpl(this._self, this._then);

  final _AgentModel _self;
  final $Res Function(_AgentModel) _then;

  /// Create a copy of AgentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_AgentModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      leader: freezed == leader
          ? _self.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String?,
      isLeader: null == isLeader
          ? _self.isLeader
          : isLeader // ignore: cast_nullable_to_non_nullable
              as bool,
      recordId: null == recordId
          ? _self.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$LeadModel {
  String get id;
  String get name;
  String get phone;
  String get leadStatus;
  LeadSourceModel get leadSource;
  String get last_activity_type;
  DateTime get last_activity_date;
  bool get last_activity_is_complete;
  @JsonKey(name: '_id')
  String get recordId;

  /// Create a copy of LeadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadModelCopyWith<LeadModel> get copyWith =>
      _$LeadModelCopyWithImpl<LeadModel>(this as LeadModel, _$identity);

  /// Serializes this LeadModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'LeadModel(id: $id, name: $name, phone: $phone, leadStatus: $leadStatus, leadSource: $leadSource, last_activity_type: $last_activity_type, last_activity_date: $last_activity_date, last_activity_is_complete: $last_activity_is_complete, recordId: $recordId)';
  }
}

/// @nodoc
abstract mixin class $LeadModelCopyWith<$Res> {
  factory $LeadModelCopyWith(LeadModel value, $Res Function(LeadModel) _then) =
      _$LeadModelCopyWithImpl;
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
class _$LeadModelCopyWithImpl<$Res> implements $LeadModelCopyWith<$Res> {
  _$LeadModelCopyWithImpl(this._self, this._then);

  final LeadModel _self;
  final $Res Function(LeadModel) _then;

  /// Create a copy of LeadModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: null == leadStatus
          ? _self.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as String,
      leadSource: null == leadSource
          ? _self.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as LeadSourceModel,
      last_activity_type: null == last_activity_type
          ? _self.last_activity_type
          : last_activity_type // ignore: cast_nullable_to_non_nullable
              as String,
      last_activity_date: null == last_activity_date
          ? _self.last_activity_date
          : last_activity_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      last_activity_is_complete: null == last_activity_is_complete
          ? _self.last_activity_is_complete
          : last_activity_is_complete // ignore: cast_nullable_to_non_nullable
              as bool,
      recordId: null == recordId
          ? _self.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of LeadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadSourceModelCopyWith<$Res> get leadSource {
    return $LeadSourceModelCopyWith<$Res>(_self.leadSource, (value) {
      return _then(_self.copyWith(leadSource: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LeadModel implements LeadModel {
  const _LeadModel(
      {required this.id,
      required this.name,
      required this.phone,
      required this.leadStatus,
      required this.leadSource,
      required this.last_activity_type,
      required this.last_activity_date,
      required this.last_activity_is_complete,
      @JsonKey(name: '_id') required this.recordId});
  factory _LeadModel.fromJson(Map<String, dynamic> json) =>
      _$LeadModelFromJson(json);

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

  /// Create a copy of LeadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadModelCopyWith<_LeadModel> get copyWith =>
      __$LeadModelCopyWithImpl<_LeadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'LeadModel(id: $id, name: $name, phone: $phone, leadStatus: $leadStatus, leadSource: $leadSource, last_activity_type: $last_activity_type, last_activity_date: $last_activity_date, last_activity_is_complete: $last_activity_is_complete, recordId: $recordId)';
  }
}

/// @nodoc
abstract mixin class _$LeadModelCopyWith<$Res>
    implements $LeadModelCopyWith<$Res> {
  factory _$LeadModelCopyWith(
          _LeadModel value, $Res Function(_LeadModel) _then) =
      __$LeadModelCopyWithImpl;
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
class __$LeadModelCopyWithImpl<$Res> implements _$LeadModelCopyWith<$Res> {
  __$LeadModelCopyWithImpl(this._self, this._then);

  final _LeadModel _self;
  final $Res Function(_LeadModel) _then;

  /// Create a copy of LeadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_LeadModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: null == leadStatus
          ? _self.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as String,
      leadSource: null == leadSource
          ? _self.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as LeadSourceModel,
      last_activity_type: null == last_activity_type
          ? _self.last_activity_type
          : last_activity_type // ignore: cast_nullable_to_non_nullable
              as String,
      last_activity_date: null == last_activity_date
          ? _self.last_activity_date
          : last_activity_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      last_activity_is_complete: null == last_activity_is_complete
          ? _self.last_activity_is_complete
          : last_activity_is_complete // ignore: cast_nullable_to_non_nullable
              as bool,
      recordId: null == recordId
          ? _self.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of LeadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadSourceModelCopyWith<$Res> get leadSource {
    return $LeadSourceModelCopyWith<$Res>(_self.leadSource, (value) {
      return _then(_self.copyWith(leadSource: value));
    });
  }
}

/// @nodoc
mixin _$LeadSourceModel {
  String get id;
  String get name;
  String get leadSourceType;
  int get weight;
  @JsonKey(name: '_id')
  String get recordId;

  /// Create a copy of LeadSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadSourceModelCopyWith<LeadSourceModel> get copyWith =>
      _$LeadSourceModelCopyWithImpl<LeadSourceModel>(
          this as LeadSourceModel, _$identity);

  /// Serializes this LeadSourceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadSourceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.leadSourceType, leadSourceType) ||
                other.leadSourceType == leadSourceType) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, leadSourceType, weight, recordId);

  @override
  String toString() {
    return 'LeadSourceModel(id: $id, name: $name, leadSourceType: $leadSourceType, weight: $weight, recordId: $recordId)';
  }
}

/// @nodoc
abstract mixin class $LeadSourceModelCopyWith<$Res> {
  factory $LeadSourceModelCopyWith(
          LeadSourceModel value, $Res Function(LeadSourceModel) _then) =
      _$LeadSourceModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String leadSourceType,
      int weight,
      @JsonKey(name: '_id') String recordId});
}

/// @nodoc
class _$LeadSourceModelCopyWithImpl<$Res>
    implements $LeadSourceModelCopyWith<$Res> {
  _$LeadSourceModelCopyWithImpl(this._self, this._then);

  final LeadSourceModel _self;
  final $Res Function(LeadSourceModel) _then;

  /// Create a copy of LeadSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? leadSourceType = null,
    Object? weight = null,
    Object? recordId = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leadSourceType: null == leadSourceType
          ? _self.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      recordId: null == recordId
          ? _self.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LeadSourceModel implements LeadSourceModel {
  const _LeadSourceModel(
      {required this.id,
      required this.name,
      required this.leadSourceType,
      required this.weight,
      @JsonKey(name: '_id') required this.recordId});
  factory _LeadSourceModel.fromJson(Map<String, dynamic> json) =>
      _$LeadSourceModelFromJson(json);

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

  /// Create a copy of LeadSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadSourceModelCopyWith<_LeadSourceModel> get copyWith =>
      __$LeadSourceModelCopyWithImpl<_LeadSourceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadSourceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadSourceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.leadSourceType, leadSourceType) ||
                other.leadSourceType == leadSourceType) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, leadSourceType, weight, recordId);

  @override
  String toString() {
    return 'LeadSourceModel(id: $id, name: $name, leadSourceType: $leadSourceType, weight: $weight, recordId: $recordId)';
  }
}

/// @nodoc
abstract mixin class _$LeadSourceModelCopyWith<$Res>
    implements $LeadSourceModelCopyWith<$Res> {
  factory _$LeadSourceModelCopyWith(
          _LeadSourceModel value, $Res Function(_LeadSourceModel) _then) =
      __$LeadSourceModelCopyWithImpl;
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
class __$LeadSourceModelCopyWithImpl<$Res>
    implements _$LeadSourceModelCopyWith<$Res> {
  __$LeadSourceModelCopyWithImpl(this._self, this._then);

  final _LeadSourceModel _self;
  final $Res Function(_LeadSourceModel) _then;

  /// Create a copy of LeadSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? leadSourceType = null,
    Object? weight = null,
    Object? recordId = null,
  }) {
    return _then(_LeadSourceModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leadSourceType: null == leadSourceType
          ? _self.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      recordId: null == recordId
          ? _self.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
