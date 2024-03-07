import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'agency_model.freezed.dart';
part 'agency_model.g.dart';

@freezed
class Agency with _$Agency {
  const factory Agency({
    required String id,
    required String type,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String phone,
    @JsonKey(name: 'documentType') required String documentType,
    required String document,
    required List<dynamic> documents,
    required bool active,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'created_by') required String createdBy,
  }) = _Agency;

  factory Agency.fromJson(Map<String, dynamic> json) => _$AgencyFromJson(json);
}
