import 'package:freezed_annotation/freezed_annotation.dart';

import 'lead_model.dart';
import 'user.dart';

part 'deal_response.freezed.dart';
part 'deal_response.g.dart';

@freezed
class DealResponse with _$DealResponse {
  factory DealResponse({
    required String id,
    @JsonKey(name: 'reference_number') required String referenceNumber,
    @JsonKey(name: 'creation_date') required DateTime creationDate,
    required String category,
    @Default([]) List<String> roleType,
    @JsonKey(name: 'agreedSalePrice') required double agreedSalePrice,
    double? agreedCommission,
    @JsonKey(name: 'assignedAgent') String? assignedAgent,
    required String status,
    @Default([]) List<String> rejection,
    @JsonKey(name: 'user_id') String? userId,
    required bool active,
    @JsonKey(name: 'created_by') required User createdBy,
    @JsonKey(name: 'user') Lead? client,
  }) = _DealResponse;

  factory DealResponse.fromJson(Map<String, dynamic> json) =>
      _$DealResponseFromJson(json);
}
