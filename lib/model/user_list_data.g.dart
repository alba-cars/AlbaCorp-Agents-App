// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListData _$UserListDataFromJson(Map<String, dynamic> json) =>
    _UserListData(
      id: json['_id'] as String,
      name: json['user_name'] as String?,
      phone: json['user_phone'] as String?,
    );

Map<String, dynamic> _$UserListDataToJson(_UserListData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user_name': instance.name,
      'user_phone': instance.phone,
    };
