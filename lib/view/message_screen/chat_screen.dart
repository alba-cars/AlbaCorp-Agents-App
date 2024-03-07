import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/widget_extensions.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
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
            children: [
              getVerSpace(26.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getAppBar("Kristin Watson", () {
                    backClick();
                  }),
                  Row(
                    children: [
                      getSvgImage("call_icon.svg", height: 24.h, width: 24.h),
                      getHorSpace(20.w),
                      getSvgImage("video_chate.svg", height: 24.h, width: 24.h)
                    ],
                  )
                ],
              ).paddingSymmetric(horizontal: 20.h),
              getVerSpace(30.h),
              Expanded(
                child: ListView(
                  children: [
                    Center(
                        child: getCustomFont("TODAY", 14.sp, regularBlack, 1,
                            fontWeight: FontWeight.w400)),
                    getVerSpace(30.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 110.h,
                            width: 293.h,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: selectTabColor.withOpacity(0.14),
                                      offset: const Offset(-4, 5),
                                      blurRadius: 11),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.h)),
                                color: regularWhite),
                            child: Row(
                              children: [
                                Container(
                                  height: 110.h,
                                  width: 123.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.h),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "${Constant.assetImagePath}saved_home_1st.png"),
                                          fit: BoxFit.fill)),
                                  child: Container(
                                    height: 24.h,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: regularBlack.withOpacity(0.50)),
                                    child: getSvgImage("savefill.svg",
                                            height: 13.33.h, width: 13.33.h)
                                        .paddingAll(5.33.h),
                                  ).paddingOnly(
                                      left: 91.h,
                                      bottom: 78.h,
                                      top: 8.h,
                                      right: 8.h),
                                ),
                                getHorSpace(20.w),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      getMultilineCustomFont(
                                          "Preston Inglewood Appartment",
                                          14.sp,
                                          regularBlack,
                                          fontWeight: FontWeight.w600),
                                      getVerSpace(8.h),
                                      Row(
                                        children: [
                                          getCustomFont(
                                              "\$150", 14.sp, pacificBlue, 1,
                                              fontWeight: FontWeight.w600,
                                              txtHeight: 1.5.h),
                                          getCustomFont(
                                              "/month", 14.sp, hintColor, 1,
                                              fontWeight: FontWeight.w400,
                                              txtHeight: 1.5.h),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        getVerSpace(20.h),
                        getSendMessegeContainer(
                            "Mauris pharetra et ultrices neque ornare aen ean euismod elementum"),
                        getVerSpace(20.h),
                        getReciveMessege("Tortor condimentum lacinia"),
                        getVerSpace(20.h),
                        getSendMessegeContainer(
                            "Ullamcorper dignissim cras tincidunt lobortis feugiat",
                            height: 74.h,
                            width: 273.h),
                        getVerSpace(20.h),
                        getReciveMessege(
                            "Consequat mauris nunc congue nisi. Sed risus ultricies tristique nulla aliquet enim tortor at",
                            height: 97.h,
                            width: 316.h),
                        getVerSpace(20.h),
                        getSendMessegeContainer(
                            "Imperdiet proin fermentum leo vel",
                            height: 45.h,
                            width: 254.h),
                      ],
                    )
                  ],
                ).paddingSymmetric(horizontal: 20.h),
              ),
              defaultTextField(
                context,
                controller,
                "Send Message",
                suffixImage: "send_icon.svg",
                suffix: true,
              ).paddingOnly(bottom: 30.h, top: 51.h, left: 20.h, right: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
