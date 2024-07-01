import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';

import '../../model/activity_model.dart';
import '../../util/result.dart';

abstract class ActivityRepo {
  Future<Result<Activity>> createActivity({
    required String leadId,
    required String type,
    DateTime? date,
    String? propertyId,
    String? description,
  });
  Future<Result<Activity>> getActivity({
    required String activityId,
  });
  Future<Result<List<Activity>>> fetchActivities(
      {required int filterCode, LeadStatus? status, Paginator? paginator});
  Future<Result<List<Activity>>> fetchActivitiesSorted({Paginator? paginator});
  Future<Result<List<Activity>>> fetchActivitiesImportant(
      {Paginator? paginator});
  Future<Result<int>> completedActivitiesCount();
  Future<Result<int>> pendingActivitiesCount();
  Future<Result<int>> pendingViewingActivitiesCount();
  Future<Result<void>> updateActivity(
      {required String activityId,
      required bool completed,
      int? duration,
      String? notes,
      String? feedback});
}
