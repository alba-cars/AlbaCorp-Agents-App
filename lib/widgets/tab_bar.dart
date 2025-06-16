import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/widgets/text.dart';

class AppTabBar extends StatefulWidget {
  const AppTabBar({
    super.key,
    required this.backgroundColor,
    required this.selectedColor,
    required this.onTap,
    required this.tabLabels,
    this.tabCounts,
    required this.tabController,
  });

  final Color backgroundColor;
  final Color selectedColor;
  final void Function(int index) onTap;
  final List<String> tabLabels;
  final List<int>? tabCounts; // Added for counts
  final TabController tabController;

  @override
  State<AppTabBar> createState() => _AppTabBarState();
}

class _AppTabBarState extends State<AppTabBar> {
  @override
  void initState() {
    widget.tabController.addListener(_tabListener);
    super.initState();
  }

  @override
  void dispose() {
    widget.tabController.removeListener(_tabListener);
    super.dispose();
  }

  _tabListener() {
    setState(() {});
  }

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
        children: widget.tabLabels
            .mapIndexed((i, label) => Expanded(
                  child: Container(
                    height: double.maxFinite,
                    clipBehavior: Clip.none, // Allow badge to overflow
                    decoration: (widget.tabController.index == i)
                        ? BoxDecoration(
                            color: widget.selectedColor,
                            borderRadius: BorderRadius.circular(12))
                        : null,
                    child: InkWell(
                      onTap: (widget.tabController.index != i)
                          ? () {
                              widget.tabController.animateTo(i);
                              // setState(() {}); // Handled by listener
                              widget.onTap(i);
                            }
                          : null,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Center(
                            child: LabelText(
                              text: label,
                              textAlign: TextAlign.center,
                              color: (widget.tabController.index == i)
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          if (widget.tabCounts != null &&
                              widget.tabCounts!.length > i &&
                              widget.tabCounts![i] > 0)
                            Positioned(
                              top: -5, // Adjust for desired position
                              right: 0, // Adjust for desired position
                              child: Container(
                                padding: EdgeInsets.all(widget.tabCounts![i] > 9
                                    ? 4
                                    : 6), // Smaller padding for 2+ digits
                                decoration: BoxDecoration(
                                    color: Colors.red[800], // Badge color
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        offset: Offset(0, 1),
                                      )
                                    ]),
                                constraints: BoxConstraints(
                                  minWidth: widget.tabCounts![i] > 9
                                      ? 20
                                      : 18, // Adjust min width
                                  minHeight: widget.tabCounts![i] > 9
                                      ? 20
                                      : 18, // Adjust min height
                                ),
                                child: Center(
                                  child: Text(
                                    widget.tabCounts![i].toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: widget.tabCounts![i] > 9
                                          ? 10
                                          : 12, // Smaller font for 2+ digits
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
