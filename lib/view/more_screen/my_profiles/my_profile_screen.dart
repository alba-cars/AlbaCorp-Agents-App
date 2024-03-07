import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';
import 'package:real_estate_app/view/more_screen/my_profiles/edit_profile_screen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
      child: SafeArea(
          child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getVerSpace(20.h),
            getAppBar("My Profile", () {
              backClick();
            }),
            getVerSpace(40.h),
            Center(
              child: Stack(children: [
                getAssetImage("user_image.png", height: 100.h, width: 100.h),
                Container(
                  height: 30.h,
                  width: 30.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: selectTabColor.withOpacity(0.14),
                            offset: const Offset(-4, 5),
                            blurRadius: 11),
                      ],
                      color: regularWhite),
                  child: SvgPicture.asset(
                    "${Constant.assetImagePath}edit_icon.svg",
                    height: 20.h,
                    width: 20.w,
                  ).paddingAll(5.h),
                ).paddingOnly(left: 70.h, top: 70.h)
              ]),
            ),
            Expanded(
                child: ListView(
              children: [
                getVerSpace(30.h),
                getCustomFont("Full Name", 16.sp, hintColor, 1,
                    fontWeight: FontWeight.w400, txtHeight: 1.5.h),
                getVerSpace(6.h),
                getCustomFont("Jacob Jones", 16.sp, regularBlack, 1,
                    fontWeight: FontWeight.w400, txtHeight: 1.5.h),
                getVerSpace(20.h),
                getDivider(setColor: dividerColor),
                getVerSpace(20.h),
                getCustomFont("Phone Number", 16.sp, hintColor, 1,
                    fontWeight: FontWeight.w400, txtHeight: 1.5.h),
                getVerSpace(6.h),
                getCustomFont("(239) 555-0108", 16.sp, regularBlack, 1,
                    fontWeight: FontWeight.w400, txtHeight: 1.5.h),
                getVerSpace(20.h),
                getDivider(setColor: dividerColor),
                getVerSpace(20.h),
                getCustomFont("Email Address", 16.sp, hintColor, 1,
                    fontWeight: FontWeight.w400, txtHeight: 1.5.h),
                getVerSpace(6.h),
                getCustomFont("jecobjones@gmail.com", 16.sp, regularBlack, 1,
                    fontWeight: FontWeight.w400, txtHeight: 1.5.h),
                getVerSpace(20.h),
                getDivider(setColor: dividerColor),
              ],
            )),
            getButton(
                    context,
                    pacificBlue,
                    "Edit Profile",
                    buttonHeight: 60.h,
                    regularWhite, () {
              // Get.to(EditProfile());
            }, borderRadius: BorderRadius.circular(16.h), 18.sp)
                .paddingOnly(bottom: 50.h)
          ],
        ).paddingSymmetric(horizontal: 20.h),
      )),
    );
  }
}
