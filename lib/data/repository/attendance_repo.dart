import 'package:real_estate_app/util/result.dart';

abstract class AttendanceRepo {
  Future<Result<Map<String, dynamic>>> checkIn({
    required String employeeId,
    required Map<String, dynamic> location,
  });

  Future<Result<Map<String, dynamic>>> checkOut({
    required String employeeId,
    required Map<String, dynamic> location,
  });
}
