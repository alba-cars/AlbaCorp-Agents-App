// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ticket implements DiagnosticableTreeMixin {
  @JsonKey(readValue: readId)
  String get id;
  String get agentId;
  dynamic get assignedUser;
  Department? get department;
  @JsonKey(
      unknownEnumValue: TicketType.Unknown, defaultValue: TicketType.Unknown)
  TicketType get type;
  String? get message;
  @JsonKey(unknownEnumValue: RequestType.other)
  RequestType get requestType;
  TicketPriority get priority;
  CreatedBy get createdBy;
  String get description;
  List<String>? get attachments;
  TicketStatus get status;
  String? get dealI;
  TicketMessage? get latestMessage;
  String get serialNumber;
  Property? get property;
  Lead? get lead;
  Deal? get deal;
  String? get listingAcquiredId;
  String? get masterTickictetId;
  User? get admin;
  DateTime? get createdAt;
  DateTime? get updatedAt;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TicketCopyWith<Ticket> get copyWith =>
      _$TicketCopyWithImpl<Ticket>(this as Ticket, _$identity);

  /// Serializes this Ticket to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Ticket'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('agentId', agentId))
      ..add(DiagnosticsProperty('assignedUser', assignedUser))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('requestType', requestType))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('attachments', attachments))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('dealI', dealI))
      ..add(DiagnosticsProperty('latestMessage', latestMessage))
      ..add(DiagnosticsProperty('serialNumber', serialNumber))
      ..add(DiagnosticsProperty('property', property))
      ..add(DiagnosticsProperty('lead', lead))
      ..add(DiagnosticsProperty('deal', deal))
      ..add(DiagnosticsProperty('listingAcquiredId', listingAcquiredId))
      ..add(DiagnosticsProperty('masterTickictetId', masterTickictetId))
      ..add(DiagnosticsProperty('admin', admin))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Ticket &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            const DeepCollectionEquality()
                .equals(other.assignedUser, assignedUser) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.requestType, requestType) ||
                other.requestType == requestType) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.attachments, attachments) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dealI, dealI) || other.dealI == dealI) &&
            (identical(other.latestMessage, latestMessage) ||
                other.latestMessage == latestMessage) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.listingAcquiredId, listingAcquiredId) ||
                other.listingAcquiredId == listingAcquiredId) &&
            (identical(other.masterTickictetId, masterTickictetId) ||
                other.masterTickictetId == masterTickictetId) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        agentId,
        const DeepCollectionEquality().hash(assignedUser),
        department,
        type,
        message,
        requestType,
        priority,
        createdBy,
        description,
        const DeepCollectionEquality().hash(attachments),
        status,
        dealI,
        latestMessage,
        serialNumber,
        property,
        lead,
        deal,
        listingAcquiredId,
        masterTickictetId,
        admin,
        createdAt,
        updatedAt
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ticket(id: $id, agentId: $agentId, assignedUser: $assignedUser, department: $department, type: $type, message: $message, requestType: $requestType, priority: $priority, createdBy: $createdBy, description: $description, attachments: $attachments, status: $status, dealI: $dealI, latestMessage: $latestMessage, serialNumber: $serialNumber, property: $property, lead: $lead, deal: $deal, listingAcquiredId: $listingAcquiredId, masterTickictetId: $masterTickictetId, admin: $admin, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) _then) =
      _$TicketCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String agentId,
      dynamic assignedUser,
      Department? department,
      @JsonKey(
          unknownEnumValue: TicketType.Unknown,
          defaultValue: TicketType.Unknown)
      TicketType type,
      String? message,
      @JsonKey(unknownEnumValue: RequestType.other) RequestType requestType,
      TicketPriority priority,
      CreatedBy createdBy,
      String description,
      List<String>? attachments,
      TicketStatus status,
      String? dealI,
      TicketMessage? latestMessage,
      String serialNumber,
      Property? property,
      Lead? lead,
      Deal? deal,
      String? listingAcquiredId,
      String? masterTickictetId,
      User? admin,
      DateTime? createdAt,
      DateTime? updatedAt});

  $DepartmentCopyWith<$Res>? get department;
  $TicketMessageCopyWith<$Res>? get latestMessage;
  $PropertyCopyWith<$Res>? get property;
  $LeadCopyWith<$Res>? get lead;
  $DealCopyWith<$Res>? get deal;
  $UserCopyWith<$Res>? get admin;
}

/// @nodoc
class _$TicketCopyWithImpl<$Res> implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._self, this._then);

  final Ticket _self;
  final $Res Function(Ticket) _then;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? agentId = null,
    Object? assignedUser = freezed,
    Object? department = freezed,
    Object? type = null,
    Object? message = freezed,
    Object? requestType = null,
    Object? priority = null,
    Object? createdBy = null,
    Object? description = null,
    Object? attachments = freezed,
    Object? status = null,
    Object? dealI = freezed,
    Object? latestMessage = freezed,
    Object? serialNumber = null,
    Object? property = freezed,
    Object? lead = freezed,
    Object? deal = freezed,
    Object? listingAcquiredId = freezed,
    Object? masterTickictetId = freezed,
    Object? admin = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: null == agentId
          ? _self.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      assignedUser: freezed == assignedUser
          ? _self.assignedUser
          : assignedUser // ignore: cast_nullable_to_non_nullable
              as dynamic,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketType,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      requestType: null == requestType
          ? _self.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as RequestType,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TicketPriority,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _self.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      dealI: freezed == dealI
          ? _self.dealI
          : dealI // ignore: cast_nullable_to_non_nullable
              as String?,
      latestMessage: freezed == latestMessage
          ? _self.latestMessage
          : latestMessage // ignore: cast_nullable_to_non_nullable
              as TicketMessage?,
      serialNumber: null == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      property: freezed == property
          ? _self.property
          : property // ignore: cast_nullable_to_non_nullable
              as Property?,
      lead: freezed == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      deal: freezed == deal
          ? _self.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      listingAcquiredId: freezed == listingAcquiredId
          ? _self.listingAcquiredId
          : listingAcquiredId // ignore: cast_nullable_to_non_nullable
              as String?,
      masterTickictetId: freezed == masterTickictetId
          ? _self.masterTickictetId
          : masterTickictetId // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: freezed == admin
          ? _self.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res>? get department {
    if (_self.department == null) {
      return null;
    }

    return $DepartmentCopyWith<$Res>(_self.department!, (value) {
      return _then(_self.copyWith(department: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketMessageCopyWith<$Res>? get latestMessage {
    if (_self.latestMessage == null) {
      return null;
    }

    return $TicketMessageCopyWith<$Res>(_self.latestMessage!, (value) {
      return _then(_self.copyWith(latestMessage: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get property {
    if (_self.property == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_self.property!, (value) {
      return _then(_self.copyWith(property: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_self.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.lead!, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get deal {
    if (_self.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_self.deal!, (value) {
      return _then(_self.copyWith(deal: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get admin {
    if (_self.admin == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.admin!, (value) {
      return _then(_self.copyWith(admin: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Ticket with DiagnosticableTreeMixin implements Ticket {
  const _Ticket(
      {@JsonKey(readValue: readId) required this.id,
      required this.agentId,
      this.assignedUser,
      this.department,
      @JsonKey(
          unknownEnumValue: TicketType.Unknown,
          defaultValue: TicketType.Unknown)
      required this.type,
      this.message,
      @JsonKey(unknownEnumValue: RequestType.other) required this.requestType,
      this.priority = TicketPriority.NotSpecified,
      this.createdBy = CreatedBy.Agent,
      required this.description,
      final List<String>? attachments,
      this.status = TicketStatus.Unassigned,
      this.dealI,
      this.latestMessage,
      required this.serialNumber,
      this.property,
      this.lead,
      this.deal,
      this.listingAcquiredId,
      this.masterTickictetId,
      this.admin,
      this.createdAt,
      this.updatedAt})
      : _attachments = attachments;
  factory _Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final String agentId;
  @override
  final dynamic assignedUser;
  @override
  final Department? department;
  @override
  @JsonKey(
      unknownEnumValue: TicketType.Unknown, defaultValue: TicketType.Unknown)
  final TicketType type;
  @override
  final String? message;
  @override
  @JsonKey(unknownEnumValue: RequestType.other)
  final RequestType requestType;
  @override
  @JsonKey()
  final TicketPriority priority;
  @override
  @JsonKey()
  final CreatedBy createdBy;
  @override
  final String description;
  final List<String>? _attachments;
  @override
  List<String>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final TicketStatus status;
  @override
  final String? dealI;
  @override
  final TicketMessage? latestMessage;
  @override
  final String serialNumber;
  @override
  final Property? property;
  @override
  final Lead? lead;
  @override
  final Deal? deal;
  @override
  final String? listingAcquiredId;
  @override
  final String? masterTickictetId;
  @override
  final User? admin;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TicketCopyWith<_Ticket> get copyWith =>
      __$TicketCopyWithImpl<_Ticket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TicketToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Ticket'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('agentId', agentId))
      ..add(DiagnosticsProperty('assignedUser', assignedUser))
      ..add(DiagnosticsProperty('department', department))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('requestType', requestType))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('attachments', attachments))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('dealI', dealI))
      ..add(DiagnosticsProperty('latestMessage', latestMessage))
      ..add(DiagnosticsProperty('serialNumber', serialNumber))
      ..add(DiagnosticsProperty('property', property))
      ..add(DiagnosticsProperty('lead', lead))
      ..add(DiagnosticsProperty('deal', deal))
      ..add(DiagnosticsProperty('listingAcquiredId', listingAcquiredId))
      ..add(DiagnosticsProperty('masterTickictetId', masterTickictetId))
      ..add(DiagnosticsProperty('admin', admin))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ticket &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            const DeepCollectionEquality()
                .equals(other.assignedUser, assignedUser) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.requestType, requestType) ||
                other.requestType == requestType) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dealI, dealI) || other.dealI == dealI) &&
            (identical(other.latestMessage, latestMessage) ||
                other.latestMessage == latestMessage) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.listingAcquiredId, listingAcquiredId) ||
                other.listingAcquiredId == listingAcquiredId) &&
            (identical(other.masterTickictetId, masterTickictetId) ||
                other.masterTickictetId == masterTickictetId) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        agentId,
        const DeepCollectionEquality().hash(assignedUser),
        department,
        type,
        message,
        requestType,
        priority,
        createdBy,
        description,
        const DeepCollectionEquality().hash(_attachments),
        status,
        dealI,
        latestMessage,
        serialNumber,
        property,
        lead,
        deal,
        listingAcquiredId,
        masterTickictetId,
        admin,
        createdAt,
        updatedAt
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ticket(id: $id, agentId: $agentId, assignedUser: $assignedUser, department: $department, type: $type, message: $message, requestType: $requestType, priority: $priority, createdBy: $createdBy, description: $description, attachments: $attachments, status: $status, dealI: $dealI, latestMessage: $latestMessage, serialNumber: $serialNumber, property: $property, lead: $lead, deal: $deal, listingAcquiredId: $listingAcquiredId, masterTickictetId: $masterTickictetId, admin: $admin, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$TicketCopyWith(_Ticket value, $Res Function(_Ticket) _then) =
      __$TicketCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String agentId,
      dynamic assignedUser,
      Department? department,
      @JsonKey(
          unknownEnumValue: TicketType.Unknown,
          defaultValue: TicketType.Unknown)
      TicketType type,
      String? message,
      @JsonKey(unknownEnumValue: RequestType.other) RequestType requestType,
      TicketPriority priority,
      CreatedBy createdBy,
      String description,
      List<String>? attachments,
      TicketStatus status,
      String? dealI,
      TicketMessage? latestMessage,
      String serialNumber,
      Property? property,
      Lead? lead,
      Deal? deal,
      String? listingAcquiredId,
      String? masterTickictetId,
      User? admin,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $DepartmentCopyWith<$Res>? get department;
  @override
  $TicketMessageCopyWith<$Res>? get latestMessage;
  @override
  $PropertyCopyWith<$Res>? get property;
  @override
  $LeadCopyWith<$Res>? get lead;
  @override
  $DealCopyWith<$Res>? get deal;
  @override
  $UserCopyWith<$Res>? get admin;
}

/// @nodoc
class __$TicketCopyWithImpl<$Res> implements _$TicketCopyWith<$Res> {
  __$TicketCopyWithImpl(this._self, this._then);

  final _Ticket _self;
  final $Res Function(_Ticket) _then;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? agentId = null,
    Object? assignedUser = freezed,
    Object? department = freezed,
    Object? type = null,
    Object? message = freezed,
    Object? requestType = null,
    Object? priority = null,
    Object? createdBy = null,
    Object? description = null,
    Object? attachments = freezed,
    Object? status = null,
    Object? dealI = freezed,
    Object? latestMessage = freezed,
    Object? serialNumber = null,
    Object? property = freezed,
    Object? lead = freezed,
    Object? deal = freezed,
    Object? listingAcquiredId = freezed,
    Object? masterTickictetId = freezed,
    Object? admin = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Ticket(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: null == agentId
          ? _self.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      assignedUser: freezed == assignedUser
          ? _self.assignedUser
          : assignedUser // ignore: cast_nullable_to_non_nullable
              as dynamic,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketType,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      requestType: null == requestType
          ? _self.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as RequestType,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TicketPriority,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _self._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      dealI: freezed == dealI
          ? _self.dealI
          : dealI // ignore: cast_nullable_to_non_nullable
              as String?,
      latestMessage: freezed == latestMessage
          ? _self.latestMessage
          : latestMessage // ignore: cast_nullable_to_non_nullable
              as TicketMessage?,
      serialNumber: null == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      property: freezed == property
          ? _self.property
          : property // ignore: cast_nullable_to_non_nullable
              as Property?,
      lead: freezed == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      deal: freezed == deal
          ? _self.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      listingAcquiredId: freezed == listingAcquiredId
          ? _self.listingAcquiredId
          : listingAcquiredId // ignore: cast_nullable_to_non_nullable
              as String?,
      masterTickictetId: freezed == masterTickictetId
          ? _self.masterTickictetId
          : masterTickictetId // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: freezed == admin
          ? _self.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res>? get department {
    if (_self.department == null) {
      return null;
    }

    return $DepartmentCopyWith<$Res>(_self.department!, (value) {
      return _then(_self.copyWith(department: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketMessageCopyWith<$Res>? get latestMessage {
    if (_self.latestMessage == null) {
      return null;
    }

    return $TicketMessageCopyWith<$Res>(_self.latestMessage!, (value) {
      return _then(_self.copyWith(latestMessage: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get property {
    if (_self.property == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_self.property!, (value) {
      return _then(_self.copyWith(property: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_self.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.lead!, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get deal {
    if (_self.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_self.deal!, (value) {
      return _then(_self.copyWith(deal: value));
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get admin {
    if (_self.admin == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.admin!, (value) {
      return _then(_self.copyWith(admin: value));
    });
  }
}

/// @nodoc
mixin _$TicketMessage implements DiagnosticableTreeMixin {
  @JsonKey(name: '_id')
  String get id;
  String get ticketId;
  String get senderId;
  String get message;
  List<String?>? get attachments;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt;

  /// Create a copy of TicketMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TicketMessageCopyWith<TicketMessage> get copyWith =>
      _$TicketMessageCopyWithImpl<TicketMessage>(
          this as TicketMessage, _$identity);

  /// Serializes this TicketMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TicketMessage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('ticketId', ticketId))
      ..add(DiagnosticsProperty('senderId', senderId))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('attachments', attachments))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TicketMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other.attachments, attachments) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, ticketId, senderId, message,
      const DeepCollectionEquality().hash(attachments), createdAt, updatedAt);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketMessage(id: $id, ticketId: $ticketId, senderId: $senderId, message: $message, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $TicketMessageCopyWith<$Res> {
  factory $TicketMessageCopyWith(
          TicketMessage value, $Res Function(TicketMessage) _then) =
      _$TicketMessageCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String ticketId,
      String senderId,
      String message,
      List<String?>? attachments,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt});
}

/// @nodoc
class _$TicketMessageCopyWithImpl<$Res>
    implements $TicketMessageCopyWith<$Res> {
  _$TicketMessageCopyWithImpl(this._self, this._then);

  final TicketMessage _self;
  final $Res Function(TicketMessage) _then;

  /// Create a copy of TicketMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ticketId = null,
    Object? senderId = null,
    Object? message = null,
    Object? attachments = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _self.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _self.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
}

/// @nodoc
@JsonSerializable()
class _TicketMessage with DiagnosticableTreeMixin implements TicketMessage {
  const _TicketMessage(
      {@JsonKey(name: '_id') required this.id,
      required this.ticketId,
      required this.senderId,
      required this.message,
      final List<String?>? attachments,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _attachments = attachments;
  factory _TicketMessage.fromJson(Map<String, dynamic> json) =>
      _$TicketMessageFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String ticketId;
  @override
  final String senderId;
  @override
  final String message;
  final List<String?>? _attachments;
  @override
  List<String?>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  /// Create a copy of TicketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TicketMessageCopyWith<_TicketMessage> get copyWith =>
      __$TicketMessageCopyWithImpl<_TicketMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TicketMessageToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TicketMessage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('ticketId', ticketId))
      ..add(DiagnosticsProperty('senderId', senderId))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('attachments', attachments))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TicketMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, ticketId, senderId, message,
      const DeepCollectionEquality().hash(_attachments), createdAt, updatedAt);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketMessage(id: $id, ticketId: $ticketId, senderId: $senderId, message: $message, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$TicketMessageCopyWith<$Res>
    implements $TicketMessageCopyWith<$Res> {
  factory _$TicketMessageCopyWith(
          _TicketMessage value, $Res Function(_TicketMessage) _then) =
      __$TicketMessageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String ticketId,
      String senderId,
      String message,
      List<String?>? attachments,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt});
}

/// @nodoc
class __$TicketMessageCopyWithImpl<$Res>
    implements _$TicketMessageCopyWith<$Res> {
  __$TicketMessageCopyWithImpl(this._self, this._then);

  final _TicketMessage _self;
  final $Res Function(_TicketMessage) _then;

  /// Create a copy of TicketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? ticketId = null,
    Object? senderId = null,
    Object? message = null,
    Object? attachments = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_TicketMessage(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _self.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _self._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
}

// dart format on
