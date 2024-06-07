import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:real_estate_app/model/amenity_model.dart';

import 'building_model.dart';
import 'community_model.dart';
import 'property_type_model.dart';

part 'listing_request_model.freezed.dart';
part 'listing_request_model.g.dart';

@freezed
class NewListingRequest with _$NewListingRequest {
  const factory NewListingRequest({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'property_type_id') String? propertyTypeId,
    @JsonKey(name: 'community_id') String? communityId,
    @JsonKey(name: 'building_id') String? buildingId,
    required bool multiple,
    required String? type,
    required String? beds,
    required String? baths,
    required num? price,
    required num? size,
    @JsonKey(name: 'property_type') required PropertyType? propertyType,
    required Community? community,
    Building? building,
    // @Default([]) List<Amenity> amenities,
    String? furnishing,
    String? contractValidity,
    String? vacancy,
    int? numberOfCheques,
    @Default(false) bool exclusive,
    @Default(false) bool isOffPlanResale,
    @Default(false) bool vacantOnTransfer,
  }) = _NewListingRequest;

  factory NewListingRequest.fromJson(Map<String, dynamic> json) =>
      _$NewListingRequestFromJson(json);
}

// @freezed
// class PropertyType with _$PropertyType {
//   const factory PropertyType({
//     required String id,
//     @JsonKey(name: 'propertyType') required String propertyType,
//     required String icon,
//     @JsonKey(name: 'categoryId') required String categoryId,
//   }) = _PropertyType;

//   factory PropertyType.fromJson(Map<String, dynamic> json) => _$PropertyTypeFromJson(json);
// }

// @freezed
// class Community with _$Community {
//   const factory Community({
//     required String id,
//     required String community,
//     required String slug,
//     required String icon,
//     @JsonKey(name: 'image_alt') required String imageAlt,
//     @JsonKey(name: 'meta_description') required String metaDescription,
//     @JsonKey(name: 'meta_keywords') required String metaKeywords,
//     @JsonKey(name: 'meta_title') required String metaTitle,
//   }) = _Community;

//   factory Community.fromJson(Map<String, dynamic> json) => _$CommunityFromJson(json);
// }

// @freezed
// class Building with _$Building {
//   const factory Building({
//     required String id,
//     required String name,
//     @JsonKey(name: 'communityId') required String communityId,
//     required List<dynamic> distances,
//     @JsonKey(name: 'createdBy') required String createdBy,
//   }) = _Building;

//   factory Building.fromJson(Map<String, dynamic> json) => _$BuildingFromJson(json);
// }
