import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/image_viewer_screen/image_viewer.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';
import 'package:real_estate_app/view/property_card_details/cubit/property_card_details_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:recase/recase.dart';

import '../../widgets/fields/attachment_field.dart';
import '../../widgets/fields/currency_field.dart';
import '../../widgets/fields/multi_image_field.dart';
import '../../widgets/fields/wrap_select_field.dart';
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
                                        final statuses = [
                                          'Verified',
                                          'Unverified',
                                          'Invalid',
                                          'Sold',
                                          'Pocket Listing'
                                        ]..remove(propertyCard?.status ?? '');
                                        showGeneralDialog(
                                            context: context,
                                            useRootNavigator: false,
                                            barrierDismissible: true,
                                            barrierLabel:
                                                'change-status-property-card',
                                            pageBuilder:
                                                (dContext, anim1, anim2) {
                                              final GlobalKey<FormBuilderState>
                                                  key = GlobalKey();
                                              String? status;
                                              return StatefulBuilder(builder:
                                                  (sContext,
                                                      StateSetter setState) {
                                                return AlertDialog(
                                                  title: Text(
                                                      'Property card Status'),
                                                  content: FormBuilder(
                                                    key: key,
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          DropDownfield(
                                                              label: 'Status',
                                                              isRequired: true,
                                                              items: statuses,
                                                              onSelected:
                                                                  (option) {
                                                                status = option;
                                                                setState(() {});
                                                              },
                                                              name: 'status'),
                                                          if (status ==
                                                              'Pocket Listing') ...[
                                                            WrapSelectField(
                                                              name: 'purpose',
                                                              label: 'Purpose',
                                                              values: [
                                                                'Sell',
                                                                'Lease'
                                                              ],
                                                              isRequired: true,
                                                            ),
                                                            CurrencyField(
                                                              isRequired: true,
                                                              name:
                                                                  'askingPrice',
                                                              label:
                                                                  'Asking Price',
                                                            ),
                                                            CurrencyField(
                                                              isRequired: true,
                                                              name:
                                                                  'agentValutionPrice',
                                                              label:
                                                                  'Agency Valuation',
                                                            ),
                                                            MultipleImageuploadField(
                                                              name: 'photos',
                                                              label: 'Photos',
                                                              isRequired: true,
                                                            ),
                                                            VerticalSmallGap(),
                                                            AttachmentField(
                                                              name: 'documents',
                                                              label:
                                                                  'Documents',
                                                              isRequired: true,
                                                            )
                                                          ]
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: OutlinedButton(
                                                              child: Text(
                                                                  'Cancel'),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        dContext)
                                                                    .pop();
                                                              }),
                                                        ),
                                                        HorizontalSmallGap(),
                                                        Expanded(
                                                          child:
                                                              AppPrimaryButton(
                                                                  text: 'Save',
                                                                  onTap:
                                                                      () async {
                                                                    final validated = key
                                                                        .currentState
                                                                        ?.saveAndValidate();
                                                                    if (validated ==
                                                                        true) {
                                                                      final values = key
                                                                          .currentState!
                                                                          .value;
                                                                      await context
                                                                          .read<
                                                                              PropertyCardDetailsCubit>()
                                                                          .updatePropertyCard(
                                                                              values: values);
                                                                      Navigator.of(
                                                                              dContext)
                                                                          .pop();
                                                                    }
                                                                  }),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              });
                                            });
                                      },
                                      child: Text('Change Status'))),
                            ],
                          ),
                      ],
                    ),
                  ),
                  VerticalSmallGap(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
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
                      children: state.propertyCardLeads.isEmpty &&
                              state.getPropertyCardLeadsStatus ==
                                  AppStatus.success
                          ? [Text('No leads available for this property card')]
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
                                        : null,
                                    border: Border.all(
                                      color: Colors.blueGrey,
                                    ),
                                    borderRadius: BorderRadius.circular(6)),
                                child: InkWell(
                                  onTap: () {
                                    if ((propertyCard?.currentAgent is String &&
                                            getIt<AuthBloc>().state.agent?.id ==
                                                propertyCard?.currentAgent) ||
                                        (propertyCard?.currentAgent is Map &&
                                            getIt<AuthBloc>().state.agent?.id ==
                                                propertyCard
                                                    ?.currentAgent['id'])) {
                                      context.pushNamed(
                                          LeadDetailScreen.routeName,
                                          pathParameters: {'id': e.lead.id});
                                    }
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 6,
                                                        ),
                                                        decoration: BoxDecoration(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6),
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
                                                              color:
                                                                  Colors.green,
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
                                                    (state
                                                            .propertyCard
                                                            ?.currentOwner
                                                            ?.id !=
                                                        e.lead.id))
                                                  Row(
                                                    children: [
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 6,
                                                        ),
                                                        decoration: BoxDecoration(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6),
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
                                                              color:
                                                                  Colors.grey,
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
                                                          ?.currentAgent['id']))
                                            MenuAnchor(
                                                alignmentOffset:
                                                    Offset(-140, 0),
                                                builder: (BuildContext context,
                                                    MenuController controller,
                                                    Widget? child) {
                                                  return IconButton(
                                                    onPressed: () {
                                                      if (controller.isOpen) {
                                                        controller.close();
                                                      } else {
                                                        controller.open();
                                                      }
                                                    },
                                                    icon: const Icon(
                                                        Icons.more_vert),
                                                    tooltip: 'Show menu',
                                                  );
                                                },
                                                menuChildren: [
                                                  MenuItemButton(
                                                    onPressed: (state
                                                                .propertyCard
                                                                ?.currentOwner
                                                                ?.id ==
                                                            e.lead.id)
                                                        ? null
                                                        : () {
                                                            context
                                                                .read<
                                                                    PropertyCardDetailsCubit>()
                                                                .verifyLeadAsOwner(
                                                                    leadCard: e,
                                                                    index:
                                                                        index);
                                                          },
                                                    leadingIcon:
                                                        Icon(Icons.check),
                                                    child:
                                                        Text('Verify as Owner'),
                                                  ),
                                                  MenuItemButton(
                                                    onPressed: (e.wasOwner &&
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
                                                                    index:
                                                                        index);
                                                          },
                                                    leadingIcon:
                                                        Icon(Icons.minimize),
                                                    child: Text(
                                                        'Mark as past owner'),
                                                  ),
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
                                                                            Navigator.of(context).pop();
                                                                          }),
                                                                    ),
                                                                    HorizontalSmallGap(),
                                                                    Expanded(
                                                                      child: AppPrimaryButton(
                                                                          text: 'UnLink',
                                                                          backgroundColor: Colors.red[700],
                                                                          onTap: () async {
                                                                            await context.read<PropertyCardDetailsCubit>().unLinkLeadFromPropertyCard(leadCardId: e.id);
                                                                            Navigator.of(context).pop();
                                                                          }),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            );
                                                          });
                                                    },
                                                    leadingIcon:
                                                        Icon(Icons.close),
                                                    child: Text(
                                                        'Unlink from property'),
                                                  ),
                                                ]),
                                        ],
                                      ),
                                      InfoLabelValue(
                                          labelOne: 'Transaction',
                                          valueOne:
                                              "AED ${e.amount?.round().toString() ?? ''}",
                                          labelTwo: 'Transaction Date',
                                          valueTwo: DateFormat.yMMMEd()
                                              .add_jm()
                                              .format(
                                                  e.date ?? DateTime.now())),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                    ),
                  ),
                  VerticalSmallGap(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        BlockTitleText(
                          text: 'Photos',
                        ),
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
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlockTitleText(
                          text: 'Notes',
                        ),
                        if (propertyCard?.currentAgent?['_id'] ==
                            getIt<AuthBloc>().state.agent?.id)
                          TextButton(
                              onPressed: () {
                                showGeneralDialog(
                                    context: context,
                                    useRootNavigator: false,
                                    barrierDismissible: true,
                                    barrierLabel: 'add-note-property-card',
                                    pageBuilder: (dContext, anim1, anim2) {
                                      final GlobalKey<FormBuilderState> key =
                                          GlobalKey();

                                      return StatefulBuilder(builder:
                                          (sContext, StateSetter setState) {
                                        return AlertDialog(
                                          title: Text('Add Note'),
                                          content: FormBuilder(
                                            key: key,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  MultiLineField(
                                                    name: 'message',
                                                    label: 'Message',
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
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
                                                      text: 'Save',
                                                      onTap: () async {
                                                        final validated = key
                                                            .currentState
                                                            ?.saveAndValidate();
                                                        if (validated == true) {
                                                          final values = key
                                                              .currentState!
                                                              .value;
                                                          await context
                                                              .read<
                                                                  PropertyCardDetailsCubit>()
                                                              .addPropertyCardNotes(
                                                                  context:
                                                                      dContext,
                                                                  values:
                                                                      values);
                                                        }
                                                      }),
                                                )
                                              ],
                                            ),
                                          ],
                                        );
                                      });
                                    });
                              },
                              child: Row(
                                children: [
                                  Text('+ Add'),
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
}
