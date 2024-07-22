import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationService {
  static Future<void> initializeNotification() async {
    await AwesomeNotifications().initialize(
        null,
        [
          NotificationChannel(
            channelKey: 'call_channel',
            channelName: 'Call Notifications',
            channelDescription: 'Notification channel for calls',
            defaultColor: Colors.blue,
            ledColor: Colors.white,
            importance: NotificationImportance.Max,
            channelShowBadge: true,
            criticalAlerts: true,
            playSound: true,
            defaultRingtoneType: DefaultRingtoneType.Ringtone,
          ),
          NotificationChannel(
              channelKey: 'important_channel',
              channelName: 'Important Notifications',
              channelDescription: 'Notification channel for important',
              defaultColor: Colors.blue,
              ledColor: Colors.white,
              importance: NotificationImportance.Max,
              channelShowBadge: true,
              criticalAlerts: true,
              defaultRingtoneType: DefaultRingtoneType.Notification,
              playSound: true,
              soundSource: 'resource://raw/res_buzz')
        ],
        debug: true);

    await AwesomeNotifications()
        .isNotificationAllowed()
        .then((isAllowed) async {
      if (!isAllowed) {
        final granted =
            await AwesomeNotifications().requestPermissionToSendNotifications();
        if (!granted) {
          return;
        }
      }
    });

    await AwesomeNotifications().setListeners(
      onActionReceivedMethod: onActionReceivedMethod,
    );
  }

  static Future<void> showCallNotification(
      String title, String body, String phoneNumber) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 1,
        channelKey: 'call_channel',
        title: title,
        body: body,
        category: NotificationCategory.Call,
        wakeUpScreen: true,
        fullScreenIntent: true,
        autoDismissible: false,
        payload: {'phone_number': phoneNumber},
      ),
      actionButtons: [
        NotificationActionButton(
          key: 'ACCEPT',
          label: 'Call',
          color: Colors.green,
          autoDismissible: true,
        ),
        NotificationActionButton(
          key: 'WHATSAPP',
          label: 'WhatsApp',
          color: Colors.blue,
          autoDismissible: true,
        ),
      ],
    );
  }

  static Future<void> showImportantNotification(
    String title,
    String body,
  ) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 1,
        channelKey: 'important_channel',
        title: title,
        body: body,
        category: NotificationCategory.Alarm,
        autoDismissible: false,
      ),
    );
  }

  @pragma('vm:entry-point')
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    if (receivedAction.buttonKeyPressed == 'ACCEPT') {
      final phoneNumber = receivedAction.payload?['phoneNumber'];
      if (phoneNumber != null) {
        await makePhoneCall(phoneNumber);
      }
    } else if (receivedAction.buttonKeyPressed == 'WHATSAPP') {
      final phoneNumber = receivedAction.payload?['phoneNumber'];
      if (phoneNumber != null) {
        await makeWhatsApp(phoneNumber);
      }
    }
  }

  static Future<void> makePhoneCall(String phoneNumber) async {
    //await FlutterPhoneDirectCaller.callNumber('tel://${phoneNumber}');
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  static Future<void> makeWhatsApp(String phoneNumber) async {
    final Uri launchUri = Uri(
        scheme: 'whatsapp',
        path: 'send',
        queryParameters: {'phone': phoneNumber.replaceFirst('+', '')});
    await launchUrl(launchUri);
  }
}
