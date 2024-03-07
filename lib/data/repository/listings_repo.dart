import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/community_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/model/property_type_model.dart';

import '../../model/lead_model.dart';
import '../../util/result.dart';

abstract class ListingsRepo {
  Future<Result<List<Property>>> getListings(
      {String? status, Paginator? paginator});
  Future<Result<Property>> getListingDetails(
      {String? status, required String listingId});
  Future<Result<List<Activity>>> getListingActivities(
      {required String listingId, Paginator? paginator});
  Future<Result<void>> addListingAcquired(
      {required Map<String, dynamic> values});
  Future<Result<List<PropertyType>>> getPropertyTypes(
      {String? search, Paginator? paginator});
  Future<Result<List<Building>>> getBuildingNames(
      {String? search, Paginator? paginator});
  Future<Result<List<Community>>> getCommunities(
      {String? search, Paginator? paginator});
}
