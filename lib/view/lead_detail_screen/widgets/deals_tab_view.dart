import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:real_estate_app/view/deals_screen/deals_screen.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../../model/deal_model.dart';
import '../../../util/color_category.dart';

class DealsTabView extends StatelessWidget {
  const DealsTabView({super.key, required this.deals});

  final List<Deal> deals;

  @override
  Widget build(BuildContext context) {
    if (deals.isEmpty) {
      return Center(
        child: NormalText(
          text: 'No Deals Found',
        ),
      );
    }
    return ListView.separated(
        itemBuilder: (context, index) {
          final deal = deals[index];
          return DealItem(
            deal: deal,
            index: index,
          );
        },
        separatorBuilder: (context, index) => SizedBox(
              height: 8,
            ),
        itemCount: deals.length);
  }
}
