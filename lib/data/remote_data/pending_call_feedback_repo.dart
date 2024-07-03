import 'package:real_estate_app/model/pending_call_feedback.dart';
import 'package:real_estate_app/util/result.dart';

abstract class PendingCallFeedbackRepo {
  Future<Result<void>> add({required PendingCallFeedback model});
  Future<Result<void>> update({required PendingCallFeedback model});
  Future<Result<List<PendingCallFeedback>>> getAll();
  Future<Result<void>> delete({required PendingCallFeedback model});
}
