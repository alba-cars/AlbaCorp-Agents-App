import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:real_estate_app/model/lead_model.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart'; // Generated file for JSON serialization

@freezed
class Activity with _$Activity {
  factory Activity({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    String? propertyListId,
    @JsonKey(name: 'user') Lead? lead,
    String? createdBy,
    String? completedBy,
    required String type,
    String? description,
    required DateTime date,
    DateTime? completedDate,
    bool? isScheduled,
    @Default('Pending') String status,
    List<String>? preferredLanguages,
    String? notes,
    List<String>? tags,
    bool? isInterested,
    String? offplanId,
    String? propertyType,
    DateTime? overdueAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
