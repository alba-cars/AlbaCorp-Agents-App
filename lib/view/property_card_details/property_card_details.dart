import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/image_viewer_screen/image_viewer.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';
import 'package:real_estate_app/view/property_card_details/cubit/property_card_details_cubit.dart';
import 'package:real_estate_app/view/property_card_details/widgets/convert_propertycard.dart';
import 'package:real_estate_app/view/property_card_details/widgets/lead_property_action_button.dart';
import 'package:real_estate_app/view/property_card_details/widgets/show_add_note_dialog.dart';
import 'package:real_estate_app/view/property_card_details/widgets/show_add_photos_dialog.dart';
import 'package:real_estate_app/view/property_card_details/widgets/unlink_confirmation_dialog.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:recase/recase.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../app/call_bloc/call_bloc.dart';
import '../../widgets/s3_image.dart';
import '../../widgets/space.dart';
import '../../widgets/text.dart';
import '../deal_details_screen/widgets/info_label_value.dart';

class PropertyCardDetailsScreen extends StatelessWidget {
  static const routeName = 'propertyCardDetailsScreen';
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
  const _PropertyCardDetailsScreenLayout();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Property Card'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: context.read<PropertyCardDetailsCubit>().getPropertyCard,
        child: SingleChildScrollView(
          child:
              BlocBuilder<PropertyCardDetailsCubit, PropertyCardDetailsState>(
            builder: (context, state) {
              final propertyCard = state.propertyCard;

              return Column(
                mainAxisSize: MainAxisSize.min,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TitleText(text: 'Property Card Details'),
                            InkWell(
                              onTap: () {
                                launchUrlString(
                                    "https://alba.homes/download-pocket/${propertyCard?.id ?? ""}?source=agentApp");
                              },
                              child: SizedBox(
                                height: 30,
                                width: 120,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.download,
                                        color: Colors.white,
                                      ),
                                      HorizontalSmallGap(),
                                      Text(
                                        "View PDF",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                              color: Colors.blueGrey[100]),
                          child: SmallText(text: propertyCard?.status ?? ''),
                        ),
                        VerticalSmallGap(
                          adjustment: 1,
                        ),
                        if (propertyCard?.availableForCheckout == true)
                          Row(
                            children: [
                              AppPrimaryButton(
                                  onTap: () {
                                    showGeneralDialog(
                                        context: context,
                                        useRootNavigator: false,
                                        barrierDismissible: true,
                                        barrierLabel: 'assign-property-card',
                                        pageBuilder: (dContext, anim1, anim2) {
                                          return AlertDialog(
                                            content: Text(
                                                'Please confirm to assign leads to yourself'),
                                            actions: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: OutlinedButton(
                                                        child: Text('Cancel'),
                                                        onPressed: () {
                                                          Navigator.of(dContext)
                                                              .pop();
                                                        }),
                                                  ),
                                                  HorizontalSmallGap(),
                                                  Expanded(
                                                    child: AppPrimaryButton(
                                                        text: 'Confirm',
                                                        onTap: () async {
                                                          await context
                                                              .read<
                                                                  PropertyCardDetailsCubit>()
                                                              .checkOutLead(
                                                                context:
                                                                    context,
                                                              );
                                                          Navigator.of(dContext)
                                                              .pop();
                                                        }),
                                                  )
                                                ],
                                              ),
                                            ],
                                          );
                                        });
                                  },
                                  text: 'Assign To Me')
                            ],
                          ),
                        if ((propertyCard?.currentAgent is String &&
                                getIt<AuthBloc>().state.agent?.id ==
                                    propertyCard?.currentAgent) ||
                            (propertyCard?.currentAgent is Map &&
                                getIt<AuthBloc>().state.agent?.id ==
                                    propertyCard?.currentAgent['id']))
                          Row(
                            children: [
                              Expanded(
                                  child: AppPrimaryButton(
                                      onTap: () {
                                        showGeneralDialog(
                                            context: context,
                                            useRootNavigator: false,
                                            barrierDismissible: true,
                                            barrierLabel:
                                                'return-property-card',
                                            pageBuilder:
                                                (dContext, anim1, anim2) {
                                              return AlertDialog(
                                                content: Text(
                                                    'Please confirm to return lead to explorer'),
                                                actions: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: OutlinedButton(
                                                            child:
                                                                Text('Cancel'),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      dContext)
                                                                  .pop();
                                                            }),
                                                      ),
                                                      HorizontalSmallGap(),
                                                      Expanded(
                                                        child: AppPrimaryButton(
                                                            text: 'Confirm',
                                                            onTap: () async {
                                                              await context
                                                                  .read<
                                                                      PropertyCardDetailsCubit>()
                                                                  .checkInLead(
                                                                    context:
                                                                        context,
                                                                  );
                                                              Navigator.of(
                                                                      dContext)
                                                                  .pop();
                                                            }),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                      text: 'Return')),
                              HorizontalSmallGap(),
                              Expanded(
                                  child: OutlinedButton(
                                      onPressed: () {
                                        if (propertyCard != null)
                                          showConvertPropertyCard(
                                              context, propertyCard);
                                      },
                                      child: Text('Convert'))),
                            ],
                          ),
                      ],
                    ),
                  ),
                  VerticalSmallGap(),
                  if ((propertyCard?.currentAgent is Map) &&
                      (propertyCard?.currentAgent?["_id"] !=
                          getIt<AuthBloc>().state.agent?.id))
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Theme.of(context)
                                .colorScheme
                                .primaryContainer
                                .withOpacity(.5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: S3Image(
                                url: propertyCard?.currentAgent["userId"]
                                        ?["photo"] ??
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
                                        "${propertyCard?.currentAgent["userId"]["first_name"] ?? ''} ${propertyCard?.currentAgent["userId"]["last_name"] ?? ''}"),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton.filledTonal(
                                    style: IconButton.styleFrom(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        foregroundColor: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                    onPressed: () async {
                                      var createdBy = propertyCard?.createdBy;
                                      if (createdBy == null) {
                                        showSnackbar(
                                            context,
                                            'Phone number not available',
                                            SnackBarType.failure);
                                      }
                                      String phoneNumber = createdBy.phone
                                          ?.replaceFirst("+", "");
                                      Logger().d(phoneNumber);
                                      if (await canLaunchUrlString(
                                          "https://wa.me/${phoneNumber}/?text=${getWhatsAppMessageText(propertyCard)}")) {
                                        launchUrlString(
                                            "https://wa.me/$phoneNumber/?text=${getWhatsAppMessageText(propertyCard)}");
                                      } else {
                                        showSnackbar(
                                            context,
                                            'Can not launch the app',
                                            SnackBarType.failure);
                                      }
                                    },
                                    icon: ImageIcon(AssetImage(
                                        'assets/images/whatsapp.png'))),
                                HorizontalSmallGap(),
                                IconButton.filledTonal(
                                    style: IconButton.styleFrom(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        foregroundColor: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                    onPressed: () async {
                                      final number = propertyCard
                                              ?.currentAgent?["user"]
                                          ["userPBXNumbers"]["publicNumber"];
                                      if (number != null) {
                                        getIt<CallBloc>()
                                            .add(CallEvent.clickToCall(
                                          phoneNumber: number,
                                        ));
                                      }
                                    },
                                    icon: Icon(
                                      Icons.call,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  VerticalSmallGap(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Row(
                      children: [
                        BlockTitleText(
                          color: Theme.of(context).colorScheme.onPrimary,
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
                          labelOne:
                              (propertyCard?.building?.name.isEmpty ?? false)
                                  ? 'Building Name'
                                  : "Cluster Name",
                          valueOne:
                              (propertyCard?.building?.name.isEmpty ?? false)
                                  ? propertyCard?.building?.name
                                  : (propertyCard?.cluster?.length ?? 0) < 2
                                      ? propertyCard?.cluster
                                      : "Not info available",
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
                        InfoLabelValue(
                          labelOne: 'Asking Price',
                          valueOne:
                              propertyCard?.askingPrice?.currency ?? 'N/A',
                          labelTwo: 'Agency Valuation',
                          valueTwo:
                              (propertyCard?.agentValutionPrice?.currency) ??
                                  'N/A',
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
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Row(
                      children: [
                        BlockTitleText(
                          color: Theme.of(context).colorScheme.onPrimary,
                          text: 'Leads',
                        ),
                      ],
                    ),
                  ),
                  VerticalSmallGap(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: (state.propertyCardLeads.isEmpty &&
                              (state.getPropertyCardLeadsStatus ==
                                  AppStatus.success))
                          ? {Text('No leads available for this property card')}
                              .toList()
                          : state.propertyCardLeads.mapIndexed((index, e) {
                              return Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.symmetric(vertical: 4),
                                decoration: BoxDecoration(
                                    color: (e.wasOwner &&
                                            (state.propertyCard?.currentOwner
                                                    ?.id !=
                                                e.lead.id))
                                        ? Colors.grey[300]
                                        : Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                    border: Border.all(
                                      color: Colors.blueGrey,
                                    ),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              if (state.propertyCard
                                                      ?.currentOwner?.id ==
                                                  e.lead.id)
                                                Row(
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 6,
                                                      ),
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 4),
                                                      decoration: BoxDecoration(
                                                          color: Theme.of(
                                                                  context)
                                                              .colorScheme
                                                              .primaryContainer,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(6),
                                                          border: Border.all(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary)),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.verified,
                                                            size: 14,
                                                            color: Colors.green,
                                                          ),
                                                          HorizontalSmallGap(),
                                                          SmallText(
                                                              text:
                                                                  'Current Owner')
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (e.wasOwner &&
                                                  (state.propertyCard
                                                          ?.currentOwner?.id !=
                                                      e.lead.id))
                                                Row(
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 6,
                                                      ),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(6),
                                                          border: Border.all(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .primary)),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.verified,
                                                            size: 14,
                                                            color: Colors.grey,
                                                          ),
                                                          HorizontalSmallGap(),
                                                          SmallText(
                                                              text:
                                                                  'Past Owner')
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              LabelText(
                                                text:
                                                    "${e.lead.firstName} ${e.lead.lastName}",
                                                maxLines: 2,
                                              ),
                                            ],
                                          ),
                                        ),
                                        HorizontalSmallGap(),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.h, vertical: 1.h),
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
                                        HorizontalSmallGap(),
                                      ],
                                    ),
                                    InfoLabelValue(
                                        labelOne: 'Transaction',
                                        valueOne:
                                            "AED ${e.amount?.round().toString() ?? ''}",
                                        labelTwo: 'Transaction Date',
                                        valueTwo: DateFormat.yMMMEd()
                                            .add_jm()
                                            .format(e.date ?? DateTime.now())),
                                    if ((propertyCard?.currentAgent is String &&
                                            getIt<AuthBloc>().state.agent?.id ==
                                                propertyCard?.currentAgent) ||
                                        (propertyCard?.currentAgent is Map &&
                                                getIt<AuthBloc>()
                                                        .state
                                                        .agent
                                                        ?.id ==
                                                    propertyCard
                                                        ?.currentAgent['id']) &&
                                            (e.lead.currentAgent?.id ==
                                                getIt<AuthBloc>()
                                                    .state
                                                    .agent
                                                    ?.id))
                                      Wrap(
                                          runSpacing: 12,
                                          spacing: 12,
                                          children: [
                                            LeadPropertyActionButton(
                                              onTap: () {
                                                if ((propertyCard?.currentAgent
                                                            is String &&
                                                        getIt<AuthBloc>()
                                                                .state
                                                                .agent
                                                                ?.id ==
                                                            propertyCard
                                                                ?.currentAgent) ||
                                                    (propertyCard?.currentAgent
                                                                is Map &&
                                                            getIt<AuthBloc>()
                                                                    .state
                                                                    .agent
                                                                    ?.id ==
                                                                propertyCard
                                                                        ?.currentAgent[
                                                                    'id']) &&
                                                        (e.lead.currentAgent
                                                                ?.id ==
                                                            getIt<AuthBloc>()
                                                                .state
                                                                .agent
                                                                ?.id)) {
                                                  context.pushNamed(
                                                      LeadDetailScreen
                                                          .routeName,
                                                      pathParameters: {
                                                        'id': e.lead.id
                                                      });
                                                }
                                              },
                                              icon: Icons.remove_red_eye,
                                              color: Colors.blue,
                                            ),
                                            LeadPropertyActionButton(
                                              onTap: (state.propertyCard
                                                          ?.currentOwner?.id ==
                                                      e.lead.id)
                                                  ? null
                                                  : () {
                                                      context
                                                          .read<
                                                              PropertyCardDetailsCubit>()
                                                          .verifyLeadAsOwner(
                                                              leadCard: e,
                                                              index: index);
                                                    },
                                              icon: Icons.check,
                                              color: Colors.green,
                                            ),
                                            LeadPropertyActionButton(
                                              onTap: (e.wasOwner &&
                                                      (state
                                                              .propertyCard
                                                              ?.currentOwner
                                                              ?.id !=
                                                          e.lead.id))
                                                  ? null
                                                  : () {
                                                      context
                                                          .read<
                                                              PropertyCardDetailsCubit>()
                                                          .markLeadAsPastOwner(
                                                              leadCard: e,
                                                              index: index);
                                                    },
                                              icon: Icons.alarm,
                                              color: Colors.orange,
                                            ),
                                            LeadPropertyActionButton(
                                              onTap: () {
                                                showUnlinkConfirmationDialog(
                                                    context, e);
                                              },
                                              icon: Icons.close,
                                              color: Colors.red,
                                            ),
                                          ]),
                                  ],
                                ),
                              );
                            }).toList(),
                    ),
                  ),
                  VerticalSmallGap(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlockTitleText(
                          color: Theme.of(context).colorScheme.onPrimary,
                          text: 'Photos',
                        ),
                        if (propertyCard?.currentAgent?['_id'] ==
                            getIt<AuthBloc>().state.agent?.id)
                          TextButton(
                              style: TextButton.styleFrom(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  padding: EdgeInsets.symmetric(vertical: 0)),
                              onPressed: () {
                                showAddPhotosDialog(
                                    context, propertyCard?.photos);
                              },
                              child: Row(
                                children: [
                                  BlockTitleText(
                                    text: '+ Add',
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                  ),
                                ],
                              ))
                      ],
                    ),
                  ),
                  VerticalSmallGap(),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: state.propertyCard?.photos.isEmpty == true
                          ? Text('No photos')
                          : GridView.count(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              children: state.propertyCard?.photos
                                      .map((e) => InkWell(
                                          onTap: () {
                                            context.pushNamed(
                                                ImageViewerScreen.routeName,
                                                pathParameters: {
                                                  'url': e.original
                                                });
                                          },
                                          child: Container(
                                              height: 100,
                                              clipBehavior: Clip.hardEdge,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              child: S3Image(
                                                url: e.original,
                                              ))))
                                      .toList() ??
                                  [],
                            ),
                    ),
                  ),
                  VerticalSmallGap(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlockTitleText(
                          color: Theme.of(context).colorScheme.onPrimary,
                          text: 'Notes',
                        ),
                        if (propertyCard?.currentAgent?['_id'] ==
                            getIt<AuthBloc>().state.agent?.id)
                          TextButton(
                              style: TextButton.styleFrom(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  padding: EdgeInsets.symmetric(vertical: 0)),
                              onPressed: () {
                                showAddNoteDialog(context);
                              },
                              child: Row(
                                children: [
                                  BlockTitleText(
                                    text: '+ Add',
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                  ),
                                ],
                              ))
                      ],
                    ),
                  ),
                  VerticalSmallGap(),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: state.propertyCardNotes.isEmpty == true
                          ? Text('No notes')
                          : ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 8,
                                  ),
                              itemCount: state.propertyCardNotes.length,
                              itemBuilder: (context, index) {
                                final note = state.propertyCardNotes[index];
                                return Container(
                                    padding: EdgeInsets.all(8),
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        color: Colors.amber[100],
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(note.message ?? ''),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  SmallText(
                                                    text:
                                                        "${note.createdBy?.firstName} ${note.createdBy?.lastName ?? ''}",
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  SmallText(
                                                      text:
                                                          "${DateFormat.yMd().add_jms().format(note.createdAt ?? DateTime.now())}")
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ));
                              }),
                    ),
                  ),
                  VerticalSmallGap(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Row(
                      children: [
                        BlockTitleText(
                          color: Theme.of(context).colorScheme.onPrimary,
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
                                                  "${e.createdBy?.firstName ?? "System"} ${e.createdBy?.lastName ?? ""}",
                                              maxLines: 2,
                                            ),
                                          ),
                                          HorizontalSmallGap(),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 4.h, vertical: 1.h),
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
                          .toList(),
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
      ),
    );
  }

  String getWhatsAppMessageText(PropertyCardDetailsModel? propertyCard) {
    return "Hey ${propertyCard?.currentAgent["userId"]["first_name"] ?? ""}, \n I want to enquire about this property on ${propertyCard?.building?.name ?? ""}, ${propertyCard?.community?.community ?? ""} under ${propertyCard?.status} for ${propertyCard?.purpose ?? ""}";
  }
}
