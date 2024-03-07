import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/controller/controller.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/pref_data.dart';
import 'package:real_estate_app/util/widget_extensions.dart';
import 'package:real_estate_app/view/more_screen/help_center_screen.dart';
import 'package:real_estate_app/view/more_screen/language_screen.dart';
import 'package:real_estate_app/view/more_screen/booking_tab/my_bookings_screen.dart';
import 'package:real_estate_app/view/more_screen/my_profiles/my_profile_screen.dart';
import 'package:real_estate_app/view/more_screen/notification_screen.dart';
import 'package:real_estate_app/view/more_screen/privacy_security_screen.dart';
import 'package:real_estate_app/view/login/login_screen.dart';

import '../../util/constant_widget.dart';

class TabMore extends StatefulWidget {
  const TabMore({Key? key}) : super(key: key);
  static const routeName = '/more-page';

  @override
  State<TabMore> createState() => _TabMoreState();
}

class _TabMoreState extends State<TabMore> {
  // TabMoreScreenController tabMoreScreenController =
  //     Get.put(TabMoreScreenController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 259.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: (Radius.circular(16.h)),
                        bottomRight: (Radius.circular(16.h))),
                    color: pacificBlue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getVerSpace(20.h),
                    getCustomFont("Settings", 20.sp, regularWhite, 1,
                        fontWeight: FontWeight.w700, txtHeight: 1.5.h),
                    getVerSpace(20.h),
                    Row(
                      children: [
                        getAssetImage("user_image.png",
                            height: 80.h, width: 80.h),
                        getHorSpace(20.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getCustomFont("Jacob Jones", 18.sp, regularWhite, 1,
                                fontWeight: FontWeight.w600, txtHeight: 1.5.h),
                            getVerSpace(6.h),
                            getCustomFont(
                                "jecobjones@gmail.com", 14.sp, regularWhite, 1,
                                fontWeight: FontWeight.w400)
                          ],
                        )
                      ],
                    )
                  ],
                ).paddingSymmetric(horizontal: 20.h),
              ),
              Container(
                height: 415.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.h),
                    boxShadow: [
                      BoxShadow(
                          color: selectTabColor.withOpacity(0.14),
                          offset: const Offset(-4, 5),
                          blurRadius: 11),
                    ],
                    color: regularWhite),
                child: Column(
                  children: [
                    getVerSpace(30.h),
                    getSettingsOptionFormate(
                        "my_profile_icon.svg", "My Profile", () {
                      // Get.to(MyProfile());
                    }),
                    getVerSpace(20.h),
                    getSettingsOptionFormate(
                        "my_booking_icon.svg", "My Bookings", () {
                      // Get.to(MyBooking());
                    }),
                    getVerSpace(20.h),
                    getSettingsOptionFormate(
                        "notification_circle_icon.svg", "Notification", () {
                      // Get.to(NotificationScreen());
                    }),
                    getVerSpace(20.h),
                    getSettingsOptionFormate("language_icon.svg", "Language",
                        () {
                      // Get.to(LanguageScreen());
                    }),
                    getVerSpace(20.h),
                    getSettingsOptionFormate(
                        "privacy_icon.svg", "Privacy & Security", () {
                      // Get.to(Privacy());
                    }),
                    getVerSpace(20.h),
                    getSettingsOptionFormate(
                        "help_center_icon.svg", "Help Center", () {
                      // Get.to(HelpCenter());
                    }),
                  ],
                ),
              ).paddingOnly(top: 170.h, left: 20.h, right: 20.h)
            ],
          ),
          getVerSpace(36.h),
          GestureDetector(
              onTap: () {
                //Get.off(LoginScreen());
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => Dialog(
                          child: Padding(
                            padding: EdgeInsets.all(10.w),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                getMultilineCustomFont(
                                    "Are you sure you want to Logout!",
                                    16.sp,
                                    regularBlack,
                                    fontWeight: FontWeight.w700,
                                    textAlign: TextAlign.center),
                                getVerSpace(30.h),
                                Row(
                                  children: [
                                    Expanded(
                                        child: getButton(context, pacificBlue,
                                            "Yes", regularWhite, () {
                                      getIt<AuthBloc>()
                                          .add(AuthEvent.userLoggedOut());
                                    }, 18.sp,
                                            borderRadius:
                                                BorderRadius.circular(16.h),
                                            buttonHeight: 46.h)),
                                    getHorSpace(10.w),
                                    Expanded(
                                        child: getButton(
                                      context,
                                      regularWhite,
                                      "No",
                                      pacificBlue,
                                      () {
                                        // Get.back();
                                      },
                                      18.sp,
                                      borderWidth: 1.h,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.h)),
                                      isBorder: true,
                                      borderColor: pacificBlue,
                                      buttonHeight: 46.h,
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ));
              },
              child: getCustomFont(
                "Logout",
                16.sp,
                regularBlack,
                1,
                fontWeight: FontWeight.w400,
                txtHeight: 1.5.h,
              )),
          getVerSpace(20.h)
        ],
      ),
    );
  }
}
