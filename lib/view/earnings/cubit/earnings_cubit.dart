import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/finance_repo.dart';
import 'package:real_estate_app/model/earnings_model.dart';
import 'package:real_estate_app/model/expected_earnings_model.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

part 'earnings_state.dart';
part 'earnings_cubit.freezed.dart';

@injectable
class EarningsCubit extends Cubit<EarningsState> {
  final FinanceRepo financeRepo;
  EarningsCubit({required this.financeRepo}) : super(EarningsState());

  Future<void> getAgentEarnings({bool isExpected = false}) async {
    if (isExpected) {
      getAgentExpectedEarnings();
      return;
    }
    Logger().d("Earnings triggered");
    emit(EarningsState(fetchStatus: AppStatus.loading));
    final Result<EarningsModel> result = await financeRepo.getAgentsEarnings();
    switch (result) {
      case (Success<EarningsModel> success):
        _handleSuccessCase(success.value);
      case (Error error):
        Logger().e(error);
        _handleFailureScenario(error.exception);
    }
  }

  Future<void> getAgentExpectedEarnings() async {
    Logger().d("Earnings expected triggered");
    emit(EarningsState(fetchStatus: AppStatus.loading));
    final Result<ExpectedEarningsModel> result =
        await financeRepo.getExpectedEarnings();

    switch (result) {
      case (Success<ExpectedEarningsModel> success):
        Logger().d(success.value.expectedCommission);
        _handleExpectedEarningSuccess(success.value);
      case (Error error):
        Logger().e(error);
        _handleFailureScenario(error.exception);
    }
  }

  void _handleExpectedEarningSuccess(ExpectedEarningsModel earnings) {
    emit(EarningsState(
        fetchStatus: AppStatus.success,
        earnings: EarningsModel(
            totalEarnings: earnings.expectedCommission,
            thisMonthEarning: 0,
            allMonthlyEarnings: {})));
  }

  void _handleSuccessCase(EarningsModel earnings) {
    emit(EarningsState(fetchStatus: AppStatus.success, earnings: earnings));
  }

  void _handleFailureScenario(String error) {
    emit(EarningsState(fetchStatus: AppStatus.failure, error: error));
  }
}
