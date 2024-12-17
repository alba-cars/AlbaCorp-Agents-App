

import 'package:objectbox/objectbox.dart';

@Entity()
class CallProcessingEntity {
  @Id()
  int id = 0;

  final String activityId;
  final String status;
  final String? summary;
  final String? error;
  final DateTime timestamp;

  CallProcessingEntity({
    required this.activityId,
    required this.status,
    this.summary,
    this.error,
    DateTime? timestamp,
  }) : timestamp = timestamp ?? DateTime.now();
}