import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/explorer_screen/cubit/explorer_screen_cubit.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';
import 'package:real_estate_app/view/leads_list_explorer/cubit/leads_list_explorer_cubit.dart';
import 'package:real_estate_app/view/property_card_details/property_card_details.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:recase/recase.dart';

import '../../model/agent_model.dart';
import '../../util/color_category.dart';
import '../../util/status.dart';
import '../../widgets/fields/multi_select_autocomplete_field.dart';
import '../../widgets/fields/wrap_select_field.dart';
import '../../widgets/s3_image.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/space.dart';
import '../../widgets/tab_bar.dart';
import '../../widgets/text.dart';
import '../add_ticket_screen/add_ticket_screen.dart';
import '../deal_details_screen/widgets/info_label_value.dart';

class LeadsExplorerScreen extends StatelessWidget {
  static const routeName = '/leadsListExplorerScreen';
  const LeadsExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LeadsListExplorerCubit>(),
      child: _ExplorerScreenLayout(),
    );
  }
}

class _ExplorerScreenLayout extends StatefulWidget {
  const _ExplorerScreenLayout({super.key});

  @override
  State<_ExplorerScreenLayout> createState() => _ExplorerScreenLayoutState();
}

class _ExplorerScreenLayoutState extends State<_ExplorerScreenLayout>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    final agent = context.select<AuthBloc, Agent?>(
      (value) => value.state.agent,
    );
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text('Leads Explorer'),
                centerTitle: true,
                pinned: true,
              ),
              SliverVerticalSmallGap(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: LabelText(
                    text:
                        'You have ${agent?.creditsBalance} credits left (Out of ${agent?.creditsLimit})',
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TitleText(
                    text: 'Leads Explorer List',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SliverVerticalSmallGap(),
              // SliverToBoxAdapter(
              //     child: Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: AppTabBar(
              //     backgroundColor:
              //         Theme.of(context).colorScheme.primaryContainer,
              //     selectedColor: Theme.of(context).primaryColor,
              //     tabController: _tabController,
              //     tabs: ['Available', 'Assigned to Me'],
              //     onTap: (index) {
              //       context
              //           .read<LeadsListExplorerCubit>()
              //           .setSelectedTab(index);
              //     },
              //   ),
              // )),
              // SliverVerticalSmallGap(
              //   height: 4,
              // ),
            ];
          },
          body: ExplorerTab()
          // TabBarView(
          //   controller: _tabController,
          //   physics: NeverScrollableScrollPhysics(),
          //   children: [ExplorerTab(), CheckedOutPoolTab()],
          // ),
          ),
    );
  }
}

class ExplorerTab extends StatefulWidget {
  const ExplorerTab({
    super.key,
  });

  @override
  State<ExplorerTab> createState() => _ExplorerTabState();
}

class _ExplorerTabState extends State<ExplorerTab> {
  List<Widget> filterFields(BuildContext context) {
    return [
      MultiSelectAutoCompleteField(
          label: 'Community',
          optionsBuilder: (v) async {
            final list = await context
                .read<LeadsListExplorerCubit>()
                .getCommunities(search: v.text);
            return list.map((e) => {'value': e.id, 'label': e.community});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'communities'),
      MultiSelectAutoCompleteField(
          label: 'Building',
          optionsBuilder: (v) async {
            final list = await context
                .read<LeadsListExplorerCubit>()
                .getBuildings(search: v.text);
            return list.map((e) => {'value': e.id, 'label': e.name});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'buildings'),
      WrapSelectField(
          name: 'beds',
          label: 'Beds',
          values: ['Studio', '1', '2', '3', '4', '5', '6', '7+'],
          isRequired: true),
      WrapSelectField(
          name: 'baths',
          label: 'Baths',
          values: ['1', '2', '3', '4', '5', '6', '7+'],
          isRequired: true),
      WrapSelectField(
          name: 'propertyType',
          label: 'Property Type',
          values: context
              .select<LeadsListExplorerCubit, List<Map<String, dynamic>>>(
                  (cubit) => cubit.state.propertyTypeList
                      .map((e) => {'value': e.id, 'label': e.propertyType})
                      .toList()),
          displayOption: (option) => option['label'] ?? '',
          isRequired: true),
    ];
  }

  @override
  void initState() {
    super.initState();
    context.read<LeadsListExplorerCubit>().getLeadsExplorerList(refresh: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: AppSearchBar(
            onChanged: (val) {
              context.read<LeadsListExplorerCubit>().searchExplorer(val);
            },
            filterFields: filterFields(context),
            filter: context.select(
                (LeadsListExplorerCubit value) => value.state.explorerFilter),
            onFilterApplied: (filter) {
              context.read<LeadsListExplorerCubit>().setExplorerFilter(filter);
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[700],
                      side: BorderSide.none,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      maximumSize: Size(150, 34),
                      minimumSize: Size(150, 34),
                      fixedSize: Size(150, 34),
                    ),
                    onPressed: () {
                      showGeneralDialog(
                          context: context,
                          useRootNavigator: false,
                          barrierDismissible: true,
                          barrierLabel: 'random-leads-assignment-property-card',
                          pageBuilder: (dContext, anim1, anim2) {
                            final GlobalKey<FormBuilderState> key = GlobalKey();

                            return AlertDialog(
                              title: Text('Random Leads Checkout'),
                              content: FormBuilder(
                                key: key,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      AppAutoComplete(
                                          label: 'Community',
                                          isRequired: true,
                                          optionsBuilder: (v) async {
                                            return await context
                                                .read<LeadsListExplorerCubit>()
                                                .getCommunities(search: v.text);
                                          },
                                          displayStringForOption: (option) =>
                                              option.community,
                                          valueTransformer: (p0) => p0?.id,
                                          name: 'community'),
                                      DropDownfield(
                                          label: 'Select number of Leads',
                                          items: [
                                            1,
                                            5,
                                            10,
                                            15,
                                            20,
                                            25,
                                            50,
                                            100
                                          ],
                                          name: 'numberOfLeads')
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
                                            Navigator.of(dContext).pop();
                                          }),
                                    ),
                                    HorizontalSmallGap(),
                                    Expanded(
                                      child: AppPrimaryButton(
                                          text: 'Assign Leads',
                                          onTap: () async {
                                            final validated = key.currentState
                                                ?.saveAndValidate();
                                            if (validated == true) {
                                              final values =
                                                  key.currentState!.value;
                                              await context
                                                  .read<
                                                      LeadsListExplorerCubit>()
                                                  .randomCheckout(
                                                      context: dContext,
                                                      values: values);
                                            }
                                          }),
                                    )
                                  ],
                                ),
                              ],
                            );
                          });
                    },
                    child: Text('Get Bulk Leads'))
              ],
            )),
        BlocBuilder<LeadsListExplorerCubit, LeadsListExplorerState>(
          builder: (context, state) {
            if (!state.selectModeEnabled) {
              return SizedBox();
            }
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        context
                            .read<LeadsListExplorerCubit>()
                            .setSelectionModeDisabled();
                      },
                      icon: Icon(Icons.close)),
                  Text(
                      "${state.selectedPropertyCards.length.toString()} Selected"),
                  Spacer(),
                  state.checkOutLeadStatus == AppStatus.loading
                      ? SizedBox.square(
                          dimension: 24, child: CircularProgressIndicator())
                      : TextButton(
                          onPressed: () {
                            context
                                .read<LeadsListExplorerCubit>()
                                .checkOutLeadInBulk(context: context);
                          },
                          child: Text('Bulk Assign'))
                ],
              ),
            );
          },
        ),
        Expanded(
          child: BlocBuilder<LeadsListExplorerCubit, LeadsListExplorerState>(
            // buildWhen: (previous, current) =>
            //     previous.getExplorerListStatus !=
            //         current.getExplorerListStatus ||
            //     previous.explorerList != current.explorerList,
            builder: (context, state) {
              if (state.getExplorerListStatus == AppStatus.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.getExplorerListStatus == AppStatus.success &&
                  state.explorerList.length == 0) {
                return Center(
                  child: Text('No Property Card Found'),
                );
              }
              return ScrollShadow(
                color: Colors.grey[300]!,
                size: 6,
                child: NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getExplorerListStatus != AppStatus.loadingMore &&
                        state.explorerPaginator?.hasNextPage == true &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent) {
                      EasyDebounce.debounce(
                          'leads-explorer-pool-list', Durations.medium2, () {
                        context
                            .read<LeadsListExplorerCubit>()
                            .getLeadsExplorerList();
                      });
                    }
                    return true;
                  },
                  child: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      await context
                          .read<LeadsListExplorerCubit>()
                          .getLeadsExplorerList(refresh: true);
                    },
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        itemBuilder: (context, index) {
                          if (index == state.explorerList.length) {
                            return SizedBox(
                              height: 50,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          final leadCard = state.explorerList[index];
                          return InkWell(
                            onTap: () {
                              if (state.selectModeEnabled) {
                                context
                                    .read<LeadsListExplorerCubit>()
                                    .addToSelection(context, leadCard);
                              }
                            },
                            onLongPress: () {
                              context
                                  .read<LeadsListExplorerCubit>()
                                  .setSelectionModeEnabled(context, leadCard);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                  border: state.selectModeEnabled &&
                                          state.selectedPropertyCards
                                              .contains(leadCard)
                                      ? Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          width: 2)
                                      : null,
                                  boxShadow: state.selectModeEnabled &&
                                          state.selectedPropertyCards
                                              .contains(leadCard)
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
                              child: IgnorePointer(
                                ignoring: state.selectModeEnabled,
                                child: ExpansionTile(
                                  tilePadding: EdgeInsets.zero,
                                  backgroundColor: Colors.white,
                                  shape: Border.fromBorderSide(BorderSide.none),
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: InkWell(
                                              // onTap: () {
                                              // context.pushNamed(
                                              //     LeadDetailScreen.routeName,
                                              //     pathParameters: {
                                              //       'id': leadCard.id
                                              //     });
                                              // },
                                              child: LabelText(
                                                text: leadCard.lead.firstName +
                                                    " " +
                                                    leadCard.lead.lastName,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InfoLabelValue(
                                        labelOne: 'Status',
                                        valueOne: leadCard.lead.leadStatus?.name
                                                .titleCase ??
                                            '',
                                        labelTwo: 'Lead Source',
                                        valueTwo:
                                            leadCard.lead.leadSource.titleCase,
                                      ),
                                      Row(
                                        children: [
                                          AppPrimaryButton(
                                              backgroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .primaryContainer,
                                              foregroundColor: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              text: 'Assign to me',
                                              onTap: () async {
                                                await context
                                                    .read<
                                                        LeadsListExplorerCubit>()
                                                    .checkOutLead(
                                                        context: context,
                                                        lead: leadCard);
                                              })
                                        ],
                                      ),
                                    ],
                                  ),
                                  children: [
                                    SizedBox(
                                      height: 150,
                                      child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            final card = leadCard
                                                .mappings[index].propertyCard;
                                            final primaryColor =
                                                Theme.of(context)
                                                    .colorScheme
                                                    .primary;
                                            return Container(
                                              width: 190,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset(-4, 5),
                                                        blurRadius: 11,
                                                        color: Color(0XFF819498)
                                                            .withOpacity(0.14))
                                                  ]),
                                              child: InkWell(
                                                onTap: () {
                                                  context.pushNamed(
                                                      PropertyCardDetailsScreen
                                                          .routeName,
                                                      pathParameters: {
                                                        'id': card.id
                                                      });
                                                },
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.maxFinite,
                                                      height: 30,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                      child: Row(
                                                        children: [
                                                          HorizontalSmallGap(),
                                                          Expanded(
                                                            child: LabelText(
                                                              text:
                                                                  card.referenceNumber ??
                                                                      '',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        children: [
                                                          VerticalSmallGap(
                                                            adjustment: .3,
                                                          ),
                                                          TextWithIcon(
                                                            icon: Icons
                                                                .location_on_outlined,
                                                            text: card.community
                                                                    ?.community ??
                                                                '',
                                                            iconColor:
                                                                primaryColor,
                                                            iconSize: 18,
                                                          ),
                                                          if (card.building
                                                                  ?.name !=
                                                              null)
                                                            TextWithIcon(
                                                              icon: Icons
                                                                  .location_city,
                                                              text: card
                                                                      .building
                                                                      ?.name ??
                                                                  '',
                                                              iconColor:
                                                                  primaryColor,
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
                                                                    child:
                                                                        TextWithIcon(
                                                                      text: card
                                                                              .purpose ??
                                                                          'N/A',
                                                                      icon: CupertinoIcons
                                                                          .arrow_right_arrow_left,
                                                                      iconColor:
                                                                          primaryColor,
                                                                      iconSize:
                                                                          18,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextWithIcon(
                                                                      text: card
                                                                              .beds
                                                                              ?.toString() ??
                                                                          '0',
                                                                      iconPath:
                                                                          'assets/images/bed.png',
                                                                      iconColor:
                                                                          primaryColor,
                                                                      iconSize:
                                                                          18,
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
                                                                    child:
                                                                        TextWithIcon(
                                                                      text: card
                                                                              .baths
                                                                              ?.toString() ??
                                                                          '0',
                                                                      iconPath:
                                                                          'assets/images/shower.png',
                                                                      iconColor:
                                                                          primaryColor,
                                                                      iconSize:
                                                                          18,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextWithIcon(
                                                                      text: (card
                                                                              .size
                                                                              ?.currency ??
                                                                          '0'),
                                                                      iconPath:
                                                                          'assets/images/area.png',
                                                                      iconColor:
                                                                          primaryColor,
                                                                      iconSize:
                                                                          18,
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
                                          itemCount: leadCard.mappings.length),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              height: 8,
                            ),
                        itemCount:
                            state.getExplorerListStatus == AppStatus.loadingMore
                                ? state.explorerList.length + 1
                                : state.explorerList.length),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// class CheckedOutPoolTab extends StatefulWidget {
//   const CheckedOutPoolTab({
//     super.key,
//   });

//   @override
//   State<CheckedOutPoolTab> createState() => _CheckedOutPoolTabState();
// }

// class _CheckedOutPoolTabState extends State<CheckedOutPoolTab> {
//   List<Widget> filterFields(BuildContext context) {
//     return [
//       MultiSelectAutoCompleteField(
//           label: 'Community',
//           optionsBuilder: (v) async {
//             final list = await context
//                 .read<LeadsListExplorerCubit>()
//                 .getCommunities(search: v.text);
//             return list.map((e) => {'value': e.id, 'label': e.community});
//           },
//           displayStringForOption: (option) => option['label'] ?? '',
//           name: 'community'),
//       MultiSelectAutoCompleteField(
//           label: 'Building',
//           optionsBuilder: (v) async {
//             final list = await context
//                 .read<LeadsListExplorerCubit>()
//                 .getBuildings(search: v.text);
//             return list.map((e) => {'value': e.id, 'label': e.name});
//           },
//           displayStringForOption: (option) => option['label'] ?? '',
//           name: 'buildings'),
//       WrapSelectField(
//           name: 'beds',
//           label: 'Beds',
//           values: ['Studio', '1', '2', '3', '4', '5', '6', '7+'],
//           isRequired: true),
//       WrapSelectField(
//           name: 'baths',
//           label: 'Baths',
//           values: ['1', '2', '3', '4', '5', '6', '7+'],
//           isRequired: true),
//       // WrapSelectField(
//       //     name: 'propertyType',
//       //     label: 'Property Type',
//       //     values:
//       //         context.select<LeadsListExplorerCubit, List<Map<String, dynamic>>>(
//       //             (cubit) => cubit.state.propertyTypeList
//       //                 .map((e) => {'value': e.id, 'label': e.propertyType})
//       //                 .toList()),
//       //     displayOption: (option) => option['label'] ?? '',
//       //     isRequired: true),
//     ];
//   }

//   @override
//   void initState() {
//     super.initState();
//     context
//         .read<LeadsListExplorerCubit>()
//         .getCheckedOutExplorerList(refresh: true);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//           child: AppSearchBar(
//             onChanged: (val) {
//               context.read<LeadsListExplorerCubit>().searchCheckedOut(val);
//             },
//             filterFields: filterFields(context),
//             filter: context.select(
//                 (LeadsListExplorerCubit value) => value.state.checkedOutFilter),
//             onFilterApplied: (filter) {
//               context
//                   .read<LeadsListExplorerCubit>()
//                   .setCheckedOutFilter(filter);
//             },
//           ),
//         ),
//         Expanded(
//           child: BlocBuilder<LeadsListExplorerCubit, LeadsListExplorerState>(
//             buildWhen: (previous, current) =>
//                 previous.getCheckedOutExplorerListStatus !=
//                     current.getCheckedOutExplorerListStatus ||
//                 previous.checkedOutExplorerList !=
//                     current.checkedOutExplorerList,
//             builder: (context, state) {
//               if (state.getCheckedOutExplorerListStatus == AppStatus.loading) {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else if (state.getCheckedOutExplorerListStatus ==
//                       AppStatus.success &&
//                   state.checkedOutExplorerList.length == 0) {
//                 return Center(
//                   child: Text('No Property Card Found'),
//                 );
//               }
//               return NotificationListener<ScrollNotification>(
//                   onNotification: (scrollInfo) {
//                     if (state.getCheckedOutExplorerListStatus !=
//                             AppStatus.loadingMore &&
//                         state.checkedOutPaginator?.hasNextPage == true &&
//                         scrollInfo.metrics.pixels >=
//                             0.9 * scrollInfo.metrics.maxScrollExtent) {
//                       EasyDebounce.debounce(
//                           'explorer-checked-out-list', Durations.long2, () {
//                         context
//                             .read<LeadsListExplorerCubit>()
//                             .getCheckedOutExplorerList();
//                       });
//                     }

//                     return true;
//                   },
//                   child: RefreshIndicator.adaptive(
//                     onRefresh: () async {
//                       await context
//                           .read<LeadsListExplorerCubit>()
//                           .getCheckedOutExplorerList(refresh: true);
//                     },
//                     child: ListView.separated(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                         itemBuilder: (context, index) {
//                           if (index == state.checkedOutExplorerList.length) {
//                             return SizedBox(
//                               height: 50,
//                               child: Center(child: CircularProgressIndicator()),
//                             );
//                           }
//                           final leadCard = state.checkedOutExplorerList[index];
//                           return Container(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 8, vertical: 8),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(6),
//                                 color: Colors.white,
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: shadowColor,
//                                       offset: Offset(-4, 5),
//                                       blurRadius: 11)
//                                 ]),
//                             child: InkWell(
//                               onTap: () {
//                                 context.pushNamed(
//                                     PropertyCardDetailsScreen.routeName,
//                                     pathParameters: {'id': leadCard.id});
//                               },
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       LabelText(
//                                         text: leadCard.referenceNumber ?? '',
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .primary,
//                                       ),
//                                       Container(
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 4.h, vertical: 1.h),
//                                         decoration: BoxDecoration(
//                                             border: Border.all(
//                                                 color: Colors.blueGrey),
//                                             borderRadius:
//                                                 BorderRadius.circular(4),
//                                             color: Colors.blueGrey[100]),
//                                         child: SmallText(
//                                             text: leadCard.status?.titleCase ??
//                                                 ''),
//                                       ),
//                                     ],
//                                   ),
//                                   InfoLabelValue(
//                                     labelOne: 'Property Type',
//                                     valueOne: leadCard.propertyType,
//                                     labelTwo: 'Community Name',
//                                     valueTwo: leadCard.community?.community,
//                                   ),
//                                   InfoLabelValue(
//                                     labelOne: 'Building Name',
//                                     valueOne: leadCard.building?.name ?? 'N/A',
//                                     labelTwo: 'Beds',
//                                     valueTwo: leadCard.beds?.toString(),
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       AppPrimaryButton(
//                                           text: 'Return Lead',
//                                           onTap: () async {
//                                             await context
//                                                 .read<LeadsListExplorerCubit>()
//                                                 .checkInLead(
//                                                     context: context,
//                                                     card: leadCard);
//                                           })
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                         separatorBuilder: (context, index) => SizedBox(
//                               height: 8,
//                             ),
//                         itemCount: state.getCheckedOutExplorerListStatus ==
//                                 AppStatus.loadingMore
//                             ? state.checkedOutExplorerList.length + 1
//                             : state.checkedOutExplorerList.length),
//                   ));
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
