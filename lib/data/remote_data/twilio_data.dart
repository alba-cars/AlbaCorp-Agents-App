import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/twilio_repo.dart';

import '../../util/api_error.dart';
import '../../util/result.dart';

@Injectable(as: TwilioRepo)
class TwilioData implements TwilioRepo {
  final Dio _dio;
  final log = Logger();

  TwilioData({required Dio dio}) : _dio = dio;
  Future<Result<String>> getToken({required String identity}) async {
    try {
      String url = 'v1/twilio/token';

      final response = await _dio.get(
        url,
        queryParameters: {'identity': identity},
      );

      final data = response.data as Map<String, dynamic>;
      final token = data['token'];

      return Success(token);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
