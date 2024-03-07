import 'package:flutter/material.dart';

class VerticalSmallGap extends StatelessWidget {
  const VerticalSmallGap({super.key, this.adjustment = 1});
  final double adjustment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12 * adjustment,
    );
  }
}

class SliverVerticalSmallGap extends StatelessWidget {
  const SliverVerticalSmallGap({super.key, this.height = 12});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: VerticalSmallGap(),
    );
  }
}

class HorizontalSmallGap extends StatelessWidget {
  const HorizontalSmallGap({super.key, this.width = 8});
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class SliverDivider extends StatelessWidget {
  const SliverDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Divider(
        thickness: 8,
        color: Colors.grey[100],
      ),
    );
  }
}
