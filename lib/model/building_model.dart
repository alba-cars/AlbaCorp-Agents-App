import 'package:freezed_annotation/freezed_annotation.dart';

import 'property_type_model.dart';

part 'building_model.freezed.dart';
part 'building_model.g.dart';

@freezed
class Building with _$Building {
  const factory Building({
    @JsonKey(readValue: readId) required String id,
    required String name,
    String? buildingNumber,
    String? communityId,
    int? floors,
    String? type,
    String? createdBy,
    List<dynamic>? distances,
  }) = _Building;

  factory Building.fromJson(Map<String, dynamic> json) =>
      _$BuildingFromJson(json);
}
