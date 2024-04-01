import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/model/user.dart';

import 'community_model.dart';
import 'property_type_model.dart';

part 'property_card_details_model.freezed.dart';
part 'property_card_details_model.g.dart';

@freezed
class PropertyCardDetailsModel with _$PropertyCardDetailsModel {
  const factory PropertyCardDetailsModel({
    @JsonKey(readValue: readId) required String id,
    @JsonKey(name: 'plCreationDate') dynamic plCreationDate,
    Building? building,
    @JsonKey(name: 'community') Community? community,
    String? beds,
    int? baths,
    double? size,
    @JsonKey(name: 'propertyType') String? propertyType,
    @JsonKey(readValue: readCreatedBy) dynamic createdBy,
    @JsonKey(name: 'partyType') String? partyType,
    String? status,
    String? purpose,
    List<dynamic>? amenities,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'checkedOutDate') DateTime? checkedOutDate,
    @JsonKey(name: 'currentAgent') dynamic currentAgent,
    @JsonKey(name: 'currentOwner') User? currentOwner,
    @JsonKey(name: 'updatedBy') User? updatedBy,
    @JsonKey(name: 'referenceNumber') String? referenceNumber,
    @JsonKey(name: 'expirationDate') DateTime? expirationDate,
    @JsonKey(name: 'availableForCheckout')
    @Default(false)
    bool availableForCheckout,
    @Default([]) List<PropertyCardPhoto> photos,
    @JsonKey(name: 'leadsCount') int? leadsCount,
    num? askingPrice,
    num? agentValutionPrice,
  }) = _PropertyCardDetailsModel;

  factory PropertyCardDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardDetailsModelFromJson(json);
}

readCreatedBy(Map<dynamic, dynamic> json, String val) {
  return json[val] is String ? json[val] : User.fromJson(json[val]);
}

@freezed
class PropertyCardPhoto with _$PropertyCardPhoto {
  const factory PropertyCardPhoto({
    @JsonKey(readValue: readId) required String id,
    required String original,
  }) = _PropertyCardPhoto;

  factory PropertyCardPhoto.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardPhotoFromJson(json);
}
