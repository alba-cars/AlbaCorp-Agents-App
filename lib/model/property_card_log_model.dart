import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_app/model/property_card_model.dart';

import 'property_type_model.dart';
part 'property_card_log_model.freezed.dart';
part 'property_card_log_model.g.dart';

@freezed
class PropertyCardLog with _$PropertyCardLog {
  const factory PropertyCardLog({
    required String message,
    required CreatedBy? createdBy,
    required String type,
    required String createdAt,
    required String updatedAt,
    @JsonKey(readValue: readId) required String id,
  }) = _PropertyCardLog;

  factory PropertyCardLog.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardLogFromJson(json);
}
