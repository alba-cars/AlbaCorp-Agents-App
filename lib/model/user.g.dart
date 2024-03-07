// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String? ?? '',
      whatsapp: json['whatsapp'] as String?,
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      city: json['city'] as String?,
      photo: json['photo'] as String?,
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
    };
