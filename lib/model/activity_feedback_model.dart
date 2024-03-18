import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_feedback_model.freezed.dart';
part 'activity_feedback_model.g.dart';

@freezed
class ActivityFeedback with _$ActivityFeedback {
  factory ActivityFeedback({
    bool? isInterested,
    String? notes,
    @JsonKey(name: 'status') String? status,
    List<dynamic>? tags,
  }) = _ActivityFeedback;

  factory ActivityFeedback.fromJson(Map<String, dynamic> json) =>
      _$ActivityFeedbackFromJson(json);
}
