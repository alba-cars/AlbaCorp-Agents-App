import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'lead_source_model.freezed.dart';
part 'lead_source_model.g.dart';

@freezed
class LeadSource with _$LeadSource {
  const factory LeadSource({
    required String id,
    required String name,
  }) = _LeadSource;

  factory LeadSource.fromJson(Map<String, dynamic> json) =>
      _$LeadSourceFromJson(json);
}
