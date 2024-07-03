import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:real_estate_app/app/activity_cubit/activity_cubit.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/call_bloc/call_bloc.dart';
import 'package:real_estate_app/app/list_state_cubit/list_state_cubit.dart';
import 'package:real_estate_app/routes/app_router.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    checkPreference();
    super.initState();
  }

  checkPreference() async {
    final pref = await SharedPreferences.getInstance();
    await pref.reload();
    final number = pref.getString('call');
    print("call details $number");
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

  // initiatePhoneStateStream() async {
  //   final permission = await requestPermission();
  // }

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
