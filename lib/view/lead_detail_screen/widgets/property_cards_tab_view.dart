import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/view/lead_detail_screen/cubit/lead_detail_cubit.dart';
import 'package:recase/recase.dart';

import '../../../util/color_category.dart';
import '../../../widgets/button.dart';
import '../../../widgets/s3_image.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../../deal_details_screen/widgets/info_label_value.dart';
import '../../property_card_details/property_card_details.dart';

class PropertyCardsTabView extends StatefulWidget {
  const PropertyCardsTabView({super.key});

  @override
  State<PropertyCardsTabView> createState() => _PropertyCardsTabViewState();
}

class _PropertyCardsTabViewState extends State<PropertyCardsTabView> {
  @override
  void initState() {
    super.initState();
    context.read<LeadDetailCubit>().getExplorerList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeadDetailCubit, LeadDetailState>(
        builder: (context, state) {
      final propertyCards = state.propertyCardsList;
      if (propertyCards.isEmpty) {
        return Center(
          child: NormalText(
            text: 'No Property Cards Found',
          ),
        );
      }
      return SafeArea(
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            itemBuilder: (context, index) {
              final propertyCard = propertyCards[index].propertyCard;
              return InkWell(
                onTap: () {
                  context.pushNamed(PropertyCardDetailsScreen.routeName,
                      pathParameters: {'id': propertyCard.id});
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            offset: Offset(-4, 5),
                            blurRadius: 11)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LabelText(
                            text: propertyCard.referenceNumber ?? '',
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.h, vertical: 1.h),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.blueGrey[100]),
                            child: SmallText(
                                text: propertyCard.status?.titleCase ?? ''),
                          ),
                        ],
                      ),
                      InfoLabelValue(
                        labelOne: 'Property Type',
                        valueOne: propertyCard.propertyType,
                        labelTwo: 'Community Name',
                        valueTwo: propertyCard.community?.community,
                      ),
                      InfoLabelValue(
                        labelOne: 'Building Name',
                        valueOne: propertyCard.building?.name ?? 'N/A',
                        labelTwo: 'Beds',
                        valueTwo: propertyCard.beds?.toString(),
                      ),
                      if (propertyCard.currentAgent is Map)
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer
                                  .withOpacity(.5)),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                clipBehavior: Clip.hardEdge,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                child: S3Image(
                                  url: propertyCard.currentAgent["userId"]
                                          ["photo"] ??
                                      '',
                                ),
                              ),
                              HorizontalSmallGap(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SmallText(text: 'Agent'),
                                  LabelText(
                                      text:
                                          "${propertyCard.currentAgent["userId"]["first_name"] ?? ''} ${propertyCard.currentAgent["userId"]["last_name"] ?? ''}"),
                                ],
                              ),
                              HorizontalSmallGap(),
                            ],
                          ),
                        ),
                      if (propertyCard.availableForCheckout &&
                          propertyCard.currentAgent == null)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AppPrimaryButton(
                                text: 'Check Out',
                                onTap: () async {
                                  // await context
                                  //     .read<ExplorerScreenCubit>()
                                  //     .checkOutLead(
                                  //         context: context, card: propertyCard);
                                })
                          ],
                        ),
                      if (!propertyCard.availableForCheckout)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4.h, vertical: 1.h),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red[800]!),
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.red[100]),
                              child: SmallText(text: 'Not Available'),
                            )
                          ],
                        ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 8,
                ),
            itemCount: propertyCards.length),
      );
    });
  }
}
