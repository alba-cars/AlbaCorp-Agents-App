import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/lead_source_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/view/enquiries_screen/widget/leadsource_filter_widget.dart';

import '../../model/deal_document_model.dart';
import '../../model/deal_model.dart';

abstract class LeadRepo {
  Future<Result<List<Lead>>> getLeads(
      {Map<String, dynamic>? filter,
      String? search,
      String? agentId,
      Paginator? paginator});
  Future<Result<List<LeadSource>>> getLeadSources(
      {String? search, Paginator? paginator});

  Future<Result<List<LeadSource>>> getLeadSourcesRefactored(
      {String? search, LeadSourceType? leadSourceType, Paginator? paginator});
  Future<Result<Lead>> getLead({required String leadId});
  Future<Result<Lead>> addLead({required Map<String, dynamic> lead});
  Future<Result<Lead>> updateLead(
      {required String leadId, required Map<String, dynamic> value});

  Future<Result<List<Activity>>> getLeadActivities({required String leadId});
  Future<Result<List<Deal>>> getLeadDeals({required String leadId});
  Future<Result<(Lead, bool)?>> getLeadByPhone({required String phone});
  Future<Result<Lead>> getPropertyOwner({
    required String ownerId,
  });
  Future<Result<List<DealDocument>>> getClientDocuments(
      {required String clientId});
}
