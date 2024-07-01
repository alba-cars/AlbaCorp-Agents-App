import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _getIsFirst();
  }

  _getIsFirst() async {
    Timer(const Duration(seconds: 3), () {
      context.read<AuthBloc>().add(AuthEvent.started());
    });
  }

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    return Scaffold(
      backgroundColor: Color(0xffDFC090),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getAssetImage("homes-logo.png", width: 120.h, height: 120.h),
          ],
        ),
      ),
    );
  }
}
