import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/text.dart';

class KpiItemWidget extends StatelessWidget {
  final String title;
  final String value;
  const KpiItemWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmallText(
          text: title,
          color: Colors.white,
        ),
        HeadingText(
          text: value,
          fontSize: 32,
          color: Colors.white,
        )
      ],
    );
  }
}
