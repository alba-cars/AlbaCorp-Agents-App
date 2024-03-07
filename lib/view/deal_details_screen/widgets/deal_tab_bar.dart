import 'package:flutter/material.dart';

class DealDetailScreenTabHeader extends SliverPersistentHeaderDelegate {
  final TabController tabController;

  DealDetailScreenTabHeader({required this.tabController});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      color: Colors.white,
      child: TabBar(
          controller: tabController,
          labelPadding: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          tabs: [
            Tab(
              text: 'Deal Info',
            ),
            Tab(
              text: 'Transactions',
            ),
            Tab(
              text: 'Documents',
            ),
            Tab(
              text: 'Activities',
            ),
          ]),
    );
  }

  @override
  double get maxExtent => 65;

  @override
  double get minExtent => 65;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
