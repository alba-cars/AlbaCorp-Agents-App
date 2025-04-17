import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/attendance_repo.dart';
import 'package:real_estate_app/util/api_error.dart';
import 'package:real_estate_app/util/result.dart';

@Injectable(as: AttendanceRepo)
class AttendanceData implements AttendanceRepo {
  final log = Logger();
  final Dio _dio;

  AttendanceData({required Dio dio}) : _dio = dio;

  @override
  Future<Result<Map<String, dynamic>>> checkIn({
    required String employeeId,
    required Map<String, dynamic> location,
  }) async {
    try {
      String url = 'v1/attendance/check-in';

      final response = await _dio.post(url, data: {
        'employeeId': employeeId,
        'location': location,
      });

      return Success(
        response.data,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Map<String, dynamic>>> checkOut({
    required String employeeId,
    required Map<String, dynamic> location,
  }) async {
    try {
      String url = 'v1/attendance/check-out';

      final response = await _dio.post(url, data: {
        'employeeId': employeeId,
        'location': location,
      });

      return Success(
        response.data,
      );
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
