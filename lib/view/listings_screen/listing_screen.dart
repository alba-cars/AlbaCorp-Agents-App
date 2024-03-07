import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/util/property_price.dart';
import 'package:real_estate_app/view/listing_detail_screen/listing_detail_screen.dart';
import 'package:real_estate_app/view/listings_screen/cubit/listings_cubit.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/tab_bar.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../util/status.dart';
import '../../widgets/search_bar.dart';

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
                onTap: (index) {},
              ),
            )),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppSearchBar(),
            ))
          ];
        },
        body: BlocBuilder<ListingsCubit, ListingsState>(
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                                                    BorderRadius.circular(12)),
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
                                          iconPath: 'assets/images/shower.png',
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
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SmallText(text: 'Agent'),
                                                  LabelText(
                                                      text: listing.agent?.user
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
                                                  url: listing
                                                          .agent?.user.photo ??
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
    );
  }
}
