import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/community_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/listing_request_model.dart';
import 'package:real_estate_app/model/offplan_listing_response.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/model/property_type_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../util/api_error.dart';

@Injectable(as: ListingsRepo)
class ListingsData implements ListingsRepo {
  final Dio _dio;
  final log = Logger();

  ListingsData({required Dio dio}) : _dio = dio;
  @override
  Future<Result<List<Property>>> getListings(
      {String? search,
      Map<String, dynamic>? filter,
      Paginator? paginator}) async {
    try {
      String url = '/v1/filter/propList';
      Map<String, dynamic>? filterRemoved;
      if (filter != null) {
        filterRemoved =
            (Map.from(filter)..removeWhere((key, value) => value == null));

        if (filterRemoved.containsKey('price') == true) {
          final val = filterRemoved['price'] as SfRangeValues;
          filterRemoved['minPrice'] = val.start;
          filterRemoved['maxPrice'] = val.end;
          filterRemoved.remove('price');
        }
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
        'agentId': getIt<AuthBloc>().state.agent?.id,
        if (search != null) 'search': search,
        if (paginator != null) 'page': paginator.currentPage + 1,
        if (filterRemoved != null) ...filterRemoved
      });
      final data = response.data['findPropListsOutput'] as List;
      final list = data.map((e) => Property.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 0) + 1,
              perPage: response.data['resPerPage'],
              itemCount: response.data['ListingCount']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Property>> getListingDetails(
      {String? status, required String listingId}) async {
    try {
      String url = 'v1/propList/$listingId';

      final response = await _dio.get(
        url,
      );
      final data = response.data;
      final model = Property.fromJson(data);

      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Activity>>> getListingActivities(
      {required String listingId, Paginator? paginator}) async {
    try {
      String url = 'v1/activities/property/$listingId';

      final response = await _dio.get(url, queryParameters: {
        if (paginator != null) 'page': paginator.currentPage + 1
      });
      final data = response.data as List;
      final list = data.map((e) => Activity.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<NewListingRequest>> addListingAcquired(
      {required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/propList/request';

      final response = await _dio.post(url, data: values);
      final data = response.data;
      final model = NewListingRequest.fromJson(data);
      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Building>>> getBuildingNames(
      {String? search, String? communityId, Paginator? paginator}) async {
    try {
      String url = 'v1/buildings';

      final response = await _dio.get(url, queryParameters: {
        if (paginator != null) 'page': paginator.currentPage + 1,
        'search': search,
        'community': communityId
      });
      final data = response.data as List;
      final list = data.map((e) => Building.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<PropertyType>>> getPropertyTypes(
      {String? search, Paginator? paginator}) async {
    try {
      String url = 'v1/propType';

      final response = await _dio.get(url, queryParameters: {
        if (paginator != null) 'page': paginator.currentPage + 1
      });
      final data = response.data as List;
      final list = data.map((e) => PropertyType.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Community>>> getCommunities(
      {String? search, Paginator? paginator}) async {
    try {
      String url = 'v1/community';

      final response = await _dio.get(url, queryParameters: {
        if (paginator != null) 'page': paginator.currentPage + 1,
        if (search != null) 'search': search
      });
      final data = response.data as List;
      final list = data.map((e) => Community.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
