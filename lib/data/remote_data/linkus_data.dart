import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/linkus_repo.dart';
import 'package:real_estate_app/util/api_error.dart';
import 'package:real_estate_app/util/result.dart';

@Injectable(as: LinkusRepo)
class LinkusData implements LinkusRepo {
  final log = Logger();
  final Dio _dio;
  LinkusData({required Dio dio}) : _dio = dio;
  @override
  Future<Result<bool>> makeACall(
      {required String number, String? activityId}) async {
    try {
      String url = 'v1/yeastarPBX/initiate-call';

      final response = await _dio
          .post(url, data: {'number': number, 'activityId': activityId});

      return Success(
        true,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
