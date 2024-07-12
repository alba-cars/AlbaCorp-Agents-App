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
  Future<Result<List<Deal>>> getDeals(
      {String? search,
      Map<String, dynamic>? filter,
      Paginator? paginator}) async {
    try {
      String url = 'v1/search/deal/filter';
      Map<String, dynamic>? filterRemoved;
      if (filter != null) {
        filterRemoved =
            (Map.from(filter)..removeWhere((key, value) => value == null));

        filterRemoved = filterRemoved.map((key, value) {
          if (value is Map) {
            return MapEntry(key, value['value']);
          } else if (value is List<Map>) {
            return MapEntry(key, value.map((e) => e['value']).toList());
          } else {
            return MapEntry(key, value);
          }
        });
      }
      final response = await _dio.get(url, queryParameters: {
        if (search != null) 'search': search,
        if (paginator != null) 'page': paginator.currentPage + 1,
        if (filterRemoved != null) ...filterRemoved
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
      {required String id, required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/deals/${id}';

      final response = await _dio.patch(url, data: values);
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
      {required String dealId,
      required String userId,
      required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/Documents';
      Map<String, Map<String, dynamic>> updateDocuments = {};
      final futures = values.entries.map((v) async {
        final value = v.value;
        if (value is FileObject) {
          if (value.networkImageUrl != null && value.localImage == null) {
            return null;
          }
          final file = File(v.value!.localImage!);
          final uploaded = await uploadFileToS3AndGetPath(file,
              fullPath:
                  '/deals/${(v.key).paramCase}-${const Uuid().v4()}${extension(file.path)}');
          if (value.networkImageUrl != null && value.networkObjectId != null) {
            updateDocuments.addAll({
              value.networkObjectId!: {'path': uploaded}
            });
            return null;
          }
          return MapEntry(
            v.key,
            uploaded,
          );
        } else if (value is List<FileObject>) {
          final List<String> files = [];
          for (final fileObject in value) {
            if (fileObject.networkImageUrl != null &&
                fileObject.localImage == null) {
              continue;
            }
            final file = File(fileObject.localImage!);
            final ext = extension(file.path);
            final uploaded = await uploadFileToS3AndGetPath(file,
                fullPath:
                    '/deals/${(v.key).paramCase}-${const Uuid().v4()}${ext}');

            files.add(uploaded);
          }
          if (value.isNotEmpty &&
              value.first.networkImageUrl != null &&
              value.first.networkObjectId != null) {
            updateDocuments.addAll({
              value.first.networkObjectId!: {'documents': files}
            });
            return null;
          }
          return MapEntry(
            v.key,
            files,
          );
        }
      });
      final futureResults = await Future.wait(futures);
      futureResults.forEach((element) async {
        if (element != null) {
          Logger().d(element);
          bool deal = false;
          if (element.key == 'EID' || element.key == 'Passport') {
            deal = false;
          } else {
            deal = true;
          }
          await _dio.post(url, data: {
            if (deal) 'deal_id': dealId,
            if (element.value is String) 'path': element.value,
            if (element.value is List) 'documents': element.value,
            'type': element.key,
            if (!deal) 'user_id': userId
          });
        }
      });
      if (updateDocuments.isNotEmpty) {
        updateDocuments.entries.forEach((element) async {
          await _dio.patch('$url/${element.key}', data: element.value);
        });
      }

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
