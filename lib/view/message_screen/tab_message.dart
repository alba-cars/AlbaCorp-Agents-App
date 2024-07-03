import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/data/datafile.dart';
import 'package:real_estate_app/model/messege_model.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

class TabMessage extends StatefulWidget {
  const TabMessage({Key? key}) : super(key: key);
  static const routeName = '/message-page';

  @override
  State<TabMessage> createState() => _TabMessageState();
}

class _TabMessageState extends State<TabMessage> {
  List<Messege> messegeList = DataFile.getMessege();

  void backClick() {
    Constant.closeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getVerSpace(20.h),
        getAppBar("Message", () {
          backClick();
        }).paddingSymmetric(horizontal: 20.h),
        getVerSpace(20.h),
        getSearchField("Search",
                prefixiconimage: "search.svg",
                prefixiconimageheight: 24.h,
                prefixiconimagewidth: 24.h)
            .paddingSymmetric(horizontal: 20.h),
        getVerSpace(30.h),
        Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                itemCount: messegeList.length,
                itemBuilder: (context, index) {
                  Messege messege = messegeList[index];
                  return GestureDetector(
                    onTap: () {
                      // Get.to(ChatScreen());
                    },
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                getAssetImage(messege.image!,
                                    height: 50.h, width: 50.h),
                                getHorSpace(16.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    getCustomFont(
                                        messege.name!, 14.sp, regularBlack, 1,
                                        fontWeight: FontWeight.w600),
                                    getCustomFont(
                                        messege.messege!, 12.sp, hintColor, 1,
                                        fontWeight: FontWeight.w400),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                getCustomFont(
                                    messege.time!, 14.sp, regularBlack, 1,
                                    fontWeight: FontWeight.w600),
                              ],
                            )
                          ],
                        ).paddingSymmetric(vertical: 10.h),
                        getVerSpace(17.h),
                        getDivider(setColor: Color(0XFFF1F1F1)),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
