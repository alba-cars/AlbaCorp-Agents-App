import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:objectbox/objectbox.dart';
import 'package:real_estate_app/data/objectbox/entity/pending_call_feedback.dart';
import 'package:real_estate_app/data/remote_data/pending_call_feedback_repo.dart';
import 'package:real_estate_app/model/pending_call_feedback.dart';
import 'package:real_estate_app/objectbox.g.dart';
import 'package:real_estate_app/util/result.dart';

import '../../../service_locator/objectbox.dart';

@Injectable(as: PendingCallFeedbackRepo)
class PendingCallFeedbackData implements PendingCallFeedbackRepo {
  final ObjectBox objectBox;

  PendingCallFeedbackData({required this.objectBox})
      : _box = objectBox.store.box<PendingCallFeedbackEntity>();

  final log = Logger();

  final Box<PendingCallFeedbackEntity> _box;
  @override
  Future<Result<void>> add({required PendingCallFeedback model}) async {
    try {
      await _box.putAsync(PendingCallFeedbackEntity.fromModel(model));
      return Success(null);
    } catch (e) {
      return Error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete({required PendingCallFeedback model}) async {
    try {
      await _box.removeAsync(model.id);
      return Success(null);
    } catch (e) {
      return Error(e.toString());
    }
  }

  @override
  Future<Result<List<PendingCallFeedback>>> getAll() async {
    try {
      final list = await _box.getAllAsync();
      return Success(list.map((e) => e.toModel()).toList());
    } catch (e) {
      return Error(e.toString());
    }
  }

  @override
  Future<Result<void>> update({required PendingCallFeedback model}) async {
    try {
      await _box.putAsync(PendingCallFeedbackEntity.fromModel(model));
      return Success(null);
    } catch (e) {
      return Error(e.toString());
    }
  }
}
