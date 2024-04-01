import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:real_estate_app/data/datafile.dart';
import 'package:real_estate_app/model/detail_screen_slider.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const String routeName = '/detail-screen';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // DetailScreenController detailScreenController =
  //     Get.put(DetailScreenController());
  List<DetailSlider> details = DataFile.getDetailSliderData();
  PageController controller = PageController();

  void backClick() {
    Constant.backToFinish();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getVerSpace(8.h),
          Stack(
            children: [
              SizedBox(
                height: 364.h,
                child: PageView.builder(
                    itemCount: details.length,
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    onPageChanged: (value) {
                      // detailScreenController.onPageChange(value);
                    },
                    itemBuilder: (context, index) {
                      print(controller.initialPage);
                      return Container(
                              height: 364.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.h),
                                  color: Color(0XFFFFFFFF)),
                              width: 394.w,
                              child: getAssetImage(details[index].image!,
                                  boxFit: BoxFit.fill))
                          .paddingSymmetric(horizontal: 10.w);
                    }),
              ),
              indicater().paddingOnly(top: 310.h),
              back_save_button().paddingOnly(right: 26.w, left: 26.w, top: 18.h)
            ],
          ),
          getVerSpace(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getCustomFont("Heaven Appartment", 16.sp, regularBlack, 1,
                  fontWeight: FontWeight.w600, txtHeight: 1.5.h),
              Row(
                children: [
                  getCustomFont("\$800", 16.sp, regularBlack, 1,
                      fontWeight: FontWeight.w600),
                  getHorSpace(2.w),
                  getCustomFont("/month", 16.sp, hintColor, 1,
                      fontWeight: FontWeight.w400),
                ],
              ),
            ],
          ).paddingSymmetric(horizontal: 20.w),
          getVerSpace(15.67.h),
          Row(
            children: [
              getSvgImage("location_unselect.svg", height: 20.h, width: 20.h),
              getHorSpace(12.h),
              getCustomFont("Pennsylvania", 16.sp, hintColor, 1,
                  fontWeight: FontWeight.w400),
              getHorSpace(12.h),
              getAssetImage("black_dot.png", height: 6.h, width: 6.w),
              getHorSpace(12.h),
              getCustomFont("House", 16.sp, hintColor, 1,
                  fontWeight: FontWeight.w400),
            ],
          ).paddingSymmetric(horizontal: 20.w),
          getVerSpace(20.h),
          Row(
            children: [
              getDetailFacelity("sofa_icon.svg", "3"),
              getHorSpace(20.w),
              getDetailFacelity("bath_icon.svg", "2"),
              getHorSpace(20.w),
              getDetailFacelity("maximize_black_icon.svg", "200 m",
                  containerHeight: 40.h,
                  containerWidth: 95.w,
                  superScript: true),
            ],
          ).paddingSymmetric(horizontal: 20.w),
          getVerSpace(20.h),
          getDivider(setColor: Color(0XFFF1F1F1))
              .paddingSymmetric(horizontal: 20.w),
          getVerSpace(20.h),
          getCustomFont("About Appartment", 15.sp, regularBlack, 1,
                  fontWeight: FontWeight.w600, txtHeight: 1.5.h)
              .paddingSymmetric(horizontal: 20.w),
          getVerSpace(12.h),
          getMultilineCustomFont(
                  "Enim nulla aliquet porttitor lacus luctus accumsan torto posuere. Velit ut tortor pretium viverra suspendisse pot enti nullam ac tortor Dignissim sodales ut eu sem integ er Tristique magna sit amet purus gravida quismal esua da bibendum arcu vitae.",
                  14.sp,
                  regularBlack,
                  fontWeight: FontWeight.w400,
                  txtHeight: 1.5.h)
              .paddingSymmetric(horizontal: 20.w),
          getVerSpace(36.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getButton(
                  context, pacificBlue, "Buy Now", regularWhite, () {}, 18.sp,
                  buttonHeight: 60.h,
                  weight: FontWeight.w700,
                  borderRadius: BorderRadius.circular(16.h),
                  buttonWidth: 294.w),
              Container(
                height: 60.h,
                width: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.h),
                    color: Color(0XFFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-4, 5),
                          color: Color(0XFF819498).withOpacity(0.14),
                          blurRadius: 11)
                    ]),
                child:
                    getSvgImage("messages_icon.svg", height: 25.h, width: 25.w)
                        .paddingAll(17.5.h),
              )
            ],
          ).paddingSymmetric(horizontal: 20.w)
        ],
      ),
    ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget indicater() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(details.length, (index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 8.h,
            width: 8.w,
            margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 30.h),
            decoration: true
                ? BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0XFFFFFFFF)),
                  )
                : BoxDecoration(
                    shape: BoxShape.circle, color: Color(0XFFFFFFFF)),
          );
        }));
  }

  Widget back_save_button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Container(
              height: 36.h,
              width: 36.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: regularBlack.withOpacity(0.50)),
              child:
                  getSvgImage("back_white.svg", height: 13.2.h, width: 5.91.w)
                      .paddingAll(8.h)),
        ),
        GestureDetector(
          onTap: () {
            // detailScreenController.onSvaePosition();
          },
          child: Container(
            height: 36.h,
            width: 36.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: regularBlack.withOpacity(0.50)),
            child: true
                ? getSvgImage("savefill.svg", height: 20.h, width: 20.w)
                    .marginAll(8.h)
                : getSvgImage("savewithoutfill.svg", height: 20.h, width: 20.w)
                    .marginAll(8.h),
          ),
        ),
      ],
    );
  }
}
