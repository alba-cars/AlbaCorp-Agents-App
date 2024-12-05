import 'package:dio/dio.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:logger/logger.dart';

Result<T> onError<T>(Object e, StackTrace stack, Logger log) {
  SlackService().sendSlackMessage(
      message:
          "Error occured for ${getIt<AuthBloc>().state.user?.firstName ?? ''} ${getIt<AuthBloc>().state.user?.lastName ?? ''}.",
      stackTrace: stack,
      errorMessage: e.toString());
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

class SlackService {
  final Dio _dio = Dio();
  static const String _slackWebHookUrl =
      'https://hooks.slack.com/services/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';

  Future<void> sendSlackMessage({
    required String message,
    StackTrace? stackTrace,
    String? errorMessage,
  }) async {
    try {
      print('Sending slack message');

      if (_slackWebHookUrl.isEmpty) {
        throw Exception('Invalid slack url');
      }

      // Format message with error details if provided
      final formattedMessage = _formatMessage(
        message: message,
        stackTrace: stackTrace,
        errorMessage: errorMessage,
      );

      final response = await _dio.post(
        _slackWebHookUrl,
        data: {
          'text': formattedMessage,
          'mrkdwn': true, // Enable markdown formatting
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode == 200) {
        print('Slack message sent successfully');
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: 'Failed to send Slack message. Status: ${response.statusCode}',
        );
      }
    } on DioException catch (e, stackTrace) {
      final errorMsg = _formatDioError(e);
      print('Dio Error sending slack message: $errorMsg');
      print('Stack trace: $stackTrace');
      rethrow;
    } catch (error, stackTrace) {
      print('Error sending slack message: $error');
      print('Stack trace: $stackTrace');
      rethrow;
    }
  }

  String _formatMessage({
    required String message,
    StackTrace? stackTrace,
    String? errorMessage,
  }) {
    final buffer = StringBuffer();

    // Add main message
    buffer.writeln(message);

    // Add error message if provided
    if (errorMessage != null) {
      buffer.writeln('\n*Error:*');
      buffer.writeln('```$errorMessage```');
    }

    // Add stack trace if provided
    if (stackTrace != null) {
      buffer.writeln('\n*Stack Trace:*');
      // Format stack trace for better readability in Slack
      final formattedStackTrace = stackTrace
          .toString()
          .split('\n')
          .take(10) // Take first 10 lines to avoid too long messages
          .join('\n');
      buffer.writeln('```$formattedStackTrace```');
    }

    return buffer.toString();
  }

  String _formatDioError(DioException e) {
    final buffer = StringBuffer('DioError: ');

    buffer.write(e.type.toString());

    if (e.message != null) {
      buffer.write(' - ${e.message}');
    }

    if (e.response != null) {
      buffer.write('\nStatus: ${e.response?.statusCode}');
      buffer.write('\nData: ${e.response?.data}');
    }

    return buffer.toString();
  }
}


