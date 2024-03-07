import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/widgets/text.dart';

class AppTabBar extends StatefulWidget {
  const AppTabBar(
      {super.key,
      required this.backgroundColor,
      required this.selectedColor,
      required this.onTap,
      required this.tabs,
      required this.tabController});

  final Color backgroundColor;
  final Color selectedColor;
  final void Function(int index) onTap;
  final List<String> tabs;
  final TabController tabController;

  @override
  State<AppTabBar> createState() => _AppTabBarState();
}

class _AppTabBarState extends State<AppTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: Offset(-4, 5),
              blurRadius: 11,
            )
          ]),
      child: Row(
        children: widget.tabs
            .mapIndexed((i, e) => Expanded(
                  child: Container(
                    height: double.maxFinite,
                    decoration: (widget.tabController.index == i)
                        ? BoxDecoration(
                            color: widget.selectedColor,
                            borderRadius: BorderRadius.circular(12))
                        : null,
                    child: InkWell(
                      onTap: (widget.tabController.index != i)
                          ? () {
                              widget.tabController.animateTo(i);
                              setState(() {});
                              widget.onTap(i);
                            }
                          : null,
                      child: Center(
                        child: LabelText(
                          text: e,
                          textAlign: TextAlign.center,
                          color: (widget.tabController.index == i)
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
