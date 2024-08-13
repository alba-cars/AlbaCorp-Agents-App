import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/finance_repo.dart';
import 'package:real_estate_app/model/earnings_model.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

part 'earnings_state.dart';
part 'earnings_cubit.freezed.dart';

@injectable
class EarningsCubit extends Cubit<EarningsState> {
  final FinanceRepo financeRepo;
  EarningsCubit({required this.financeRepo}) : super(EarningsState());

  Future<void> getAgentEarnings() async {
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

  void _handleSuccessCase(EarningsModel earnings) {
    emit(EarningsState(fetchStatus: AppStatus.success, earnings: earnings));
  }

  void _handleFailureScenario(String error) {
    emit(EarningsState(fetchStatus: AppStatus.failure, error: error));
  }
}
