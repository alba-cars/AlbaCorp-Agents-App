import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/property_card_log_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';

import '../../model/property_card_details_model.dart';
import '../../util/api_error.dart';

@Injectable(as: ExplorerRepo)
class ExplorerData implements ExplorerRepo {
  final log = Logger();
  final Dio _dio;
  ExplorerData({required Dio dio}) : _dio = dio;

  @override
  Future<Result<List<PropertyCard>>> getPropertyCards(
      {Map<String, dynamic>? filter, Paginator? paginator}) async {
    try {
      String url = 'v1/property-cards';
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
        'limit': 15,
        if (paginator != null) 'page': paginator.currentPage + 1,
        if (filterRemoved != null) ...filterRemoved
      });
      final data = response.data['data']['data'] as List;
      final list = data.map((e) => PropertyCard.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 0) + 1,
              perPage: 15,
              itemCount: response.data['data']['filteredCount']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<PropertyCard>>> getCheckedOutPropertyCards(
      {Map<String, dynamic>? filter, Paginator? paginator}) async {
    try {
      String url =
          'v1/property-cards/checkout-leads?currentAgent=${getIt<AuthBloc>().state.agent?.id}&withLeadsCount=true';

      final response = await _dio.get(url, queryParameters: {
        'limit': 15,
        if (paginator != null) 'page': paginator.currentPage + 1,
        if (filter != null) ...filter
      });
      final data = response.data['data'] as List;
      final list = data.map((e) => PropertyCard.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 0) + 1,
              perPage: 15,
              itemCount: list.length));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> checkInLead(
      {required List<String> propertyCardIds}) async {
    try {
      String url = 'v1/property-cards/checkin-leads';
      await _dio.post(url, data: {'data': propertyCardIds});
      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> checkOutLead(
      {required List<String> propertyCardIds}) async {
    try {
      String url = 'v1/property-cards/checkout-leads';
      await _dio.post(url, data: {'data': propertyCardIds});
      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<LeadPropertyCardModel>>> getPropertyCardLeads(
      {required String propertyCardId}) async {
    try {
      String url =
          'v1/property-cards/lead-to-card/?propertyCard=$propertyCardId&extraPopulate=true';

      final response = await _dio.get(
        url,
      );
      final data = response.data['data'] as List;
      final list = data.map((e) => LeadPropertyCardModel.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<PropertyCardDetailsModel>> getPropertyCard(
      {required String propertyCardId}) async {
    try {
      String url = 'v1/property-cards/$propertyCardId?extraPopulate=true';

      final response = await _dio.get(url);
      final data = response.data['data'];
      final model = PropertyCardDetailsModel.fromJson(data);
      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<PropertyCardLog>>> getPropertyCardLogs({
    required String propertyCardId,
  }) async {
    try {
      String url =
          'v1/property-cards/get-logs?propertyCard=$propertyCardId&sortField=createdAt';

      final response = await _dio.get(
        url,
      );
      final data = response.data['data'] as List;
      final list = data.map((e) => PropertyCardLog.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<PropertyCard>>> getPocketListings(
      {Map<String, dynamic>? filter, Paginator? paginator}) async {
    try {
      String url = 'v1/property-cards';
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
        'limit': 15,
        if (paginator != null) 'page': paginator.currentPage + 1,
        'purpose': '',
        'withLeadsCount': true,
        'status': 'Pocket Listing',
        if (filterRemoved != null) ...filterRemoved
      });
      final data = response.data['data']['data'] as List;
      final list = data.map((e) => PropertyCard.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 0) + 1,
              perPage: 15,
              itemCount: response.data['data']['filteredCount']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
