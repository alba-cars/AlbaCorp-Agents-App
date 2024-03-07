import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/controller/controller.dart';
import 'package:real_estate_app/data/datafile.dart';
import 'package:real_estate_app/model/filter_buy_page_type_model.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../util/color_category.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({Key? key}) : super(key: key);

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  List<ModelType> categoryLists = DataFile.getTypeData();
  TextEditingController maxAreaController = TextEditingController();
  TextEditingController minAreaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getCustomFont("Type", 15.sp, regularBlack, 1,
                fontWeight: FontWeight.w600)
            .paddingSymmetric(horizontal: 20.w),
        getVerSpace(20.h),
        SizedBox(
          height: 50.h,
          child: ListView.builder(
            itemCount: categoryLists.length,
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              ModelType category = categoryLists[index];
              return GestureDetector(
                onTap: () {
                  // filterscreenController.categoryChange(index);
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
                            fontWeight:
                                true ? FontWeight.w600 : FontWeight.w400),
                      ],
                    )),
              );
            },
          ),
        ),
        getVerSpace(30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getCustomFont("Price", 15.sp, regularBlack, 1,
                    fontWeight: FontWeight.w600)
                .paddingSymmetric(horizontal: 20.w),
            getCustomFont('', 14.sp, pacificBlue, 1,
                fontWeight: FontWeight.w400)
          ],
        ).marginOnly(right: 20.h),
        getVerSpace(21.h),
        SliderTheme(
          data: SliderThemeData(
            trackHeight: 1.h,
          ),
          child: SfRangeSlider(
            min: 0,
            max: 100,
            inactiveColor: borderColor,
            values: SfRangeValues(0, 100),
            interval: 2,
            activeColor: pacificBlue,
            dragMode: SliderDragMode.onThumb,
            dateIntervalType: DateIntervalType.years,
            onChanged: (SfRangeValues newValues) {
              // filterscreenController.onRangeValue(newValues);
              // setState(() {
              //   _values = newValues;
              // });
            },
            startThumbIcon: getSvgImage("range_slider_symbol.svg",
                height: 14.h, width: 14.w),
            endThumbIcon: getSvgImage("range_slider_symbol.svg",
                height: 14.h, width: 14.w),
          ),
        ),
        getVerSpace(30.h),
        getCustomFont("Area (sqft)", 15.sp, regularBlack, 1,
                fontWeight: FontWeight.w600)
            .paddingSymmetric(horizontal: 20.h),
        getVerSpace(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 56.h,
                width: 177.w,
                child: defaultTextField(context, minAreaController, "Min",
                    suffix: true,
                    suffixImage: "arrow_down.svg",
                    suffixheight: 16.h,
                    suffixwidth: 16.w)),
            SizedBox(
                height: 56.h,
                width: 177.w,
                child: defaultTextField(context, maxAreaController, "Max",
                    suffix: true,
                    suffixImage: "arrow_down.svg",
                    suffixheight: 16.h,
                    suffixwidth: 16.w)),
          ],
        ).paddingSymmetric(horizontal: 20.h),
        getVerSpace(30.h),
        getCustomFont("Plot area (sqft)", 15.sp, regularBlack, 1,
                fontWeight: FontWeight.w600)
            .paddingSymmetric(horizontal: 20.h),
        getVerSpace(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 56.h,
                width: 177.w,
                child: defaultTextField(context, minAreaController, "Min",
                    suffix: true,
                    suffixImage: "arrow_down.svg",
                    suffixheight: 16.h,
                    suffixwidth: 16.w)),
            SizedBox(
                height: 56.h,
                width: 177.w,
                child: defaultTextField(context, maxAreaController, "Max",
                    suffix: true,
                    suffixImage: "arrow_down.svg",
                    suffixheight: 16.h,
                    suffixwidth: 16.w)),
          ],
        ).paddingSymmetric(horizontal: 20.h),
        getVerSpace(120.h),
        getButton(context, pacificBlue, "Apply Filter", regularWhite, () {},
                18.sp,
                buttonHeight: 60.h, borderRadius: BorderRadius.circular(16.h))
            .paddingSymmetric(horizontal: 20.h),
      ],
    );
  }
}
