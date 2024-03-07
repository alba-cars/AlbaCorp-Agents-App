// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offplan_listing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealListingResponseImpl _$$DealListingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DealListingResponseImpl(
      id: json['id'] as String,
      propertyType: json['propertyType'] as String,
      beds: json['beds'] as String,
      baths: json['baths'] as String,
      size: json['size'] as int,
      agreedSalesPrice: (json['agreedSalesPrice'] as num).toDouble(),
      agreedCommission: _stringToDouble(json['agreedCommission'] as String),
    );

Map<String, dynamic> _$$DealListingResponseImplToJson(
        _$DealListingResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'propertyType': instance.propertyType,
      'beds': instance.beds,
      'baths': instance.baths,
      'size': instance.size,
      'agreedSalesPrice': instance.agreedSalesPrice,
      'agreedCommission': _stringFromDouble(instance.agreedCommission),
    };
