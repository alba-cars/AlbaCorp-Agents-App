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
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SmallText(
              text: title,
              color: Theme.of(context).primaryColor,
              textAlign: TextAlign.center,
              maxLines: 2,
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
                color: Theme.of(context).primaryColor,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
