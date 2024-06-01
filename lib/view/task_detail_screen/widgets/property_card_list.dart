import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/view/lead_detail_screen/cubit/lead_detail_cubit.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';

import '../../../model/lead_property_card_model.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../cubit/task_detail_cubit.dart';

class PropertyCardList extends StatelessWidget {
  const PropertyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return BlocSelector<TaskDetailCubit, TaskDetailState,
        List<LeadPropertyCardModel>>(
      selector: (state) {
        return state.propertyCardsList;
      },
      builder: (context, propertyCardsList) {
        if (propertyCardsList.isEmpty) {
          return Text('No property cards for this lead');
        }
        return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (index == 4) {
                return Container(
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(LeadDetailScreen.routeName,
                          pathParameters: {
                            'id': context.read<LeadDetailCubit>().state.leadId
                          });
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: LabelText(
                            text: 'Show More',
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
              final card = propertyCardsList[index].propertyCard;
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-4, 5),
                          blurRadius: 11,
                          color: Color(0XFF819498).withOpacity(0.14))
                    ]),
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 30,
                      color: primaryColor,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextWithIcon(
                                  icon: Icons.location_on_outlined,
                                  text: card.community?.community ?? '',
                                  iconColor: primaryColor,
                                  iconSize: 18,
                                ),
                              ),
                              if (card.building?.name != null)
                                Expanded(
                                  child: TextWithIcon(
                                    icon: Icons.location_city,
                                    text: card.building?.name ?? '',
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
                                  text: card.purpose ?? 'N/A',
                                  icon: CupertinoIcons.arrow_right_arrow_left,
                                  iconColor: primaryColor,
                                  iconSize: 18,
                                ),
                              ),
                              Expanded(
                                child: TextWithIcon(
                                  text: card.beds?.toString() ?? '0',
                                  iconPath: 'assets/images/bed.png',
                                  iconColor: primaryColor,
                                  iconSize: 18,
                                ),
                              ),
                              Expanded(
                                child: TextWithIcon(
                                  text: card.baths?.toString() ?? '0',
                                  iconPath: 'assets/images/shower.png',
                                  iconColor: primaryColor,
                                  iconSize: 18,
                                ),
                              ),
                              Expanded(
                                child: TextWithIcon(
                                  text: (card.size?.currency ?? '0'),
                                  iconPath: 'assets/images/area.png',
                                  iconColor: primaryColor,
                                  iconSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 6,
              );
            },
            itemCount:
                propertyCardsList.length > 3 ? 4 : propertyCardsList.length);
      },
    );
  }
}
