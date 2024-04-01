import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/data/datafile.dart';
import 'package:real_estate_app/model/notification_type_model.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // NotificationScreenController notificationScreenController =
  //     Get.put(NotificationScreenController());
  List<NotificationType> notificationType = DataFile.getNotificationType();

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
            backgroundColor: bgColor,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getVerSpace(20.h),
                getAppBar("Notifications", () {
                  backClick();
                }).paddingSymmetric(horizontal: 20.h),
                getVerSpace(30.h),
                SizedBox(
                  height: 50.h,
                  child: ListView.builder(
                    itemCount: notificationType.length,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      NotificationType category = notificationType[index];
                      return GestureDetector(
                        onTap: () {
                          // notificationScreenController.categoryChange(index);
                        },
                        child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 18.h),
                            margin: EdgeInsets.only(
                                left: index == 0 ? 20.h : 0, right: 20.h),
                            decoration: BoxDecoration(
                                color: true ? lightPacific : Colors.white,
                                borderRadius: BorderRadius.circular(16.h),
                                boxShadow: true
                                    ? null
                                    : [
                                        BoxShadow(
                                            color: shadowColor,
                                            offset: Offset(-4, 5),
                                            blurRadius: 11)
                                      ]),
                            child: Row(
                              children: [
                                getCustomFont(category.name!, 16.sp,
                                    true ? pacificBlue : Colors.black, 1,
                                    fontWeight: true
                                        ? FontWeight.w600
                                        : FontWeight.w400),
                              ],
                            )),
                      );
                    },
                  ),
                ),
                getVerSpace(30.h),
                getCustomFont("Today", 16.sp, regularBlack, 1,
                        fontWeight: FontWeight.w600)
                    .paddingSymmetric(horizontal: 20.h),
                getVerSpace(20.h),
                Expanded(
                    child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  children: [
                    getNotificationDataFormat(
                        "notification1st.png", "Jenny Wilson", "10 min ago",
                        firstText: "Just messaged you.check the message in ",
                        secondText: "message tab.",
                        thirdText: ""),
                    getVerSpace(20.h),
                    getNotificationDataFormat(
                        "notification2nd.png", "Bessie Cooper", "40 min ago",
                        firstText: "Giving",
                        secondText: "5 star",
                        thirdText: "review on your listing Heaven Appartment"),
                    getVerSpace(20.h),
                    getNotificationDataFormat(
                        "notification3rd.png", "Devon Lane", "4 hour ago",
                        firstText: "Giving",
                        secondText: "5 star",
                        thirdText: "review on your listing Heaven Appartment"),
                    getVerSpace(30.h),
                    getCustomFont("Yesterday", 16.sp, regularBlack, 1,
                            fontWeight: FontWeight.w600, txtHeight: 1.5.h)
                        .paddingSymmetric(horizontal: 20.h),
                    getVerSpace(20.h),
                    getNotificationDataFormat(
                        "notification4th.png", "Albert Flores", "40 min ago",
                        firstText:
                            "Ipsum faucibus vitae aliquet nec ullamcorper Sem integer vitae justo eget",
                        secondText: "",
                        thirdText: ""),
                  ],
                ))
              ],
            ),
          ),
        ));
  }
}
//getNotificationDataFormat("notification1st.png", "Jenny Wilson", "10 min ago",firstText: "Just messaged you.check the message in ", secondText: "message tab."),
