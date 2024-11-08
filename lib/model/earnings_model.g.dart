// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earnings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarningsModelImpl _$$EarningsModelImplFromJson(Map<String, dynamic> json) =>
    _$EarningsModelImpl(
      totalEarnings: (json['totalEarnings'] as num?)?.toDouble() ?? 0,
      thisMonthEarning: (json['thisMonthEarning'] as num?)?.toDouble() ?? 0,
      allMonthlyEarnings:
          (json['allMonthlyEarnings'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, (e as num).toDouble()),
              ) ??
              const {},
    );

Map<String, dynamic> _$$EarningsModelImplToJson(_$EarningsModelImpl instance) =>
    <String, dynamic>{
      'totalEarnings': instance.totalEarnings,
      'thisMonthEarning': instance.thisMonthEarning,
      'allMonthlyEarnings': instance.allMonthlyEarnings,
    };
