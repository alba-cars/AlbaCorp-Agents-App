import 'package:real_estate_app/model/expected_earnings_model.dart';

import '../../model/earnings_model.dart';
import '../../util/result.dart';

abstract class FinanceRepo {
  Future<Result<EarningsModel>> getAgentsEarnings();
  Future<Result<ExpectedEarningsModel>> getExpectedEarnings();
}
