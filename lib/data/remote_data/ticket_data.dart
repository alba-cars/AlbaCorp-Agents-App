import 'dart:io';
import 'package:path/path.dart';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/ticket_repo.dart';
import 'package:real_estate_app/model/department_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/ticket_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:recase/recase.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:uuid/uuid.dart';

import '../../model/file_object.dart';
import '../../util/api_error.dart';
import '../../util/s3_helpers.dart';

@Injectable(as: TicketRepo)
class TicketData implements TicketRepo {
  final Dio _dio;
  final log = Logger();

  TicketData({required Dio dio}) : _dio = dio;
  @override
  Future<Result<List<Ticket>>> getTickets(
      {String? createdBy,
      String? search,
      Map<String, dynamic>? filter,
      Paginator? paginator}) async {
    try {
      String url = 'v1/supportticket';
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
        if (paginator != null) 'page': paginator.currentPage + 1,
        'createdBy': createdBy,
        'agentId': getIt<AuthBloc>().state.user?.id,
        if (filterRemoved != null) ...filterRemoved,
        if (search != null) 'serialNumber': search
      });
      final data = response.data['tickets'] as List;
      final list = data.map((e) => Ticket.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              currentPage: response.data['currentPage'],
              perPage: response.data?['resPerPage'] ?? 10,
              itemCount: response.data['totalCount']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Department>>> getDepartments(
      {Paginator? paginator}) async {
    try {
      String url = 'v1/departments';

      final response = await _dio.get(url, queryParameters: {
        if (paginator != null) 'page': paginator.currentPage + 1
      });
      final data = response.data as List;
      final list = data.map((e) => Department.fromJson(e)).toList();
      return Success(list,
          paginator:
              paginator?.copyWith(currentPage: paginator.currentPage + 1));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> addTicket({required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/supportticket';
      final Map<String, dynamic> mappedVal = {
        'agentId': getIt<AuthBloc>().state.user?.id,
        "type": "MasterTicket"
      };
      final futures = values.entries.map((v) async {
        final attachments = <String>[];
        if (v.value is List<FileObject>) {
          for (final fileObject in v.value) {
            final file = File(fileObject!.localImage!);
            final uploaded = await uploadFileToS3AndGetPath(file,
                fullPath:
                    '/tickets/${(v.key).paramCase}-${const Uuid().v4()}${extension(file.path)}');
            attachments.add(uploaded);
          }
          mappedVal.addEntries([
            MapEntry(
              v.key,
              attachments,
            )
          ]);
        } else {
          mappedVal.addEntries([
            MapEntry(
              v.key,
              v.value,
            )
          ]);
        }
      });
      await Future.wait(futures);
      Logger().d(mappedVal);
      final response = await _dio.post(url, data: mappedVal);
      response.data;
      // final model = Ticket.fromJson(data);
      return Success(
          // model,
          null);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Ticket>> getTicket(String ticketId) async {
    try {
      String url = 'v1/supportticket/$ticketId';
      final response = await _dio.get(
        url,
      );
      final data = response.data;
      final model = Ticket.fromJson(data);
      return Success(
        model,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<TicketMessage>>> getTicketMessages(
      {required String ticketId, Paginator? paginator}) async {
    try {
      String url = 'v1/supportticket/message/$ticketId';

      final response = await _dio.get(url, queryParameters: {
        if (paginator != null) 'page': paginator.currentPage + 1
      });
      final data = response.data['messages'] as List;
      final list = data.map((e) => TicketMessage.fromJson(e)).toList();
      return Success(list,
          paginator: Paginator(
              perPage: response.data['limit'],
              currentPage: response.data['page'],
              itemCount: response.data['totalCount']));
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> addTicketMessage(
      {required Map<String, dynamic> values}) async {
    try {
      String url = 'v1/supportticket/message';
      final Map<String, dynamic> mappedVal = {
        'senderId': getIt<AuthBloc>().state.user?.id,
      };
      final futures = values.entries.map((v) async {
        final attachments = <String>[];
        if (v.value is List<FileObject>) {
          for (final fileObject in v.value) {
            final file = File(fileObject!.localImage!);
            final uploaded = await uploadFileToS3AndGetPath(file,
                fullPath:
                    '/tickets/${(v.key).paramCase}-${const Uuid().v4()}${extension(file.path)}');
            attachments.add(uploaded);
          }
          mappedVal.addEntries([
            MapEntry(
              v.key,
              attachments,
            )
          ]);
        } else {
          mappedVal.addEntries([
            MapEntry(
              v.key,
              v.value,
            )
          ]);
        }
      });
      await Future.wait(futures);
      Logger().d(mappedVal);
      final response = await _dio.post(url, data: mappedVal);
      response.data;
      // final model = Ticket.fromJson(data);
      return Success(
          // model,
          null);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
