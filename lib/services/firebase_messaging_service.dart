import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
        message.data['callerName'] ?? 'Unknown',
        message.data['phoneNumber'] ?? '',
      );
    } else if (message.data['type'] == 'ImportantActivity') {
      NotificationService.showImportantNotification(
        message.notification?.title ?? 'Unknown',
        message.notification?.body ?? '',
      );
    }
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Initialize Firebase if it hasn't been
  await Firebase.initializeApp();
  print("Handling a background message: ${message.messageId}");
  if (message.data['type'] == 'call') {
    await NotificationService.showCallNotification(
      message.data['callerName'] ?? 'Unknown',
      message.data['phoneNumber'] ?? '',
    );
  } else if (message.data['type'] == 'ImportantActivity') {
    await NotificationService.showImportantNotification(
      message.notification?.title ?? 'Unknown',
      message.notification?.body ?? '',
    );
  }
}
