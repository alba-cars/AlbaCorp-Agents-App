// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketImpl _$$TicketImplFromJson(Map<String, dynamic> json) => _$TicketImpl(
      id: readId(json, 'id') as String,
      agentId: json['agentId'] as String,
      assignedUser: json['assignedUser'],
      department: json['department'] == null
          ? null
          : Department.fromJson(json['department'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$TicketTypeEnumMap, json['type'],
              unknownValue: TicketType.Unknown) ??
          TicketType.Unknown,
      message: json['message'] as String?,
      requestType: $enumDecode(_$RequestTypeEnumMap, json['requestType'],
          unknownValue: RequestType.other),
      priority:
          $enumDecodeNullable(_$TicketPriorityEnumMap, json['priority']) ??
              TicketPriority.NotSpecified,
      createdBy: $enumDecodeNullable(_$CreatedByEnumMap, json['createdBy']) ??
          CreatedBy.Agent,
      description: json['description'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: $enumDecodeNullable(_$TicketStatusEnumMap, json['status']) ??
          TicketStatus.Unassigned,
      dealI: json['dealI'] as String?,
      latestMessage: json['latestMessage'] == null
          ? null
          : TicketMessage.fromJson(
              json['latestMessage'] as Map<String, dynamic>),
      serialNumber: json['serialNumber'] as String,
      property: json['property'] == null
          ? null
          : Property.fromJson(json['property'] as Map<String, dynamic>),
      lead: json['lead'] == null
          ? null
          : Lead.fromJson(json['lead'] as Map<String, dynamic>),
      deal: json['deal'] == null
          ? null
          : Deal.fromJson(json['deal'] as Map<String, dynamic>),
      listingAcquiredId: json['listingAcquiredId'] as String?,
      masterTickictetId: json['masterTickictetId'] as String?,
      admin: json['admin'] == null
          ? null
          : User.fromJson(json['admin'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TicketImplToJson(_$TicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'agentId': instance.agentId,
      'assignedUser': instance.assignedUser,
      'department': instance.department,
      'type': _$TicketTypeEnumMap[instance.type]!,
      'message': instance.message,
      'requestType': _$RequestTypeEnumMap[instance.requestType]!,
      'priority': _$TicketPriorityEnumMap[instance.priority]!,
      'createdBy': _$CreatedByEnumMap[instance.createdBy]!,
      'description': instance.description,
      'attachments': instance.attachments,
      'status': _$TicketStatusEnumMap[instance.status]!,
      'dealI': instance.dealI,
      'latestMessage': instance.latestMessage,
      'serialNumber': instance.serialNumber,
      'property': instance.property,
      'lead': instance.lead,
      'deal': instance.deal,
      'listingAcquiredId': instance.listingAcquiredId,
      'masterTickictetId': instance.masterTickictetId,
      'admin': instance.admin,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$TicketTypeEnumMap = {
  TicketType.MasterTicket: 'MasterTicket',
  TicketType.SubTicket: 'SubTicket',
  TicketType.Unknown: 'Unknown',
};

const _$RequestTypeEnumMap = {
  RequestType.reduceIncreasePrice: 'Reduce/Increase Price',
  RequestType.unpublishedProperty: 'Unpublished Property (Rented/Sold Out)',
  RequestType.correctDetailsDescription: 'Correct Details/Description',
  RequestType.requestLetters: 'Request Letters (NOC/etc)',
  RequestType.publishListing: 'Publish Listing',
  RequestType.other: 'Other',
};

const _$TicketPriorityEnumMap = {
  TicketPriority.Critical: 'Critical',
  TicketPriority.Major: 'Major',
  TicketPriority.Minor: 'Minor',
  TicketPriority.NotSpecified: 'Not Specified',
};

const _$CreatedByEnumMap = {
  CreatedBy.Admin: 'Admin',
  CreatedBy.Agent: 'Agent',
};

const _$TicketStatusEnumMap = {
  TicketStatus.Unassigned: 'Unassigned',
  TicketStatus.Open: 'Open',
  TicketStatus.InProgress: 'In Progress',
  TicketStatus.Resolved: 'Resolved',
  TicketStatus.Closed: 'Closed',
};

_$TicketMessageImpl _$$TicketMessageImplFromJson(Map<String, dynamic> json) =>
    _$TicketMessageImpl(
      id: json['_id'] as String,
      ticketId: json['ticketId'] as String,
      senderId: json['senderId'] as String,
      message: json['message'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TicketMessageImplToJson(_$TicketMessageImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'ticketId': instance.ticketId,
      'senderId': instance.senderId,
      'message': instance.message,
      'attachments': instance.attachments,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
