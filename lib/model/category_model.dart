import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class ModelCategory with _$ModelCategory {
  const factory ModelCategory({String? image, required String name}) =
      _ModelCategory;
  factory ModelCategory.fromJson(Map<String, dynamic> json) =>
      _$ModelCategoryFromJson(json);
}
