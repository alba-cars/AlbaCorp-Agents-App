import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:linkus_sdk/linkus_sdk.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:phone_state/phone_state.dart';
import 'package:real_estate_app/app/activity_cubit/activity_cubit.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/call_bloc/call_bloc.dart';
import 'package:real_estate_app/app/list_state_cubit/list_state_cubit.dart';
import 'package:real_estate_app/routes/app_router.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/task_detail_screen/task_detail_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:uuid/uuid.dart';

import '../main.dart';

// Future<void> showNotificationWithAction(RemoteMessage message) async {
//   const String callAction = 'CALL_ACTION';
//   // Define the notification details
//   const AndroidNotificationDetails androidPlatformChannelSpecifics =
//       AndroidNotificationDetails('my_app_channel', 'my_app_channel',
//           importance: Importance.max,
//           priority: Priority.high,
//           visibility: NotificationVisibility.public,
//           audioAttributesUsage: AudioAttributesUsage.alarm,
//           fullScreenIntent: true,
//           category: AndroidNotificationCategory.call,
//           actions: [
//         AndroidNotificationAction('id1', 'Call',
//             icon: DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
//             showsUserInterface: true,
//             contextual: true),
//         AndroidNotificationAction('id12', 'Decline', cancelNotification: true)
//       ]);
//   const NotificationDetails platformChannelSpecifics =
//       NotificationDetails(android: androidPlatformChannelSpecifics);

//   // Show the notification with action

//   await flutterLocalNotificationsPlugin.show(
//     1212, // Notification ID
//     message.notification?.title ?? '',
//     message.notification?.body ?? '',
//     platformChannelSpecifics,
//     payload: json.encode(message.data), // Example phone number
//   );
// }

// @pragma('vm:entry-point')
// void onDidReceiveBackgroundNotificationResponse(
//     NotificationResponse response) {}

// @pragma('vm:entry-point')
// void onDidReceiveNotificationResponse(NotificationResponse response) async {
//   if (response.actionId == 'id1') {
//     flutterLocalNotificationsPlugin.cancel(response.id!);
//     final data = json.decode(response.payload ?? '{}');
//     print(data);
//     if (data['type'] == 'call' && data['phone'] != null) {
//       final phone = data['phone'];
//       final leadId = data['lead_id'];
//       final activityId = data['activity_id'];
//       getIt<CallBloc>().add(CallEvent.callStarted(
//           phoneNumber: phone, activityId: activityId, leadId: leadId));
//     }
//   }
// }

// @pragma('vm:entry-point')
// Future<void> onFirebaseBackgroundMessage(RemoteMessage message) async {
//   if (message.data['type'] == 'NEW_SPECIAL_LEADS') {
//     (await SharedPreferences.getInstance())
//         .setString('NEW_SPECIAL_LEADS', json.encode(message.data));
//   } else {
//     showNotificationWithAction(message);
//   }
// }

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
    // getToken();

    // FirebaseMessaging.onMessage.listen(onFirebaseForegroundMessage);
    // FirebaseMessaging.onBackgroundMessage(onFirebaseBackgroundMessage);
    LinkusSdk().onSdkCallBack().listen((e) {
      Logger().d(e);
    });
    checkpreference();
    super.initState();
  }

  // void onFirebaseForegroundMessage(RemoteMessage message) async {
  //   Logger().d(message.data);
  //   if (message.data['type'] == 'NEW_SPECIAL_LEADS') {
  //     (await SharedPreferences.getInstance())
  //         .setString('NEW_SPECIAL_LEADS', json.encode(message.data));
  //     context.read<ActivityCubit>().setHasNewSpecialLeadsActivity(true);
  //   } else {
  //     showNotificationWithAction(message);
  //   }
  // }

  checkpreference() async {
    final pref = await SharedPreferences.getInstance();
    await pref.reload();
    final number = pref.getString('call');
    print("call details $number");
  }

  // getToken() async {
  //   final token = await FirebaseMessaging.instance.getToken();
  //   if (token != null) {
  //     LinkusSdk().setFcmToken(token: token);
  //   }
  //   await getIt<SharedPreferences>().reload();
  //   if (getIt<SharedPreferences>().containsKey('NEW_SPECIAL_LEADS')) {
  //     context.read<ActivityCubit>().setHasNewSpecialLeadsActivity(true);
  //   }
  //   final lmsg =
  //       await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

  //   if (lmsg?.notificationResponse?.actionId == 'id1') {
  //     await flutterLocalNotificationsPlugin
  //         .cancel(lmsg!.notificationResponse!.id!);
  //     final data = json.decode(lmsg.notificationResponse?.payload ?? '{}');
  //     if (data['type'] == 'call' && data['phone'] != null) {
  //       final phone = data['phone'];
  //       final leadId = data['lead_id'];
  //       final activityId = data['activity_id'];
  //       if (getIt<SharedPreferences>().containsKey(activityId) == false) {
  //         getIt<CallBloc>().add(CallEvent.callStarted(
  //             phoneNumber: phone, activityId: activityId, leadId: leadId));
  //       }
  //     }
  //   }
  //   await flutterLocalNotificationsPlugin.initialize(initializationSettings,
  //       onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
  //       onDidReceiveBackgroundNotificationResponse:
  //           onDidReceiveBackgroundNotificationResponse);
  // }

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
        BlocProvider<ListStateCubit>(
          create: (BuildContext context) => getIt<ListStateCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, _) => MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Color(0xff374eab), tertiary: Color(0xffdfc090)),
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
                  style: ButtonStyle(
                      foregroundColor:
                          WidgetStatePropertyAll(Color(0xff374eab)),
                      fixedSize: WidgetStatePropertyAll(Size.fromWidth(
                        200,
                      )),
                      minimumSize: WidgetStatePropertyAll(Size.fromHeight(43)),
                      side: WidgetStatePropertyAll(BorderSide(
                        color: const Color(0xff374eab),
                        width: 1,
                      )),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))))),
              dialogTheme: DialogTheme(
                  backgroundColor: Colors.white,
                  surfaceTintColor: Colors.white)),
        ),
      ),
    );
  }
}
