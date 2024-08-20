import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../../constants/hot_leads.dart';
import '../../../model/lead_model.dart';
import '../../../util/color_category.dart';
import '../../../widgets/call_button.dart';
import '../../../widgets/space.dart';
import '../../lead_detail_screen/lead_detail_screen.dart';

class LeadItem extends StatelessWidget {
  const LeadItem({
    super.key,
    required this.lead,
    required this.colorScheme,
  });

  final Lead lead;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: InkWell(
          onTap: () {
            context.pushNamed(LeadDetailScreen.routeName, pathParameters: {
              'id': lead.id,
            }, queryParameters: {
              'index': '0'
            });
          },
          child: Row(children: [
            Container(
              width: 70,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey),

                  color: Colors.grey[100]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NormalText(
                    text: lead.leadSource,
                    textAlign: TextAlign.center,
                    color: Colors.grey[800]!,
                  )
                ],
              ),
            ),
            HorizontalSmallGap(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.blueGrey[100]),
                        child: SmallText(text: lead.leadStatus?.name ?? ''),
                      ),
                      HorizontalSmallGap(),
                      if (hotLeads.contains(lead.leadSource))
                        Image.asset(
                          'assets/images/flame.png',
                          height: 17,
                          width: 20,
                        ),
                      if (lead.dndStatus)
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.h, vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: colorScheme.error),
                              borderRadius: BorderRadius.circular(4),
                              color: colorScheme.errorContainer),
                          child: SmallText(text: 'DND'),
                        ),
                      if (lead.isNewTag) ...[
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.h, vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: colorScheme.error),
                              borderRadius: BorderRadius.circular(4),
                              color: colorScheme.error),
                          child: SmallText(
                            text: 'New',
                            color: colorScheme.onError,
                          ),
                        ),
                      ]
                    ],
                  ),
                  VerticalSmallGap(
                    adjustment: .2,
                  ),
                  LabelText(text: "${lead.firstName} ${lead.lastName}")
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
