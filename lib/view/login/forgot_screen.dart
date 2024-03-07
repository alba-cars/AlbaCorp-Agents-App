import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/routes/app_routes.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

import '../../util/constant.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  void backClick() {
    Constant.backToFinish();
  }

  TextEditingController emailController = TextEditingController();
  final forgotForm = GlobalKey<FormState>();

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
            key: forgotForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getVerSpace(40.h),
                getAppBar("Forgot Password", () {
                  backClick();
                }),
                getVerSpace(50.h),
                buildTextFieldWidget(context),
                getVerSpace(50.h),
                buildSubmitButton(context)
              ],
            ).marginSymmetric(horizontal: 20.h),
          ),
        ),
      ),
    );
  }

  Widget buildSubmitButton(BuildContext context) {
    return getButton(context, pacificBlue, "Submit", Colors.white, () {
      Constant.sendToNext(context, Routes.resetRoute);
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
        defaultTextField(context, emailController, "Email Address",
            validator: (email) {
          if (email == null || email.isEmpty) {
            return 'Please enter valid email address';
          }
          return null;
        })
      ],
    );
  }
}
