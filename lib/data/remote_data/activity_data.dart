import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
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
  Future<Result<Activity>> createActivity(
      {required String leadId,
      required String type,
      DateTime? date,
      String? propertyId,
      String? description,
      bool isCompleted = false}) async {
    try {
      final response = await _dio.post('/v1/activities', data: {
        'user_id': leadId,
        'type': type,
        'date': date?.toIso8601String() ?? DateTime.now().toIso8601String(),
        if (date == null) 'disableDateChecking': true,
        'description': description,
        'property_id': propertyId,
        if (isCompleted) "status": 'Complete'
      });
      final data = response.data;
      final model = Activity.fromJson(data);
      return Success(model);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Activity>> getActivity({
    required String activityId,
  }) async {
    try {
      final response = await _dio.get(
        '/v1/activities/$activityId',
      );
      final data = response.data;
      final model = Activity.fromJson(data);
      return Success(model);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> updateActivity(
      {required String activityId,
      required bool completed,
      int? duration,
      String? notes,
      String? feedback}) async {
    try {
      final response = await _dio.patch('/v1/activities/$activityId', data: {
        if (completed) 'status': 'Complete',
        if (duration != null) 'duration': duration,
        if (feedback == 'Not Interested') 'is_interested': false,
        if (feedback == 'Interested') 'is_interested': true,
        'notes': notes,
        // 'description':
        //     "Lasted ${Duration(milliseconds: duration).inSeconds} seconds"
      });
      return Success(null);
    } catch (e, stack) {
      return onError(e, stack, log);
      ;
    }
  }

  @override
  Future<Result<List<Activity>>> fetchActivities(
      {required int filterCode,
      LeadStatus? status,
      Paginator? paginator}) async {
    try {
      String url = 'v1/activities/query-activities';
      Map<String, dynamic> query = {};

      final d = DateTime.now();
      if (filterCode == 0) {
        query = {
          "leadSourceType": 'hot',
          "leadStatus": "Fresh",
          "status": ["Pending", "Overdue"],
          // "toDate": '${d.year}-${d.month}-${d.day}',
        };
      } else if (filterCode == 1) {
        query = {
          "leadSource": [
            "Call Center",
            "Call Center 1",
            "Call Center 2",
            "Call Center 3"
          ],
          'leadStatus': [
            "Fresh",
            "Prospect",
            "For Listing",
            "Appointment",
            "Viewing",
            "Negotiating",
            "Deal",
            "Won",
            "Lost",
            "Disqualified"
          ],
          "status": ["Pending", "Overdue"],
          // "toDate": '${d.year}-${d.month}-${d.day}'
        };
      } else if (filterCode == 2) {
        query = {
          "leadSource": "Hot Confidential",
          'leadStatus': [
            "Fresh",
            "Prospect",
            "For Listing",
            "Appointment",
            "Viewing",
            "Negotiating",
            "Deal",
            "Won",
            "Lost",
            "Disqualified"
          ],
          "status": ["Pending", "Overdue"],
          // "toDate": '${d.year}-${d.month}-${d.day}'
        };
      } else if (filterCode == 3) {
        query = {
          'leadStatus': [
            "Prospect",
            "For Listing",
            "Appointment",
            "Viewing",
            "Negotiating",
            "Deal"
          ],
          "status": ["Pending", "Overdue"],
          // "toDate": '${d.year}-${d.month}-${d.day}'
        };
      } else if (filterCode == 4) {
        query = {
          'leadSourceType': 'hot',
          "leadStatus": "Follow up",
          "status": ["Pending", "Overdue"],
          // "toDate": '${d.year}-${d.month}-${d.day}'
        };
      } else if (filterCode == 5) {
        query = {
          "leadSourceType": 'cold',
          "leadStatus": "Follow up",
          "status": ["Pending", "Overdue"],
          // "toDate": '${d.year}-${d.month}-${d.day}'
        };
      } else if (filterCode == 6) {
        query = {
          "leadSourceType": 'cold',
          // 'leadSource': ['External'],
          'leadStatus': "Fresh",
          "status": ["Pending", "Overdue"],
          // "toDate": '${d.year}-${d.month}-${d.day}'
        };
      }

      query['page'] = (paginator?.currentPage ?? 0) + 1;

      final response = await _dio.get(url, queryParameters: query);
      final data = response.data['data']['items'] as List;
      final list = data.map((e) => Activity.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 0) + 1,
              perPage: response.data['data']?['limit'] ?? 0,
              itemCount: response.data['data']?['totalItems'] ?? 0));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<int>> completedActivitiesCount() async {
    try {
      final url = 'v1/activities/count-activities';
      final d = DateTime.now();
      final query = {
        "completedBy": getIt<AuthBloc>().state.user?.id,
        "fromDate": '${d.year}-${d.month}-${d.day}',
        "status": "Complete",
        "toDate": '${d.year}-${d.month}-${d.day}',
      };
      var loginResponse = await _dio.get(url, queryParameters: query);
      Map<String, dynamic> data = loginResponse.data;

      final int count = data['data'] ?? 0;
      return Success(count);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<int>> pendingActivitiesCount() async {
    try {
      final url = 'v1/activities/count-activities';
      final d = DateTime.now();
      final query = {
        "completedBy": getIt<AuthBloc>().state.user?.id,
        "fromDate": '${d.year}-${d.month}-${d.day}',
        "status": "Complete",
        "toDate": '${d.year}-${d.month}-${d.day}',
      };
      var loginResponse = await _dio.get(url, queryParameters: query);
      Map<String, dynamic> data = loginResponse.data;

      final int count = data['data'] ?? 0;
      return Success(count);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<int>> pendingViewingActivitiesCount() async {
    try {
      final url = 'v1/activities/count-activities';
      final d = DateTime.now();
      final query = {
        "createdBy": getIt<AuthBloc>().state.user?.id,
        "fromDate": '${d.year}-${d.month}-${d.day}',
        "status": ["Pending", 'Overdue'],
        "toDate": '${d.year}-${d.month}-${d.day}',
        'type': 'Viewing'
      };
      var loginResponse = await _dio.get(url, queryParameters: query);
      Map<String, dynamic> data = loginResponse.data;

      final int count = data['data'] ?? 0;
      return Success(count);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Activity>>> fetchActivitiesSorted(
      {Paginator? paginator}) async {
    try {
      String url = 'v1/activities/query-activities';
      Map<String, dynamic> query = {
        "status": ["Pending", 'Overdue'],
        if (paginator != null) 'page': paginator.currentPage + 1,
        'limit': 10
      };
      final response = await _dio.get(url, queryParameters: query);
      final data = response.data['data']['items'] as List;
      final list = data.map((e) => Activity.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: response.data['data']['currentPage'] ??
                  (paginator?.currentPage ?? 0) + 1,
              perPage: response.data['data']['limit'] ?? 0,
              itemCount: response.data['data']['totalItems'] ?? 0));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Activity>>> fetchActivitiesImportant(
      {Paginator? paginator}) async {
    try {
      String url = 'v1/activities/query-activities';
      Map<String, dynamic> query = {
        "status": ["Pending", 'Overdue'],
        if (paginator != null) 'page': paginator.currentPage + 1,
        'limit': 10,
        'minActivityWeight': .8
      };
      final response = await _dio.get(url, queryParameters: query);
      final data = response.data['data']['items'] as List;
      final list = data.map((e) => Activity.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: response.data['data']['currentPage'] ??
                  (paginator?.currentPage ?? 0) + 1,
              perPage: response.data['data']['limit'] ?? 0,
              itemCount: response.data['data']['totalItems'] ?? 0));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> createCallFeedbackActivity(
      {required String leadId, required String feedback}) async {
    try {
      await _dio.post('/v1/activities/call-feedback-activity', data: {
        'lead_id': leadId,
        'feedback': feedback,
      });

      return Success(null);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
