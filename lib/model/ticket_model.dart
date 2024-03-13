import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/department_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_model.dart';

import 'property_type_model.dart';
import 'user.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    @JsonKey(readValue: readId) required String id,
    required String agentId,
    dynamic assignedUser,
    Department? department,
    @JsonKey(
        unknownEnumValue: TicketType.Unknown, defaultValue: TicketType.Unknown)
    required TicketType type,
    String? message,
    @JsonKey(unknownEnumValue: RequestType.other)
    required RequestType requestType,
    @Default(TicketPriority.NotSpecified) TicketPriority priority,
    @Default(CreatedBy.Agent) CreatedBy createdBy,
    required String description,
    List<String>? attachments,
    @Default(TicketStatus.Unassigned) TicketStatus status,
    String? dealI,
    TicketMessage? latestMessage,
    required String serialNumber,
    Property? property,
    Lead? lead,
    Deal? deal,
    String? listingAcquiredId,
    String? masterTickictetId,
    User? admin,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}

@freezed
class TicketMessage with _$TicketMessage {
  const factory TicketMessage({
    @JsonKey(name: '_id') required String id,
    required String ticketId,
    required String senderId,
    required String message,
    List<String?>? attachments,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
    @JsonKey(ignore: true)
    int?
        v, // __v is typically used for versioning in MongoDB, may not be needed in your Dart model
  }) = _TicketMessage;

  factory TicketMessage.fromJson(Map<String, dynamic> json) =>
      _$TicketMessageFromJson(json);
}

enum TicketType { MasterTicket, SubTicket, Unknown }

enum RequestType {
  @JsonValue('Reduce/Increase Price')
  reduceIncreasePrice,
  @JsonValue('Unpublished Property (Rented/Sold Out)')
  unpublishedProperty,
  @JsonValue('Correct Details/Description')
  correctDetailsDescription,
  @JsonValue('Request Letters (NOC/etc)')
  requestLetters,
  @JsonValue('Publish Listing')
  publishListing,
  @JsonValue('Other')
  other
}

enum TicketPriority {
  Critical,
  Major,
  Minor,
  @JsonValue('Not Specified')
  NotSpecified
}

enum CreatedBy { Admin, Agent }

enum TicketStatus {
  Unassigned,
  Open,
  @JsonValue('In Progress')
  InProgress,
  Resolved,
  Closed
}

extension RequestTypeExtension on RequestType {
  String get value {
    switch (this) {
      case RequestType.reduceIncreasePrice:
        return 'Reduce/Increase Price';
      case RequestType.unpublishedProperty:
        return 'Unpublished Property (Rented/Sold Out)';
      case RequestType.correctDetailsDescription:
        return 'Correct Details/Description';
      case RequestType.requestLetters:
        return 'Request Letters (NOC/etc)';
      case RequestType.publishListing:
        return 'Publish Listing';
      case RequestType.other:
        return 'Other';
      default:
        return 'Unknown';
    }
  }
}
