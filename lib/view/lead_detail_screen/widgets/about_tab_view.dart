import 'package:flutter/material.dart';

import '../../../model/lead_model.dart';
import '../../../util/color_category.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';

class AboutTabView extends StatelessWidget {
  const AboutTabView({super.key, required this.lead});

  final Lead lead;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: '${lead.firstName} ${lead.lastName}'),
              VerticalSmallGap(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextWithIcon(
                      text: '${lead.phone}',
                      icon: Icons.call,
                    ),
                  ),
                  Expanded(
                    child: TextWithIcon(
                      text: lead.email ?? '',
                      icon: Icons.email_outlined,
                    ),
                  ),
                ],
              ),
              VerticalSmallGap(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextWithIcon(
                      text: lead.address ?? 'N/A',
                      icon: Icons.location_on_outlined,
                    ),
                  ),
                  Expanded(
                    child: TextWithIcon(
                      text: lead.preferredLanguages.fold(
                          '',
                          (previousValue, element) =>
                              '$previousValue, $element'),
                      icon: Icons.language_outlined,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        VerticalSmallGap(
          adjustment: 2,
        ),
        Container(
          color: Colors.white,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelText(text: 'TAGS'),
                TextButton(
                  onPressed: () {},
                  child: Text('ADD'),
                )
              ],
            ),
            VerticalSmallGap(),
            lead.tags.isEmpty
                ? NormalText(text: 'No Tags Found')
                : Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: lead.tags
                        .map((e) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey[50],
                                  border:
                                      Border.all(color: Colors.blueGrey[200]!),
                                  borderRadius: BorderRadius.circular(4)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SmallText(text: e),
                                  // HorizontalSmallGap(),
                                  // IconButton(
                                  //     style: IconButton.styleFrom(
                                  //         padding: EdgeInsets.all(1),
                                  //         visualDensity: VisualDensity(),
                                  //         tapTargetSize:
                                  //             MaterialTapTargetSize.shrinkWrap),
                                  //     onPressed: () {},
                                  //     icon: Icon(
                                  //       Icons.close,
                                  //       size: 14,
                                  //     ))
                                ],
                              ),
                            ))
                        .toList(),
                  ),
            VerticalSmallGap(),
            Divider(),
            VerticalSmallGap(),
            LabelText(
              text: 'LEAD DETAILS',
              underline: true,
              color: Theme.of(context).primaryColor,
            ),
            VerticalSmallGap(),
            NormalText(
              text: 'LEAD SOURCE',
              color: Colors.blueGrey,
            ),
            VerticalSmallGap(
              adjustment: 0.3,
            ),
            NormalText(
              text: lead.leadSource,
            ),
            Divider(),
            VerticalSmallGap(adjustment: .6),
            NormalText(
              text: 'CITY',
              color: Colors.blueGrey,
            ),
            VerticalSmallGap(
              adjustment: 0.3,
            ),
            NormalText(
              text: lead.city ?? 'N/A',
            ),
            Divider(),
            VerticalSmallGap(adjustment: .6),
            NormalText(
              text: 'CITY',
              color: Colors.blueGrey,
            ),
            VerticalSmallGap(
              adjustment: 0.3,
            ),
            NormalText(
              text: 'Dubai',
            ),
            Divider(),
            VerticalSmallGap(adjustment: .6),
            NormalText(
              text: 'CITY',
              color: Colors.blueGrey,
            ),
            VerticalSmallGap(
              adjustment: 0.3,
            ),
            NormalText(
              text: 'Dubai',
            ),
            Divider(),
          ]),
        )
      ],
    );
  }
}
