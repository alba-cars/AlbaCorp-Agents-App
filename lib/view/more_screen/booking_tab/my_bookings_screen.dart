import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';
import 'package:real_estate_app/view/more_screen/booking_tab/active_booking.dart';
import 'package:real_estate_app/view/more_screen/booking_tab/completed_booking.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({Key? key}) : super(key: key);

  @override
  State<MyBooking> createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking>
    with SingleTickerProviderStateMixin {
  // MyBookingScreenController myBookingScreenController =
  //     Get.put(MyBookingScreenController());
  PageController pageController = PageController();
  late TabController tabController = TabController(length: 2, vsync: this);
  List bookingPage = [ActiveBooking(), CompletedBooking()];
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
              children: [
                getVerSpace(20.h),
                getAppBar("My Booking", () {
                  backClick();
                }).paddingSymmetric(horizontal: 20.h),
                getVerSpace(30.h),
                getTabBar(tabController, pageController, [
                  const Tab(
                    text: "Active ",
                  ),
                  const Tab(
                    text: "Completed ",
                  ),
                ]).paddingSymmetric(horizontal: 20.w),
                getVerSpace(30.h),
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (value) {
                      // myBookingScreenController.tabController.animateTo(value,
                      //     duration: const Duration(milliseconds: 300),
                      //     curve: Curves.ease);
                    },
                    itemCount: bookingPage.length,
                    itemBuilder: (context, index) {
                      return bookingPage[index];
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
