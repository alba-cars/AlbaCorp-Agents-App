import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

import '../app/auth_bloc/auth_bloc.dart';
import '../service_locator/injectable.dart';

class TokenInterceptor extends InterceptorsWrapper {
  static String? _token;
  static bool _tokenRefreshAttempted = false;

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (_token == null) {
      FlutterSecureStorage storage = const FlutterSecureStorage();
      if (await storage.containsKey(key: 'accessToken')) {
        _token = await storage.read(key: 'accessToken');
      }
    }
    if (_token != null && options.headers["Authorization"] == null) {
      options.headers['Authorization'] = 'Bearer $_token';
    }
    if (options.path == '/device/auth/logout') {
      deleteToken();
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    String? accessToken;
    String? refreshToken;
    if (response.data.toString() != "") {
      if (response.data is Map) {
        accessToken = response.data?['access_token'];
        refreshToken = response.data?['refreshToken'];
        _tokenRefreshAttempted = false;
      }
    }
    if (response.statusCode == 200 && accessToken != null) {
      FlutterSecureStorage storage = const FlutterSecureStorage();
      storage.write(key: 'accessToken', value: accessToken);
      storage.write(key: 'refreshToken', value: refreshToken);
      _token = accessToken;
    }

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 403 &&
        err.requestOptions.path != '/device/auth/logout') {
      if (!_tokenRefreshAttempted) {
        // If a 401 response is received, refresh the access token
        _tokenRefreshAttempted = true;
        String? newAccessToken = await refreshToken();
        if (newAccessToken != null) {
          // Update the request header with the new access token
          err.requestOptions.headers['Authorization'] =
              'Bearer $newAccessToken';

          // Repeat the request with the updated header

          return handler.resolve(await getIt<Dio>().fetch(err.requestOptions));
        }
      } else {
        deleteToken();
        getIt<AuthBloc>().add(const AuthEvent.userLoggedOut());
      }
    }

    super.onError(err, handler);
  }

  static void deleteToken() {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    storage.delete(key: 'accessToken');
    storage.delete(key: 'refreshToken');
    _token = null;
  }

  Future<String?> refreshToken() async {
    try {
      FlutterSecureStorage storage = const FlutterSecureStorage();
      final rToken = await storage.read(key: 'refreshToken');
      if (rToken == null) {
        return null;
      }
      final response = await getIt<Dio>().get('/v1/auth/refresh-token',
          options: Options(headers: {'cookie': 'device-token=$rToken'}));
      final accessToken = response.data?['access_token'];
      final refreshToken = response.data?['refreshToken'];

      storage.write(key: 'refreshToken', value: refreshToken);
      storage.write(key: 'accessToken', value: accessToken);
      return accessToken;
    } catch (e) {
      return null;
    }
  }
}
