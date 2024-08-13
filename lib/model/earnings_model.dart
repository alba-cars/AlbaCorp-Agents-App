import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings_model.freezed.dart';
part 'earnings_model.g.dart';

@freezed
class EarningsModel with _$EarningsModel {
  const factory EarningsModel(
      {@Default(0) double totalEarnings,
      @Default(0) double thisMonthEarning,
      @Default({}) Map<String, double> allMonthlyEarnings}) = _EarningsModel;

  const EarningsModel._();
  double getTheMonthEarnigns(DateTime date) {
    String month = date.month < 10 ? "0${date.month}" : "${date.month}";
    String formattedDate = "${date.year}-$month";
    if (allMonthlyEarnings.containsKey(formattedDate)) {
      return allMonthlyEarnings[formattedDate] ?? 0;
    }

    return 0;
  }

  factory EarningsModel.fromJson(Map<String, dynamic> json) =>
      _$EarningsModelFromJson(json);
}
