import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/deal_document_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';

import '../../model/lead_source_model.dart';
import '../../util/api_error.dart';

@Injectable(as: LeadRepo)
class LeadData implements LeadRepo {
  final log = Logger();
  final Dio _dio;
  LeadData({required Dio dio}) : _dio = dio;

  @override
  Future<Result<Lead>> getLead({required String leadId}) async {
    try {
      String url = 'v1/users//$leadId';

      final response = await _dio.get(
        url,
      );
      final data = response.data;
      final model = Lead.fromJson(data);

      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Activity>>> getLeadActivities(
      {String? leadId, Paginator? paginator}) async {
    try {
      String url = 'v1/activities/user/$leadId';

      final response = await _dio.get(
        url,
      );
      final data = response.data['activities'] as List;
      final list = data.map((e) => Activity.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 0) + 1,
              perPage: response.data['pageSize'],
              itemCount: response.data['totalItems']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Lead>>> getLeads(
      {String? status, String? search, Paginator? paginator}) async {
    try {
      String url = 'v1/search/user/filter';

      final response = await _dio.get(url, queryParameters: {
        if (paginator != null) 'page': paginator.currentPage + 1,
        'sort_by': 'createdAt',
        "sort_dir": 'DESC',
        'roles': ['User', 'Owner'],
        'active': true,
        'search': search
      });
      final data = response.data['findUsersOutput'] as List;
      final list = data.map((e) => Lead.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 1) + 1,
              perPage: response.data['searchPerPage'],
              itemCount: response.data['filteredCount']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Deal>>> getLeadDeals(
      {required String leadId, Paginator? paginator}) async {
    try {
      String url = 'v1/search/deal/filter';

      final response = await _dio.get(url, queryParameters: {'user': leadId});
      final data = response.data['findDealsOutput'] as List;
      final list = data.map((e) => Deal.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 0) + 1,
              perPage: response.data['searchPerPage'],
              itemCount: response.data['filteredCount']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Lead>> addLead({required Map<String, dynamic> lead}) async {
    try {
      String url = 'v1/users/createLead';

      final response = await _dio.post(url, data: lead);
      final data = response.data;
      final model = Lead.fromJson(data);
      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Lead>> getPropertyOwner({required String ownerId}) async {
    try {
      String url = 'v1/users/$ownerId';

      final response = await _dio.get(url);
      final data = response.data;
      final model = Lead.fromJson(data);
      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<LeadSource>>> getLeadSources(
      {String? search, Paginator? paginator}) async {
    try {
      String url = 'v1/leadSources/hotleads';

      final response = await _dio.get(url, queryParameters: {
        'filter_out':
            'AskAQuestion,GetMatchedAssistance,Register,NewListing,Viewing,Newsletter,Imported,NewDevelopment',
        'search': search
      });
      final data = response.data as List;
      final list = data.map((e) => LeadSource.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<DealDocument>>> getClientDocuments(
      {required String clientId}) async {
    try {
      String url = 'v1/documents/user/$clientId';

      final response = await _dio.get(
        url,
      );
      final data = response.data as List;
      final list = data.map((e) => DealDocument.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
