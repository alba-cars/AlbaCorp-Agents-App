import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/controller/controller.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';
import 'package:real_estate_app/view/home_screen/filterSheet/buy_filter_page.dart';
import 'package:real_estate_app/view/home_screen/filterSheet/rent_filter_page.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  late TabController tabController = TabController(length: 2, vsync: this);
  List filterPage = [BuyPage(), RantPage()];

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
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0XFFFEFEFE),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getVerSpace(28.h),
            getHomeAppBar("back.svg", "Filter", titlefontsize: 20.sp,
                    function: () {
              backClick();
            },
                    widget: getCustomFont("Reset", 14.sp, pacificBlue, 1,
                        txtHeight: 1.5.h, fontWeight: FontWeight.w600))
                .paddingSymmetric(horizontal: 20.w),
            getVerSpace(30.h),
            getTabBar(tabController, pageController, [
              const Tab(
                text: "Buy ",
              ),
              const Tab(
                text: "Rent ",
              ),
            ]).paddingSymmetric(horizontal: 20.w),
            getVerSpace(30.h),
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) {
                  // filterScreenController.tabController.animateTo(value,
                  //     duration: const Duration(milliseconds: 300),
                  //     curve: Curves.ease);
                },
                itemCount: filterPage.length,
                itemBuilder: (context, index) {
                  return filterPage[index];
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
