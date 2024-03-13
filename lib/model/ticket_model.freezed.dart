// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return _Ticket.fromJson(json);
}

/// @nodoc
mixin _$Ticket {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  String get agentId => throw _privateConstructorUsedError;
  dynamic get assignedUser => throw _privateConstructorUsedError;
  Department? get department => throw _privateConstructorUsedError;
  @JsonKey(
      unknownEnumValue: TicketType.Unknown, defaultValue: TicketType.Unknown)
  TicketType get type => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: RequestType.other)
  RequestType get requestType => throw _privateConstructorUsedError;
  TicketPriority get priority => throw _privateConstructorUsedError;
  CreatedBy get createdBy => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String>? get attachments => throw _privateConstructorUsedError;
  TicketStatus get status => throw _privateConstructorUsedError;
  String? get dealI => throw _privateConstructorUsedError;
  TicketMessage? get latestMessage => throw _privateConstructorUsedError;
  String get serialNumber => throw _privateConstructorUsedError;
  Property? get property => throw _privateConstructorUsedError;
  Lead? get lead => throw _privateConstructorUsedError;
  Deal? get deal => throw _privateConstructorUsedError;
  String? get listingAcquiredId => throw _privateConstructorUsedError;
  String? get masterTickictetId => throw _privateConstructorUsedError;
  User? get admin => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketCopyWith<Ticket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
      _$TicketCopyWithImpl<$Res, Ticket>;
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
class _$TicketCopyWithImpl<$Res, $Val extends Ticket>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      assignedUser: freezed == assignedUser
          ? _value.assignedUser
          : assignedUser // ignore: cast_nullable_to_non_nullable
              as dynamic,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketType,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      requestType: null == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as RequestType,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TicketPriority,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      dealI: freezed == dealI
          ? _value.dealI
          : dealI // ignore: cast_nullable_to_non_nullable
              as String?,
      latestMessage: freezed == latestMessage
          ? _value.latestMessage
          : latestMessage // ignore: cast_nullable_to_non_nullable
              as TicketMessage?,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as Property?,
      lead: freezed == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      listingAcquiredId: freezed == listingAcquiredId
          ? _value.listingAcquiredId
          : listingAcquiredId // ignore: cast_nullable_to_non_nullable
              as String?,
      masterTickictetId: freezed == masterTickictetId
          ? _value.masterTickictetId
          : masterTickictetId // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res>? get department {
    if (_value.department == null) {
      return null;
    }

    return $DepartmentCopyWith<$Res>(_value.department!, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketMessageCopyWith<$Res>? get latestMessage {
    if (_value.latestMessage == null) {
      return null;
    }

    return $TicketMessageCopyWith<$Res>(_value.latestMessage!, (value) {
      return _then(_value.copyWith(latestMessage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get property {
    if (_value.property == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_value.property!, (value) {
      return _then(_value.copyWith(property: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_value.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_value.lead!, (value) {
      return _then(_value.copyWith(lead: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get deal {
    if (_value.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_value.deal!, (value) {
      return _then(_value.copyWith(deal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get admin {
    if (_value.admin == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.admin!, (value) {
      return _then(_value.copyWith(admin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketImplCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$$TicketImplCopyWith(
          _$TicketImpl value, $Res Function(_$TicketImpl) then) =
      __$$TicketImplCopyWithImpl<$Res>;
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
class __$$TicketImplCopyWithImpl<$Res>
    extends _$TicketCopyWithImpl<$Res, _$TicketImpl>
    implements _$$TicketImplCopyWith<$Res> {
  __$$TicketImplCopyWithImpl(
      _$TicketImpl _value, $Res Function(_$TicketImpl) _then)
      : super(_value, _then);

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
    return _then(_$TicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      assignedUser: freezed == assignedUser
          ? _value.assignedUser
          : assignedUser // ignore: cast_nullable_to_non_nullable
              as dynamic,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketType,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      requestType: null == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as RequestType,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TicketPriority,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as CreatedBy,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      dealI: freezed == dealI
          ? _value.dealI
          : dealI // ignore: cast_nullable_to_non_nullable
              as String?,
      latestMessage: freezed == latestMessage
          ? _value.latestMessage
          : latestMessage // ignore: cast_nullable_to_non_nullable
              as TicketMessage?,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as Property?,
      lead: freezed == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      listingAcquiredId: freezed == listingAcquiredId
          ? _value.listingAcquiredId
          : listingAcquiredId // ignore: cast_nullable_to_non_nullable
              as String?,
      masterTickictetId: freezed == masterTickictetId
          ? _value.masterTickictetId
          : masterTickictetId // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketImpl with DiagnosticableTreeMixin implements _Ticket {
  const _$TicketImpl(
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

  factory _$TicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketImplFromJson(json);

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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ticket(id: $id, agentId: $agentId, assignedUser: $assignedUser, department: $department, type: $type, message: $message, requestType: $requestType, priority: $priority, createdBy: $createdBy, description: $description, attachments: $attachments, status: $status, dealI: $dealI, latestMessage: $latestMessage, serialNumber: $serialNumber, property: $property, lead: $lead, deal: $deal, listingAcquiredId: $listingAcquiredId, masterTickictetId: $masterTickictetId, admin: $admin, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
            other is _$TicketImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
      __$$TicketImplCopyWithImpl<_$TicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketImplToJson(
      this,
    );
  }
}

abstract class _Ticket implements Ticket {
  const factory _Ticket(
      {@JsonKey(readValue: readId) required final String id,
      required final String agentId,
      final dynamic assignedUser,
      final Department? department,
      @JsonKey(
          unknownEnumValue: TicketType.Unknown,
          defaultValue: TicketType.Unknown)
      required final TicketType type,
      final String? message,
      @JsonKey(unknownEnumValue: RequestType.other)
      required final RequestType requestType,
      final TicketPriority priority,
      final CreatedBy createdBy,
      required final String description,
      final List<String>? attachments,
      final TicketStatus status,
      final String? dealI,
      final TicketMessage? latestMessage,
      required final String serialNumber,
      final Property? property,
      final Lead? lead,
      final Deal? deal,
      final String? listingAcquiredId,
      final String? masterTickictetId,
      final User? admin,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$TicketImpl;

  factory _Ticket.fromJson(Map<String, dynamic> json) = _$TicketImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  String get agentId;
  @override
  dynamic get assignedUser;
  @override
  Department? get department;
  @override
  @JsonKey(
      unknownEnumValue: TicketType.Unknown, defaultValue: TicketType.Unknown)
  TicketType get type;
  @override
  String? get message;
  @override
  @JsonKey(unknownEnumValue: RequestType.other)
  RequestType get requestType;
  @override
  TicketPriority get priority;
  @override
  CreatedBy get createdBy;
  @override
  String get description;
  @override
  List<String>? get attachments;
  @override
  TicketStatus get status;
  @override
  String? get dealI;
  @override
  TicketMessage? get latestMessage;
  @override
  String get serialNumber;
  @override
  Property? get property;
  @override
  Lead? get lead;
  @override
  Deal? get deal;
  @override
  String? get listingAcquiredId;
  @override
  String? get masterTickictetId;
  @override
  User? get admin;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketMessage _$TicketMessageFromJson(Map<String, dynamic> json) {
  return _TicketMessage.fromJson(json);
}

/// @nodoc
mixin _$TicketMessage {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get ticketId => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<String?>? get attachments => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketMessageCopyWith<TicketMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketMessageCopyWith<$Res> {
  factory $TicketMessageCopyWith(
          TicketMessage value, $Res Function(TicketMessage) then) =
      _$TicketMessageCopyWithImpl<$Res, TicketMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String ticketId,
      String senderId,
      String message,
      List<String?>? attachments,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt,
      @JsonKey(ignore: true) int? v});
}

/// @nodoc
class _$TicketMessageCopyWithImpl<$Res, $Val extends TicketMessage>
    implements $TicketMessageCopyWith<$Res> {
  _$TicketMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketMessageImplCopyWith<$Res>
    implements $TicketMessageCopyWith<$Res> {
  factory _$$TicketMessageImplCopyWith(
          _$TicketMessageImpl value, $Res Function(_$TicketMessageImpl) then) =
      __$$TicketMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String ticketId,
      String senderId,
      String message,
      List<String?>? attachments,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt,
      @JsonKey(ignore: true) int? v});
}

/// @nodoc
class __$$TicketMessageImplCopyWithImpl<$Res>
    extends _$TicketMessageCopyWithImpl<$Res, _$TicketMessageImpl>
    implements _$$TicketMessageImplCopyWith<$Res> {
  __$$TicketMessageImplCopyWithImpl(
      _$TicketMessageImpl _value, $Res Function(_$TicketMessageImpl) _then)
      : super(_value, _then);

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
    Object? v = freezed,
  }) {
    return _then(_$TicketMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketMessageImpl
    with DiagnosticableTreeMixin
    implements _TicketMessage {
  const _$TicketMessageImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.ticketId,
      required this.senderId,
      required this.message,
      final List<String?>? attachments,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt,
      @JsonKey(ignore: true) this.v})
      : _attachments = attachments;

  factory _$TicketMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketMessageImplFromJson(json);

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
  @override
  @JsonKey(ignore: true)
  final int? v;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketMessage(id: $id, ticketId: $ticketId, senderId: $senderId, message: $message, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TicketMessage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('ticketId', ticketId))
      ..add(DiagnosticsProperty('senderId', senderId))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('attachments', attachments))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('v', v));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketMessageImpl &&
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
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ticketId,
      senderId,
      message,
      const DeepCollectionEquality().hash(_attachments),
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketMessageImplCopyWith<_$TicketMessageImpl> get copyWith =>
      __$$TicketMessageImplCopyWithImpl<_$TicketMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketMessageImplToJson(
      this,
    );
  }
}

abstract class _TicketMessage implements TicketMessage {
  const factory _TicketMessage(
      {@JsonKey(name: '_id') required final String id,
      required final String ticketId,
      required final String senderId,
      required final String message,
      final List<String?>? attachments,
      @JsonKey(name: 'createdAt') required final DateTime createdAt,
      @JsonKey(name: 'updatedAt') required final DateTime updatedAt,
      @JsonKey(ignore: true) final int? v}) = _$TicketMessageImpl;

  factory _TicketMessage.fromJson(Map<String, dynamic> json) =
      _$TicketMessageImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get ticketId;
  @override
  String get senderId;
  @override
  String get message;
  @override
  List<String?>? get attachments;
  @override
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$TicketMessageImplCopyWith<_$TicketMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
