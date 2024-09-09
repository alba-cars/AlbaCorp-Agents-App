import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:real_estate_app/model/agent_model.dart';
import 'package:real_estate_app/util/currency_formatter.dart';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

@freezed
class Property with _$Property {
  factory Property({
    String? id,
    required String listingType,
    String? categoryId,
    String? propertyTypeId,
    @Default("") String propertyTitle,
    String? propertyDesc,
    required bool featured,
    @Default(false) bool? dealOfWeek,
    Agent? agent,
    bool? premium,
    bool? exclusive,
    String? completionStatus,
    String? completionDate,
    List<String>? metaTags,
    String? metaDesc,
    required String commission,
    String? securityDeposit,
    required String referNo,
    String? permitNo,
    String? permitNoDTCM,
    String? buildingId,
    String? buildingName,
    List<dynamic>? buildingDistances,
    String? street,
    String? communityId,
    String? communityName,
    String? subCommunity,
    String? emirate,
    String? pinlocation,
    double? size,
    String? villaSize,
    String? beds,
    String? baths,
    String? lat,
    String? lng,
    List<dynamic>? priceHistory,
    String? zipCode,
    String? emi,
    required List<String> amenities,
    List<dynamic>? amenityIds,
    List<dynamic>? amenityObjs,
    List<dynamic>? customField,
    String? rentalPeriod,
    String? rentFinance,
    double? askingPrice,
    String? pricedrop,
    double? oneCheqPrice,
    double? twoCheqPrice,
    double? fourCheqPrice,
    double? sixCheqPrice,
    double? twelveCheqPrice,
    List<dynamic>? fees,
    String? unitStatus,
    String? unitReraNo,
    String? makaniNo,
    String? dewaNo,
    @JsonKey(name: "property_owner_id") String? propertyOwnerId,
    String? propertyListId,
    String? image,
    List<dynamic>? images,
    List<String>? floorPlans,
    List<String>? videos,
    List<String>? matterportLink,
    String? agentStatus,
    String? agentId,
    String? status,
    bool? propertyStatus,
    String? soldOrReserved,
    DateTime? soldDate,
    DateTime? reservedDate,
    List<String>? statusArray,
    String? createdBy,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}

@freezed
class PropertyImage with _$PropertyImage {
  const factory PropertyImage({
    required String thumbnail,
    required String original,
  }) = _PropertyImage;

  factory PropertyImage.fromJson(Map<String, dynamic> json) =>
      _$PropertyImageFromJson(json);
}

extension PropertyExtension on Property {
  String getFormattedPrice() {
    if (this.askingPrice != null) {
      return "AED ${this.askingPrice!.currency}";
    } else if (this.oneCheqPrice != null) {
      return "AED ${this.oneCheqPrice!.currency} Per Year";
    } else if (this.twoCheqPrice != null) {
      return "AED ${this.twoCheqPrice!.currency} Every 6 Month";
    } else if (this.fourCheqPrice != null) {
      return "AED ${this.fourCheqPrice!.currency} Every 3 Month ";
    } else if (this.sixCheqPrice != null) {
      return "AED ${this.sixCheqPrice!.currency} Every 2 Month";
    } else if (this.twelveCheqPrice != null) {
      return "AED ${this.twelveCheqPrice!.currency} Per Month";
    } else {
      return "";
    }
  }
}
