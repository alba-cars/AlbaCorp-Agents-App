import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:real_estate_app/model/user.dart';

part 'deal_document_model.freezed.dart';
part 'deal_document_model.g.dart';

@freezed
class DealDocument with _$DealDocument {
  factory DealDocument({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_by_id') required String createdById,
    String? path,
    required String type,
    List<dynamic>? documents,
    @JsonKey(name: 'deal_id') String? dealId,
    @JsonKey(name: 'created_by') User? createdBy,
  }) = _DealDocument;

  factory DealDocument.fromJson(Map<String, dynamic> json) =>
      _$DealDocumentFromJson(json);
}
