import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/data/datafile.dart';
import 'package:real_estate_app/model/booking_data_model.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

class CompletedBooking extends StatefulWidget {
  const CompletedBooking({Key? key}) : super(key: key);

  @override
  State<CompletedBooking> createState() => _CompletedBookingState();
}

class _CompletedBookingState extends State<CompletedBooking> {
  List<BookingHome> bookhomeData = DataFile.getBookHome();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      itemCount: bookhomeData.length,
      itemBuilder: (context, index) {
        BookingHome home = bookhomeData[index];
        return Container(
          height: 194.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16.h)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(-4, 5),
                    color: selectTabColor.withOpacity(0.14),
                    blurRadius: 11)
              ],
              color: regularWhite),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getAssetImage(home.image!, height: 110.h, width: 116.h),
                      getHorSpace(20.h),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getVerSpace(19.h),
                            getMultilineCustomFont(
                                home.name!, 16.sp, regularBlack,
                                txtHeight: 1.5.h, fontWeight: FontWeight.w600),
                            getVerSpace(8.h),
                            Row(
                              children: [
                                getCustomFont(
                                    "${home.price}", 14.sp, pacificBlue, 1,
                                    fontWeight: FontWeight.w600,
                                    txtHeight: 1.5.h),
                                getHorSpace(2.w),
                                getCustomFont("/month", 14.sp, hintColor, 1,
                                    fontWeight: FontWeight.w400,
                                    txtHeight: 1.5.h),
                              ],
                            ),
                          ],
                        ),
                      ),
                      getButton(context, Color(0XFFE3FCEE), "Paid",
                          Color(0XFF04B155), () {}, 12.sp,
                          buttonHeight: 27.h,
                          buttonWidth: 53.h,
                          borderRadius: BorderRadius.all(Radius.circular(7.h)))
                    ],
                  ).paddingOnly(left: 12.h, right: 12.h, top: 12.h),
                ],
              ),
              getVerSpace(14.h),
              getDivider(setColor: borderColor),
              getVerSpace(12.h),
              Row(
                children: [
                  Expanded(
                      child: getButton(
                    context,
                    pacificBlue,
                    weight: FontWeight.w600,
                    "Details",
                    regularWhite,
                    () {},
                    14.sp,
                    borderRadius: BorderRadius.circular(16.h),
                    buttonHeight: 34.h,
                  )),
                  getHorSpace(20.w),
                  Expanded(
                      child: getButton(
                    context,
                    regularWhite,
                    weight: FontWeight.w600,
                    "E-Recipt",
                    pacificBlue,
                    () {},
                    14.sp,
                    borderWidth: 1.h,
                    borderRadius: BorderRadius.all(Radius.circular(16.h)),
                    isBorder: true,
                    borderColor: pacificBlue,
                    buttonHeight: 34.h,
                  )),
                ],
              ).paddingSymmetric(horizontal: 12.h)
            ],
          ),
        ).paddingSymmetric(vertical: 10.h);
      },
    );
  }
}
