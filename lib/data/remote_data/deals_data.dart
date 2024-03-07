import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/deals_repo.dart';
import 'package:real_estate_app/model/deal_document_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/deal_response.dart';
import 'package:real_estate_app/model/file_object.dart';
import 'package:real_estate_app/model/off_plan_model.dart';
import 'package:real_estate_app/model/offplan_listing_response.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:recase/recase.dart';
import 'package:uuid/uuid.dart';
import 'package:path/path.dart';

import '../../util/api_error.dart';
import '../../util/s3_helpers.dart';

@Injectable(as: DealsRepo)
class DealData implements DealsRepo {
  final Dio _dio;

  DealData({required Dio dio}) : _dio = dio;
  final log = Logger();
  @override
  Future<Result<List<Deal>>> getDeals({Paginator? paginator}) async {
    try {
      String url = 'v1/search/deal/filter';

      final response = await _dio.get(url, queryParameters: {
        if (paginator != null) 'page': paginator.currentPage + 1,
        // 'sort_by': 'createdAt',
        // "sort_dir": 'DESC',
        // 'roles': ['User', 'Owner'],
        // 'active': true
      });
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
  Future<Result<DealResponse>> addDeal(
      {required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/deals';

      final response = await _dio.post(url, data: values);
      final data = response.data;
      final model = DealResponse.fromJson(data);
      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<DealListingResponse>> addOffPlanListingDeal(
      {required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/propList/listingOffplan';

      final response = await _dio.post(url, data: values);
      final data = response.data;
      final model = DealListingResponse.fromJson(data);
      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<DealListingResponse>> addExternalListingDeal(
      {required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/propList/listingProperty';

      final response = await _dio.post(url, data: values);
      final data = response.data;
      final model = DealListingResponse.fromJson(data);
      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<DealResponse>> updateDeal(
      {required String id, required Map<String, dynamic> values}) {
    // TODO: implement updateDeal
    throw UnimplementedError();
  }

  @override
  Future<Result<List<OffPlanModel>>> getOffPlanList(
      {String? search, Paginator? paginator}) async {
    try {
      String url = 'v1/off-plan';

      final response = await _dio.get(url, queryParameters: {
        if (paginator != null) 'page': paginator.currentPage + 1,
        if (search != null) 'search': search,
        // "sort_dir": 'DESC',
        // 'roles': ['User', 'Owner'],
        // 'active': true
      });
      final data = response.data['filteredOutput'] as List;
      final list = data.map((e) => OffPlanModel.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 0) + 1,
              perPage: response.data?['searchPerPage'] ?? 10,
              itemCount: response.data['filteredCount']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> addDealDocuments(
      {required String dealId, required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/Documents';
      final futures = values.entries.map((v) async {
        if (v.value is FileObject) {
          final file = File(v.value!.localImage!);
          final uploaded = await uploadFileToS3AndGetPath(file,
              fullPath:
                  '/deals/hashahaa${(v.key).paramCase}-${const Uuid().v4()}${extension(file.path)}');
          return MapEntry(
            v.key,
            uploaded,
          );
        }
      });
      final futureResults = await Future.wait(futures);
      futureResults.forEach((element) async {
        if (element != null) {
          await _dio.post(url, data: {
            'deal_id': dealId,
            'path': element.value,
            'type': element.key
          });
        }
      });

      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Deal>> getDeal({required String dealId}) async {
    try {
      String url = 'v1/deals/$dealId';

      final response = await _dio.get(
        url,
      );
      final data = response.data;
      final model = Deal.fromJson(data);
      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<DealDocument>>> getDealDocuments(
      {required String dealId}) async {
    try {
      String url = 'v1/documents/deal/$dealId';

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
