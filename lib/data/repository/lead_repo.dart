import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/lead_source_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';

import '../../model/deal_document_model.dart';
import '../../model/deal_model.dart';

abstract class LeadRepo {
  Future<Result<List<Lead>>> getLeads(
      {String? status, String? search, Paginator? paginator});
  Future<Result<List<LeadSource>>> getLeadSources(
      {String? search, Paginator? paginator});
  Future<Result<Lead>> getLead({required String leadId});
  Future<Result<Lead>> addLead({required Map<String, dynamic> lead});

  Future<Result<List<Activity>>> getLeadActivities({required String leadId});
  Future<Result<List<Deal>>> getLeadDeals({required String leadId});
  Future<Result<Lead>> getPropertyOwner({
    required String ownerId,
  });
  Future<Result<List<DealDocument>>> getClientDocuments(
      {required String clientId});
}
