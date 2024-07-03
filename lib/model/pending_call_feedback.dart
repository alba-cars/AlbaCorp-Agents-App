import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_call_feedback.freezed.dart';
part 'pending_call_feedback.g.dart';

enum CallDirection { incoming, outgoing }

@freezed
class PendingCallFeedback with _$PendingCallFeedback {
  const factory PendingCallFeedback({
    required int id,
    required String number,
    required CallDirection callDirection,
    String? feedback,
    @Default(false) bool isSynced,
  }) = _PendingCallFeedback;

  factory PendingCallFeedback.fromJson(Map<String, dynamic> json) =>
      _$PendingCallFeedbackFromJson(json);
}
