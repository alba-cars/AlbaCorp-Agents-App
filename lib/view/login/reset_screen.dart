import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/routes/app_routes.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

import '../../util/constant.dart';
import '../../util/constant_widget.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  void backClick() {
    Constant.backToFinish();
  }

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  final resetForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        backClick();
        return false;
      },
      child: Scaffold(
        backgroundColor: bgColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Form(
            key: resetForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getVerSpace(40.h),
                getAppBar("Reset Password", () {
                  backClick();
                }),
                getVerSpace(50.h),
                buildTextFieldWidget(context),
                getVerSpace(50.h),
                buildResetButton(context)
              ],
            ).marginSymmetric(horizontal: 20.h),
          ),
        ),
      ),
    );
  }

  Widget buildResetButton(BuildContext context) {
    return getButton(context, pacificBlue, "Reset Password", Colors.white, () {
      Constant.sendToNext(context, Routes.passChangeRoute);
    }, 18.sp,
        weight: FontWeight.w700,
        buttonHeight: 60.h,
        borderRadius: BorderRadius.circular(16.h));
  }

  Column buildTextFieldWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getCustomFont("Email Address", 16.sp, Colors.black, 1,
            fontWeight: FontWeight.w600, txtHeight: 1.5),
        getVerSpace(6.h),
        defaultTextField(context, passwordController, "New Password",
            validator: (email) {
          if (email == null || email.isEmpty) {
            return 'Please enter valid new password';
          }
          return null;
        }, suffix: true, suffixImage: "eye.svg"),
        getVerSpace(20.h),
        getCustomFont("Confirm Password", 16.sp, Colors.black, 1,
            fontWeight: FontWeight.w600, txtHeight: 1.5),
        getVerSpace(6.h),
        defaultTextField(context, confirmController, "Confirm Password",
            validator: (email) {
          if (email == null || email.isEmpty) {
            return 'Please enter valid confirm password';
          }
          return null;
        }, suffix: true, suffixImage: "eye.svg")
      ],
    );
  }
}
