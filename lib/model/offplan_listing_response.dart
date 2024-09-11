import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/model/community_model.dart';

part 'offplan_listing_response.freezed.dart';
part 'offplan_listing_response.g.dart';

@freezed
class DealListingResponse with _$DealListingResponse {
  factory DealListingResponse({
    required String id,
    required String propertyType,
    required String beds,
    required String baths,
    required int? size,
    Community? community,
    required double agreedSalesPrice,
    @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
    required double agreedCommission,
  }) = _DealListingResponse;

  factory DealListingResponse.fromJson(Map<String, dynamic> json) =>
      _$DealListingResponseFromJson(json);
}

double _stringToDouble(String number) => double.tryParse(number) ?? 0;
String _stringFromDouble(double number) => number.toString();
