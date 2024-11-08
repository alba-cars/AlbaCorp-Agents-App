import 'dart:io';

import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/user_list_data.dart';

import '../../model/activity_model.dart';
import '../../util/result.dart';

abstract class ActivityRepo {
  Future<Result<Activity>> createActivity(
      {required String leadId,
      required String type,
      DateTime? date,
      String? propertyId,
      String? description,
      bool isCompleted = false});
  Future<Result<bool>> createCallFeedbackActivity(
      {required String leadId,
      required String feedback,
      String? attachedActivityId,
      bool reAssignLeadtoAgent = false});
  Future<Result<Activity>> getActivity({
    required String activityId,
  });
  Future<Result<List<Activity>>> fetchActivities(
      {required int filterCode,
      LeadStatus? status,
      String? nameSearch,
      Paginator? paginator});
  Future<Result<List<Activity>>> getActivitiesByAgent(
      {String? status,
      List<DateTime>? dates,
      String? userId,
      Paginator? paginator});
  Future<Result<List<UserListData>>> getActivitiesUserByAgent(
      {String? searchText, Paginator? paginator});
  Future<Result<List<Activity>>> fetchActivitiesSorted(
      {Map<String, dynamic>? filter,
      int? limit,
      String? nameSearch,
      Paginator? paginator});
  Future<Result<List<Activity>>> fetchActivitiesImportant(
      {int? limit, Paginator? paginator});
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
