import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'user.dart';

part 'amenity_model.freezed.dart';
part 'amenity_model.g.dart';

@freezed
class Amenity with _$Amenity {
  const factory Amenity({
    required String id,
    required String amenity,
    String? icon,
    String? amenityCategoryId,
  }) = _Amenity;

  factory Amenity.fromJson(Map<String, dynamic> json) =>
      _$AmenityFromJson(json);
}
