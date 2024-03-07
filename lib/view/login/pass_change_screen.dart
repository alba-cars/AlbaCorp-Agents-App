import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/routes/app_routes.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

import '../../util/color_category.dart';
import '../../util/constant.dart';

class PassChangeScreen extends StatefulWidget {
  const PassChangeScreen({Key? key}) : super(key: key);

  @override
  State<PassChangeScreen> createState() => _PassChangeScreenState();
}

class _PassChangeScreenState extends State<PassChangeScreen> {
  void backClick() {
    Constant.backToFinish();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        backClick();
        return false;
      },
      child: Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: getAssetImage("correct.png",
                      height: 100.h, width: 100.h)),
              getVerSpace(30.h),
              getCustomFont("Password Changed", 28.sp, Colors.black, 1,
                  fontWeight: FontWeight.w700,
                  txtHeight: 1.5,
                  textAlign: TextAlign.center),
              getVerSpace(8.h),
              getMultilineCustomFont(
                  "Your password has been successfully changed!",
                  16.sp,
                  Colors.black,
                  fontWeight: FontWeight.w400,
                  txtHeight: 1.5,
                  textAlign: TextAlign.center),
              getVerSpace(40.h),
              getButton(context, pacificBlue, "Ok", Colors.white, () {
                Constant.sendToNext(context, Routes.loginRoute);
              }, 18.sp,
                  weight: FontWeight.w700,
                  buttonHeight: 60.h,
                  borderRadius: BorderRadius.circular(16.h),
                  buttonWidth: 177.w)
            ],
          ).marginSymmetric(horizontal: 20.h),
        ),
      ),
    );
  }
}
