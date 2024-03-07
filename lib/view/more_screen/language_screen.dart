import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/controller/controller.dart';
import 'package:real_estate_app/model/language.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  // LanguageScreenController languageScreenController =
  //     Get.put(LanguageScreenController());

  List<Language> languages = Languages.defaultLanguages;
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
                getAppBar("Languages", () {
                  backClick();
                }).paddingSymmetric(horizontal: 20.h),
                getVerSpace(20.h),
                Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        itemCount: languages.length,
                        itemBuilder: (context, index) => Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 46.h,
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      getCustomFont(
                                          languages[index].name.toString(),
                                          16.sp,
                                          regularBlack,
                                          1,
                                          fontWeight: FontWeight.w400,
                                          txtHeight: 1.5.h),
                                      Radio(
                                        activeColor: pacificBlue,
                                        value: index,
                                        groupValue: 2,
                                        onChanged: (Object? value) {
                                          // languageScreenController
                                          //     .onChageOptionValue(index);
                                          // setState(() {
                                          //   option = index;
                                          // });
                                        },
                                      ).paddingOnly(bottom: 20.h),
                                    ],
                                    // getDivider(setColor: dividerColor)
                                  ),
                                ),
                                getDivider(setColor: dividerColor),
                                getVerSpace(20.h)
                              ],
                            )

                        //getVerSpace(21.h),
                        // getDivider(setColor: dividerColor)

                        ))
              ],
            ),
          ),
        ));
  }
}
