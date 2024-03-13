import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/property_card_details/cubit/property_card_details_cubit.dart';
import 'package:recase/recase.dart';

import '../../util/color_category.dart';
import '../../widgets/s3_image.dart';
import '../../widgets/space.dart';
import '../../widgets/text.dart';
import '../deal_details_screen/widgets/info_label_value.dart';

class PropertyCardDetailsScreen extends StatelessWidget {
  static const routeName = '/propertyCardDetailsScreen/:id';
  const PropertyCardDetailsScreen({super.key, required this.propertyCardId});

  final String propertyCardId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PropertyCardDetailsCubit>(param1: propertyCardId),
      lazy: false,
      child: const _PropertyCardDetailsScreenLayout(),
    );
  }
}

class _PropertyCardDetailsScreenLayout extends StatelessWidget {
  const _PropertyCardDetailsScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Property Card'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<PropertyCardDetailsCubit, PropertyCardDetailsState>(
          builder: (context, state) {
            final propertyCard = state.propertyCard;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalSmallGap(
                        adjustment: 2,
                      ),
                      TitleText(text: 'Property Card Details'),
                      VerticalSmallGap(),
                      Row(
                        children: [
                          SmallText(
                            text: 'ID',
                            color: Colors.blueGrey,
                          ),
                          HorizontalSmallGap(),
                          SmallText(text: propertyCard?.referenceNumber ?? '')
                        ],
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'Last Modified',
                            color: Colors.blueGrey,
                          ),
                          HorizontalSmallGap(),
                          SmallText(
                              text: DateFormat.yMMMMEEEEd().format(
                                  propertyCard?.updatedAt ?? DateTime.now()))
                        ],
                      ),
                      VerticalSmallGap(
                        adjustment: 0.2,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.h, vertical: 1.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.blueGrey[100]),
                        child: SmallText(text: propertyCard?.status ?? ''),
                      ),
                    ],
                  ),
                ),
                VerticalSmallGap(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      BlockTitleText(
                        text: 'Property Info',
                      ),
                    ],
                  ),
                ),
                VerticalSmallGap(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoLabelValue(
                        labelOne: 'Building Name',
                        valueOne: propertyCard?.building?.name,
                        labelTwo: 'Community',
                        valueTwo: propertyCard?.community?.community,
                      ),
                      InfoLabelValue(
                        labelOne: 'Type',
                        valueOne: propertyCard?.propertyType,
                        labelTwo: 'Beds',
                        valueTwo: propertyCard?.beds?.toString(),
                      ),
                      InfoLabelValue(
                        labelOne: 'Baths',
                        valueOne: propertyCard?.baths?.toString(),
                        labelTwo: 'Area',
                        valueTwo:
                            (propertyCard?.size?.toString() ?? '0') + ' SQFT',
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 4),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       SmallText(
                      //         text: 'Description',
                      //         color: Colors.blueGrey,
                      //       ),
                      //       VerticalSmallGap(
                      //         adjustment: 0.1,
                      //       ),
                      //       NormalText(
                      //         text: propertyCard?.building?.name ?? '',
                      //         fontWeight: FontWeight.w400,
                      //         fontSize: 14,
                      //       )
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      BlockTitleText(
                        text: 'Leads',
                      ),
                    ],
                  ),
                ),
                VerticalSmallGap(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: state.propertyCardLeads
                            .map((e) => InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.symmetric(vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blueGrey,
                                        ),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: LabelText(
                                                text:
                                                    "${e.lead.firstName} ${e.lead.lastName}",
                                                maxLines: 2,
                                              ),
                                            ),
                                            HorizontalSmallGap(),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.h,
                                                  vertical: 1.h),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.blueGrey),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Colors.blueGrey[100]),
                                              child: SmallText(
                                                  text: e.lead.leadStatus?.name
                                                          .titleCase ??
                                                      ''),
                                            ),
                                          ],
                                        ),
                                        InfoLabelValue(
                                            labelOne: 'Transaction',
                                            valueOne:
                                                "AED ${e.amount?.round().toString()}" ??
                                                    '',
                                            labelTwo: 'Transaction Date',
                                            valueTwo: DateFormat.yMMMEd()
                                                .add_jm()
                                                .format(
                                                    e.date ?? DateTime.now())),
                                      ],
                                    ),
                                  ),
                                ))
                            .toList() ??
                        [],
                  ),
                ),
                VerticalSmallGap(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      BlockTitleText(
                        text: 'Property Card Activity Status',
                      ),
                    ],
                  ),
                ),
                VerticalSmallGap(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: state.propertyCardLogs
                            .map((e) => InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.symmetric(vertical: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blueGrey,
                                        ),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: LabelText(
                                                text:
                                                    "${e.createdBy.firstName} ${e.createdBy.lastName}",
                                                maxLines: 2,
                                              ),
                                            ),
                                            HorizontalSmallGap(),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.h,
                                                  vertical: 1.h),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.blueGrey),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Colors.blueGrey[100]),
                                              child: SmallText(
                                                  text: e.type.titleCase),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SmallText(
                                                text: 'Message',
                                                color: Colors.blueGrey,
                                              ),
                                              VerticalSmallGap(
                                                adjustment: 0.1,
                                              ),
                                              NormalText(
                                                text: e.message,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                            .toList() ??
                        [],
                  ),
                ),
                VerticalSmallGap(
                  adjustment: 2,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
