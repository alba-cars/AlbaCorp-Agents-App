import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/model/category_model.dart';
import 'package:real_estate_app/view/home_screen/cubit/home_cubit.dart';

import '../../../util/color_category.dart';
import '../../../util/constant_widget.dart';
import '../../../widgets/space.dart';

class SliverCategories extends StatelessWidget {
  const SliverCategories(
      {super.key, required this.categories, required this.selectedCategory});

  final List<ModelCategory> categories;
  final ModelCategory selectedCategory;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 60,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            itemCount: categories.length,
            separatorBuilder: (context, index) => HorizontalSmallGap(),
            itemBuilder: (context, index) {
              final category = categories[index];
              return Container(
                alignment: Alignment.center,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: selectedCategory.name == category.name
                        ? lightPacific
                        : Colors.white,
                    borderRadius: BorderRadius.circular(16.h),
                    boxShadow: selectedCategory.name == category.name
                        ? null
                        : [
                            BoxShadow(
                                color: shadowColor,
                                offset: Offset(-4, 5),
                                blurRadius: 11)
                          ]),
                child: InkWell(
                  onTap: () {
                    context.read<HomeCubit>().selectCategory(category);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    child: Row(
                      children: [
                        category.image == "" || category.image == null
                            ? SizedBox()
                            : Row(
                                children: [
                                  getAssetImage(category.image!,
                                      width: 30.h, height: 30.h),
                                  getHorSpace(12.h),
                                ],
                              ),
                        getCustomFont(
                            category.name,
                            16.sp,
                            selectedCategory.name == category.name
                                ? pacificBlue
                                : Colors.black,
                            1,
                            fontWeight: selectedCategory.name == category.name
                                ? FontWeight.w600
                                : FontWeight.w400),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
