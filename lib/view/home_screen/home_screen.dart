import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/call_bloc/call_bloc.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/home_screen/widgets/sliver_categories.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/task_detail_screen.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:real_estate_app/widgets/timer_text.dart';

import '../../model/category_model.dart';
import '../../util/color_category.dart';
import 'cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: HomePageLayout(),
    );
  }
}

class HomePageLayout extends StatefulWidget {
  const HomePageLayout({Key? key}) : super(key: key);

  @override
  State<HomePageLayout> createState() => _HomePageLayoutState();
}

class _HomePageLayoutState extends State<HomePageLayout> {
  @override
  Widget build(BuildContext context) {
    final user = getIt<AuthBloc>().state.user;
    return NestedScrollView(
        headerSliverBuilder: (context, hasUnderScroll) => [
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
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: S3Image(
                          url: user?.photo,
                        ),
                      ),
                      HorizontalSmallGap(),
                      HorizontalSmallGap(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleText(text: 'Welcome, '),
                            BlockTitleText(
                                text:
                                    '${user?.firstName ?? ''} ${user?.lastName ?? ''}')
                          ],
                        ),
                      ),
                      HorizontalSmallGap(),
                      HorizontalSmallGap(),
                    ],
                  ),
                ),
              ),
              SliverVerticalSmallGap(),
              SliverVerticalSmallGap(),
              // SliverToBoxAdapter(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 20),
              //     child: getSearchField('Search'),
              //   ),
              // ),
              // SliverVerticalSmallGap(),
              // BlocSelector<HomeCubit, HomeState, ModelCategory>(
              //   selector: (state) {
              //     return state.selectedCategory;
              //   },
              //   builder: (context, selectedCategory) {
              //     return SliverCategories(
              //         categories: context.read<HomeCubit>().state.categories,
              //         selectedCategory: selectedCategory);
              //   },
              // ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LabelText(
                                  text: 'Actions Pending Today',
                                  textAlign: TextAlign.center,
                                ),
                                BlocSelector<HomeCubit, HomeState, int>(
                                  selector: (state) {
                                    return state.pendingTasksCount;
                                  },
                                  builder: (context, state) {
                                    return TitleText(text: '${state}');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        HorizontalSmallGap(),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LabelText(
                                  text: 'Actions Done Today',
                                  textAlign: TextAlign.center,
                                ),
                                BlocSelector<HomeCubit, HomeState, int>(
                                  selector: (state) {
                                    return state.completedTasksCount;
                                  },
                                  builder: (context, completedTasksCount) {
                                    return TitleText(
                                        text: '${completedTasksCount}');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        HorizontalSmallGap(),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LabelText(
                                  text: 'Viewings Today',
                                  textAlign: TextAlign.center,
                                ),
                                BlocSelector<HomeCubit, HomeState, int>(
                                  selector: (state) {
                                    return state.viewingTasksCount;
                                  },
                                  builder: (context, state) {
                                    return TitleText(text: '${state}');
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SliverVerticalSmallGap(),
            ],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: TitleText(
            //     text: 'Tasks :',
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Expanded(
              child: CustomScrollView(
                slivers: List.generate(
                    7,
                    (index) => BlocBuilder<HomeCubit, HomeState>(
                          builder: (context, state) {
                            final activities = state.activities[index] ?? [];
                            final itemLength = activities.length;

                            return SliverStickyHeader.builder(
                              builder: (context, state) => Container(
                                height: 60.0,
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    LabelText(
                                      text: switch (index) {
                                        0 => 'Pending Fresh Hot Leads:',
                                        1 => 'Pending Call Center Leads:',
                                        2 => 'Hot Confidential Pending:',
                                        3 => 'Active Prospects:',
                                        4 => 'Follow Up Hot Leads:',
                                        5 => 'Follow Up Cold Leads:',
                                        6 => 'Fresh Cold Leads:',
                                        _ => ''
                                      },
                                    ),
                                    TextButton(
                                        onPressed: () async {
                                          await context
                                              .read<HomeCubit>()
                                              .getActivities(
                                                  filterCode: index,
                                                  refresh: true);
                                        },
                                        child: Text('Refresh'))
                                  ],
                                ),
                              ),
                              sliver: SliverPadding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                sliver: state.getActivitiesStatus[index] ==
                                        Status.loading
                                    ? SliverToBoxAdapter(
                                        child: Center(
                                            child: CircularProgressIndicator()),
                                      )
                                    : SliverList.separated(
                                        itemCount: state
                                                    .activityPaginator[index]
                                                    ?.hasNextPage ??
                                                false
                                            ? itemLength + 1
                                            : itemLength,
                                        itemBuilder: (context, v) {
                                          if (v == itemLength) {
                                            return OutlinedButton(
                                                onPressed: () {
                                                  context
                                                      .read<HomeCubit>()
                                                      .getActivities(
                                                          filterCode: index);
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text("Load More"),
                                                    if (state.getActivitiesStatus[
                                                            index] ==
                                                        Status.loadingMore) ...[
                                                      HorizontalSmallGap(),
                                                      SizedBox.square(
                                                        dimension: 20,
                                                        child:
                                                            CircularProgressIndicator
                                                                .adaptive(),
                                                      )
                                                    ]
                                                  ],
                                                ));
                                          }
                                          final activity = activities[v];
                                          return Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(16.h),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: shadowColor,
                                                      offset: Offset(-4, 5),
                                                      blurRadius: 11)
                                                ]),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.h,
                                                  vertical: 6.h),
                                              child: InkWell(
                                                onTap: () {
                                                  context.pushNamed(
                                                      TaskDetailScreen
                                                          .routeName,
                                                      pathParameters: {
                                                        'id':
                                                            activity.lead?.id ??
                                                                ''
                                                      },
                                                      extra: activity);
                                                },
                                                child: Row(children: [
                                                  Container(
                                                    width: 70,
                                                    height: 60,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2,
                                                            vertical: 4),
                                                    decoration: BoxDecoration(
                                                        // border: Border.all(color: Colors.grey),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        color:
                                                            Colors.grey[100]),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        switch (activity.type
                                                            .toLowerCase()) {
                                                          'call' => Icon(
                                                              Icons.call,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          'whatsapp' =>
                                                            ImageIcon(
                                                              AssetImage(
                                                                  'assets/images/whatsapp.png'),
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          _ => Icon(
                                                              Icons.call,
                                                              color:
                                                                  Colors.grey,
                                                            )
                                                        },
                                                        VerticalSmallGap(
                                                          adjustment: 0.3,
                                                        ),
                                                        SmallText(
                                                          text: activity.type,
                                                          color:
                                                              Colors.grey[800]!,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  HorizontalSmallGap(),
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      4.h,
                                                                  vertical:
                                                                      1.h),
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .blueGrey),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4),
                                                              color: Colors
                                                                      .blueGrey[
                                                                  100]),
                                                          child: SmallText(
                                                              text: activity
                                                                      .lead
                                                                      ?.leadStatus
                                                                      ?.name ??
                                                                  ''),
                                                        ),
                                                        VerticalSmallGap(
                                                          adjustment: .2,
                                                        ),
                                                        Text(
                                                            "${activity.lead?.firstName ?? ''} ${activity.lead?.lastName ?? ''}"),
                                                        CountdownTimer(
                                                            endTime:
                                                                activity.date)
                                                      ],
                                                    ),
                                                  ),
                                                  HorizontalSmallGap(),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      IconButton.filledTonal(
                                                          onPressed: () async {
                                                            if (activity.lead ==
                                                                null) {
                                                              return;
                                                            }
                                                            context.read<CallBloc>().add(
                                                                CallEvent.callStarted(
                                                                    phoneNumber:
                                                                        activity.lead!.phone ??
                                                                            '',
                                                                    activityId:
                                                                        activity
                                                                            .id,
                                                                    leadId: activity
                                                                        .lead!
                                                                        .id));
                                                          },
                                                          icon: Icon(
                                                            Icons.call,
                                                          ))
                                                    ],
                                                  )
                                                ]),
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            VerticalSmallGap()),
                              ),
                            );
                          },
                        )),
              ),
            ),
          ],
        ));
  }
}
