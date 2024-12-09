import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/service_locator/objectbox.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../util/token_interceptor.dart';

@module
abstract class RegisterModules {
  @Environment('Prod')
  @Named('BaseUrl')
  String get baseProdUrl => 'https://backend.alba.homes/api/';

  @Environment('Stage')
  @Named('BaseUrl')
  String get baseUrl => 'https://admin.dev.homes.albacars.app/api/';
      // 'http://10.0.2.2:4000/api/';
  // 'http://172.20.10.17:4000/api/';
  //   'http://172.20.10.17:4000/api/';
  // 'http://192.168.2.160:4000/api/';
  // 'http://172.15.10.247:4000/api/';
  // 'http://172.20.8.251:4000/api/';
  // 'https://backend.alba.homes/api/';
  @Environment('Prod')
  @Named('AwsBucket')
  String get awsProdBucket =>
      'https://albacorp-homes-prod.s3.me-central-1.amazonaws.com/';
  @Environment('Stage')
  @Named('AwsBucket')
  String get awsStageBucket =>
      'https://alba-homes-demo.s3.us-east-2.amazonaws.com/';

  @lazySingleton
  Dio getDio(@Named('BaseUrl') String baseUrl) {
    final dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 120),
        sendTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 30)));
    dio.interceptors.add(TokenInterceptor());

    dio.interceptors.add(LogInterceptor(
        requestHeader: false,
        requestBody: true,
        responseBody: true,
        responseHeader: false));
    return dio;
  }

  @preResolve
  Future<ObjectBox> getStore() async {
    final objectBox = await ObjectBox.create();
    return objectBox;
  }

  @preResolve
  Future<SharedPreferences> getSharedPreference() async {
    return await SharedPreferences.getInstance();
  }
}
