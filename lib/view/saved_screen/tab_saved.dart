import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:real_estate_app/data/datafile.dart';
import 'package:real_estate_app/model/category_model.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/widget_extensions.dart';
import 'package:real_estate_app/view/home_screen/cubit/home_cubit.dart';

import '../../model/saved_home_model.dart';
import '../../util/constant.dart';
import '../../util/constant_widget.dart';

class TabSaved extends StatefulWidget {
  const TabSaved({Key? key}) : super(key: key);
  static const routeName = '/saved-page';

  @override
  State<TabSaved> createState() => _TabSavedState();
}

class _TabSavedState extends State<TabSaved> {
  List<ModelCategory> categoryLists = categoryList;
  List<SaveHome> savedHome = DataFile.getSaveHome();

  void backClick() {
    Constant.closeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      getVerSpace(30.h),
      getAppBar("Save", () {
        backClick();
      }).paddingSymmetric(horizontal: 20.h),
      getVerSpace(20.h),
      category_list(),
      getVerSpace(20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getCustomFont("11 Saved", 15.sp, regularBlack, 1,
              fontWeight: FontWeight.w600),
          Row(
            children: [
              GestureDetector(
                  onTap: () {},
                  child: false
                      ? getSvgImage("note_text_filled.svg",
                          height: 20.h, width: 20.w)
                      : getSvgImage("note_text.svg",
                          height: 20.h, width: 20.w)),
              getHorSpace(12.w),
              GestureDetector(
                  onTap: () {
                    // savecontroller.onListViewSet(true);
                  },
                  child: true
                      ? getSvgImage("grid_bold.svg", height: 20.h, width: 20.w)
                      : getSvgImage("grid.svg", height: 20.h, width: 20.w)),
            ],
          )
        ],
      ).paddingSymmetric(horizontal: 20.w),
      getVerSpace(10.h),
      Expanded(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          itemCount: savedHome.length,
          itemBuilder: (context, index) {
            SaveHome save = savedHome[index];
            return true
                ? Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.h),
                      color: regularWhite,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(-4, 5),
                            blurRadius: 11,
                            color: selectTabColor.withOpacity(0.14))
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 110.h,
                          width: 123.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.h),
                              image: DecorationImage(
                                  image: AssetImage(
                                    Constant.assetImagePath + save.image!,
                                  ),
                                  fit: BoxFit.fill)),
                          child: Container(
                            height: 24.h,
                            width: 24.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: regularBlack.withOpacity(0.50)),
                            child: GestureDetector(
                              onTap: () {
                                // savecontroller.onSavePosition(save);
                              },
                              child: save.favourite!
                                  ? getSvgImage("savefill.svg")
                                      .paddingAll(5.33.h)
                                  : getSvgImage("savewithoutfill.svg")
                                      .paddingAll(5.33.h),
                            ),
                          ).paddingOnly(
                              left: 91.w, bottom: 78.h, right: 8.h, top: 8.h),
                        ),
                        getHorSpace(20.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              getCustomFont(save.name!, 14.sp, regularBlack, 10,
                                  fontWeight: FontWeight.w600,
                                  txtHeight: 1.5.h),
                              getVerSpace(8.h),
                              Row(
                                children: [
                                  getCustomFont(
                                      save.price!, 14.sp, pacificBlue, 1,
                                      fontWeight: FontWeight.w600,
                                      txtHeight: 1.5.h),
                                  getCustomFont("/month", 14.sp, hintColor, 1,
                                      fontWeight: FontWeight.w400,
                                      txtHeight: 1.5.h),
                                ],
                              )
                            ],
                          ).paddingOnly(right: 40.h),
                        )
                      ],
                    ),
                  )
                : Container(
                    height: 110.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.h),
                        color: regularWhite,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(-4, 5),
                              color: Color(0XFF819498).withOpacity(0.14),
                              blurRadius: 11)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120.h,
                          width: 197.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.h),
                              color: regularWhite,
                              image: DecorationImage(
                                image: AssetImage(
                                  Constant.assetImagePath + save.image!,
                                ),
                                fit: BoxFit.fill,
                              )),
                          child: Container(
                            height: 24.h,
                            width: 24.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: regularBlack.withOpacity(0.50)),
                            child: GestureDetector(
                              onTap: () {
                                // savecontroller.onSavePosition(save);
                              },
                              child: save.favourite!
                                  ? getSvgImage("savefill.svg")
                                      .paddingAll(5.33.h)
                                  : getSvgImage("savewithoutfill.svg")
                                      .paddingAll(5.33.h),
                            ),
                          ).paddingOnly(
                              left: 141.h,
                              bottom: 84.h,
                              right: 12.h,
                              top: 12.h),
                        ),
                        getVerSpace(12.h),
                        getMultilineCustomFont(save.name!, 14.sp, regularBlack,
                                fontWeight: FontWeight.w600, txtHeight: 1.5.h)
                            .paddingSymmetric(horizontal: 12.h),
                        getVerSpace(8.h),
                        Row(
                          children: [
                            getCustomFont(save.price!, 14.sp, pacificBlue, 1,
                                fontWeight: FontWeight.w600, txtHeight: 1.5.h),
                            getCustomFont("/month", 14.sp, hintColor, 1,
                                fontWeight: FontWeight.w400, txtHeight: 1.5.h),
                          ],
                        ).paddingSymmetric(horizontal: 12.h),
                      ],
                    ));
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: true ? 1 : 2,
              mainAxisExtent: true ? 110.h : 223.h,
              mainAxisSpacing: true ? 40.h : 20.h,
              crossAxisSpacing: true ? 0 : 20.h),
        ),
      ),
    ]);
  }

  Widget category_list() {
    return SizedBox(
      height: 60.h,
      child: ListView.builder(
        itemCount: categoryLists.length,
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          ModelCategory modelCategory = categoryLists[index];
          return GestureDetector(
            onTap: () {
              // controller.categoryChange(index);
            },
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                margin:
                    EdgeInsets.only(left: index == 0 ? 20.h : 0, right: 20.h),
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
                    modelCategory.image == "" || modelCategory.image == null
                        ? SizedBox()
                        : Row(
                            children: [
                              getAssetImage(modelCategory.image!,
                                  width: 30.h, height: 30.h),
                              getHorSpace(12.h),
                            ],
                          ),
                    getCustomFont(modelCategory.name, 16.sp,
                        true ? pacificBlue : Colors.black, 1,
                        fontWeight: true ? FontWeight.w600 : FontWeight.w400),
                  ],
                )),
          );
        },
      ),
    );
  }
}
