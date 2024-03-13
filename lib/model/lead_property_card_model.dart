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
    DateTime? date,
    double? amount,
    required CreatedBy createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _LeadPropertyCardModel;

  factory LeadPropertyCardModel.fromJson(Map<String, dynamic> json) =>
      _$LeadPropertyCardModelFromJson(json);
}
