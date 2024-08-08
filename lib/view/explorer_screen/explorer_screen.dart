import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
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
import 'package:real_estate_app/view/explorer_screen/widgets/property_card_list_item.dart';
import 'package:real_estate_app/view/explorer_screen/widgets/select_community_widget.dart';
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
import '../deal_details_screen/widgets/info_label_value.dart';

class ExplorerScreen extends StatelessWidget {
  static const routeName = '/explorerScreen';
  const ExplorerScreen({super.key, this.tab});

  final int? tab;

  @override
  Widget build(BuildContext context) {
    Logger().d(tab);
    return BlocProvider(
      create: (context) => getIt<ExplorerScreenCubit>(param1: tab),
      child: _ExplorerScreenLayout(
        tab: tab,
      ),
    );
  }
}

class _ExplorerScreenLayout extends StatefulWidget {
  const _ExplorerScreenLayout({this.tab});
  final int? tab;

  @override
  State<_ExplorerScreenLayout> createState() => _ExplorerScreenLayoutState();
}

class _ExplorerScreenLayoutState extends State<_ExplorerScreenLayout>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  void initState() {
    if (widget.tab != null) {
      _tabController.animateTo(widget.tab!);
    }
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
              floating: true,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                      text: 'Explorer List',
                      fontWeight: FontWeight.bold,
                    ),
                    SmallText(
                        text:
                            'This list shows the property card. leads can be seen by going inside property cards')
                  ],
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
                tabs: ['Available', 'Assigned to Me'],
                onTap: (index) {
                  context.read<ExplorerScreenCubit>().setSelectedTab(index);
                },
              ),
            )),
          ];
        },
        body: SafeArea(
          child: BlocListener<ExplorerScreenCubit, ExplorerScreenState>(
            listenWhen: (previous, current) =>
                previous.currentTab != current.currentTab,
            listener: (context, state) {
              _tabController.animateTo(state.currentTab);
            },
            child: TabBarView(
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(),
              children: [ExplorerTab(), CheckedOutPoolTab()],
            ),
          ),
        ),
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
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

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
      WrapSelectField(
        name: 'showOnlyAvailable',
        label: 'Show Only Availbale',
        values: [
          {'value': true, 'label': 'Yes'},
          {'value': false, 'label': 'No'}
        ],
        isRequired: false,
        displayOption: (option) => option['label'] as String,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    context.read<ExplorerScreenCubit>().getExplorerList(refresh: true);
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ExplorerScreenCubit, ExplorerScreenState,
        Map<String, dynamic>?>(
      selector: (state) {
        return state.explorerFilter;
      },
      builder: (context, explorerFilter) {
        if (explorerFilter == null ||
            explorerFilter.containsKey("communities") == false ||
            explorerFilter['communities'] == null) {
          return SelectCommunityWidget();
        }
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: AppSearchBar(
                onChanged: (val) {
                  context.read<ExplorerScreenCubit>().searchExplorer(val);
                },
                showSearch: false,
                leadWidgets: [
                  Expanded(child: AppPrimaryButton(onTap: () {}, text: "50")),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(child: AppPrimaryButton(onTap: () {}, text: "100")),
                ],
                filterFields: filterFields(context),
                filter: explorerFilter,
                onFilterApplied: (filter) {
                  context.read<ExplorerScreenCubit>().setExplorerFilter(filter);
                },
              ),
            ),
            // Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Expanded(
            //           child: Container(
            //             child: Row(
            //               children: [
            //                 Text('Show only available'),
            //                 BlocSelector<ExplorerScreenCubit, ExplorerScreenState,
            //                     bool>(
            //                   selector: (state) {
            //                     return state.showOnlyAvailable;
            //                   },
            //                   builder: (context, showOnlyAvailable) {
            //                     return Switch.adaptive(
            //                         value: showOnlyAvailable,
            //                         onChanged: (e) {
            //                           context
            //                               .read<ExplorerScreenCubit>()
            //                               .setShowOnlyAvailable(e);
            //                         });
            //                   },
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.green[700],
            //       side: BorderSide.none,
            //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //       maximumSize: Size(150, 34),
            //       minimumSize: Size(150, 34),
            //       fixedSize: Size(150, 34),
            //     ),
            //     onPressed: () {
            //       showGeneralDialog(
            //           context: context,
            //           useRootNavigator: false,
            //           barrierDismissible: true,
            //           barrierLabel: 'random-leads-assignment-property-card',
            //           pageBuilder: (dContext, anim1, anim2) {
            //             final GlobalKey<FormBuilderState> key = GlobalKey();
            //
            //             return AlertDialog(
            //               title: Text('Random Leads Checkout'),
            //               content: FormBuilder(
            //                 key: key,
            //                 child: SingleChildScrollView(
            //                   child: Column(
            //                     mainAxisSize: MainAxisSize.min,
            //                     children: [
            //                       AppAutoComplete(
            //                           label: 'Community',
            //                           isRequired: true,
            //                           optionsBuilder: (v) async {
            //                             return await context
            //                                 .read<ExplorerScreenCubit>()
            //                                 .getCommunities(search: v.text);
            //                           },
            //                           displayStringForOption: (option) =>
            //                               option.community,
            //                           valueTransformer: (p0) => p0?.id,
            //                           name: 'community'),
            //                       DropDownfield(
            //                           label: 'Select number of Leads',
            //                           items: [
            //                             1,
            //                             5,
            //                             10,
            //                             15,
            //                             20,
            //                             25,
            //                             50,
            //                             100
            //                           ],
            //                           name: 'numberOfLeads')
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //               actions: [
            //                 Row(
            //                   children: [
            //                     Expanded(
            //                       child: OutlinedButton(
            //                           child: Text('Cancel'),
            //                           onPressed: () {
            //                             Navigator.of(dContext).pop();
            //                           }),
            //                     ),
            //                     HorizontalSmallGap(),
            //                     Expanded(
            //                       child: AppPrimaryButton(
            //                           text: 'Assign Leads',
            //                           onTap: () async {
            //                             final validated = key.currentState
            //                                 ?.saveAndValidate();
            //                             if (validated == true) {
            //                               final values =
            //                                   key.currentState!.value;
            //                               await context
            //                                   .read<ExplorerScreenCubit>()
            //                                   .randomCheckout(
            //                                       context: dContext,
            //                                       values: values);
            //                             }
            //                           }),
            //                     )
            //                   ],
            //                 ),
            //               ],
            //             );
            //           });
            //     },
            //     child: Text('Get Bulk Leads'))
            //   ],
            // )),
            BlocConsumer<ExplorerScreenCubit, ExplorerScreenState>(
              listenWhen: (previous, current) =>
                  previous.checkOutLeadStatus != current.checkOutLeadStatus &&
                  current.checkOutLeadStatus == AppStatus.success,
              listener: (context, state) {
                showGeneralDialog(
                    barrierDismissible: true,
                    barrierLabel: "success",
                    context: context,
                    pageBuilder: (dContext, anim1, anim2) {
                      return BlocProvider.value(
                        value: context.read<ExplorerScreenCubit>(),
                        child: Builder(builder: (context) {
                          return Dialog(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.green,
                                      size: 100,
                                    ),
                                    VerticalSmallGap(),
                                    Text(
                                      'You have successfully assigned Leads to yourself.',
                                      textAlign: TextAlign.center,
                                    ),
                                    VerticalSmallGap(),
                                    Text(
                                      'Please hold on for a bit before making another assignment or try using bulk assignment, thank you.',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(dContext)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.w500),
                                    ),
                                    VerticalSmallGap(
                                      adjustment: 1.5,
                                    ),
                                    AppPrimaryButton(
                                        text: 'Show Assigned',
                                        onTap: () {
                                          context
                                              .read<ExplorerScreenCubit>()
                                              .setSelectedTab(1);
                                          Navigator.of(dContext).pop();
                                        })
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    });
              },
              builder: (context, state) {
                if (!state.selectModeEnabled) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.blueGrey.withOpacity(.4)),
                      height: 56,
                      child: ListTile(
                          leading: Icon(Icons.info_outline),
                          title: Text(
                              "Press and hold on any leads card for enabling multi select",
                              style: TextStyle(fontSize: 12))),
                    ),
                  );
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
                      state.checkOutLeadStatus == AppStatus.loading
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
                        if (state.getExplorerListStatus !=
                                AppStatus.loadingMore &&
                            state.explorerPaginator?.hasNextPage == true &&
                            scrollInfo.metrics.pixels >=
                                0.9 * scrollInfo.metrics.maxScrollExtent) {
                          EasyDebounce.debounce(
                              'explorer-pool-list', Durations.medium2, () {
                            context
                                .read<ExplorerScreenCubit>()
                                .getExplorerList();
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
                            key: _listKey,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            itemBuilder: (context, index) {
                              if (index == state.explorerList.length) {
                                return SizedBox(
                                  height: 50,
                                  child: Center(
                                      child: CircularProgressIndicator()),
                                );
                              }
                              final propertyCard = state.explorerList[index];
                              return PropertyCardListItem(
                                  propertyCard: propertyCard,
                                  selectModeEnabled: state.selectModeEnabled,
                                  selectedPropertyCards:
                                      state.selectedPropertyCards);
                            },
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 8,
                                ),
                            itemCount: state.getExplorerListStatus ==
                                    AppStatus.loadingMore
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
      },
    );
  }
}

class CheckedOutPoolTab extends StatefulWidget {
  const CheckedOutPoolTab({
    super.key,
  });

  @override
  State<CheckedOutPoolTab> createState() => _CheckedOutPoolTabState();
}

class _CheckedOutPoolTabState extends State<CheckedOutPoolTab> {
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
  void initState() {
    super.initState();
    context
        .read<ExplorerScreenCubit>()
        .getCheckedOutExplorerList(refresh: true);
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
        BlocConsumer<ExplorerScreenCubit, ExplorerScreenState>(
          listenWhen: (previous, current) =>
              previous.checkOutLeadStatus != current.checkOutLeadStatus &&
              current.checkOutLeadStatus == AppStatus.success,
          listener: (context, state) {
            showGeneralDialog(
                barrierDismissible: true,
                barrierLabel: "success",
                context: context,
                pageBuilder: (dContext, anim1, anim2) {
                  return BlocProvider.value(
                    value: context.read<ExplorerScreenCubit>(),
                    child: Builder(builder: (context) {
                      return Dialog(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Colors.green,
                                  size: 100,
                                ),
                                VerticalSmallGap(),
                                Text(
                                  'You have successfully returned Leads to yourself.',
                                  textAlign: TextAlign.center,
                                ),
                                VerticalSmallGap(),
                                Text(
                                  'Please hold on for a bit before making another return or try using bulk assignment, thank you.',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(dContext)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(fontWeight: FontWeight.w500),
                                ),
                                VerticalSmallGap(
                                  adjustment: 1.5,
                                ),
                                AppPrimaryButton(
                                    text: 'Show Available',
                                    onTap: () {
                                      context
                                          .read<ExplorerScreenCubit>()
                                          .setSelectedTab(0);
                                      Navigator.of(dContext).pop();
                                    })
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                });
          },
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
                  state.checkOutLeadStatus == AppStatus.loading
                      ? SizedBox.square(
                          dimension: 24, child: CircularProgressIndicator())
                      : TextButton(
                          onPressed: () {
                            context
                                .read<ExplorerScreenCubit>()
                                .returnLeadInBulk(context: context);
                          },
                          child: Text('Return Leads'))
                ],
              ),
            );
          },
        ),
        Expanded(
          child: BlocBuilder<ExplorerScreenCubit, ExplorerScreenState>(
            buildWhen: (previous, current) =>
                previous.getCheckedOutExplorerListStatus !=
                    current.getCheckedOutExplorerListStatus ||
                previous.checkedOutExplorerList !=
                    current.checkedOutExplorerList ||
                current.selectedPropertyCards.length !=
                    previous.selectedPropertyCards.length,
            builder: (context, state) {
              if (state.getCheckedOutExplorerListStatus == AppStatus.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.getCheckedOutExplorerListStatus ==
                      AppStatus.success &&
                  state.checkedOutExplorerList.length == 0) {
                return Center(
                  child: Text('No Property Card Found'),
                );
              }
              return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getCheckedOutExplorerListStatus !=
                            AppStatus.loadingMore &&
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
                                border: state.selectModeEnabled &&
                                        state.selectedPropertyCards
                                            .contains(propertyCard.id)
                                    ? Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        width: 2)
                                    : null,
                                boxShadow: state.selectModeEnabled &&
                                        state.selectedPropertyCards
                                            .contains(propertyCard.id)
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
                            child: InkWell(
                              onTap: () {
                                if (state.selectModeEnabled) {
                                  context
                                      .read<ExplorerScreenCubit>()
                                      .addToSelectionReturn(
                                          context, propertyCard);
                                } else {
                                  context.pushNamed(
                                      PropertyCardDetailsScreen.routeName,
                                      pathParameters: {'id': propertyCard.id});
                                }
                              },
                              onLongPress: () {
                                context
                                    .read<ExplorerScreenCubit>()
                                    .setSelectionModeEnabledForReturn(
                                        context, propertyCard);
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
                                          text: 'Return Lead',
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
                                AppStatus.loadingMore
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

class MyCustomWidget<T> extends AnimatedWidget {
  final Widget child;
  final bool disabled;

  MyCustomWidget(
      {required this.child,
      required Animation<double> animation,
      this.disabled = false})
      : super(listenable: animation);

  Animation<double> get animation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: CurvedAnimation(parent: animation, curve: Interval(0, 0.25))
          .drive(Tween(begin: 0, end: 1)),
      child: FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: animation.drive(
              Tween(begin: Offset(-1, 0), end: Offset(0, 0))
                  .chain(CurveTween(curve: Curves.easeOutCubic))),
          child: child,
        ),
      ),
    );
  }
}
