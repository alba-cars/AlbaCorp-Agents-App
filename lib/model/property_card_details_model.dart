import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:real_estate_app/model/building_model.dart';
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
    int? beds,
    int? baths,
    double? size,
    @JsonKey(name: 'propertyType') String? propertyType,
    @JsonKey(name: 'createdBy') CreatedBy? createdBy,
    @JsonKey(name: 'partyType') String? partyType,
    String? status,
    String? purpose,
    List<dynamic>? amenities,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'checkedOutDate') DateTime? checkedOutDate,
    @JsonKey(name: 'currentAgent') dynamic currentAgent,
    @JsonKey(name: 'updatedBy') CreatedBy? updatedBy,
    @JsonKey(name: 'referenceNumber') String? referenceNumber,
    @JsonKey(name: 'expirationDate') DateTime? expirationDate,
    @JsonKey(name: 'availableForCheckout')
    @Default(false)
    bool availableForCheckout,
    @JsonKey(name: 'leadsCount') int? leadsCount,
  }) = _PropertyCardDetailsModel;

  factory PropertyCardDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardDetailsModelFromJson(json);
}
