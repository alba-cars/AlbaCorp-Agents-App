// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatorImpl _$$PaginatorImplFromJson(Map<String, dynamic> json) =>
    _$PaginatorImpl(
      itemCount: json['itemCount'] as int,
      perPage: json['perPage'] as int,
      currentPage: json['currentPage'] as int,
    );

Map<String, dynamic> _$$PaginatorImplToJson(_$PaginatorImpl instance) =>
    <String, dynamic>{
      'itemCount': instance.itemCount,
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
    };
