import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/auth_repo.dart';
import 'package:real_estate_app/model/agent_model.dart';
import 'package:real_estate_app/model/global_settings_model.dart';
import 'package:real_estate_app/model/user.dart';
import 'package:real_estate_app/util/api_error.dart';
import 'package:real_estate_app/util/result.dart';

@Injectable(as: AuthRepo)
class AuthData implements AuthRepo {
  AuthData(this._dio);
  final Dio _dio;
  final _notification = FirebaseMessaging.instance;
  final log = Logger();

  @override
  Future<Result<User>> login(
      {required String username, required String password}) async {
    try {
      var loginResponse = await _dio.post(
        '/v1/auth/login',
        data: {
          "email": username,
          "password": password,
          "notification_token": await _notification.getToken()
        },
      );
      Map<String, dynamic> data = loginResponse.data;
      log.d(data);
      User user = User.fromJson(data);
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Agent>> getAgentData({required String userId}) async {
    try {
      var loginResponse = await _dio.get(
        'v1/agent/user/$userId',
      );
      Map<String, dynamic> data = loginResponse.data;

      Agent agent = Agent.fromJson(data);
      return Success(agent);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<User>> getLoggedInUser() async {
    try {
      var loginResponse = await _dio.get(
        '/v1/auth/get-logged-in-user',
      );
      Map<String, dynamic> data = loginResponse.data;
      log.d(data);
      User user = User.fromJson(data);
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Result<GlobalSettings>> getSettings() async {
    try {
      var response = await _dio.get(
        'v1/settings',
      );
      Map<String, dynamic> data = response.data?['data']?['global'];

      GlobalSettings agent = GlobalSettings.fromJson(data);
      return Success(agent);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
