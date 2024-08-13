import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/earnings_model.dart';
import 'package:real_estate_app/util/api_error.dart';
import 'package:real_estate_app/util/result.dart';
import '../repository/finance_repo.dart';

@Injectable(as: FinanceRepo)
class FinanceData implements FinanceRepo {
  final Dio _dio;

  FinanceData({required Dio dio}) : _dio = dio;

  @override
  Future<Result<EarningsModel>> getAgentsEarnings() async {
    try {
      final response = await _dio.get('v1//deals/agent/earnings/me');
      return Success(EarningsModel.fromJson(response.data));
    } catch (e, stack) {
      return onError(e, stack, Logger());
    }
  }
}
