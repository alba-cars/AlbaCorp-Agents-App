import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../model/deal_model.dart';
import '../../../util/color_category.dart';
import '../../../widgets/s3_image.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../../deal_details_screen/deal_deatils_screen.dart';

class DealItem extends StatelessWidget {
  const DealItem({
    super.key,
    required this.deal,
  });

  final Deal deal;

  @override
  Widget build(BuildContext context) {
    String? image;
    if (deal.propertyList?.image != null ||
        deal.propertyList?.image?.isEmpty == true) {
      image = deal.propertyList?.image;
    } else if (deal.propertyList?.images?.isNotEmpty == true) {
      image = deal.propertyList?.images!.first is String
          ? deal.propertyList?.images!.first
          : deal.propertyList?.images!.first['thumbnail'];
    }
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.h),
          boxShadow: [
            BoxShadow(color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
        child: InkWell(
          onTap: () {
            context.pushNamed(DealDetailsScreen.routeName,
                pathParameters: {'id': deal.id});
          },
          child: Row(children: [
            Container(
              height: 120,
              width: 150,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Colors.grey[100]!,
                  borderRadius: BorderRadius.circular(12)),
              child: S3Image(
                url: image,
                fit: BoxFit.contain,
              ),
            ),
            HorizontalSmallGap(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.h, vertical: 1.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.blueGrey[100]),
                        child: SmallText(text: deal.category),
                      ),
                    ],
                  ),
                  VerticalSmallGap(
                    adjustment: .2,
                  ),
                  NormalText(
                    text: "ID: ${deal.referenceNumber}",
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  VerticalSmallGap(
                    adjustment: .2,
                  ),
                  LabelText(
                      text:
                          "${deal.client?.firstName} ${deal.client?.lastName}"),
                  VerticalSmallGap(
                    adjustment: .2,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.h),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blueGrey[100]),
                    child: SmallText(text: deal.status),
                  ),
                ],
              ),
            ),
            HorizontalSmallGap(),
          ]),
        ),
      ),
    );
  }
}
