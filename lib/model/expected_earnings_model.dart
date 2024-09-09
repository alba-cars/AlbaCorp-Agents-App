import 'package:freezed_annotation/freezed_annotation.dart';

part 'expected_earnings_model.freezed.dart';
part 'expected_earnings_model.g.dart';

@freezed
class ExpectedEarningsModel with _$ExpectedEarningsModel {
  const factory ExpectedEarningsModel({
    @Default(0) double expectedCommission,
  }) = _ExpectedEarningsModel;

  const ExpectedEarningsModel._();

  factory ExpectedEarningsModel.fromJson(Map<String, dynamic> json) =>
      _$ExpectedEarningsModelFromJson(json);
}
