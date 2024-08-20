import 'package:real_estate_app/model/deal_document_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/deal_response.dart';
import 'package:real_estate_app/model/off_plan_model.dart';
import 'package:real_estate_app/model/offplan_listing_response.dart';
import 'package:real_estate_app/model/paginator.dart';

import '../../util/result.dart';

abstract class DealsRepo {
  Future<Result<List<Deal>>> getDeals(
      {String? search, Map<String, dynamic>? filter, Paginator? paginator});
  Future<Result<Deal>> getDeal({required String dealId});
  Future<Result<List<OffPlanModel>>> getOffPlanList(
      {String? search, Paginator? paginator});
  Future<Result<DealListingResponse>> addOffPlanListingDeal(
      {required Map<String, dynamic> values});
  Future<Result<DealListingResponse>> addExternalListingDeal(
      {required Map<String, dynamic> values});
  Future<Result<DealResponse>> addDeal({required Map<String, dynamic> values});
  Future<Result<void>> addDealDocuments(
      {required String dealId,
      String? userId,
      String? sellerUserId,
      String? buyerUserId,
      String? buyerAgencyId,
      String? sellerAgencyId,
      required Map<String, dynamic> values});
  Future<Result<List<DealDocument>>> getDealDocuments({required String dealId});
  Future<Result<DealResponse>> updateDeal(
      {required String id, required Map<String, dynamic> values});
}
