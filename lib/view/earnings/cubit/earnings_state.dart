part of 'earnings_cubit.dart';

@freezed
class EarningsState with _$EarningsState {
  const factory EarningsState(
      {@Default(AppStatus.initial) AppStatus fetchStatus,
      @Default(EarningsModel()) EarningsModel earnings,
      @Default("") String error}) = _EarningsState;
}
