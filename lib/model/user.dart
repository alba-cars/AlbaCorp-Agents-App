import 'package:freezed_annotation/freezed_annotation.dart';

import 'property_type_model.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {@JsonKey(readValue: readId) required String id,
      required String? email,
      @Default('') String phone,
      String? whatsapp,
      @JsonKey(name: "first_name") @Default('') String firstName,
      @JsonKey(name: "last_name") @Default('') String lastName,
      String? city,
      String? photo,
      String? role,
      UserPBXNumbers? userPBXNumbers,
      @JsonKey(name: "notificationToken") String? notification_token}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class UserPBXNumbers with _$UserPBXNumbers {
  const factory UserPBXNumbers({
    required String publicNumber,
    String? pfNumber,
    String? bayutNumber,
  }) = _UserPBXNumbers;

  factory UserPBXNumbers.fromJson(Map<String, dynamic> json) =>
      _$UserPBXNumbersFromJson(json);
}
