import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/model/community_team_model.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/property_card_log_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/model/property_card_note_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:recase/recase.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:uuid/uuid.dart';
import 'package:path/path.dart';

import '../../model/file_object.dart';
import '../../model/property_card_details_model.dart';
import '../../util/api_error.dart';
import '../../util/s3_helpers.dart';

@Injectable(as: ExplorerRepo)
class ExplorerData implements ExplorerRepo {
  final log = Logger();
  final Dio _dio;
  ExplorerData({required Dio dio}) : _dio = dio;

  @override
  Future<Result<List<PropertyCard>>> getPropertyCards(
      {Map<String, dynamic>? filter,
      String? search,
      bool showOnlyAvailable = true,
      Paginator? paginator}) async {
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
        if (filterRemoved != null) ...filterRemoved,
        if (search != null) 'search': search,
        if (showOnlyAvailable) 'availableForCheckout': showOnlyAvailable
      });
      final data = response.data['data']['data'] as List;
      final list = data.map((e) => PropertyCard.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: (paginator?.currentPage ?? 0) + 1,
              perPage: 15,
              itemCount: response.data['data']?['filteredCount'] ?? 0));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<LeadExplorerItem>>> getLeadsWithPropertyCards(
      {Map<String, dynamic>? filter,
      String? search,
      bool showOnlyAvailable = true,
      Paginator? paginator}) async {
    try {
      String url = 'v1/property-cards/lead-with-cards';
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
        'page': paginator?.currentPage ?? 0 + 1,
        if (filterRemoved != null) ...filterRemoved,
        if (search != null) 'search': search,
        // if (showOnlyAvailable) 'availableForCheckout': showOnlyAvailable
      });
      final data = response.data['data']['data'] as List;
      final list = data.map((e) => LeadExplorerItem.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: response.data['data']?["page"] ?? 1,
              perPage: response.data['data']?["itemsPerPage"] ?? 15,
              itemCount: response.data['data']?['filteredCount'] ?? 0));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<PropertyCard>>> getCheckedOutPropertyCards(
      {Map<String, dynamic>? filter,
      String? search,
      Paginator? paginator}) async {
    try {
      String url =
          'v1/property-cards/checkout-leads?currentAgent=${getIt<AuthBloc>().state.agent?.id}&withLeadsCount=true';
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
        if (filterRemoved != null) ...filterRemoved,
        if (search != null) 'search': search
      });
      final data = response.data['data']['data'] as List;
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
      String url = '/v1/property-cards/checkin-cards';
      await _dio.post(url, data: {'data': propertyCardIds});
      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> checkInLeads({required List<String> leads}) async {
    try {
      String url = '/v1/property-cards/checkin-leads';
      await _dio.post(url, data: {'data': leads});
      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> checkOutLead(
      {List<String>? propertyCardIds, List<String>? leadIds}) async {
    try {
      String url = 'v1/property-cards/checkout-leads';
      await _dio.post(url, data: {
        if (propertyCardIds != null) 'cards': propertyCardIds,
        if (leadIds != null) 'leads': leadIds
      });
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
      log.d(data);
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
      {Map<String, dynamic>? filter,
      String? search,
      Paginator? paginator}) async {
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
        if (filterRemoved.containsKey('price') == true) {
          final val = filterRemoved['price'] as SfRangeValues;
          filterRemoved['minPrice'] = val.start;
          filterRemoved['maxPrice'] = val.end;
          filterRemoved.remove('price');
        }
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

  @override
  Future<Result<void>> updatePropertyCard(
      {required String propertyCardId,
      required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/property-cards/$propertyCardId';
      final futures = values.entries.map((v) async {
        if (v.value is FileObject) {
          final file = File(v.value!.localImage!);
          final uploaded = await uploadFileToS3AndGetPath(file,
              fullPath:
                  '/pocket-listing/${(v.key).paramCase}-${const Uuid().v4()}${extension(file.path)}');
          return MapEntry(
            v.key,
            {"original": uploaded},
          );
        } else if (v.value is List<FileObject>) {
          final List<Map<String, String>> files = [];
          for (final fileObject in v.value) {
            final file = File(fileObject!.localImage!);
            final ext = extension(file.path);
            final uploaded = await uploadFileToS3AndGetPath(file,
                fullPath:
                    '/pocket-listing/${(v.key).paramCase}-${const Uuid().v4()}${ext}');
            files.add({
              'original': uploaded,
              if (v.key == 'documents') 'type': 'Other'
            });
          }

          return MapEntry(
            v.key,
            files,
          );
        } else {
          return v;
        }
      });
      final futureResults = await Future.wait(futures);
      final data = Map.fromEntries(futureResults);
      await _dio.put(url, data: data);
      // final data = response.data['data'];
      // final model = PropertyCard.fromJson(data);
      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> setPastOwner(
      {required String propertyCardId, required String leadId}) async {
    try {
      String url = 'v1/property-cards/set-past-owner';
      await _dio.patch(url,
          data: {'propertyCardId': propertyCardId, 'leadId': leadId});
      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> unLinkPropertyFromLead(
      {required String leadCardId}) async {
    try {
      String url = 'v1/property-cards/lead-to-card/$leadCardId';
      await _dio.delete(
        url,
      );
      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> addPocketListings(
      {required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/property-cards/pocket-listing';
      final futures = values.entries.map((v) async {
        if (v.value is FileObject) {
          final file = File(v.value!.localImage!);
          final uploaded = await uploadFileToS3AndGetPath(file,
              fullPath:
                  '/pocket-listing/${(v.key).paramCase}-${const Uuid().v4()}${extension(file.path)}');
          return MapEntry(
            v.key,
            {"original": uploaded},
          );
        } else if (v.value is List<FileObject>) {
          final List<Map<String, String>> files = [];
          for (final fileObject in v.value) {
            final file = File(fileObject!.localImage!);
            final ext = extension(file.path);
            final uploaded = await uploadFileToS3AndGetPath(file,
                fullPath:
                    '/pocket-listing/${(v.key).paramCase}-${const Uuid().v4()}${ext}');
            files.add({
              'original': uploaded,
              if (v.key == 'documents') 'type': 'Other'
            });
          }

          return MapEntry(
            v.key,
            files,
          );
        } else {
          return v;
        }
      });
      final futureResults = await Future.wait(futures);
      final data = Map.fromEntries(futureResults);
      Logger().d(data);
      await _dio.post(url, data: data);
      // final model = PropertyCard.fromJson(response.data);

      return Success(null
          // model,
          );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<PropertyCardNoteModel>>> getPropertyCardNotes(
      {required String propertyCardId}) async {
    try {
      String url = 'v1/property-cards/$propertyCardId/notes';

      final response = await _dio.get(
        url,
      );
      final data = response.data as List;
      final list = data.map((e) => PropertyCardNoteModel.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> addPropertyCardNotes(
      {required String propertyCardId,
      required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/property-cards/$propertyCardId/notes';

      await _dio.post(url, data: values);
      // final data = response.data;
      // final list = PropertyCardNoteModel.fromJson(data);
      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> randomLeadsAssignment(
      {required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/property-cards/checkout-random-leads';

      await _dio.post(url, data: values);
      // final data = response.data;
      // final list = PropertyCardNoteModel.fromJson(data);
      return Success(
        null,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<LeadPropertyCardModel>>> getLeadPropertyCards(
      {required String leadId}) async {
    try {
      String url = 'v1/property-cards/lead-to-card/?lead=$leadId';

      final response = await _dio.get(
        url,
      );
      final data = response.data['data'] as List;
      final list = data.map((e) => LeadPropertyCardModel.fromJson(e)).toList();
      // final paginator = Paginator(itemCount: 10, perPage: 10, currentPage: 1)
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<CommunityTeamModel>>> getCommunityTeams(
      {required String agentId}) async {
    try {
      String url = 'v1/communityTeams?user_id=$agentId';

      final response = await _dio.get(
        url,
      );
      final data = response.data['results'] as List;
      final list = data.map((e) => CommunityTeamModel.fromJson(e)).toList();
      // final paginator = Paginator(itemCount: 30, perPage: 30, currentPage: 1);
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
