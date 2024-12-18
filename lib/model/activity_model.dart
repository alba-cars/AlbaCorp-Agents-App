import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_model.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart'; // Generated file for JSON serialization

@freezed
class Activity with _$Activity {
  factory Activity({
    required String id,
    @JsonKey( readValue: readUserId) required String userId,
    @JsonKey(readValue: readPropertyListId) String? propertyListId,
    @JsonKey( readValue: readLead) Lead? lead,
    @JsonKey( readValue: readActivityWeight) @Default(0) double activityWeight,
    required String type,
    String? description,
    @JsonKey(readValue: readDate) required DateTime date,
    @JsonKey( readValue: readCompletedDate) DateTime? completedDate,
    @JsonKey( readValue: readIsScheduled) bool? isScheduled,
    @Default('Pending') String status,
    @JsonKey( readValue: readPreferredLanguages) List<String>? preferredLanguages,
    String? notes,
    List<String>? tags,
    @JsonKey( readValue: readIsInterested) bool? isInterested,
    @JsonKey( readValue: readOffplanId) String? offplanId,
    @JsonKey( readValue: readPropertyType) String? propertyType,
    @JsonKey( readValue: readOverdueAt) DateTime? overdueAt,
    Property? property_list,
    @JsonKey( readValue: readCreatedAt) DateTime? createdAt,
    @JsonKey(readValue: readUpdatedAt) DateTime? updatedAt,
    String? transcript
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}

// Read value helpers
String readUserId(Map json, String key) {
  return json['user_id'] ?? json['userId'] ?? '';
}

String? readPropertyListId(Map json, String key) {
  return json['property_list_id'] ?? json['propertyListId'];
}

Object? readLead(Map json, String key) {
  final userJson = json['user'] ?? json['lead'];
  if (userJson == null) return null;
  return userJson;
}

double readActivityWeight(Map json, String key) {
  return (json['activity_weight'] ?? json['activityWeight'] ?? 0).toDouble();
}

Object readDate(Map json, String key) {
  final date = json['date'];
  if (date == null) return DateTime.now().toUtc().toIso8601String();
  return date;
}

Object? readCompletedDate(Map json, String key) {
  final date = json['completed_date'] ?? json['completedDate'];
  if (date == null) return null;
  return date;
}

bool? readIsScheduled(Map json, String key) {
  return json['is_scheduled'] ?? json['isScheduled'];
}

List<String>? readPreferredLanguages(Map json, String key) {
  final languages = json['preferred_languages'] ?? json['preferredLanguages'];
  if (languages == null) return null;
  return (languages as List).map((e) => e.toString()).toList();
}

bool? readIsInterested(Map json, String key) {
  return json['is_interested'] ?? json['isInterested'];
}

String? readOffplanId(Map json, String key) {
  return json['offplan_id'] ?? json['offplanId'];
}

String? readPropertyType(Map json, String key) {
  return json['property_type'] ?? json['propertyType'];
}

Object? readOverdueAt(Map json, String key) {
  final date = json['overdue_at'] ?? json['overdueAt'];
  if (date == null) return null;
  return date;
}

Object? readCreatedAt(Map json, String key) {
  final date = json['created_at'] ?? json['createdAt'];
  if (date == null) return null;
  return date;
}

Object? readUpdatedAt(Map json, String key) {
  final date = json['updated_at'] ?? json['updatedAt'];
  if (date == null) return null;
  return date;
}