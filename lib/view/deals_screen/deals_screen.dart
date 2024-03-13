import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/deal_details_screen/deal_deatils_screen.dart';
import 'package:real_estate_app/view/deals_screen/cubit/deals_cubit.dart';
import 'package:real_estate_app/view/deals_screen/widgets/client_name.dart';
import 'package:real_estate_app/widgets/search_bar.dart';

import '../../util/color_category.dart';
import '../../util/status.dart';
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
      TabController(length: 3, vsync: this);
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
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AppTabBar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                selectedColor: Theme.of(context).primaryColor,
                tabController: _tabController,
                tabs: ['In Progress', 'Completed', 'Cancelled'],
                onTap: (index) {},
              ),
            )),
            SliverToBoxAdapter(
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: AppSearchBar())),
          ];
        },
        body: BlocBuilder<DealsCubit, DealsState>(
          builder: (context, state) {
            if (state.getDealsStatus == Status.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final deals = state.deals;
            return NotificationListener<ScrollNotification>(
              onNotification: (scrollInfo) {
                if (state.getDealsStatus != Status.loadingMore &&
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  itemCount: state.getDealsStatus != Status.loadingMore
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

                    return DealItem(deal: deal);
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
    );
  }
}

class DealItem extends StatelessWidget {
  const DealItem({
    super.key,
    required this.deal,
  });

  final Deal deal;

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
          onTap: () {
            context.pushNamed(DealDetailsScreen.routeName,
                pathParameters: {'id': deal.id});
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
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.h, vertical: 1.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.blueGrey[100]),
                        child: SmallText(text: deal.category),
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
