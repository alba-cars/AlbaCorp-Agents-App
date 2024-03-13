import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';

import '../../model/activity_model.dart';
import '../../util/result.dart';

abstract class ActivityRepo {
  Future<Result<void>> createActivity(
      {required String leadId, required String type});
  Future<Result<List<Activity>>> fetchActivities(
      {required int filterCode, LeadStatus? status, Paginator? paginator});
  Future<Result<void>> updateActivity(
      {required String activityId,
      required int duration,
      String? notes,
      String? feedback});
}
