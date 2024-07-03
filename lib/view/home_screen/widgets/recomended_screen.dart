import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/data/datafile.dart';
import 'package:real_estate_app/model/recomended_model.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

import '../../../util/color_category.dart';
import '../../../util/constant_widget.dart';

class RecomendedScreen extends StatefulWidget {
  const RecomendedScreen({Key? key}) : super(key: key);

  @override
  State<RecomendedScreen> createState() => _RecomendedScreenState();
}

class _RecomendedScreenState extends State<RecomendedScreen> {
  void backClick() {
    Constant.backToFinish();
  }

  // RecomendedScreenController recomendedScreenController =
  //     Get.put(RecomendedScreenController());
  List<ModelRecomended> recomendedLists = DataFile.recomendedList;
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
            getVerSpace(28.h),
            getAppBar("Recomended", () {
              backClick();
            }).paddingSymmetric(horizontal: 20.w),
            getVerSpace(20.h),
            Expanded(
              child: ListView.builder(
                itemCount: recomendedLists.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  ModelRecomended modelRecomended = recomendedLists[index];
                  return GestureDetector(
                    onTap: () {
                      // Get.to(DetailScreen());
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.h),
                          boxShadow: [
                            BoxShadow(
                                color: shadowColor,
                                offset: Offset(-9, 12),
                                blurRadius: 34)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 130.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16.h)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Constant.assetImagePath +
                                              modelRecomended.image),
                                      fit: BoxFit.fill)),
                              alignment: Alignment.topRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // homecontroller.onSavePosition(
                                      //     recomendedLists[index]);
                                    },
                                    child: Container(
                                      height: 36.h,
                                      width: 36.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              regularBlack.withOpacity(0.50)),
                                      child: recomendedLists[index].favourite
                                          ? getSvgImage("savefill.svg",
                                                  height: 20.h, width: 20.w)
                                              .marginAll(8.h)
                                          : getSvgImage("savewithoutfill.svg",
                                                  height: 20.h, width: 20.w)
                                              .marginAll(8.h),
                                    ),
                                  )
                                ],
                              ).paddingOnly(top: 12.h, right: 12.w)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getVerSpace(13.h),
                              getCustomFont(
                                  modelRecomended.name, 16.sp, Colors.black, 1,
                                  fontWeight: FontWeight.w600, txtHeight: 1.5),
                              getVerSpace(12.h),
                              Row(
                                children: [
                                  getSvgImage("location_unselect.svg",
                                      height: 20.h, width: 20.h),
                                  getHorSpace(12.h),
                                  getCustomFont(modelRecomended.location, 16.sp,
                                      hintColor, 1,
                                      fontWeight: FontWeight.w400),
                                  getHorSpace(12.h),
                                  getAssetImage("black_dot.png",
                                      height: 6.h, width: 6.w),
                                  getHorSpace(12.h),
                                  getCustomFont(
                                      modelRecomended.type, 16.sp, hintColor, 1,
                                      fontWeight: FontWeight.w400),
                                ],
                              ),
                              getVerSpace(16.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      getCustomFont("${modelRecomended.price}",
                                          14.sp, pacificBlue, 1,
                                          fontWeight: FontWeight.w600),
                                      getHorSpace(2.w),
                                      getCustomFont(
                                          "/month", 14.sp, hintColor, 1,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      getSvgImage("maximize.svg",
                                          height: 20.h, width: 20.w),
                                      getHorSpace(7.w),
                                      getCustomFont(modelRecomended.meter,
                                          16.sp, regularBlack, 1,
                                          fontWeight: FontWeight.w600),
                                      getAssetImage("2nd.png",
                                              height: 6.h, width: 4.w)
                                          .marginOnly(bottom: 3.h)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ).paddingSymmetric(horizontal: 15.h),
                          getVerSpace(15.h)
                        ],
                      ),
                    ).paddingSymmetric(horizontal: 20.w, vertical: 10.h),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
