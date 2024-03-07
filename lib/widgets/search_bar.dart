import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../util/color_category.dart';
import '../util/constant.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onTap: () {},
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: pacificBlue, width: 1.w),
                borderRadius: BorderRadius.circular(12.h)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    width: 1.w),
                borderRadius: BorderRadius.circular(12.h)),
            filled: true,
            fillColor:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.2),
            hintText: 'Search...',
            prefixIcon: Padding(
                padding: EdgeInsets.only(
                    top: 8.h, left: 8.w, bottom: 8.h, right: 8.w),
                child: Icon(Icons.search)),
            suffixIcon: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(top: 8.h, right: 16.w, bottom: 8.h),
                child: SizedBox(
                    height: 24.h,
                    width: 24.w,
                    child: SvgPicture.asset(
                      "${Constant.assetImagePath}/search.png",
                      height: 24.h,
                      width: 24.w,
                    )),
              ),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.h))));
  }
}
