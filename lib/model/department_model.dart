import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    @JsonKey(name: '_id') required String id,
    required String departmentName,
    // required List<Role> roles,
    required String description,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
    @JsonKey(ignore: true)
    int?
        v, // __v is typically used for versioning in MongoDB, may not be needed in your Dart model
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
