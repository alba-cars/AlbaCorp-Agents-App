import '../../model/earnings_model.dart';
import '../../util/result.dart';

abstract class FinanceRepo {
  Future<Result<EarningsModel>> getAgentsEarnings();
}
