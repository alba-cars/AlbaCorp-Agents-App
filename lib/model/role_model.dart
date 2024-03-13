import 'package:freezed_annotation/freezed_annotation.dart';
part 'role_model.freezed.dart';
part 'role_model.g.dart';

@freezed
class Role with _$Role {
  const factory Role({
    String? id,
    String? name,
    List<String>? permissions,
    bool? isActive,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
