// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: readId(json, 'id') as String,
      email: json['email'] as String?,
      phone: json['phone'] as String? ?? '',
      whatsapp: json['whatsapp'] as String?,
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      city: json['city'] as String?,
      photo: json['photo'] as String?,
      role: json['role'] as String?,
      userPBXNumbers: json['userPBXNumbers'] == null
          ? null
          : UserPBXNumbers.fromJson(
              json['userPBXNumbers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'whatsapp': instance.whatsapp,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'city': instance.city,
      'photo': instance.photo,
      'role': instance.role,
      'userPBXNumbers': instance.userPBXNumbers,
    };

_UserPBXNumbers _$UserPBXNumbersFromJson(Map<String, dynamic> json) =>
    _UserPBXNumbers(
      publicNumber: json['publicNumber'] as String,
      pfNumber: json['pfNumber'] as String?,
      bayutNumber: json['bayutNumber'] as String?,
    );

Map<String, dynamic> _$UserPBXNumbersToJson(_UserPBXNumbers instance) =>
    <String, dynamic>{
      'publicNumber': instance.publicNumber,
      'pfNumber': instance.pfNumber,
      'bayutNumber': instance.bayutNumber,
    };
