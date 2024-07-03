import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

import '../../util/color_category.dart';
import '../../util/constant.dart';
import '../../util/constant_widget.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final verificationkey = GlobalKey<FormState>();
  void backClick() {
    Constant.backToFinish();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: verificationkey,
          child: Column(
            children: [
              getVerSpace(40.h),
              getAppBar("Verification", () {
                backClick();
              }),
              getVerSpace(50.h),
              Pinput(
                focusedPinTheme: PinTheme(
                  decoration: BoxDecoration(
                    color: "#F1F1F1".toColor(),
                    border: Border.all(color: borderColor, width: 1.h),
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                  height: 57.h,
                  width: 46.h,
                  margin: EdgeInsets.symmetric(horizontal: 5.h),
                  textStyle: TextStyle(
                      fontSize: 18.h,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: Constant.fontsFamily),
                ),
                disabledPinTheme: PinTheme(
                  width: 46.h,
                  height: 57.h,
                  margin: EdgeInsets.symmetric(horizontal: 5.h),
                  textStyle: TextStyle(
                      fontSize: 18.h,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: Constant.fontsFamily),
                  decoration: BoxDecoration(
                      color: "#F1F1F1".toColor(),
                      border: Border.all(color: borderColor, width: 1.h),
                      borderRadius: BorderRadius.circular(16.h)),
                ),
                defaultPinTheme: PinTheme(
                  width: 46.h,
                  height: 57.h,
                  margin: EdgeInsets.symmetric(horizontal: 5.h),
                  textStyle: TextStyle(
                      fontSize: 18.h,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: Constant.fontsFamily),
                  decoration: BoxDecoration(
                      color: "#F1F1F1".toColor(),
                      border: Border.all(color: borderColor, width: 1.h),
                      borderRadius: BorderRadius.circular(16.h)),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) {},
                validator: (pin) {
                  if (pin!.isEmpty || pin.length < 6) {
                    return 'Please enter the  OTP';
                  }
                  return null;
                },
                length: 6,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              getVerSpace(50.h),
              buildVerifyButton(context),
              // getButton(context, bgColor, text, textColor, function, fontsize)
            ],
          ).marginSymmetric(horizontal: 20.h),
        ),
      ),
    );
  }

  Widget buildVerifyButton(BuildContext context) {
    return getButton(context, pacificBlue, "Verify", Colors.white, () {
      if (verificationkey.currentState!.validate()) {
        // Get.to(AccountCreated());
      }
    }, 18.sp,
        weight: FontWeight.w700,
        buttonHeight: 60.h,
        borderRadius: BorderRadius.circular(16.h));
  }
}
