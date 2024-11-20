// lead_source_model.freezed.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_source_category_model.freezed.dart';
part 'lead_source_category_model.g.dart';

@freezed
class LeadSourceCategory with _$LeadSourceCategory {
  const factory LeadSourceCategory({
    required List<LeadSourceItem> sources,
    required String category,
  }) = _LeadSourceCategory;

  factory LeadSourceCategory.fromJson(Map<String, dynamic> json) =>
      _$LeadSourceCategoryFromJson(json);
}

@freezed
class LeadSourceItem with _$LeadSourceItem {
  const factory LeadSourceItem({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String leadSourceType,
    required String tags,
  }) = _LeadSourceItem;

  factory LeadSourceItem.fromJson(Map<String, dynamic> json) =>
      _$LeadSourceItemFromJson(json);
}

// Build with:
// flutter pub run build_runner build --delete-conflicting-outputs