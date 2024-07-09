import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_type_model.freezed.dart';
part 'property_type_model.g.dart';

@freezed
class PropertyType with _$PropertyType {
  const factory PropertyType({
    @JsonKey(readValue: readId) required String id,
    required String propertyType,
    String? icon,
    String? categoryId,
    @Default([]) List<Bed> beds,
  }) = _PropertyType;

  factory PropertyType.fromJson(Map<String, dynamic> json) =>
      _$PropertyTypeFromJson(json);
}

readId(Map<dynamic, dynamic> json, String val) {
  return json[val] ?? json['_id'] ?? '';
}

@freezed
class Bed with _$Bed {
  factory Bed({
    required String name,
    required int startingPrice,
    @JsonKey(name: '_id') required String id,
  }) = _Bed;

  factory Bed.fromJson(Map<String, dynamic> json) => _$BedFromJson(json);
}
