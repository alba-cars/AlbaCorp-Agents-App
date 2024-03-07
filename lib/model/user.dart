import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    @Default('') String phone,
    String? whatsapp,
    @JsonKey(name: "first_name") @Default('') String firstName,
    @JsonKey(name: "last_name") @Default('') String lastName,
    String? city,
    String? photo,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
