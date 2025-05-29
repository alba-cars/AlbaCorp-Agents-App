// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expected_earnings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpectedEarningsModel _$ExpectedEarningsModelFromJson(
        Map<String, dynamic> json) =>
    _ExpectedEarningsModel(
      expectedCommission: (json['expectedCommission'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ExpectedEarningsModelToJson(
        _ExpectedEarningsModel instance) =>
    <String, dynamic>{
      'expectedCommission': instance.expectedCommission,
    };
