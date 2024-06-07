import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_deal_screen/add_deal_screen.dart';
import 'package:real_estate_app/view/add_listing_screen/add_listing_screen.dart';
import 'package:real_estate_app/view/deal_details_screen/deal_deatils_screen.dart';
import 'package:real_estate_app/view/deals_screen/cubit/deals_cubit.dart';
import 'package:real_estate_app/view/deals_screen/widgets/client_name.dart';
import 'package:real_estate_app/widgets/fields/date_field.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/search_bar.dart';

import '../../util/color_category.dart';
import '../../util/status.dart';
import '../../widgets/fields/wrap_select_field.dart';
import '../../widgets/s3_image.dart';
import '../../widgets/space.dart';
import '../../widgets/tab_bar.dart';
import '../../widgets/text.dart';

class DealsScreen extends StatelessWidget {
  static const routeName = '/dealsScreen';
  const DealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DealsCubit>(),
      child: DealsScreenLayout(),
    );
  }
}

class DealsScreenLayout extends StatefulWidget {
  const DealsScreenLayout({super.key});

  @override
  State<DealsScreenLayout> createState() => _DealsScreenLayoutState();
}

class _DealsScreenLayoutState extends State<DealsScreenLayout>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  void initState() {
    context.read<DealsCubit>().getDeals();
    super.initState();
  }

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
                  text: 'Deals List',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverVerticalSmallGap(),
            // SliverToBoxAdapter(
            //     child: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            //   child: AppTabBar(
            //     backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            //     selectedColor: Theme.of(context).primaryColor,
            //     tabController: _tabController,
            //     tabs: ['In Progress', 'Completed', 'Cancelled'],
            //     onTap: (index) {},
            //   ),
            // )),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppTabBar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                selectedColor: Theme.of(context).primaryColor,
                tabController: _tabController,
                tabs: ['Deals', 'Your Listings'],
                onTap: (index) {
                  context.read<DealsCubit>().setSelectedTab(index);
                },
              ),
            )),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [DealsTab(), ListingsTab()],
        ),
      ),
    );
  }
}

class DealsTab extends StatefulWidget {
  const DealsTab({
    super.key,
  });

  @override
  State<DealsTab> createState() => _DealsTabState();
}

class _DealsTabState extends State<DealsTab> {
  List<Widget> filterFields(BuildContext context) {
    return [
      WrapSelectField(
          name: 'category',
          label: 'Deal Type',
          values: [
            'Primary Off Plan Property',
            'Secondary Market Property',
          ],
          isRequired: true),
      DropDownfield(
          name: 'status',
          label: 'Deal Status',
          items: [
            "Created",
            "Collecting Documents",
            "Choose Listing",
            "Create Listing",
            "Choose Offplan Listing",
            "Create Offplan Listing",
            "Choose External Property Listing",
            "Create External Property Listing",
            "Assign Property",
            "Pending Approval",
            "Approved",
            "Rejected",
            "Completed",
            "Canceled",
          ],
          isRequired: true),
      DateField(
          name: 'from_date',
          label: 'From Date',
          firstDate: DateTime(2000),
          lastDate: DateTime.now()),
      DateField(
          name: 'to_date',
          label: 'To Date',
          firstDate: DateTime(2000),
          lastDate: DateTime.now()),
    ];
  }

  late final PageStorageBucket _bucket = PageStorageBucket();

  late final PageStorageKey _pageStorageKey = PageStorageKey('deals screen');

  @override
  Widget build(BuildContext context) {
    return PageStorage(
      bucket: _bucket,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppSearchBar(
                onChanged: (val) {
                  context.read<DealsCubit>().searchDeals(val);
                },
                filterFields: filterFields(context),
                onFilterApplied: (filter) {
                  context.read<DealsCubit>().setDealsFilter(filter);
                },
                filter: context
                    .select((DealsCubit value) => value.state.dealsFilter),
              )),
          Expanded(
            child: BlocBuilder<DealsCubit, DealsState>(
              builder: (context, state) {
                if (state.getDealsStatus == AppStatus.loading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.deals.isEmpty) {
                  return Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(40, 34),
                            maximumSize: Size(110, 34),
                            fixedSize: null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            foregroundColor:
                                Theme.of(context).colorScheme.onTertiary,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary),
                        child: Text('Add Deal'),
                        onPressed: () async {
                          final result =
                              await context.pushNamed(AddDealScreen.routeName);
                          if (result == true) {
                            context.read<DealsCubit>().getDeals(refresh: true);
                          }
                        }),
                  );
                }
                final deals = state.deals;
                return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getDealsStatus != AppStatus.loadingMore &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent) {
                      context.read<DealsCubit>().getDeals();
                    }
                    return true;
                  },
                  child: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      await context.read<DealsCubit>().getDeals(refresh: true);
                    },
                    child: ListView.separated(
                      key: _pageStorageKey,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      itemCount: state.getDealsStatus != AppStatus.loadingMore
                          ? deals.length
                          : deals.length + 1,
                      itemBuilder: (context, index) {
                        if (index == deals.length) {
                          return SizedBox(
                            height: 50,
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        final deal = deals[index];

                        return DealItem(
                          deal: deal,
                          index: index,
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 8,
                      ),
                    ),
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

class ListingsTab extends StatefulWidget {
  const ListingsTab({
    super.key,
  });

  @override
  State<ListingsTab> createState() => _ListingsTabState();
}

class _ListingsTabState extends State<ListingsTab> {
  @override
  void initState() {
    context.read<DealsCubit>().getYourListings();
    super.initState();
  }

  List<Widget> filterFields(BuildContext context) {
    return [
      DropDownfield(
          name: 'status',
          label: 'Deal Status',
          items: [
            "Created",
            "Collecting Documents",
            "Choose Listing",
            "Create Listing",
            "Choose Offplan Listing",
            "Create Offplan Listing",
            "Choose External Property Listing",
            "Create External Property Listing",
            "Assign Property",
            "Pending Approval",
            "Approved",
            "Rejected",
            "Completed",
            "Canceled",
          ],
          isRequired: true),
      DateField(
          name: 'from_date',
          label: 'From Date',
          firstDate: DateTime(2000),
          lastDate: DateTime.now()),
      DateField(
          name: 'to_date',
          label: 'To Date',
          firstDate: DateTime(2000),
          lastDate: DateTime.now()),
    ];
  }

  late final PageStorageBucket _bucket = PageStorageBucket();

  late final PageStorageKey _pageStorageKey = PageStorageKey('listings screen');

  @override
  Widget build(BuildContext context) {
    return PageStorage(
      bucket: _bucket,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppSearchBar(
                onChanged: (val) {
                  context.read<DealsCubit>().searchYourListings(val);
                },
                filterFields: filterFields(context),
                onFilterApplied: (filter) {
                  context.read<DealsCubit>().setYourListingsFilter(filter);
                },
                filter: context.select(
                    (DealsCubit value) => value.state.yourListingsFilter),
              )),
          Expanded(
            child: BlocBuilder<DealsCubit, DealsState>(
              builder: (context, state) {
                if (state.getYourListingsStatus == AppStatus.loading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.yourListings.isEmpty) {
                  return Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(40, 34),
                            maximumSize: Size(110, 34),
                            fixedSize: null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            foregroundColor:
                                Theme.of(context).colorScheme.onTertiary,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary),
                        child: Text('Add Listing Acquired'),
                        onPressed: () async {
                          final result = await context
                              .pushNamed(AddListingScreen.routeName);
                          if (result == true) {
                            context
                                .read<DealsCubit>()
                                .getYourListings(refresh: true);
                          }
                        }),
                  );
                }
                final yourListings = state.yourListings;
                return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getYourListingsStatus != AppStatus.loadingMore &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent) {
                      context.read<DealsCubit>().getYourListings();
                    }
                    return true;
                  },
                  child: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      await context
                          .read<DealsCubit>()
                          .getYourListings(refresh: true);
                    },
                    child: ListView.separated(
                      key: _pageStorageKey,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      itemCount:
                          state.getYourListingsStatus != AppStatus.loadingMore
                              ? yourListings.length
                              : yourListings.length + 1,
                      itemBuilder: (context, index) {
                        if (index == yourListings.length) {
                          return SizedBox(
                            height: 50,
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        final yourListing = yourListings[index];

                        return DealItem(
                          key: ValueKey(yourListing.id),
                          deal: yourListing,
                          index: index,
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 8,
                      ),
                    ),
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

class DealItem extends StatelessWidget {
  const DealItem({
    super.key,
    required this.deal,
    required this.index,
  });

  final Deal deal;
  final int index;

  @override
  Widget build(BuildContext context) {
    String? image;
    if (deal.propertyList?.image != null ||
        deal.propertyList?.image?.isEmpty == true) {
      image = deal.propertyList?.image;
    } else if (deal.propertyList?.images?.isNotEmpty == true) {
      image = deal.propertyList?.images!.first is String
          ? deal.propertyList?.images!.first
          : deal.propertyList?.images!.first['thumbnail'];
    }
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.h),
          boxShadow: [
            BoxShadow(color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
        child: InkWell(
          onTap: () async {
            // final dealR = await
            context.pushNamed(DealDetailsScreen.routeName,
                pathParameters: {'id': deal.id});
            // if (dealR != null) {
            // Logger().d(index);
            // context.read<DealsCubit>().onDealUpdated(deal, index);
            // }
          },
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              children: [
                Container(
                  height: 120,
                  width: 150,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: Colors.grey[100]!,
                      borderRadius: BorderRadius.circular(12)),
                  child: S3Image(
                    url: image,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            HorizontalSmallGap(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.h, vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.blueGrey[100]),
                          child: SmallText(text: deal.category),
                        ),
                      ),
                    ],
                  ),
                  VerticalSmallGap(
                    adjustment: .2,
                  ),
                  NormalText(
                    text: "ID: ${deal.referenceNumber}",
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  VerticalSmallGap(
                    adjustment: .2,
                  ),
                  ClientName(deal: deal),
                  VerticalSmallGap(
                    adjustment: .4,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.h),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blueGrey[100]),
                    child: SmallText(text: deal.status),
                  ),
                ],
              ),
            ),
            HorizontalSmallGap(),
          ]),
        ),
      ),
    );
  }
}

class YourListingsTab extends StatelessWidget {
  const YourListingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
