import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/call_bloc/call_bloc.dart';
import 'package:real_estate_app/constants/listing_status_color.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/property_price.dart';
import 'package:real_estate_app/view/add_listing_screen/add_listing_screen.dart';
import 'package:real_estate_app/view/add_pocket_listing_screen/add_pocket_listing_screen.dart';
import 'package:real_estate_app/view/listing_detail_screen/listing_detail_screen.dart';
import 'package:real_estate_app/view/listings_screen/cubit/listings_cubit.dart';
import 'package:real_estate_app/view/listings_screen/widgets/listing_item.dart';
import 'package:real_estate_app/view/listings_screen/widgets/my_listings_tab.dart';
import 'package:real_estate_app/view/property_card_details/property_card_details.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/fields/multi_dropdown_field.dart';
import 'package:real_estate_app/widgets/fields/multi_select_autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/range_slider_field.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/tab_bar.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:recase/recase.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../util/constant.dart';
import '../../util/status.dart';
import '../../widgets/button.dart';
import '../../widgets/fields/wrap_select_field.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/snackbar.dart';
import '../deal_details_screen/widgets/info_label_value.dart';

class ListingsScreen extends StatelessWidget {
  static const routeName = '/listingsScreen';
  const ListingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ListingsCubit>(),
      lazy: false,
      child: ListingScreenLayout(),
    );
  }
}

class ListingScreenLayout extends StatefulWidget {
  const ListingScreenLayout({super.key});

  @override
  State<ListingScreenLayout> createState() => _ListingScreenLayoutState();
}

class _ListingScreenLayoutState extends State<ListingScreenLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    context.read<ListingsCubit>().getListings();
    super.initState();
  }

  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverVerticalSmallGap(),
            SliverVerticalSmallGap(),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppTabBar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                selectedColor: Theme.of(context).primaryColor,
                tabController: _tabController,
                tabs: ['Listings', 'Pocket Listings', "My Listings"],
                onTap: (index) {
                  context.read<ListingsCubit>().setSelectedTab(index);
                },
              ),
            )),
          ];
        },
        body: BlocSelector<ListingsCubit, ListingsState, int>(
          selector: (state) {
            return state.currentTab;
          },
          builder: (context, state) {
            return TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [ListingsTab(), PocketListingsTab(), MyListingsTab()],
            );
          },
        ),
      ),
    );
  }
}

class ListingsTab extends StatefulWidget {
  const ListingsTab({super.key});

  @override
  State<ListingsTab> createState() => _ListingsTabState();
}

class _ListingsTabState extends State<ListingsTab> {
  List<Widget> filterFields(BuildContext context) {
    return [
      AppAutoComplete(
        label: 'Agent',
        optionsBuilder: (val) => context
            .read<ListingsCubit>()
            .state
            .agentList
            .where((e) => '${e.user.firstName} ${e.user.lastName}'
                .toLowerCase()
                .contains(val.text.toLowerCase()))
            .map((e) => {
                  'label': '${e.user.firstName} ${e.user.lastName}',
                  "value": e.id
                }),
        isRequired: true,
        name: 'agent_id',
        displayStringForOption: (option) => option['label']?.toString() ?? '',
      ),
      MultiSelectAutoCompleteField(
          label: 'Community',
          optionsBuilder: (v) async {
            final stateResult =
                context.read<ListingsCubit>().state.communityList;
            if (stateResult.isEmpty) {
              await context
                  .read<ListingsCubit>()
                  .getCommunities(search: v.text);
            }
            final list = context
                .read<ListingsCubit>()
                .state
                .communityList
                .where((element) => element.community
                    .toLowerCase()
                    .contains(v.text.toLowerCase()));
            return list.map((e) => {'value': e.id, 'label': e.community});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'community'),
      MultiSelectAutoCompleteField(
          label: 'Building',
          optionsBuilder: (v) async {
            final stateResult =
                context.read<ListingsCubit>().state.buildingList;
            if (stateResult.isEmpty) {
              await context.read<ListingsCubit>().getBuildings(search: v.text);
            }
            final list = context.read<ListingsCubit>().state.buildingList.where(
                (element) =>
                    element.name.toLowerCase().contains(v.text.toLowerCase()));
            return list.map((e) => {'value': e.id, 'label': e.name});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'building'),
      RangeInputField(
        name: 'price', label: 'Price Range', min: 0,
        max: 1000000000, // 1 billion
        initialValue: SfRangeValues(1000, 500000),
        validator: (value) {
          if (value!.start > value.end) {
            return 'From value cannot be greater than To value';
          }
          return null; // Return null if no error
        },
        validationMessage: 'Please enter a valid price range',
      ),
      // FlutterSlider(
      //     min: 1000,
      //     max: 100 * 100 * 100 * 1000,
      //     values: [10000, 100000000],
      //     rangeSlider: true,
      //     tooltip: FlutterSliderTooltip(
      //       format: (String v) {
      //         double value = (double.parse(v) / 1000);
      //         if (value < 1000 * 1000) {
      //           return (double.parse(value.toString()) / 1000).toString() + "K";
      //         }
      //         return (double.parse(value.toString()) / 1000 * 1000).toString() +
      //             "M";
      //       },
      //       alwaysShowTooltip: true,
      //     ),
      //     step: FlutterSliderStep(rangeList: [
      //       FlutterSliderRangeStep(
      //         from: 10 * 1000,
      //         to: 200 * 1000,
      //       ),
      //       FlutterSliderRangeStep(
      //         from: 200 * 1000,
      //         to: 1000 * 1000,
      //       ),
      //       FlutterSliderRangeStep(
      //         from: 1000 * 1000,
      //         to: 10 * 1000 * 1000,
      //       ),
      //     ])),
      WrapSelectField(
          name: 'listingType',
          label: 'Purpose',
          values: ['Buy', 'Rent', 'Holiday Homes'],
          isRequired: true),
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
          values: context.select<ListingsCubit, List<Map<String, dynamic>>>(
              (cubit) => cubit.state.propertyTypeList
                  .map((e) => {'value': e.id, 'label': e.propertyType})
                  .toList()),
          displayOption: (option) => option['label'] ?? '',
          isRequired: true),
      MultiSelectAutoCompleteField(
        label: 'Amenities',
        name: "amenities",
        displayStringForOption: (option) => option['label']?.toString() ?? '',
        optionsBuilder: (v) async {
          var list = context
              .read<ListingsCubit>()
              .state
              .amenityList
              .map((e) => {'value': e.id, 'label': e.amenity})
              .toList();
          if (v.text.trim().isNotEmpty) {
            list = list
                .where((e) => e["label"]
                    .toString()
                    .toLowerCase()
                    .contains(v.text.toString()))
                .toList();
          }
          return list;
        },
      ),
    ];
  }

  late final PageStorageBucket _bucket = PageStorageBucket();

  late final PageStorageKey _pageStorageKey = PageStorageKey('listings list');

  @override
  Widget build(BuildContext context) {
    return PageStorage(
      bucket: _bucket,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSmallGap(
            adjustment: 0.5,
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Row(
          //     children: [
          //       TitleText(
          //         text: 'Listings List',
          //         fontWeight: FontWeight.bold,
          //       ),
          //       Spacer(),
          //       ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //               minimumSize: Size(40, 34),
          //               maximumSize: Size(110, 34),
          //               fixedSize: null,
          //               shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(12)),
          //               foregroundColor:
          //                   Theme.of(context).colorScheme.onTertiary,
          //               backgroundColor:
          //                   Theme.of(context).colorScheme.tertiary),
          //           child: Text('Add New'),
          //           onPressed: () async {
          //             final result =
          //                 await context.pushNamed(AddListingScreen.routeName);
          //             if (result == true) {
          //               context
          //                   .read<ListingsCubit>()
          //                   .getListings(refresh: true);
          //             }
          //           })
          //     ],
          //   ),
          // ),
          VerticalSmallGap(
            adjustment: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: AppSearchBar(
              searchText: "Search by reference id",
              onChanged: (val) {
                context.read<ListingsCubit>().searchListings(val);
              },
              showSearch: false,
              customFilterButtonWidget: FilterButton(),
              leadWidgets: [
                TitleText(
                  text: 'Listings List',
                  fontWeight: FontWeight.bold,
                ),
              ],
              filterFields: filterFields(context),
              onFilterApplied: (filter) {
                context.read<ListingsCubit>().setListingsFilters(filter);
              },
              filter: context
                  .select((ListingsCubit value) => value.state.listingsFilter),
            ),
          ),
          Expanded(
            child: BlocBuilder<ListingsCubit, ListingsState>(
              builder: (context, state) {
                if (state.getListingsStatus == AppStatus.loading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.listings.isEmpty) {
                  return Center(
                    child: AppPrimaryButton(
                        backgroundColor: Theme.of(context).colorScheme.tertiary,
                        text: 'Add Listings',
                        onTap: () async {
                          final result = await context
                              .pushNamed(AddListingScreen.routeName);
                          if (result == true) {
                            context
                                .read<ListingsCubit>()
                                .getListings(refresh: true);
                          }
                        }),
                  );
                }
                return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getListingsStatus != AppStatus.loadingMore &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent &&
                        state.listingsPaginator?.hasNextPage == true) {
                      context.read<ListingsCubit>().getListings();
                    }
                    return true;
                  },
                  child: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      await context
                          .read<ListingsCubit>()
                          .getListings(refresh: true);
                    },
                    child: ListView.separated(
                        key: _pageStorageKey,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        itemBuilder: (context, index) {
                          if (index == state.listings.length) {
                            return SizedBox(
                              height: 50,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          final listing = state.listings[index];

                          return ListingItem(listing: listing);
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              height: 8,
                            ),
                        itemCount:
                            state.getListingsStatus == AppStatus.loadingMore
                                ? state.listings.length + 1
                                : state.listings.length),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).colorScheme.secondary),
      child: Row(
        children: [
          Text(
            "Filter",
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
          ),
          SizedBox(
            width: 8,
          ),
          SvgPicture.asset(
            "${Constant.assetImagePath}filter.svg",
            height: 18,
            width: 18,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class PocketListingsTab extends StatefulWidget {
  const PocketListingsTab({super.key});

  @override
  State<PocketListingsTab> createState() => _PocketListingsTabState();
}

class _PocketListingsTabState extends State<PocketListingsTab> {
  List<Widget> filterFields(BuildContext context) {
    return [
      WrapSelectField(
          name: 'timeFilter',
          label: 'Created Period',
          values: ['This Week', 'This Month', 'Old'],
          isRequired: false),
      MultiSelectAutoCompleteField(
          label: 'Community',
          optionsBuilder: (v) async {
            final stateResult =
                context.read<ListingsCubit>().state.communityList;
            if (stateResult.isEmpty) {
              await context
                  .read<ListingsCubit>()
                  .getCommunities(search: v.text);
            }
            final list = context
                .read<ListingsCubit>()
                .state
                .communityList
                .where((element) => element.community
                    .toLowerCase()
                    .contains(v.text.toLowerCase()));
            return list.map((e) => {'value': e.id, 'label': e.community});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'communities'),
      AppAutoComplete(
          label: 'Agent',
          optionsBuilder: (v) async {
            final stateResult = context.read<ListingsCubit>().state.agentList;
            if (stateResult.isEmpty) {
              await context.read<ListingsCubit>().getAgents(search: v.text);
            }
            final list = context.read<ListingsCubit>().state.agentList.where(
                (element) =>
                    "${element.user.firstName} ${element.user.lastName}"
                        .toLowerCase()
                        .contains(v.text.toLowerCase()));
            return list.map((e) => {
                  'value': e.id,
                  'label': "${e.user.firstName} ${e.user.lastName}"
                });
          },
          displayStringForOption: (option) => option['label'] ?? '',
          isRequired: false,
          name: 'currentAgent'),
      MultiSelectAutoCompleteField(
          label: 'Building',
          optionsBuilder: (v) async {
            final stateResult =
                context.read<ListingsCubit>().state.buildingList;
            if (stateResult.isEmpty) {
              await context.read<ListingsCubit>().getBuildings(search: v.text);
            }
            final list = context.read<ListingsCubit>().state.buildingList.where(
                (element) =>
                    element.name.toLowerCase().contains(v.text.toLowerCase()));
            return list.map((e) => {'value': e.id, 'label': e.name});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'buildings'),
      WrapSelectField(
          name: 'property_type_id',
          label: 'Property Type',
          values: context.select<ListingsCubit, List<Map<String, dynamic>>>(
              (cubit) => cubit.state.propertyTypeList
                  .map((e) => {'value': e.id, 'label': e.propertyType})
                  .toList()),
          displayOption: (option) => option['label'] ?? '',
          isRequired: true),
      WrapSelectField(
          name: 'type',
          label: 'Purpose',
          values: ['Sell', 'Lease'],
          isRequired: true),
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
      RangeSliderField(
          name: 'price', label: 'Price Range', min: 10000, max: 10000000),
    ];
  }

  late final PageStorageBucket _bucket = PageStorageBucket();

  late final PageStorageKey _pageStorageKey = PageStorageKey('pocket screen');

  @override
  Widget build(BuildContext context) {
    return PageStorage(
      bucket: _bucket,
      child: Column(
        children: [
          VerticalSmallGap(
            adjustment: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: AppSearchBar(
              onChanged: (val) {
                context.read<ListingsCubit>().searchPocketListings(val);
              },
              showSearch: false,
              customFilterButtonWidget: FilterButton(),
              leadWidgets: [
                TitleText(
                  text: 'Pocket Listings',
                  fontWeight: FontWeight.bold,
                ),
              ],
              filterFields: filterFields(context),
              onFilterApplied: (filter) {
                context.read<ListingsCubit>().setPocketListingFilters(filter);
              },
              filter: context.select(
                  (ListingsCubit value) => value.state.pocketListingsFilter),
            ),
          ),
          Expanded(
            child: BlocBuilder<ListingsCubit, ListingsState>(
              builder: (context, state) {
                if (state.getPocketListingsStatus == AppStatus.loading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.pocketListings.isEmpty) {
                  return Center(
                    child: AppPrimaryButton(
                        backgroundColor: Theme.of(context).colorScheme.tertiary,
                        text: 'Add Pocket Listing',
                        onTap: () async {
                          final result = await context
                              .pushNamed(AddPocketListingScreen.routeName);
                          if (result == true) {
                            context
                                .read<ListingsCubit>()
                                .getPocketListings(refresh: true);
                          }
                        }),
                  );
                }
                return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getPocketListingsStatus !=
                            AppStatus.loadingMore &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent &&
                        state.pocketListingsPaginator?.hasNextPage == true) {
                      context.read<ListingsCubit>().getPocketListings();
                    }
                    return true;
                  },
                  child: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      await context
                          .read<ListingsCubit>()
                          .getPocketListings(refresh: true);
                    },
                    child: ListView.separated(
                        key: _pageStorageKey,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        itemBuilder: (context, index) {
                          if (index == state.pocketListings.length) {
                            return SizedBox(
                              height: 50,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          final propertyCard = state.pocketListings[index];

                          return Container(
                            key: ValueKey(propertyCard.id),
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
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                2.5,
                                        height: min(
                                            MediaQuery.sizeOf(context).width /
                                                2.5,
                                            200),
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: S3Image(
                                          url: propertyCard.photos.isNotEmpty
                                              ? propertyCard
                                                  .photos.first.original
                                              : null,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Column(children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              LabelText(
                                                text: propertyCard
                                                        .referenceNumber ??
                                                    '',
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 4.h,
                                                    vertical: 1.h),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.blueGrey),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color:
                                                        Colors.blueGrey[100]),
                                                child: SmallText(
                                                    text: propertyCard.status
                                                            ?.titleCase ??
                                                        ''),
                                              ),
                                            ],
                                          ),
                                          InfoLabelValue(
                                            labelOne: 'Community',
                                            valueOne: propertyCard
                                                .community?.community
                                                .trim(),
                                          ),
                                          InfoLabelValue(
                                            labelOne: 'Building',
                                            valueOne: propertyCard
                                                    .building?.name
                                                    .trim() ??
                                                'N/A',
                                          ),
                                          InfoLabelValue(
                                            labelOne: 'Property Type',
                                            valueOne: propertyCard.propertyType
                                                ?.trim(),
                                            labelTwo: 'Beds',
                                            valueTwo:
                                                propertyCard.beds ?? 'N/A',
                                          ),
                                          InfoLabelValue(
                                            labelOne: 'purpose',
                                            valueOne:
                                                propertyCard.purpose?.trim(),
                                            labelTwo: 'Size',
                                            valueTwo:
                                                propertyCard.size?.toString() ??
                                                    'N/A',
                                          ),
                                        ]),
                                      ),
                                    ],
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            clipBehavior: Clip.hardEdge,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle),
                                            child: S3Image(
                                              url: propertyCard.currentAgent[
                                                      "userId"]?["photo"] ??
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
                                          Spacer(),
                                          HorizontalSmallGap(),
                                          IconButton.filledTonal(
                                              style: IconButton.styleFrom(
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                  foregroundColor:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary),
                                              onPressed: () async {
                                                var createdBy =
                                                    propertyCard.currentAgent;
                                                Logger().d(createdBy);
                                                if (createdBy == null) {
                                                  showSnackbar(
                                                      context,
                                                      'Phone number not available',
                                                      SnackBarType.failure);
                                                }
                                                String phoneNumber =
                                                    createdBy["userId"]["phone"]
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
                                          IconButton.filledTonal(
                                              style: IconButton.styleFrom(
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                  foregroundColor:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary),
                                              onPressed: () async {
                                                final number = propertyCard
                                                        .currentAgent?["user"]
                                                    ["phone"];
                                                Logger().d(number);
                                                if (number != null) {
                                                  getIt<CallBloc>().add(
                                                      CallEvent.clickToCall(
                                                    phoneNumber: number,
                                                  ));
                                                }
                                              },
                                              icon: Icon(
                                                Icons.call,
                                              ))
                                        ],
                                      ),
                                    )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              height: 8,
                            ),
                        itemCount: state.getPocketListingsStatus ==
                                AppStatus.loadingMore
                            ? state.pocketListings.length + 1
                            : state.pocketListings.length),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String getWhatsAppMessageText(PropertyCard? propertyCard) {
    return "Hey ${propertyCard?.currentAgent["userId"]["first_name"] ?? ""}, \n I want to enquire about this property on ${propertyCard?.building?.name ?? ""}, ${propertyCard?.community?.community ?? ""} under ${propertyCard?.status} for ${propertyCard?.purpose ?? ""}";
  }
}
