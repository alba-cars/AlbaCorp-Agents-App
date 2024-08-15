import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

class KpiItemWidget extends StatelessWidget {
  final String title;
  final String value;
  final bool showLoader;
  const KpiItemWidget(
      {super.key,
      required this.title,
      required this.value,
      this.showLoader = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmallText(
            text: title,
            color: Colors.white,
          ),
          VerticalSmallGap(),
          Visibility(
            visible: !showLoader,
            replacement: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SizedBox(
                height: 2,
                width: 40,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
            child: HeadingText(
              text: value,
              fontSize: 32,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
