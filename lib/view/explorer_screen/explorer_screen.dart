import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/explorer_screen/cubit/explorer_screen_cubit.dart';
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

class ExplorerScreen extends StatelessWidget {
  static const routeName = '/explorerScreen';
  const ExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExplorerScreenCubit>(),
      child: _ExplorerScreenLayout(),
    );
  }
}

// class _ExplorerScreen extends StatelessWidget {
//   const _ExplorerScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Explorer'),
//         centerTitle: true,
//       ),
//       body: NotificationListener(
//           child: RefreshIndicator.adaptive(
//         onRefresh: () async {},
//         child: ListView.separated(
//             itemBuilder: (context, index) {
//               return SizedBox();
//             },
//             separatorBuilder: (context, index) => SizedBox(
//                   height: 8,
//                 ),
//             itemCount: 8),
//       )),
//     );
//   }
// }

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
  void initState() {
    context.read<ExplorerScreenCubit>().getExplorerList();
    super.initState();
  }

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
              title: Text('Explorer'),
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
                  text: 'Explorer List',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverVerticalSmallGap(),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppTabBar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                selectedColor: Theme.of(context).primaryColor,
                tabController: _tabController,
                tabs: ['Pool', 'Checked Out'],
                onTap: (index) {
                  context.read<ExplorerScreenCubit>().setSelectedTab(index);
                },
              ),
            )),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [ExplorerTab(), CheckedOutPoolTab()],
        ),
      ),
    );
  }
}

class ExplorerTab extends StatelessWidget {
  const ExplorerTab({
    super.key,
  });

  List<Widget> filterFields(BuildContext context) {
    return [
      MultiSelectAutoCompleteField(
          label: 'Community',
          optionsBuilder: (v) async {
            final list = await context
                .read<ExplorerScreenCubit>()
                .getCommunities(search: v.text);
            return list.map((e) => {'value': e.id, 'label': e.community});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'communities'),
      MultiSelectAutoCompleteField(
          label: 'Building',
          optionsBuilder: (v) async {
            final list = await context
                .read<ExplorerScreenCubit>()
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
          values:
              context.select<ExplorerScreenCubit, List<Map<String, dynamic>>>(
                  (cubit) => cubit.state.propertyTypeList
                      .map((e) => {'value': e.id, 'label': e.propertyType})
                      .toList()),
          displayOption: (option) => option['label'] ?? '',
          isRequired: true),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: AppSearchBar(
            onChanged: (val) {
              context.read<ExplorerScreenCubit>().searchExplorer(val);
            },
            filterFields: filterFields(context),
            filter: context.select(
                (ExplorerScreenCubit value) => value.state.explorerFilter),
            onFilterApplied: (filter) {
              context.read<ExplorerScreenCubit>().setExplorerFilter(filter);
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
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
                                                .read<ExplorerScreenCubit>()
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
                                                  .read<ExplorerScreenCubit>()
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
                    child: Text('Random Assign'))
              ],
            )),
        BlocBuilder<ExplorerScreenCubit, ExplorerScreenState>(
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
                            .read<ExplorerScreenCubit>()
                            .setSelectionModeDisabled();
                      },
                      icon: Icon(Icons.close)),
                  Text(
                      "${state.selectedPropertyCards.length.toString()} Selected"),
                  Spacer(),
                  state.checkOutLeadStatus == Status.loading
                      ? SizedBox.square(
                          dimension: 24, child: CircularProgressIndicator())
                      : TextButton(
                          onPressed: () {
                            context
                                .read<ExplorerScreenCubit>()
                                .checkOutLeadInBulk(context: context);
                          },
                          child: Text('Bulk Assign'))
                ],
              ),
            );
          },
        ),
        Expanded(
          child: BlocBuilder<ExplorerScreenCubit, ExplorerScreenState>(
            // buildWhen: (previous, current) =>
            //     previous.getExplorerListStatus !=
            //         current.getExplorerListStatus ||
            //     previous.explorerList != current.explorerList,
            builder: (context, state) {
              if (state.getExplorerListStatus == Status.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.getExplorerListStatus == Status.success &&
                  state.explorerList.length == 0) {
                return Center(
                  child: Text('No Property Card Found'),
                );
              }
              return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getExplorerListStatus != Status.loadingMore &&
                        state.explorerPaginator?.hasNextPage == true &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent) {
                      EasyDebounce.debounce(
                          'explorer-pool-list', Durations.medium2, () {
                        context.read<ExplorerScreenCubit>().getExplorerList();
                      });
                    }
                    return true;
                  },
                  child: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      await context
                          .read<ExplorerScreenCubit>()
                          .getExplorerList(refresh: true);
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
                          final propertyCard = state.explorerList[index];
                          return InkWell(
                            onTap: () {
                              if (state.selectModeEnabled) {
                                context
                                    .read<ExplorerScreenCubit>()
                                    .addToSelection(context, propertyCard);
                              } else {
                                context.pushNamed(
                                    PropertyCardDetailsScreen.routeName,
                                    pathParameters: {'id': propertyCard.id});
                              }
                            },
                            onLongPress: () {
                              context
                                  .read<ExplorerScreenCubit>()
                                  .setSelectionModeEnabled(
                                      context, propertyCard);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                  border: state.selectModeEnabled &&
                                          state.selectedPropertyCards
                                              .contains(propertyCard.id)
                                      ? Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          width: 3)
                                      : null,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      LabelText(
                                        text:
                                            propertyCard.referenceNumber ?? '',
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
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
                                            text: propertyCard
                                                    .status?.titleCase ??
                                                ''),
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
                                    valueOne:
                                        propertyCard.building?.name ?? 'N/A',
                                    labelTwo: 'Beds',
                                    valueTwo: propertyCard.beds?.toString(),
                                  ),
                                  if (propertyCard.currentAgent is Map)
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
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
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle),
                                            child: S3Image(
                                              url: propertyCard.currentAgent[
                                                      "userId"]["photo"] ??
                                                  '',
                                            ),
                                          ),
                                          HorizontalSmallGap(),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                              await context
                                                  .read<ExplorerScreenCubit>()
                                                  .checkOutLead(
                                                      context: context,
                                                      card: propertyCard);
                                            })
                                      ],
                                    ),
                                  if (!propertyCard.availableForCheckout &&
                                      propertyCard.currentAgent == null)
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.h, vertical: 1.h),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.red[800]!),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Colors.red[100]),
                                          child:
                                              SmallText(text: 'Not Available'),
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
                            state.getExplorerListStatus == Status.loadingMore
                                ? state.explorerList.length + 1
                                : state.explorerList.length),
                  ));
            },
          ),
        ),
      ],
    );
  }
}

class CheckedOutPoolTab extends StatelessWidget {
  const CheckedOutPoolTab({
    super.key,
  });

  List<Widget> filterFields(BuildContext context) {
    return [
      MultiSelectAutoCompleteField(
          label: 'Community',
          optionsBuilder: (v) async {
            final list = await context
                .read<ExplorerScreenCubit>()
                .getCommunities(search: v.text);
            return list.map((e) => {'value': e.id, 'label': e.community});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'community'),
      MultiSelectAutoCompleteField(
          label: 'Building',
          optionsBuilder: (v) async {
            final list = await context
                .read<ExplorerScreenCubit>()
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
      // WrapSelectField(
      //     name: 'propertyType',
      //     label: 'Property Type',
      //     values:
      //         context.select<ExplorerScreenCubit, List<Map<String, dynamic>>>(
      //             (cubit) => cubit.state.propertyTypeList
      //                 .map((e) => {'value': e.id, 'label': e.propertyType})
      //                 .toList()),
      //     displayOption: (option) => option['label'] ?? '',
      //     isRequired: true),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: AppSearchBar(
            onChanged: (val) {
              context.read<ExplorerScreenCubit>().searchCheckedOut(val);
            },
            filterFields: filterFields(context),
            filter: context.select(
                (ExplorerScreenCubit value) => value.state.checkedOutFilter),
            onFilterApplied: (filter) {
              context.read<ExplorerScreenCubit>().setCheckedOutFilter(filter);
            },
          ),
        ),
        Expanded(
          child: BlocBuilder<ExplorerScreenCubit, ExplorerScreenState>(
            buildWhen: (previous, current) =>
                previous.getCheckedOutExplorerListStatus !=
                    current.getCheckedOutExplorerListStatus ||
                previous.checkedOutExplorerList !=
                    current.checkedOutExplorerList,
            builder: (context, state) {
              if (state.getCheckedOutExplorerListStatus == Status.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.getCheckedOutExplorerListStatus ==
                      Status.success &&
                  state.explorerList.length == 0) {
                return Center(
                  child: Text('No Property Card Found'),
                );
              }
              return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getCheckedOutExplorerListStatus !=
                            Status.loadingMore &&
                        state.checkedOutPaginator?.hasNextPage == true &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent) {
                      EasyDebounce.debounce(
                          'explorer-checked-out-list', Durations.long2, () {
                        context
                            .read<ExplorerScreenCubit>()
                            .getCheckedOutExplorerList();
                      });
                    }

                    return true;
                  },
                  child: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      await context
                          .read<ExplorerScreenCubit>()
                          .getCheckedOutExplorerList(refresh: true);
                    },
                    child: ListView.separated(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        itemBuilder: (context, index) {
                          if (index == state.checkedOutExplorerList.length) {
                            return SizedBox(
                              height: 50,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          final propertyCard =
                              state.checkedOutExplorerList[index];
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: shadowColor,
                                      offset: Offset(-4, 5),
                                      blurRadius: 11)
                                ]),
                            child: InkWell(
                              onTap: () {
                                context.pushNamed(
                                    PropertyCardDetailsScreen.routeName,
                                    pathParameters: {'id': propertyCard.id});
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      LabelText(
                                        text:
                                            propertyCard.referenceNumber ?? '',
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
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
                                            text: propertyCard
                                                    .status?.titleCase ??
                                                ''),
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
                                    valueOne:
                                        propertyCard.building?.name ?? 'N/A',
                                    labelTwo: 'Beds',
                                    valueTwo: propertyCard.beds?.toString(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      AppPrimaryButton(
                                          text: 'Check In',
                                          onTap: () async {
                                            await context
                                                .read<ExplorerScreenCubit>()
                                                .checkInLead(
                                                    context: context,
                                                    card: propertyCard);
                                          })
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              height: 8,
                            ),
                        itemCount: state.getCheckedOutExplorerListStatus ==
                                Status.loadingMore
                            ? state.checkedOutExplorerList.length + 1
                            : state.checkedOutExplorerList.length),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
