import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
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
                getAppBar("Help Center", () {
                  backClick();
                }).paddingSymmetric(horizontal: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getVerSpace(31.h),
                      question('1.Types of data we collect'),
                      getVerSpace(16.h),
                      answer(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                      getVerSpace(31.h),
                      question('2. Use of your personal Data'),
                      getVerSpace(16.h),
                      answer(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                      getVerSpace(31.h),
                      question('3. Disclosure of your personal Data'),
                      getVerSpace(16.h),
                      answer(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                    ],
                  ),
                )
              ])),
        ));
  }

  question(String s) {
    return getMultilineCustomFont(s, 18.sp, regularBlack,
        fontWeight: FontWeight.w700, txtHeight: 1.5.h);
  }

  answer(String s) {
    return getMultilineCustomFont(s, 16.sp, hintColor,
        fontWeight: FontWeight.w400, txtHeight: 1.5.h);
  }
}
