import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/data/datafile.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';
import 'package:real_estate_app/view/home_screen/widgets/detail_screen.dart';

import '../controller/controller.dart';
import '../model/recomended_model.dart';

class ExploreBottomSheet extends StatefulWidget {
  const ExploreBottomSheet({Key? key}) : super(key: key);

  @override
  State<ExploreBottomSheet> createState() => _ExploreBottomSheetState();
}

class _ExploreBottomSheetState extends State<ExploreBottomSheet> {
  List<ModelRecomended> recomendedLists = DataFile.recomendedList;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // go to detail screen
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          getVerSpace(30.h),
          Container(
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
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.h)),
                        image: DecorationImage(
                            image: AssetImage(Constant.assetImagePath +
                                recomendedLists[2].image),
                            fit: BoxFit.fill)),
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // save position
                          },
                          child: Container(
                            height: 36.h,
                            width: 36.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: regularBlack.withOpacity(0.50)),
                            child: recomendedLists[2].favourite
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
                        recomendedLists[2].name, 16.sp, Colors.black, 1,
                        fontWeight: FontWeight.w600, txtHeight: 1.5),
                    getVerSpace(12.h),
                    Row(
                      children: [
                        getSvgImage("location_unselect.svg",
                            height: 20.h, width: 20.h),
                        getHorSpace(12.h),
                        getCustomFont(
                            recomendedLists[2].location, 16.sp, hintColor, 1,
                            fontWeight: FontWeight.w400),
                        getHorSpace(12.h),
                        getAssetImage("black_dot.png", height: 6.h, width: 6.w),
                        getHorSpace(12.h),
                        getCustomFont(
                            recomendedLists[2].type, 16.sp, hintColor, 1,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    getVerSpace(16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            getCustomFont("${recomendedLists[2].price}", 14.sp,
                                pacificBlue, 1,
                                fontWeight: FontWeight.w600),
                            getHorSpace(2.w),
                            getCustomFont("/month", 14.sp, hintColor, 1,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        Row(
                          children: [
                            getSvgImage("maximize.svg",
                                height: 20.h, width: 20.w),
                            getHorSpace(7.w),
                            getCustomFont(recomendedLists[2].meter, 16.sp,
                                regularBlack, 1,
                                fontWeight: FontWeight.w600),
                            getAssetImage("2nd.png", height: 6.h, width: 4.w)
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
          ).paddingSymmetric(horizontal: 20.w),
          getVerSpace(40.h)
        ],
      ),
    );
  }
}
