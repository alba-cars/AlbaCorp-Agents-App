import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/objectbox/entity/notification_entity.dart';
import 'package:real_estate_app/service_locator/objectbox.dart';
import 'dart:convert';

import 'notification_service.dart';

class FirebaseMessagingService {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;

  static Future<void> initialize() async {
    await _firebaseMessaging.requestPermission();

    FirebaseMessaging.onMessage.listen(_handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Get the token each time the application loads
    String? token = await _firebaseMessaging.getToken();
    print("FCM Token: $token");
    // TODO: Send this token to your server
  }

  static void _handleMessage(RemoteMessage message) {
    print("Handling a message: ${message.messageId}");
    if (message.data['type'] == 'call') {
      NotificationService.showCallNotification(
        message.data["title"] ?? 'Unknown',
        message.data["body"] ?? '',
        message.data['phoneNumber'] ?? '',
      );
    } else if (message.data['type'] == 'ImportantActivity') {
      Logger().d("ImportantActivity");
      NotificationService.showImportantNotification(
        message.data["title"] ?? 'Unknown',
        message.data["body"] ?? '',
      );
    }
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
  if (message.data['type'] == 'call') {
    await NotificationService.showCallNotification(
      message.data["title"] ?? 'Unknown',
      message.data["body"] ?? '',
      message.data['phoneNumber'] ?? '',
    );
  } else if (message.data['type'] == 'ImportantActivity') {
    Logger().d("ImportantActivity");
    await NotificationService.showImportantNotification(
      message.data["title"] ?? 'Unknown',
      message.data["body"] ?? '',
    );
  }
  // final objectBox = await ObjectBox.create();
  // objectBox.store.box<NotificationEntity>().putAsync(NotificationEntity(
  //       title: message.notification?.title ?? 'Unknown',
  //       subTitle: message.notification?.body ?? '',
  //       createdAt:
  //     ));
}
