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
    @Default(0) double activityWeight,
    required String type,
    String? description,
    required DateTime date,
    @JsonKey(name: "completed_date") DateTime? completedDate,
    bool? isScheduled,
    @Default('Pending') String status,
    List<String>? preferredLanguages,
    String? notes,
    List<String>? tags,
    bool? isInterested,
    String? offplanId,
    String? propertyType,
    DateTime? overdueAt,
    @JsonKey(name: 'created_at') DateTime?  createdAt,
   @JsonKey(name: 'updated_at')   DateTime? updatedAt,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
