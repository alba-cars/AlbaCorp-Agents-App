import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/model/user.dart';

import 'community_model.dart';
import 'property_type_model.dart';

part 'property_card_model.freezed.dart';
part 'property_card_model.g.dart';

@freezed
class PropertyCard with _$PropertyCard {
  const factory PropertyCard({
    @JsonKey(readValue: readId) required String id,
    @JsonKey(name: 'plCreationDate') dynamic plCreationDate,
    Building? building,
    @JsonKey(name: 'community') Community? community,
    @JsonKey(readValue: readBeds) String? beds,
    int? baths,
    double? size,
    @JsonKey(name: 'propertyType') String? propertyType,
    @JsonKey(name: 'createdBy') dynamic createdBy,
    @JsonKey(name: 'partyType') String? partyType,
    String? status,
    String? cluster,
    String? purpose,
    List<dynamic>? amenities,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
    @JsonKey(name: 'checkedOutDate') String? checkedOutDate,
    @JsonKey(name: 'currentAgent') dynamic currentAgent,
    @JsonKey(name: 'currentOwner') String? currentOwner,
    @JsonKey(name: 'updatedBy') String? updatedBy,
    @JsonKey(name: 'referenceNumber') String? referenceNumber,
    @JsonKey(name: 'expirationDate') String? expirationDate,
    @JsonKey(name: 'availableForCheckout')
    @Default(false)
    bool availableForCheckout,
    @Default([]) List<PropertyCardPhoto> photos,
    @JsonKey(name: 'leadsCount') int? leadsCount,
  }) = _PropertyCard;

  factory PropertyCard.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardFromJson(json);
}

@freezed
class CreatedBy with _$CreatedBy {
  const factory CreatedBy({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') String? lastName,
    final dynamic phone,
  }) = _CreatedBy;

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);
}

@freezed
class PropertyCardAgent with _$PropertyCardAgent {
  const factory PropertyCardAgent({
    required String id,
    required User userId,
  }) = _PropertyCardAgent;

  factory PropertyCardAgent.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardAgentFromJson(json);
}

readBeds(Map<dynamic, dynamic> json, String val) {
  return json[val]?.toString();
}
