import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
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
    context.read<LeadDetailCubit>().getLeadPropertyCards();
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
        child: NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (state.getPropertyCardsListStatus != AppStatus.loadingMore &&
                  scrollInfo.metrics.pixels >=
                      0.8 * scrollInfo.metrics.maxScrollExtent &&
                  (state.propertyCardPaginator?.hasNextPage ?? false)) {
                context.read<LeadDetailCubit>().getLeadPropertyCards(
                    refresh: false, paginator: state.propertyCardPaginator);
              }
              return true;
            },
            child: RefreshIndicator(onRefresh: () async {
              await context
                  .read<LeadDetailCubit>()
                  .getLeadPropertyCards(refresh: true);
            }, child: Builder(builder: (context) {
              if (state.propertyCardPaginator == null) {
                // First load with  out pagination

                switch (state.getPropertyCardsListStatus) {
                  case AppStatus.success:
                    return showPropertyCards(
                        context,
                        propertyCards,
                        state.propertyCardPaginator,
                        state.getPropertyCardsListStatus);
                  case AppStatus.failure:
                    return Center(child: Text("Error loading data"));
                  case AppStatus.loading:
                    return CircularProgressIndicator();
                  default:
                    return SizedBox();
                }
              } else {
                // For pagination show existing list
                return showPropertyCards(
                    context,
                    propertyCards,
                    state.propertyCardPaginator,
                    state.getPropertyCardsListStatus);
              }
            }))),
      );
    });
  }

  showPropertyCards(
    BuildContext context,
    List<LeadPropertyCardModel> propertyCards,
    Paginator? paginator,
    AppStatus? appStatus,
  ) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemBuilder: (context, index) {
          if (index == propertyCards.length) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    height: 40, width: 40, child: CircularProgressIndicator()),
              ],
            );
          }
          final leadCard = propertyCards[index];
          final propertyCard = leadCard.propertyCard;
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
                    children: [
                      LabelText(
                        text: propertyCard.referenceNumber ?? '',
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Spacer(),
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
                      MenuAnchor(
                          alignmentOffset: Offset(-40, 0),
                          builder: (BuildContext context,
                              MenuController controller, Widget? child) {
                            return IconButton(
                              onPressed: () {
                                if (controller.isOpen) {
                                  controller.close();
                                } else {
                                  controller.open();
                                }
                              },
                              icon: const Icon(Icons.more_vert),
                              tooltip: 'Show menu',
                            );
                          },
                          menuChildren: [
                            MenuItemButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text(
                                            'Are you sure to unlink this property from this lead'),
                                        actions: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: AppPrimaryButton(
                                                    text: 'Cancel',
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    }),
                                              ),
                                              HorizontalSmallGap(),
                                              Expanded(
                                                child: AppPrimaryButton(
                                                    text: 'UnLink',
                                                    backgroundColor:
                                                        Colors.red[700],
                                                    onTap: () async {
                                                      await context
                                                          .read<
                                                              LeadDetailCubit>()
                                                          .unLinkLeadFromPropertyCard(
                                                              leadCardId:
                                                                  leadCard.id);
                                                      Navigator.of(context)
                                                          .pop();
                                                    }),
                                              )
                                            ],
                                          ),
                                        ],
                                      );
                                    });
                              },
                              leadingIcon: Icon(Icons.link_off),
                              child: Text('Unlink'),
                            ),
                          ]),
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
                            decoration: BoxDecoration(shape: BoxShape.circle),
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
        itemCount:
            appStatus == AppStatus.loading && (paginator?.hasNextPage ?? false)
                ? propertyCards.length + 1
                : propertyCards.length);
  }
}
