import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/agent_repo.dart';
import 'package:real_estate_app/model/agency_model.dart';
import 'package:real_estate_app/model/agent_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/util/result.dart';

import '../../util/api_error.dart';

@Injectable(as: AgentRepo)
class AgentData implements AgentRepo {
  final Dio _dio;

  AgentData({required Dio dio}) : _dio = dio;
  final Logger log = Logger();
  @override
  Future<Result<List<Agent>>> getAgents({Paginator? paginator}) async {
    try {
      String url = 'v1/agent';

      final response = await _dio.get(
        url,
      );
      final data = response.data as List;
      final list = data.map((e) => Agent.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  Future<Result<List<Property>>> getAgentProperties(
      {required String agentId, Paginator? paginator}) async {
    try {
      String url = 'v1/propList/agent-properties/$agentId';

      final response = await _dio.get(
        url,
      );
      final data = response.data as List;
      final list = data.map((e) => Property.fromJson(e)).toList();

      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Agency>>> getAgencies({Paginator? paginator}) async {
    try {
      String url = 'v1/agency';

      final response = await _dio.get(
        url,
      );
      final data = response.data as List;
      final list = data.map((e) => Agency.fromJson(e)).toList();
      return Success(
        list,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
