import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/view/lead_detail_screen/cubit/lead_detail_cubit.dart';
import 'package:real_estate_app/view/leads_list_explorer/cubit/leads_list_explorer_cubit.dart';

import '../../../model/lead_property_card_model.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../../property_card_details/property_card_details.dart';

class LeadsPropertyCarsdHorizontalList extends StatelessWidget {
  const LeadsPropertyCarsdHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeadDetailCubit, LeadDetailState>(
      builder: (context, state) {
        final leadCard = state.propertyCardsList;
        return (leadCard.isEmpty)
            ? SizedBox()
            : Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: LabelText(
                      text: 'Lead Property Cards',
                      underline: true,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  VerticalSmallGap(),
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (lcontext, index) {
                          final card = leadCard[index].propertyCard;
                          final primaryColor =
                              Theme.of(context).colorScheme.primary;
                          return Container(
                            width: 190,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(-4, 5),
                                      blurRadius: 11,
                                      color:
                                          Color(0XFF819498).withOpacity(0.14))
                                ]),
                            child: InkWell(
                              onTap: () {
                                context.pushNamed(
                                    "${PropertyCardDetailsScreen.routeName}",
                                    pathParameters: {'id': card.id});
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    height: 30,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    child: Row(
                                      children: [
                                        HorizontalSmallGap(),
                                        Expanded(
                                          child: LabelText(
                                            text: card.referenceNumber ?? '',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        VerticalSmallGap(
                                          adjustment: .3,
                                        ),
                                        TextWithIcon(
                                          icon: Icons.location_on_outlined,
                                          text: card.community?.community ?? '',
                                          iconColor: primaryColor,
                                          iconSize: 18,
                                        ),
                                        if (card.building?.name != null)
                                          TextWithIcon(
                                            icon: Icons.location_city,
                                            text: card.building?.name ?? '',
                                            iconColor: primaryColor,
                                            iconSize: 18,
                                          ),
                                        VerticalSmallGap(
                                          adjustment: .3,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: TextWithIcon(
                                                    text: card.purpose ?? 'N/A',
                                                    icon: CupertinoIcons
                                                        .arrow_right_arrow_left,
                                                    iconColor: primaryColor,
                                                    iconSize: 18,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TextWithIcon(
                                                    text:
                                                        card.beds?.toString() ??
                                                            '0',
                                                    iconPath:
                                                        'assets/images/bed.png',
                                                    iconColor: primaryColor,
                                                    iconSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            VerticalSmallGap(
                                              adjustment: .3,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: TextWithIcon(
                                                    text: card.baths
                                                            ?.toString() ??
                                                        '0',
                                                    iconPath:
                                                        'assets/images/shower.png',
                                                    iconColor: primaryColor,
                                                    iconSize: 18,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TextWithIcon(
                                                    text:
                                                        (card.size?.currency ??
                                                            '0'),
                                                    iconPath:
                                                        'assets/images/area.png',
                                                    iconColor: primaryColor,
                                                    iconSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 8,
                          );
                        },
                        itemCount: leadCard.length),
                  ),
                  VerticalSmallGap(),
                ],
              );
      },
    );
  }
}
