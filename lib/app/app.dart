import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:phone_state/phone_state.dart';
import 'package:real_estate_app/app/activity_cubit/activity_cubit.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/call_bloc/call_bloc.dart';
import 'package:real_estate_app/routes/app_router.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:uuid/uuid.dart';

import '../main.dart';

Future<void> showNotificationWithAction(RemoteMessage message) async {
  const String callAction = 'CALL_ACTION';
  // Define the notification details
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails('my_app_channel', 'my_app_channel',
          importance: Importance.max,
          priority: Priority.high,
          visibility: NotificationVisibility.public,
          audioAttributesUsage: AudioAttributesUsage.alarm,
          fullScreenIntent: true,
          category: AndroidNotificationCategory.call,
          actions: [
        AndroidNotificationAction('id1', 'Call',
            icon: DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
            showsUserInterface: true,
            contextual: true),
        AndroidNotificationAction('id12', 'Decline', cancelNotification: true)
      ]);
  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

  // Show the notification with action

  await flutterLocalNotificationsPlugin.show(
    1212, // Notification ID
    message.notification?.title ?? '',
    message.notification?.body ?? '',
    platformChannelSpecifics,
    payload: json.encode(message.data), // Example phone number
  );
}

@pragma('vm:entry-point')
void onDidReceiveBackgroundNotificationResponse(
    NotificationResponse response) {}

@pragma('vm:entry-point')
void onDidReceiveNotificationResponse(NotificationResponse response) async {
  if (response.actionId == 'id1') {
    flutterLocalNotificationsPlugin.cancel(response.id!);
    final data = json.decode(response.payload ?? '{}');
    print(data);
    if (data['type'] == 'call' && data['phone'] != null) {
      final phone = data['phone'];
      final leadId = data['lead_id'];
      final activityId = data['activity_id'];
      getIt<CallBloc>().add(CallEvent.callStarted(
          phoneNumber: phone, activityId: activityId, leadId: leadId));
    }
  }
}

@pragma('vm:entry-point')
Future<void> onFirebaseBackgroundMessage(RemoteMessage message) async {
  showNotificationWithAction(message);
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    firebaseMessaging.requestPermission();
    getToken();

    FirebaseMessaging.onMessage.listen(showNotificationWithAction);
    FirebaseMessaging.onBackgroundMessage(onFirebaseBackgroundMessage);
    initiatePhoneStateStream();
    checkpreference();
    super.initState();
  }

  checkpreference() async {
    final pref = await SharedPreferences.getInstance();
    await pref.reload();
    final number = pref.getString('call');
    print("call details $number");
  }

  getToken() async {
    final token = await firebaseMessaging.getToken();
    final lmsg =
        await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    if (lmsg?.notificationResponse?.actionId == 'id1') {
      await flutterLocalNotificationsPlugin
          .cancel(lmsg!.notificationResponse!.id!);
      final data = json.decode(lmsg.notificationResponse?.payload ?? '{}');
      if (data['type'] == 'call' && data['phone'] != null) {
        final phone = data['phone'];
        final leadId = data['lead_id'];
        final activityId = data['activity_id'];
        if (getIt<SharedPreferences>().containsKey(activityId) == false) {
          getIt<CallBloc>().add(CallEvent.callStarted(
              phoneNumber: phone, activityId: activityId, leadId: leadId));
        }
      }
    }
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
        onDidReceiveBackgroundNotificationResponse:
            onDidReceiveBackgroundNotificationResponse);
  }

  Future<bool> requestPermission() async {
    var status = await Permission.phone.request();

    return switch (status) {
      PermissionStatus.denied ||
      PermissionStatus.restricted ||
      PermissionStatus.limited ||
      PermissionStatus.permanentlyDenied =>
        false,
      PermissionStatus.provisional || PermissionStatus.granted => true,
    };
  }

  initiatePhoneStateStream() async {
    final permission = await requestPermission();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => getIt<AuthBloc>(),
        ),
        BlocProvider<ActivityCubit>(
          create: (BuildContext context) => getIt<ActivityCubit>(),
        ),
        BlocProvider<CallBloc>(
          create: (BuildContext context) => getIt<CallBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, _) => MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff374eab)),
              dialogBackgroundColor: Colors.white,
              buttonTheme: ButtonThemeData(
                buttonColor: Color(0xff374eab),
              ),
              appBarTheme: AppBarTheme(
                  backgroundColor: Color(0xff374eab),
                  foregroundColor: Colors.white,
                  titleTextStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff374eab),
                      foregroundColor: Colors.white,
                      // minimumSize: Size.fromWidth(70),
                      fixedSize: Size.fromWidth(200),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xff374eab), width: 2),
                          borderRadius: BorderRadius.circular(12)))),
              outlinedButtonTheme: OutlinedButtonThemeData(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Color(0xff374eab),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color(0xff374eab),
                              width: 20,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          borderRadius: BorderRadius.circular(12)))),
              dialogTheme: DialogTheme(
                  backgroundColor: Colors.white,
                  surfaceTintColor: Colors.white)),
        ),
      ),
    );
  }
}
