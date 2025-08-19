import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_access_model.freezed.dart';
part 'quick_access_model.g.dart';

@freezed
abstract class QuickAccessSection with _$QuickAccessSection {
  const factory QuickAccessSection({
    required String id,
    required String name,
    required int order,
    required List<QuickAccessCard> cards,
  }) = _QuickAccessSection;

  factory QuickAccessSection.fromJson(Map<String, dynamic> json) =>
      _$QuickAccessSectionFromJson(json);
}

@freezed
abstract class QuickAccessCard with _$QuickAccessCard {
  const factory QuickAccessCard({
    required String id,
    required String title,
    required String link,
    @JsonKey(name: 'section_id') required String sectionId,
    required int order,
  }) = _QuickAccessCard;

  factory QuickAccessCard.fromJson(Map<String, dynamic> json) =>
      _$QuickAccessCardFromJson(json);
}
