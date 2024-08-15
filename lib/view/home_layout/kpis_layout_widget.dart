import 'package:flutter/material.dart';
import 'package:real_estate_app/view/home_layout/kpi_item_widget.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

class KpisLayoutWidget extends StatelessWidget {
  const KpisLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(
          text: "Your KPIs",
          color: Colors.white,
        ),
        VerticalSmallGap(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 1,
                  child: KpiItemWidget(
                    title: 'Deals closed',
                    value: '457',
                  )),
              Flexible(
                  flex: 1,
                  child: KpiItemWidget(
                    title: 'Actions done today',
                    value: '457',
                  )),
              Flexible(
                  flex: 1,
                  child: KpiItemWidget(
                    title: 'Follow ups pending',
                    value: '457',
                  )),
            ],
          ),
        )
      ],
    );
  }
}
