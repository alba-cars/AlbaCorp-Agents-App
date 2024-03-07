import 'package:freezed_annotation/freezed_annotation.dart';

part 'offplan_listing_response.freezed.dart';
part 'offplan_listing_response.g.dart';

@freezed
class DealListingResponse with _$DealListingResponse {
  factory DealListingResponse({
    required String id,
    required String propertyType,
    required String beds,
    required String baths,
    required int size,
    required double agreedSalesPrice,
    @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
    required double agreedCommission,
  }) = _DealListingResponse;

  factory DealListingResponse.fromJson(Map<String, dynamic> json) =>
      _$DealListingResponseFromJson(json);
}

double _stringToDouble(String number) => double.parse(number);
String _stringFromDouble(double number) => number.toString();
