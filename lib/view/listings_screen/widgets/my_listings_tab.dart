import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/listings_screen/cubit/listings_cubit.dart';
import 'package:real_estate_app/view/listings_screen/widgets/listing_item.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/tab_bar.dart';
import 'package:recase/recase.dart';

import '../../../app/call_bloc/call_bloc.dart';
import '../../../service_locator/injectable.dart';
import '../../../util/color_category.dart';
import '../../../util/status.dart';
import '../../../widgets/fields/multi_select_autocomplete_field.dart';
import '../../../widgets/fields/range_slider_field.dart';
import '../../../widgets/fields/wrap_select_field.dart';
import '../../../widgets/s3_image.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../../add_listing_screen/add_listing_screen.dart';
import '../../add_pocket_listing_screen/add_pocket_listing_screen.dart';
import '../../deal_details_screen/widgets/info_label_value.dart';
import '../../property_card_details/property_card_details.dart';

class MyListingsTab extends StatefulWidget {
  const MyListingsTab({super.key});

  @override
  State<MyListingsTab> createState() => _MyListingsTabState();
}

class _MyListingsTabState extends State<MyListingsTab>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  void initState() {
    context.read<ListingsCubit>().getMyListings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Spacer(),
              Flexible(
                child: AppTabBar(
                  backgroundColor:
                      Theme.of(context).colorScheme.tertiaryContainer,
                  selectedColor: Theme.of(context).colorScheme.tertiary,
                  tabController: _tabController,
                  tabs: ['Public', 'Pocket'],
                  onTap: (index) {
                    if (index == 0) {
                      context
                          .read<ListingsCubit>()
                          .getMyListings(refresh: true);
                    } else {
                      context
                          .read<ListingsCubit>()
                          .getMyPocketListings(refresh: true);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [PublicListingsTab(), PocketListingsTab()],
          ),
        )
      ],
    );
  }
}

class PublicListingsTab extends StatefulWidget {
  const PublicListingsTab({super.key});

  @override
  State<PublicListingsTab> createState() => _PublicListingsTabState();
}

class _PublicListingsTabState extends State<PublicListingsTab> {
  List<Widget> filterFields(BuildContext context) {
    return [
      MultiSelectAutoCompleteField(
          label: 'Community',
          optionsBuilder: (v,refresh) async {
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
          optionsBuilder: (v,refresh) async {
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
      RangeSliderField(
          name: 'price', label: 'Price Range', min: 10000, max: 1000000000),
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
        optionsBuilder: (v,refresh) async {
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
          VerticalSmallGap(
            adjustment: 0.5,
          ),
          Expanded(
            child: BlocBuilder<ListingsCubit, ListingsState>(
              builder: (context, state) {
                if (state.getMyListingsStatus == AppStatus.loading) {
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
                                .getMyListings(refresh: true);
                          }
                        }),
                  );
                }
                return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getMyListingsStatus != AppStatus.loadingMore &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent &&
                        state.myListingsPaginator?.hasNextPage == true) {
                      context.read<ListingsCubit>().getMyListings();
                    }
                    return true;
                  },
                  child: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      await context
                          .read<ListingsCubit>()
                          .getMyListings(refresh: true);
                    },
                    child: ListView.separated(
                        key: _pageStorageKey,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        itemBuilder: (context, index) {
                          if (index == state.myListings.length) {
                            return SizedBox(
                              height: 50,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          final listing = state.myListings[index];

                          return ListingItem(listing: listing);
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              height: 8,
                            ),
                        itemCount:
                            state.getMyListingsStatus == AppStatus.loadingMore
                                ? state.myListings.length + 1
                                : state.myListings.length),
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

class PocketListingsTab extends StatefulWidget {
  const PocketListingsTab({super.key});

  @override
  State<PocketListingsTab> createState() => _PocketListingsTabState();
}

class _PocketListingsTabState extends State<PocketListingsTab> {
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
          VerticalSmallGap(
            adjustment: 0.5,
          ),
          Expanded(
            child: BlocBuilder<ListingsCubit, ListingsState>(
              builder: (context, state) {
                if (state.getMyPocketListingsStatus == AppStatus.loading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.myPocketListings.isEmpty) {
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
                    if (state.getMyPocketListingsStatus !=
                            AppStatus.loadingMore &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent &&
                        state.myPocketListingsPaginator?.hasNextPage == true) {
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
                          if (index == state.myPocketListings.length) {
                            return SizedBox(
                              height: 50,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }
                          final propertyCard = state.myPocketListings[index];

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
                                                    horizontal: 4, vertical: 1),
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
                                      margin: EdgeInsets.only(top: 10),
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
                        itemCount: state.getMyPocketListingsStatus ==
                                AppStatus.loadingMore
                            ? state.myPocketListings.length + 1
                            : state.myPocketListings.length),
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
