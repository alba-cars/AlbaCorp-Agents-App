import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';

import '../../model/paginator.dart';
import '../../util/api_error.dart';

@Injectable(as: ActivityRepo)
class ActivityData implements ActivityRepo {
  final Dio _dio;

  ActivityData({required Dio dio}) : _dio = dio;
  final log = Logger();
  @override
  Future<Result<void>> createActivity(
      {required String leadId, required String type}) async {
    try {
      final response = await _dio.post('/v1/activities', data: {
        'user_id': leadId,
        'type': type,
        'date': DateTime.now().toIso8601String(),
        'disableDateChecking': true
      });
      return Success(null);
    } catch (e, stack) {
      return onError(e, stack, log);
      ;
    }
  }

  @override
  Future<Result<void>> updateActivity(
      {required String activityId,
      required int duration,
      String? notes,
      String? feedback}) async {
    try {
      final response = await _dio.patch('/v1/activities/$activityId', data: {
        'status': 'Complete',
        'duration': duration,
        if (feedback == 'Not Interested') 'is_interested': false,
        if (feedback == 'Interested') 'is_interested': true,
        'notes': notes,
        'description':
            "Lasted ${Duration(milliseconds: duration).inSeconds} seconds"
      });
      return Success(null);
    } catch (e, stack) {
      return onError(e, stack, log);
      ;
    }
  }

  @override
  Future<Result<List<Activity>>> fetchActivities(
      {LeadStatus? status, Paginator? paginator}) async {
    try {
      String url = '/v1/activities?status=[Pending,Overdue]';
      if (status != null) {
        url += "&leadStatus=${status.name}";
      }
      if (paginator != null) {
        url += '&page=${paginator.currentPage + 1}';
      }
      final response = await _dio.get(url);
      final data = response.data['activities'] as List;
      final list = data.map((e) => Activity.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: response.data['page'],
              perPage: response.data['pageSize'],
              itemCount: response.data['totalItems']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
