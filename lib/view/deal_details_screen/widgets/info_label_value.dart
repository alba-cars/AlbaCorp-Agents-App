import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

class InfoLabelValue extends StatelessWidget {
  const InfoLabelValue(
      {super.key, this.labelOne, this.valueOne, this.labelTwo, this.valueTwo});

  final String? labelOne;
  final String? valueOne;
  final String? labelTwo;
  final String? valueTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(
                  text: labelOne ?? '',
                  color: Colors.blueGrey,
                ),
                VerticalSmallGap(
                  adjustment: 0.1,
                ),
                NormalText(
                  text: valueOne ?? 'No info',
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
          ),
          if (labelTwo != null)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: labelTwo ?? '',
                    color: Colors.blueGrey,
                  ),
                  VerticalSmallGap(
                    adjustment: 0.1,
                  ),
                  NormalText(
                    text: valueTwo ?? 'No info',
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
