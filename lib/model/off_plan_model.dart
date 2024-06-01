import 'package:freezed_annotation/freezed_annotation.dart';

import 'property_type_model.dart';

part 'off_plan_model.freezed.dart';
part 'off_plan_model.g.dart';

@freezed
class OffPlanModel with _$OffPlanModel {
  factory OffPlanModel({
    @JsonKey(name: '_id') required String id,
    required String templateVersion,
    required String developmentName,
    required String emirate,
    required OffPlanCommunity community,
    required String slug,
    required int downpayment,
    required DateTime completionDate,
    required String developmentDescription,
    required String developmentLogo,
    required List<PropertyType> propertyTypes,
    required int startingPrice,
    required List<OffPlanAmenity> amenities,
    required Developer developer,
    required Footer footer,
    required List<DevelopmentPhoto> developmentPhotos,
    required String video,
    required String brochure,
    required String headerImage,
    required String priceImage,
    List<String>? keywords,
    required String metaDescription,
    required String metaTitle,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? status,
  }) = _OffPlanModel;

  factory OffPlanModel.fromJson(Map<String, dynamic> json) =>
      _$OffPlanModelFromJson(json);
}

@freezed
class OffPlanCommunity with _$OffPlanCommunity {
  factory OffPlanCommunity({
    required String name,
    required Position position,
    @JsonKey(name: '_id') required String id,
  }) = _OffPlanCommunity;

  factory OffPlanCommunity.fromJson(Map<String, dynamic> json) =>
      _$OffPlanCommunityFromJson(json);
}

@freezed
class Position with _$Position {
  factory Position({
    required double lat,
    required double lng,
    @JsonKey(name: '_id') required String id,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}

@freezed
class OffPlanAmenity with _$OffPlanAmenity {
  factory OffPlanAmenity({
    required String title,
    required String photo,
    @JsonKey(name: '_id') required String id,
  }) = _Amenity;

  factory OffPlanAmenity.fromJson(Map<String, dynamic> json) =>
      _$OffPlanAmenityFromJson(json);
}

@freezed
class Developer with _$Developer {
  factory Developer({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? description,
    required String logo,
    required String backgroundImage,
    required String headerTitle,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Developer;

  factory Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);
}

@freezed
class Footer with _$Footer {
  factory Footer({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String description,
    required String logo,
    required String type,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Footer;

  factory Footer.fromJson(Map<String, dynamic> json) => _$FooterFromJson(json);
}

@freezed
class DevelopmentPhoto with _$DevelopmentPhoto {
  factory DevelopmentPhoto({
    required String file,
    required String label,
    @JsonKey(name: '_id') required String id,
  }) = _DevelopmentPhoto;

  factory DevelopmentPhoto.fromJson(Map<String, dynamic> json) =>
      _$DevelopmentPhotoFromJson(json);
}
