import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/model/property_type_model.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/util/property_price.dart';
import 'package:real_estate_app/view/add_deal_screen/cubit/add_deal_cubit.dart';
import 'package:real_estate_app/view/deal_add_document_screen/deal_add_document_screen.dart';
import 'package:real_estate_app/view/deal_details_screen/cubit/deal_details_cubit.dart';
import 'package:real_estate_app/view/deal_details_screen/widgets/info_label_value.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../../model/deal_model.dart';
import '../../../model/lead_model.dart';

class InfoTabView extends StatelessWidget {
  const InfoTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () {
        return context.read<DealDetailsCubit>().getDeal();
      },
      child: SingleChildScrollView(
        child: BlocSelector<DealDetailsCubit, DealDetailsState, Deal?>(
          selector: (state) {
            return state.deal;
          },
          builder: (context, deal) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleText(text: 'Deal Details'),
                        VerticalSmallGap(),
                        Row(
                          children: [
                            SmallText(
                              text: 'ID',
                              color: Colors.blueGrey,
                            ),
                            HorizontalSmallGap(),
                            SmallText(text: deal?.referenceNumber ?? '')
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
                                    deal?.creationDate ?? DateTime.now()))
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
                          child: SmallText(text: deal?.status ?? ''),
                        ),
                        if (deal?.status == 'Collecting Documents') ...[
                          VerticalSmallGap(
                            adjustment: 1,
                          ),
                          ElevatedButton.icon(
                              icon: Icon(Icons.cloud_upload_outlined),
                              onPressed: () async {
                                final success = await context.pushNamed<bool>(
                                    DealAddDocumentScreen.routeName,
                                    pathParameters: {'id': deal!.id});
                                if (success == true) {
                                  context.read<DealDetailsCubit>().getDeal();
                                }
                              },
                              label: Text('Add Documents'))
                        ],
                        if (deal?.category == 'Secondary Market Property') ...[
                          VerticalSmallGap(),
                          Row(
                            children: [
                              if (deal?.sellerAssignedAgent != null) ...[
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[50],
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    children: [
                                      NormalText(
                                        text: 'Seller Agent',
                                        textAlign: TextAlign.center,
                                      ),
                                      VerticalSmallGap(
                                        adjustment: 0.5,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 60,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: S3Image(
                                          url: deal?.sellerAssignedAgent?.user
                                                  .photo ??
                                              '',
                                        ),
                                      ),
                                      VerticalSmallGap(
                                        adjustment: 0.2,
                                      ),
                                      LabelText(
                                          text: deal?.sellerAssignedAgent?.user
                                                  .firstName ??
                                              '')
                                    ],
                                  ),
                                ),
                                HorizontalSmallGap(),
                              ],
                              if (deal?.buyerAssignedAgent != null)
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[50],
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      NormalText(
                                        text: 'Buyer Agent',
                                        textAlign: TextAlign.center,
                                      ),
                                      VerticalSmallGap(
                                        adjustment: 0.5,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 60,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: S3Image(
                                          url: deal?.buyerAssignedAgent?.user
                                                  .photo ??
                                              '',
                                        ),
                                      ),
                                      VerticalSmallGap(
                                        adjustment: 0.2,
                                      ),
                                      LabelText(
                                          text: deal?.buyerAssignedAgent?.user
                                                  .firstName ??
                                              '')
                                    ],
                                  ),
                                )
                            ],
                          )
                        ],
                      ]),
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
                        text: 'Deal Info',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      InfoLabelValue(
                        labelOne: 'Inventory Amount',
                        valueOne: deal?.agreedSalePrice?.currency,
                        labelTwo: 'Commission',
                        valueTwo: ((deal?.agreedCommission ?? 0) *
                                (deal?.agreedSalePrice ?? 0) /
                                100)
                            .currency,
                      ),
                      InfoLabelValue(
                        labelOne: 'Commission Percentage',
                        valueOne: deal?.agreedCommission?.currency,
                        labelTwo: 'Property Time in Stock',
                        valueTwo: '0',
                      ),
                      InfoLabelValue(
                        labelOne: 'Ownership of Listing',
                        valueOne: 'Alba',
                        labelTwo: 'Deal Type',
                        valueTwo: deal?.category,
                      ),
                      InfoLabelValue(
                        labelOne: 'Deal Purpose',
                        valueOne: deal?.purpose,
                      ),
                    ],
                  ),
                ),
                if (deal?.category == 'Primary Off Plan Property' ||
                    deal?.category == 'Listing Acquired')
                  PrimaryClientInfo(deal: deal!),
                if (deal?.category == 'Secondary Market Property')
                  (deal?.buyerClientType == 'Alba')
                      ? BuyerInternalUserInfo(
                          deal: deal!,
                        )
                      : (deal?.buyerClientType == 'External')
                          ? BuyerExternalUerInfo(deal: deal!)
                          : SizedBox(),
                if (deal?.category == 'Secondary Market Property')
                  (deal?.sellerclientType == 'Alba')
                      ? SellerInternalUserInfo(
                          client: deal!.sellerInternalUser!,
                          clientSource: deal.sellerclientType!)
                      : SellerExternalUserInfo(deal: deal!),
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
                if (deal?.propertyList != null) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 200,
                            width: double.maxFinite,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(4)),
                            child: S3Image(
                              url: deal!.propertyList!.image,
                              fit: BoxFit.contain,
                            )),
                        VerticalSmallGap(),
                        BlockTitleText(
                          text: deal.propertyList!.propertyTitle,
                        ),
                        VerticalSmallGap(),
                        LabelText(
                          text: 'AED ${getPrice(deal.propertyList!)?.toInt()}',
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        VerticalSmallGap(),
                        BlocSelector<DealDetailsCubit, DealDetailsState,
                            List<PropertyType>>(
                          selector: (state) {
                            return state.propertyTypeList;
                          },
                          builder: (context, propertyTypeList) {
                            return InfoLabelValue(
                              labelOne: 'Type',
                              valueOne: propertyTypeList
                                  .firstWhereOrNull((element) =>
                                      element.id ==
                                      deal.propertyList?.propertyTypeId)
                                  ?.propertyType,
                              labelTwo: 'Listing Type',
                              valueTwo: deal.propertyList?.listingType,
                            );
                          },
                        ),
                        InfoLabelValue(
                          labelOne: 'Beds',
                          valueOne: deal.propertyList?.beds,
                          labelTwo: 'Baths',
                          valueTwo: deal.propertyList?.baths,
                        ),
                        InfoLabelValue(
                          labelOne: 'Area',
                          valueOne: deal.propertyList?.size?.toString(),
                          labelTwo: 'ID',
                          valueTwo: deal.propertyList?.referNo,
                        ),
                      ],
                    ),
                  )
                ],
                if (deal?.newListingRequest != null) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //     height: 200,
                        //     width: double.maxFinite,
                        //     clipBehavior: Clip.hardEdge,
                        //     decoration: BoxDecoration(
                        //         color: Colors.grey[100],
                        //         borderRadius: BorderRadius.circular(4)),
                        //     child: S3Image(
                        //       url: deal!.propertyList!.image,
                        //       fit: BoxFit.contain,
                        //     )),
                        // VerticalSmallGap(),
                        // BlockTitleText(
                        //   text: deal.propertyList!.propertyTitle,
                        // ),
                        VerticalSmallGap(),
                        LabelText(
                          text: 'AED ${deal?.agreedSalePrice}',
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        VerticalSmallGap(),
                        BlocSelector<DealDetailsCubit, DealDetailsState,
                            List<PropertyType>>(
                          selector: (state) {
                            return state.propertyTypeList;
                          },
                          builder: (context, propertyTypeList) {
                            return InfoLabelValue(
                              labelOne: 'Type',
                              valueOne: deal!.newListingRequest?.propertyType
                                  ?.propertyType,
                              labelTwo: 'Listing Type',
                              valueTwo: deal.propertyList?.listingType,
                            );
                          },
                        ),
                        InfoLabelValue(
                          labelOne: 'Beds',
                          valueOne: deal!.newListingRequest?.beds,
                          labelTwo: 'Baths',
                          valueTwo: deal.newListingRequest?.baths,
                        ),
                        InfoLabelValue(
                          labelOne: 'Area',
                          valueOne: deal.newListingRequest?.size.toString(),
                          labelTwo: 'Community',
                          valueTwo:
                              deal.newListingRequest?.community?.community,
                        ),
                      ],
                    ),
                  )
                ],
                if (deal?.external_listing_property != null) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //     height: 200,
                        //     width: double.maxFinite,
                        //     clipBehavior: Clip.hardEdge,
                        //     decoration: BoxDecoration(
                        //         color: Colors.grey[100],
                        //         borderRadius: BorderRadius.circular(4)),
                        //     child: S3Image(
                        //       url: deal!.propertyList!.image,
                        //       fit: BoxFit.contain,
                        //     )),
                        // VerticalSmallGap(),
                        // BlockTitleText(
                        //   text: deal.propertyList!.propertyTitle,
                        // ),
                        VerticalSmallGap(),
                        LabelText(
                          text: 'AED ${deal?.agreedSalePrice}',
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        VerticalSmallGap(),
                        BlocSelector<DealDetailsCubit, DealDetailsState,
                            List<PropertyType>>(
                          selector: (state) {
                            return state.propertyTypeList;
                          },
                          builder: (context, propertyTypeList) {
                            return InfoLabelValue(
                              labelOne: 'Type',
                              valueOne:
                                  deal!.external_listing_property?.propertyType,
                              labelTwo: 'Listing Type',
                              valueTwo: deal.propertyList?.listingType,
                            );
                          },
                        ),
                        InfoLabelValue(
                          labelOne: 'Beds',
                          valueOne: deal!.external_listing_property?.beds,
                          labelTwo: 'Baths',
                          valueTwo: deal.external_listing_property?.baths,
                        ),
                        InfoLabelValue(
                          labelOne: 'Area',
                          valueOne:
                              deal.external_listing_property?.size.toString(),
                          labelTwo: 'Community',
                          valueTwo: deal.external_listing_property?.community
                                  ?.community ??
                              '',
                        ),
                      ],
                    ),
                  )
                ],
                if (deal?.offPlanProperty != null) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //     height: 200,
                        //     width: double.maxFinite,
                        //     clipBehavior: Clip.hardEdge,
                        //     decoration: BoxDecoration(
                        //         color: Colors.grey[100],
                        //         borderRadius: BorderRadius.circular(4)),
                        //     child: S3Image(
                        //       url: deal!.propertyList!.image,
                        //       fit: BoxFit.contain,
                        //     )),
                        // VerticalSmallGap(),
                        // BlockTitleText(
                        //   text: deal.propertyList!.propertyTitle,
                        // ),
                        VerticalSmallGap(),
                        LabelText(
                          text: 'AED ${deal?.agreedSalePrice?.currency ?? ''}',
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        VerticalSmallGap(),
                        BlocSelector<DealDetailsCubit, DealDetailsState,
                            List<PropertyType>>(
                          selector: (state) {
                            return state.propertyTypeList;
                          },
                          builder: (context, propertyTypeList) {
                            return InfoLabelValue(
                              labelOne: 'Type',
                              valueOne: deal!.offPlanProperty?.propertyType,
                              labelTwo: 'Area',
                              valueTwo: deal.offPlanProperty?.size.toString(),
                            );
                          },
                        ),
                        InfoLabelValue(
                          labelOne: 'Beds',
                          valueOne: deal!.offPlanProperty?.beds,
                          labelTwo: 'Baths',
                          valueTwo: deal.offPlanProperty?.baths,
                        ),
                      ],
                    ),
                  )
                ]
              ],
            );
          },
        ),
      ),
    );
  }
}

class BuyerInternalUserInfo extends StatelessWidget {
  const BuyerInternalUserInfo({
    super.key,
    required this.deal,
  });

  final Deal deal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              BlockTitleText(
                text: 'Buyer/Tenant Info',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              InfoLabelValue(
                labelOne: 'First Name',
                valueOne: deal.buyerInternalUser?.firstName,
                labelTwo: 'Last Name',
                valueTwo: deal.buyerInternalUser?.lastName,
              ),
              InfoLabelValue(
                labelOne: 'Phone',
                valueOne: deal.buyerInternalUser?.phone,
                labelTwo: 'Email',
                valueTwo: deal.buyerInternalUser?.email,
              ),
              InfoLabelValue(
                labelOne: 'Lead Source',
                valueOne: deal.buyerInternalUser?.leadSource,
                labelTwo: 'Status',
                valueTwo: deal.buyerInternalUser?.leadStatus?.name,
              ),
              InfoLabelValue(
                labelOne: 'Client Type',
                valueOne: deal.buyerClientType,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SellerInternalUserInfo extends StatelessWidget {
  const SellerInternalUserInfo(
      {super.key, required this.client, required this.clientSource});

  final Lead client;
  final String clientSource;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              BlockTitleText(
                text: 'Seller/landlord Info',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              InfoLabelValue(
                labelOne: 'First Name',
                valueOne: client.firstName,
                labelTwo: 'Last Name',
                valueTwo: client.lastName,
              ),
              InfoLabelValue(
                labelOne: 'Phone',
                valueOne: client.phone,
                labelTwo: 'Email',
                valueTwo: client.email,
              ),
              InfoLabelValue(
                labelOne: 'Lead Source',
                valueOne: client.leadSource,
                labelTwo: 'Status',
                valueTwo: client.leadStatus?.name,
              ),
              InfoLabelValue(
                labelOne: 'Client Type',
                valueOne: clientSource,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SellerExternalUserInfo extends StatelessWidget {
  const SellerExternalUserInfo({super.key, required this.deal});

  final Deal deal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              BlockTitleText(
                text: 'Seller/landlord Info',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              InfoLabelValue(
                labelOne: 'Agency/Agent Name',
                valueOne: deal.sellerExternalAgentName,
                labelTwo: 'Client Name',
                valueTwo: deal.sellerExternalClientName,
              ),
              InfoLabelValue(
                labelOne: 'Phone',
                valueOne: deal.sellerExternalAgentPhone,
                labelTwo: 'Email',
                valueTwo: deal.sellerExternalUser?.email,
              ),
              InfoLabelValue(
                labelOne: 'Client Type',
                valueOne: deal.sellerclientType,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BuyerExternalUerInfo extends StatelessWidget {
  const BuyerExternalUerInfo({super.key, required this.deal});
  final Deal deal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              BlockTitleText(
                text: 'Buyer/Tenant Info',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              InfoLabelValue(
                labelOne: 'Agency/Agent Name',
                valueOne: deal.buyerExternalAgentName,
                labelTwo: 'Client Name',
                valueTwo: deal.buyerExternalClientName,
              ),
              InfoLabelValue(
                labelOne: 'Phone',
                valueOne: deal.buyerExternalAgentPhone,
                labelTwo: 'Email',
                valueTwo: '',
              ),
              InfoLabelValue(
                labelOne: 'Client Type',
                valueOne: deal.buyerClientType,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PrimaryClientInfo extends StatelessWidget {
  const PrimaryClientInfo({super.key, required this.deal});

  final Deal deal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              BlockTitleText(
                text: 'Client Info',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              InfoLabelValue(
                labelOne: 'First Name',
                valueOne: deal.client?.firstName,
                labelTwo: 'Last Name',
                valueTwo: deal.client?.lastName,
              ),
              InfoLabelValue(
                labelOne: 'Phone',
                valueOne: deal.client?.phone,
                labelTwo: 'Email',
                valueTwo: deal.client?.email,
              ),
              InfoLabelValue(
                labelOne: 'Lead Source',
                valueOne: deal.client?.leadSource,
                labelTwo: 'Status',
                valueTwo: deal.client?.leadStatus?.name,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
