import 'package:dio/dio.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:logger/logger.dart';

Result<T> onError<T>(Object e, StackTrace stack, Logger log) {
  // Sentry.captureException(
  //   e,
  // );
  try {
    if (e is DioException) {
      log.e(e.response?.data, error: e, stackTrace: stack);
      return Error(
          e.response?.data?['message'] ??
              "Something went wrong ${e.response?.statusCode ?? ''}",
          code: e.response?.statusCode);
    }
    if (e is Exception) {
      log.e("Exception", error: e, stackTrace: stack);
      return Error("Failed for some reason");
    }
    log.e("Else", error: e, stackTrace: stack);
    return Error("Failed for some reason");
  } catch (e) {
    return Error("Failed for some reason");
  }
}
