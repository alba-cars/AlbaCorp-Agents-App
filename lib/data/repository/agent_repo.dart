import 'package:real_estate_app/model/agency_model.dart';
import 'package:real_estate_app/model/agent_model.dart';

import '../../model/paginator.dart';
import '../../model/property_model.dart';
import '../../util/result.dart';

abstract class AgentRepo {
  Future<Result<List<Agent>>> getAgents({Paginator? paginator});
  Future<Result<List<Agency>>> getAgencies({Paginator? paginator});
  Future<Result<List<Property>>> getAgentProperties(
      {required String agentId, Paginator? paginator});
}
