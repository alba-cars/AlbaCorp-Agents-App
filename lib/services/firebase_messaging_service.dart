
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:awesome_notifications_fcm/awesome_notifications_fcm.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/service_locator/injectable.dart';

import '../data/objectbox/entity/call_processing_entity.dart';
import '../service_locator/objectbox.dart';
import '../view/task_detail_screen/cubit/task_detail_cubit.dart';

class AwesomeFcm {
  static String? fcmToken;
  static Future<void> initializeRemoteNotifications(
      {required bool debug}) async {
    await AwesomeNotificationsFcm().initialize(
      onFcmSilentDataHandle: AwesomeFcm.mySilentDataHandle,
      onFcmTokenHandle: AwesomeFcm.myFcmTokenHandle,
      onNativeTokenHandle: AwesomeFcm.myNativeTokenHandle,
      // This license key is necessary only to remove the watermark for
      // push notifications in release mode. To know more about it, please
      // visit http://awesome-notifications.carda.me#prices
      licenseKeys: [
        "2024-10-12==C3nQf/qapeSsmQ41+6OOgO1J0oUmX60MBx832S41LWZ0cXsB1cKI/fQ9teEfvIOQYW+QnJJfN3/GWphBH899VW9crTGebMgvODiprKWTtX7+rmtC/ibUOA2rtQle0nTh3g9qqoWE4aLdnrDzzCrCZLJCOAb/qCG9MQElXYwfdHlEqBXmPqEv9ttRFgUp+UfSFm9FlSBteqkbAzRUn/xLDGsmpYTXguNl4Wl4xwwln/WUN9Lp0CWBbWoA/V591wHnpU02xzdlxGfKgeGv35mVd9bOGQwbyQdfGR7SAVR8QwwS+sv01jL9e+LTWqMm2BC/cE2NgMfqLOCiUAwYOrZ+lw==",
        "2024-10-12==CLEr2WQzWDcKEGA6VtLNPlh0TYP/ZELfATrYwGkg3TC+ThaB21IM2pobYvpCekcPvQmvBQPrgOo2mg07yqduVN2EQ7z44Z7W2kU/hdhVkQlAJ5k0oViRM/1X62FDclqjQpMLXjxgVvqkeIWls9NCGSmUOnRFUDGdYYyI7++xrr6rw0aH0mHJvXj8matSfAWagi5WjaCNa1b8Cncz15qYsAlPSR+KVhQS3YHukFeJ1jJcYAZMWuCRQmZ5l7RFuKMEsgtjCq/MLalVOJf87QGy+BSYBBbS/dz2Gun6h4hL41t0UWSEynSrFS43UGb0hEqm67Mk8Eq1Hvq3gC9P/DR+oQ=="
      ],
      debug: false,
    );
  }

  static Future<String> getFirebaseMessagingToken() async {
    String firebaseAppToken = '';
    if (await AwesomeNotificationsFcm().isFirebaseAvailable) {
      try {
        firebaseAppToken =
            await AwesomeNotificationsFcm().requestFirebaseAppToken();
      } catch (exception) {
        debugPrint('$exception');
      }
    } else {
      debugPrint('Firebase is not available on this project');
    }
    return firebaseAppToken;
  }

  ///  *********************************************
  ///     REMOTE NOTIFICATION EVENTS
  ///  *********************************************

  /// Use this method to execute on background when a silent data arrives
  /// (even while terminated)
  @pragma("vm:entry-point")
  static Future<void> mySilentDataHandle(FcmSilentData silentData) async {
    print('"SilentData": ${silentData.toString()}');

     try {
    if (silentData.data?['type'] == 'CALL_PROCESSING_STATUS') {
      ObjectBox? objectBox;
      try {
        objectBox = getIt<ObjectBox>();
      } catch (e) {
        
      }
      if(objectBox == null){
        objectBox = await ObjectBox.create();
      }
      final store = objectBox.store;
      final box = store.box<CallProcessingEntity>();
      
      await box.putAsync(CallProcessingEntity(
        activityId: silentData.data?['activityId'] ?? '',
        status: silentData.data?['status'] ?? '',
        summary: silentData.data?['summary'],
        error: silentData.data?['error'],
      ));
      
      store.close();
    }
  } catch (error) {
    Logger().e('Error saving call processing status: $error');
  }
  }

  /// Use this method to detect when a new fcm token is received
  @pragma("vm:entry-point")
  static Future<void> myFcmTokenHandle(String token) async {
    debugPrint('FCM Token:"$token"');
    fcmToken = token;
  }

  /// Use this method to detect when a new native token is received
  @pragma("vm:entry-point")
  static Future<void> myNativeTokenHandle(String token) async {
    debugPrint('Native Token:"$token"');
  }
}
