import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

class QuickAccessButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback action;
  const QuickAccessButton(
      {super.key,
      required this.text,
      required this.iconData,
      required this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        action();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .72 / 3,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            VerticalSmallGap(),
            SmallText(
              text: text,
              color: Colors.white,
              textAlign: TextAlign.center,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
