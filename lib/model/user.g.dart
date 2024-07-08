// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: readId(json, 'id') as String,
      email: json['email'] as String?,
      phone: json['phone'] as String? ?? '',
      whatsapp: json['whatsapp'] as String?,
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      city: json['city'] as String?,
      photo: json['photo'] as String?,
      userPBXNumbers: json['userPBXNumbers'] == null
          ? null
          : UserPBXNumbers.fromJson(
              json['userPBXNumbers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'whatsapp': instance.whatsapp,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'city': instance.city,
      'photo': instance.photo,
      'userPBXNumbers': instance.userPBXNumbers,
    };

_$UserPBXNumbersImpl _$$UserPBXNumbersImplFromJson(Map<String, dynamic> json) =>
    _$UserPBXNumbersImpl(
      publicNumber: json['publicNumber'] as String,
      pfNumber: json['pfNumber'] as String?,
      bayutNumber: json['bayutNumber'] as String?,
    );

Map<String, dynamic> _$$UserPBXNumbersImplToJson(
        _$UserPBXNumbersImpl instance) =>
    <String, dynamic>{
      'publicNumber': instance.publicNumber,
      'pfNumber': instance.pfNumber,
      'bayutNumber': instance.bayutNumber,
    };
