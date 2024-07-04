import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/amenity_model.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/community_model.dart';
import 'package:real_estate_app/model/listing_request_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/model/property_type_model.dart';

import '../../util/result.dart';

abstract class ListingsRepo {
  Future<Result<List<Property>>> getListings(
      {String? search, Map<String, dynamic>? filter, Paginator? paginator});
  Future<Result<Property>> getListingDetails(
      {String? status, required String listingId});
  Future<Result<List<Activity>>> getListingActivities(
      {required String listingId, Paginator? paginator});
  Future<Result<NewListingRequest>> addListingAcquired(
      {required Map<String, dynamic> values});
  Future<Result<NewListingRequest>> updateListingAcquired(
      {required String id, required Map<String, dynamic> values});
  Future<Result<List<PropertyType>>> getPropertyTypes(
      {String? search, Paginator? paginator});
  Future<Result<List<Building>>> getBuildingNames(
      {String? search, String? communityId, Paginator? paginator});
  Future<Result<List<Community>>> getCommunities(
      {String? search, Paginator? paginator});
  Future<Result<List<Amenity>>> getAmenities(
      {String? search, Paginator? paginator});
}
