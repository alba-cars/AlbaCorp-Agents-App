import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/pref_data.dart';
import 'package:real_estate_app/util/widget_extensions.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart';

import '../../util/color_category.dart';

class AccountCreated extends StatefulWidget {
  const AccountCreated({Key? key}) : super(key: key);

  @override
  State<AccountCreated> createState() => _AccountCreatedState();
}

class _AccountCreatedState extends State<AccountCreated> {
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
                  child: getAssetImage("account_created.png",
                      height: 100.h, width: 100.h)),
              getVerSpace(30.h),
              getCustomFont("Account Created", 28.sp, Colors.black, 1,
                  fontWeight: FontWeight.w700,
                  txtHeight: 1.5,
                  textAlign: TextAlign.center),
              getVerSpace(8.h),
              getMultilineCustomFont(
                  "Your Account has been successfully Created!",
                  16.sp,
                  Colors.black,
                  fontWeight: FontWeight.w400,
                  txtHeight: 1.5,
                  textAlign: TextAlign.center),
              getVerSpace(40.h),
              getButton(context, pacificBlue, "Ok", Colors.white, () {
                PrefData.setIsSignIn(false);
                context.goNamed(HomePage.routeName);
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
