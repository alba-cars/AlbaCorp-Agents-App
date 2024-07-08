import 'package:objectbox/objectbox.dart';
import 'package:real_estate_app/model/pending_call_feedback.dart';

@Entity()
class PendingCallFeedbackEntity {
  @Id()
  int id = 0;
  final String number;
  final int callDirection;
  final String? feedback;
  final bool isSynced;

  PendingCallFeedbackEntity({
    this.id = 0,
    required this.number,
    required this.callDirection,
    this.feedback,
    this.isSynced = false,
  });

  PendingCallFeedback toModel() {
    return PendingCallFeedback(
      id: id,
      number: number,
      callDirection: CallDirection.values[callDirection],
      feedback: feedback,
      isSynced: isSynced,
    );
  }

  factory PendingCallFeedbackEntity.fromModel(PendingCallFeedback model) {
    return PendingCallFeedbackEntity(
        id: model.id,
        number: model.number,
        callDirection: model.callDirection.index,
        feedback: model.feedback,
        isSynced: model.isSynced);
  }
}
