import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/property_type_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/util/property_price.dart';
import 'package:real_estate_app/view/listing_detail_screen/listing_detail_screen.dart';
import 'package:real_estate_app/view/listings_screen/cubit/listings_cubit.dart';
import 'package:real_estate_app/widgets/fields/multi_dropdown_field.dart';
import 'package:real_estate_app/widgets/fields/multi_select_autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/range_slider_field.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/tab_bar.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:recase/recase.dart';

import '../../util/status.dart';
import '../../widgets/button.dart';
import '../../widgets/fields/wrap_select_field.dart';
import '../../widgets/search_bar.dart';
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
      TabController(length: 2, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            // SliverAppBar(
            //   title: SizedBox(
            //     height: 50,
            //     child: Image.asset(
            //       'assets/images/logo-black.png',
            //       fit: BoxFit.fitHeight,
            //     ),
            //   ),
            //   centerTitle: true,
            //   backgroundColor: Color.fromARGB(255, 240, 246, 250),
            //   foregroundColor: pacificBlue,
            //   leading: IconButton(
            //     onPressed: () {},
            //     icon: Icon(Icons.menu),
            //     padding: EdgeInsetsDirectional.only(start: 8),
            //   ),
            //   actions: [
            //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            //   ],
            //   pinned: true,
            // ),
            SliverVerticalSmallGap(),
            SliverVerticalSmallGap(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TitleText(
                  text: 'Listings List',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverVerticalSmallGap(),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppTabBar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                selectedColor: Theme.of(context).primaryColor,
                tabController: _tabController,
                tabs: ['Listings', 'Pocket Listings'],
                onTap: (index) {
                  context.read<ListingsCubit>().setSelectedTab(index);
                },
              ),
            )),
            // SliverToBoxAdapter(
            //     child: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            //   child: AppSearchBar(),
            // ))
          ];
        },
        body: BlocSelector<ListingsCubit, ListingsState, int>(
          selector: (state) {
            return state.currentTab;
          },
          builder: (context, state) {
            return TabBarView(
              controller: _tabController,
              children: [ListingsTab(), PocketListingsTab()],
            );
          },
        ),
      ),
    );
  }
}

class ListingsTab extends StatelessWidget {
  const ListingsTab({super.key});

  List<Widget> filterFields(BuildContext context) {
    return [
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
              context.read<ListingsCubit>().searchListings(val);
            },
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
              if (state.getListingsStatus == Status.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return NotificationListener<ScrollNotification>(
                onNotification: (scrollInfo) {
                  if (state.getListingsStatus != Status.loadingMore &&
                      scrollInfo.metrics.pixels >=
                          0.9 * scrollInfo.metrics.maxScrollExtent) {
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
                        String? image;
                        if (listing.images?.isNotEmpty == true) {
                          image = listing.images!.first is String
                              ? listing.images!.first
                              : listing.images!.first['thumbnail'];
                        }

                        return Container(
                          height: 170,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: shadowColor,
                                    offset: Offset(-4, 5),
                                    blurRadius: 11)
                              ]),
                          child: InkWell(
                            onTap: () {
                              context.pushNamed(ListingDetailsScreen.routeName,
                                  pathParameters: {'id': listing.id ?? ''});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              clipBehavior: Clip.hardEdge,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: S3Image(
                                                url: image,
                                              ),
                                            ),
                                          ),
                                          VerticalSmallGap(
                                            adjustment: 0.5,
                                          ),
                                          BlockTitleText(
                                            text: 'AED ' +
                                                (getPrice(listing)
                                                        ?.toInt()
                                                        .toString() ??
                                                    ''),
                                          ),
                                        ],
                                      )),
                                  HorizontalSmallGap(),
                                  Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          LabelText(
                                            text: listing.propertyTitle,
                                            maxLines: 2,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                          VerticalSmallGap(),
                                          TextWithIcon(
                                            text: (listing.beds?.toString() ??
                                                    "1") +
                                                ' Beds',
                                            iconPath: 'assets/images/bed.png',
                                            color: Colors.black,
                                          ),
                                          TextWithIcon(
                                            text: (listing.baths?.toString() ??
                                                    "1") +
                                                " Baths",
                                            iconPath:
                                                'assets/images/shower.png',
                                            color: Colors.black,
                                          ),
                                          TextWithIcon(
                                            text: (listing.size
                                                        ?.toInt()
                                                        .toString() ??
                                                    "1") +
                                                ' Sqft',
                                            iconPath: 'assets/images/area.png',
                                            color: Colors.black,
                                          ),
                                          VerticalSmallGap(
                                            adjustment: 0.3,
                                          ),
                                          Spacer(),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SmallText(text: 'Agent'),
                                                    LabelText(
                                                        text: listing
                                                                .agent
                                                                ?.user
                                                                .firstName ??
                                                            ''),
                                                  ],
                                                ),
                                                HorizontalSmallGap(),
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  clipBehavior: Clip.hardEdge,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle),
                                                  child: S3Image(
                                                    url: listing.agent?.user
                                                            .photo ??
                                                        '',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 8,
                          ),
                      itemCount: state.getListingsStatus == Status.loadingMore
                          ? state.listings.length + 1
                          : state.listings.length),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class PocketListingsTab extends StatelessWidget {
  const PocketListingsTab({super.key});

  List<Widget> filterFields(BuildContext context) {
    return [
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
              context.read<ListingsCubit>().searchPocketListings(val);
            },
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
              if (state.getPocketListingsStatus == Status.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return NotificationListener<ScrollNotification>(
                onNotification: (scrollInfo) {
                  if (state.getPocketListingsStatus != Status.loadingMore &&
                      scrollInfo.metrics.pixels >=
                          0.9 * scrollInfo.metrics.maxScrollExtent) {
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  LabelText(
                                    text: propertyCard.referenceNumber ?? '',
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.h, vertical: 1.h),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.blueGrey),
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.blueGrey[100]),
                                    child: SmallText(
                                        text: propertyCard.status?.titleCase ??
                                            ''),
                                  ),
                                ],
                              ),
                              InfoLabelValue(
                                labelOne: 'Property Type',
                                valueOne: propertyCard.propertyType,
                                labelTwo: 'Purpose',
                                valueTwo: propertyCard.purpose,
                              ),
                              InfoLabelValue(
                                labelOne: 'Building Name',
                                valueOne: propertyCard.building?.name ?? 'N/A',
                                labelTwo: 'Community Name',
                                valueTwo: propertyCard.community?.community
                                    .toString(),
                              ),
                              InfoLabelValue(
                                labelOne: 'Area',
                                valueOne: (propertyCard.size != null)
                                    ? '${propertyCard.size} SqFt'
                                    : 'N/A',
                                labelTwo: 'Beds',
                                valueTwo: propertyCard.beds?.toString(),
                              ),
                              if (propertyCard.currentAgent != null)
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
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
                                          url: propertyCard
                                                  .currentAgent?.userId.photo ??
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
                                              text: propertyCard.currentAgent
                                                      ?.userId.firstName ??
                                                  ''),
                                        ],
                                      ),
                                      Spacer(),
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
                                            await FlutterPhoneDirectCaller
                                                .callNumber(
                                                    'tel://${propertyCard.currentAgent!.userId.phone}');
                                          },
                                          icon: Icon(
                                            Icons.call,
                                          ))
                                    ],
                                  ),
                                )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 8,
                          ),
                      itemCount:
                          state.getPocketListingsStatus == Status.loadingMore
                              ? state.pocketListings.length + 1
                              : state.pocketListings.length),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
