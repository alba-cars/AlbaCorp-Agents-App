import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:recase/recase.dart';

import '../../../util/color_category.dart';
import '../../../widgets/button.dart';
import '../../../widgets/s3_image.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../../deal_details_screen/widgets/info_label_value.dart';
import '../../property_card_details/property_card_details.dart';
import '../cubit/explorer_screen_cubit.dart';

class PropertyCardListItem extends StatelessWidget {
  const PropertyCardListItem(
      {super.key,
      required this.propertyCard,
      required this.selectModeEnabled,
      required this.selectedPropertyCards});

  final PropertyCard propertyCard;
  final bool selectModeEnabled;
  final List<String> selectedPropertyCards;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (selectModeEnabled) {
          context
              .read<ExplorerScreenCubit>()
              .addToSelection(context, propertyCard);
        } else {
          context.pushNamed(PropertyCardDetailsScreen.routeName,
              pathParameters: {'id': propertyCard.id});
        }
      },
      onLongPress: () {
        context
            .read<ExplorerScreenCubit>()
            .setSelectionModeEnabled(context, propertyCard);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
            border: selectModeEnabled &&
                    selectedPropertyCards.contains(propertyCard.id)
                ? Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 2)
                : null,
            boxShadow: selectModeEnabled &&
                    selectedPropertyCards.contains(propertyCard.id)
                ? [
                    BoxShadow(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.5),
                        offset: Offset(-4, 5),
                        blurRadius: 19)
                  ]
                : [
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
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blueGrey[100]),
                  child: SmallText(text: propertyCard.status?.titleCase ?? ''),
                ),
              ],
            ),
            InfoLabelValue(
              labelOne: 'Community',
              valueOne: propertyCard.community?.community.trim(),
              labelTwo: 'Building',
              valueTwo: propertyCard.building?.name.trim() ?? 'N/A',
            ),
            InfoLabelValue(
              labelOne: 'Property Type',
              valueOne: propertyCard.propertyType?.trim(),
              labelTwo: 'Beds',
              valueTwo: propertyCard.beds ?? 'N/A',
            ),
            InfoLabelValue(
              labelOne: 'purpose',
              valueOne: propertyCard.purpose,
              labelTwo: 'Size',
              valueTwo: propertyCard.size?.currency ?? 'N/A',
            ),
            if (propertyCard.currentAgent is Map)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(.5)),
                child: Row(
                  children: [
                    // HorizontalSmallGap(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallText(text: 'Agent'),
                        LabelText(
                            text:
                                "${propertyCard.currentAgent["userId"]["first_name"] ?? ''} ${propertyCard.currentAgent["userId"]["last_name"] ?? ''}"),
                      ],
                    ),
                    Spacer(),
                    HorizontalSmallGap(),
                    Container(
                      height: 40,
                      width: 40,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: S3Image(
                        url: propertyCard.currentAgent["userId"]["photo"] ?? '',
                      ),
                    ),
                  ],
                ),
              ),
            if (propertyCard.availableForCheckout &&
                propertyCard.currentAgent == null)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppPrimaryButton(
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryContainer,
                      foregroundColor: Theme.of(context).colorScheme.primary,
                      text: 'Assign to me',
                      onTap: () async {
                        await context
                            .read<ExplorerScreenCubit>()
                            .checkOutLead(context: context, card: propertyCard);
                      })
                ],
              ),
            if (!propertyCard.availableForCheckout &&
                propertyCard.currentAgent == null)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
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
  }
}
