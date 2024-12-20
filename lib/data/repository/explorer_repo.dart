import 'package:real_estate_app/model/community_team_model.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/model/property_card_log_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/model/property_card_note_model.dart';

import '../../model/lead_expiration_model.dart';
import '../../util/result.dart';

abstract class ExplorerRepo {
  Future<Result<List<PropertyCard>>> getPropertyCards(
      {Map<String, dynamic>? filter,
      String? search,
      bool showOnlyAvailable = true,
      Paginator? paginator});
  Future<Result<List<LeadExplorerItem>>> getLeadsWithPropertyCards(
      {Map<String, dynamic>? filter,
      String? search,
      bool showOnlyAvailable = true,
      Paginator? paginator});
  Future<Result<List<PropertyCard>>> getPocketListings(
      {Map<String, dynamic>? filter, String? search, Paginator? paginator});
  Future<Result<void>> addPocketListings(
      {required Map<String, dynamic> values});
  Future<Result<List<PropertyCard>>> getCheckedOutPropertyCards(
      {Map<String, dynamic>? filter, String? search, Paginator? paginator});
  Future<Result<void>> checkInLead({required List<String> propertyCardIds});
  Future<Result<void>> checkInLeads({required List<String> leads});
  Future<Result<void>> checkOutLead(
      {List<String>? propertyCardIds, List<String>? leadIds ,String? source});
  Future<Result<List<LeadPropertyCardModel>>> getPropertyCardLeads(
      {required String propertyCardId, Paginator? paginator});
  Future<Result<List<LeadPropertyCardModel>>> getLeadPropertyCards(
      {required String leadId, Paginator? paginator});
  Future<Result<List<PropertyCardNoteModel>>> getPropertyCardNotes(
      {required String propertyCardId});
  Future<Result<void>> addPropertyCardNotes(
      {required String propertyCardId, required Map<String, dynamic> values});
  Future<Result<List<PropertyCardLog>>> getPropertyCardLogs(
      {required String propertyCardId});
  Future<Result<PropertyCardDetailsModel>> getPropertyCard(
      {required String propertyCardId});
  Future<Result<void>> updatePropertyCard(
      {required String propertyCardId, required Map<String, dynamic> values});
  Future<Result<void>> setPastOwner(
      {required String propertyCardId, required String leadId});
  Future<Result<void>> unLinkPropertyFromLead({required String leadCardId});
  Future<Result<void>> randomLeadsAssignment(
      {required int numberOfLeads, required Map<String, dynamic> values});
  Future<Result<List<CommunityTeamModel>>> getCommunityTeams(
      {required String agentId});
  Future<Result<String>> convertPropertyCardToListing(
      {required String propertyCardId, required Map<String, dynamic> values});
  Future<Result<List<LeadExpirationModel>>> getHotExplorerLeads(
      { List<String>? leadSourceFilter, Paginator? paginator});
}
