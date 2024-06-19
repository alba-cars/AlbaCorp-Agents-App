import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';

import 'lead_model.dart';
import 'property_type_model.dart';
part 'lead_property_card_model.freezed.dart';
part 'lead_property_card_model.g.dart';

@freezed
class LeadPropertyCardModel with _$LeadPropertyCardModel {
  const factory LeadPropertyCardModel({
    @JsonKey(readValue: readId) required String id,
    required Lead lead,
    required PropertyCardDetailsModel propertyCard,
    @Default(false) bool wasOwner,
    DateTime? date,
    double? amount,
    required CreatedBy createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _LeadPropertyCardModel;

  factory LeadPropertyCardModel.fromJson(Map<String, dynamic> json) =>
      _$LeadPropertyCardModelFromJson(json);
}

@freezed
class LeadPropertyCardModelNotPopulated
    with _$LeadPropertyCardModelNotPopulated {
  const factory LeadPropertyCardModelNotPopulated({
    @JsonKey(readValue: readId) required String id,
    required String lead,
    required PropertyCard propertyCard,
    @Default(false) bool wasOwner,
    DateTime? date,
    double? amount,
    required String createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _LeadPropertyCardModelNotPopulated;

  factory LeadPropertyCardModelNotPopulated.fromJson(
          Map<String, dynamic> json) =>
      _$LeadPropertyCardModelNotPopulatedFromJson(json);
}

@freezed
class LeadExplorerItem with _$LeadExplorerItem {
  const factory LeadExplorerItem(
          {@JsonKey(readValue: readId) required String id,
          required Lead lead,
          required List<LeadPropertyCardModelNotPopulated> mappings}) =
      _LeadExplorerItem;

  factory LeadExplorerItem.fromJson(Map<String, dynamic> json) =>
      _$LeadExplorerItemFromJson(json);
}
