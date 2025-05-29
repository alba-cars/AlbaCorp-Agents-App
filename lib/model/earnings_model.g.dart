// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earnings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EarningsModel _$EarningsModelFromJson(Map<String, dynamic> json) =>
    _EarningsModel(
      totalEarnings: (json['totalEarnings'] as num?)?.toDouble() ?? 0,
      thisMonthEarning: (json['thisMonthEarning'] as num?)?.toDouble() ?? 0,
      allMonthlyEarnings:
          (json['allMonthlyEarnings'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, (e as num).toDouble()),
              ) ??
              const {},
    );

Map<String, dynamic> _$EarningsModelToJson(_EarningsModel instance) =>
    <String, dynamic>{
      'totalEarnings': instance.totalEarnings,
      'thisMonthEarning': instance.thisMonthEarning,
      'allMonthlyEarnings': instance.allMonthlyEarnings,
    };
