import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/call_bloc/call_bloc.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/task_detail_screen/task_detail_screen.dart';
import 'package:real_estate_app/widgets/call_button.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:real_estate_app/widgets/timer_text.dart';

import '../../util/color_category.dart';
import '../../widgets/fields/date_field.dart';
import '../../widgets/fields/drop_down_field.dart';
import '../../widgets/fields/multi_dropdown_field.dart';
import '../../widgets/fields/multi_select_autocomplete_field.dart';
import '../../widgets/fields/wrap_select_field.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/snackbar.dart';
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
                          fit: BoxFit.cover,
                          errorWidget: Image.asset(
                              'assets/images/person_placeholder.jpeg'),
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
                                Spacer(),
                                LabelText(
                                  text: 'Actions Pending Today',
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
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
                                Spacer(),
                                LabelText(
                                  text: 'Actions Done Today',
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
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
                                Spacer(),
                                LabelText(
                                  text: 'Viewings Today',
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
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
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BlocSelector<HomeCubit, HomeState, Set<ListType>>(
                        selector: (state) {
                          return state.listType;
                        },
                        builder: (context, listType) {
                          return SegmentedButton<ListType>(
                            showSelectedIcon: false,
                            segments: [
                              ButtonSegment(
                                  value: ListType.Categorized,
                                  label: Text('Categorized')),
                              ButtonSegment(
                                  value: ListType.Sorted, label: Text('List'))
                            ],
                            selected: listType,
                            onSelectionChanged: (p0) {
                              context.read<HomeCubit>().selectListType(p0);
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              SliverVerticalSmallGap(),
            ],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: BlocSelector<HomeCubit, HomeState, Set<ListType>>(
                selector: (state) {
                  return state.listType;
                },
                builder: (context, listType) {
                  if (listType.first == ListType.Sorted) {
                    return SortedView();
                  } else {
                    return CategorizedView();
                  }
                },
              ),
            ),
          ],
        ));
  }
}

class SortedView extends StatelessWidget {
  const SortedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: AppSearchBar(
            searchText: "Search by name",
            onChanged: (val) {
              context.read<HomeCubit>().searchLeads(val);
            },
            filterFields: filterFields(context),
            onFilterApplied: (filter) {
              context.read<HomeCubit>().setActivityFilters(filter);
            },
            filter:
                context.select((HomeCubit value) => value.state.activityFilter),
          ),
        ),
        Expanded(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state.getSortedActivitiesStatus == AppStatus.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final activities = state.sortedActivity;
              final itemLength = activities.length;

              return RefreshIndicator.adaptive(
                onRefresh: () async {
                  await context
                      .read<HomeCubit>()
                      .getSortedActivities(refresh: true);
                },
                child: NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (state.getSortedActivitiesStatus !=
                            AppStatus.loadingMore &&
                        scrollInfo.metrics.pixels >=
                            0.9 * scrollInfo.metrics.maxScrollExtent &&
                        state.sortedActivityPaginator?.hasNextPage == true) {
                      context.read<HomeCubit>().getSortedActivities();
                    }
                    return true;
                  },
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    itemBuilder: (context, index) {
                      if (index == itemLength) {
                        return SizedBox(
                          height: 50,
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      return ActivityListItem(
                        activity: activities[index],
                        index: index,
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      height: 8,
                    ),
                    itemCount:
                        state.getSortedActivitiesStatus != AppStatus.loadingMore
                            ? itemLength
                            : itemLength + 1,
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

List<Widget> filterFields(BuildContext context) {
  return [
    MultiSelectAutoCompleteField(
        label: 'Community',
        optionsBuilder: (v) async {
          final stateResult = context.read<HomeCubit>().state.communityList;
          if (stateResult.isEmpty) {
            await context.read<HomeCubit>().getCommunities(search: v.text);
          }
          final list = context.read<HomeCubit>().state.communityList.where(
              (element) => element.community
                  .toLowerCase()
                  .contains(v.text.toLowerCase()));
          return list.map((e) => {'value': e.id, 'label': e.community});
        },
        displayStringForOption: (option) => option['label'] ?? '',
        name: 'communityId'),
    MultiSelectAutoCompleteField(
        label: 'Building',
        optionsBuilder: (v) async {
          final stateResult = context.read<HomeCubit>().state.buildingList;
          if (stateResult.isEmpty) {
            await context.read<HomeCubit>().getBuildings(search: v.text);
          }
          final list = context.read<HomeCubit>().state.buildingList.where(
              (element) =>
                  element.name.toLowerCase().contains(v.text.toLowerCase()));
          return list.map((e) => {'value': e.id, 'label': e.name});
        },
        displayStringForOption: (option) => option['label'] ?? '',
        name: 'buildingId'),
    WrapSelectField(
      name: 'leadSourceType',
      label: 'Lead Source',
      values: [
        {'value': 'cold', 'label': 'Cold Leads'},
        {'value': 'hot', 'label': 'Hot Leads'}
      ],
      isRequired: false,
      displayOption: (option) => option['label'] as String,
      // valueTransformer: (p0) => p0?['value'],
    ),
    MultiDropDownField(
        label: 'Lead Source',
        items: [
          "Admin Created",
          "Agent Created",
          "Alba Cars",
          "Ask a Question",
          "Bayut",
          "Call Center",
          "Call Center 1",
          "Call Center 2",
          "Call Center 3",
          "DLD",
          "Dubizzle",
          "DubizzleHL",
          "Email",
          "Facebook Call",
          "Facebook Campaign",
          "Facebook Chat",
          "Get Matched Assistance",
          "Google Ads",
          "Hot Confidential",
          "Imported",
          "Instagram Call",
          "Instagram Campaign",
          "Instagram Chat",
          "New Listing",
          "Newsletter",
          "Off-Plan",
          "Property Finder",
          "Referral",
          "Register",
          "Saqib",
          "Snapchat",
          "TikTok",
          "Twitter",
          "Unkown Inbound Call",
          "Viewing",
          "Watti",
          "Whatsapp",
          "External REF0101",
          "External REF0102" ",External REF0103",
          "External REF0104",
          "External REF0105",
          "External RIK/Burj Vista",
          "External RIK/Creek Harbour",
          "External RIK/Palm",
          "External Ref0102",
          "External Ref0105",
          "External2023 Ref0101",
          "ExternalREF0105",
          "External%EF%BF%BDREF0105"
        ],
        name: 'leadSource'),
    DropDownfield(
        label: 'Lead Status',
        items: [
          "Fresh",
          "Prospect",
          "For Listing",
          "Follow up",
          "Appointment",
          "Viewing",
          "Negotiating",
          "Deal",
          "Won",
        ],
        name: 'leadStatus'),
    DateField(
        name: 'fromDate',
        label: 'From Date',
        firstDate: DateTime.now().subtract(Duration(days: 90)),
        lastDate: DateTime.now().add(Duration(days: 30))),
    DateField(
        name: 'toDate',
        label: 'To Date',
        firstDate: DateTime.now().subtract(Duration(days: 90)),
        lastDate: DateTime.now().add(Duration(days: 30))),
  ];
}

class CategorizedView extends StatelessWidget {
  const CategorizedView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: List.generate(
          7,
          (index) => BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  final activities = state.activities[index] ?? [];
                  final itemLength = activities.length;

                  return SliverStickyHeader.builder(
                    builder: (context, state) => Container(
                      height: 60.0,
                      color: Theme.of(context).colorScheme.primaryContainer,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                await context.read<HomeCubit>().getActivities(
                                    filterCode: index, refresh: true);
                              },
                              child: Icon(Icons.refresh))
                        ],
                      ),
                    ),
                    sliver: SliverPadding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        sliver: switch (state.getActivitiesStatus[index]) {
                          AppStatus.loading => SliverToBoxAdapter(
                              child: Center(child: CircularProgressIndicator()),
                            ),
                          AppStatus.failure => SliverToBoxAdapter(
                              child: SliverToBoxAdapter(
                                  child: Row(
                                children: [
                                  Text('Some error occured'),
                                  TextButton(
                                      onPressed: () async {
                                        await context
                                            .read<HomeCubit>()
                                            .getActivities(
                                                filterCode: index,
                                                refresh: true);
                                      },
                                      child: Text("Retry"))
                                ],
                              )),
                            ),
                          AppStatus.success =>
                            state.activities[index]?.isEmpty == true
                                ? SliverToBoxAdapter(child: Text('No Leads'))
                                : SliverList.separated(
                                    itemCount: (state.activityPaginator[index]
                                                    ?.hasNextPage ??
                                                false) &&
                                            state.activities[index]
                                                    ?.isNotEmpty ==
                                                true
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
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("Load More"),
                                                if (state.getActivitiesStatus[
                                                        index] ==
                                                    AppStatus.loadingMore) ...[
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
                                      return ActivityListItem(
                                        activity: activity,
                                        index: v,
                                        taskSection: index,
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        VerticalSmallGap()),
                          _ => SizedBox()
                        }),
                  );
                },
              )),
    );
  }
}

class ActivityListItem extends StatelessWidget {
  const ActivityListItem({
    super.key,
    required this.activity,
    required this.index,
    this.taskSection,
  });

  final Activity activity;
  final int index;
  final int? taskSection;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
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
            context.pushNamed(TaskDetailScreen.routeName,
                pathParameters: {'id': activity.id}, extra: activity);
          },
          child: Row(children: [
            Container(
              width: 70,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[100]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  switch (activity.type.toLowerCase()) {
                    'call' => Icon(
                        Icons.call,
                        color: Colors.grey,
                      ),
                    'whatsapp' => ImageIcon(
                        AssetImage('assets/images/whatsapp.png'),
                        color: Colors.grey,
                      ),
                    _ => Icon(
                        Icons.call,
                        color: Colors.grey,
                      )
                  },
                  VerticalSmallGap(
                    adjustment: 0.3,
                  ),
                  SmallText(
                    text: activity.type,
                    color: Colors.grey[800]!,
                  )
                ],
              ),
            ),
            HorizontalSmallGap(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.h, vertical: 1.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.blueGrey[100]),
                        child: SmallText(
                            text: activity.lead?.leadStatus?.name ?? ''),
                      ),
                      HorizontalSmallGap(),
                      if (activity.lead?.dndStatus == true)
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.h, vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: colorScheme.error),
                              borderRadius: BorderRadius.circular(4),
                              color: colorScheme.errorContainer),
                          child: SmallText(text: 'DND'),
                        ),
                      if (activity.lead?.isNewTag == true) ...[
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.h, vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: colorScheme.error),
                              borderRadius: BorderRadius.circular(4),
                              color: colorScheme.error),
                          child: SmallText(
                            text: 'New',
                            color: colorScheme.onError,
                          ),
                        ),
                      ]
                    ],
                  ),
                  VerticalSmallGap(
                    adjustment: .2,
                  ),
                  NormalText(
                      text:
                          "${activity.lead?.firstName ?? ''} ${activity.lead?.lastName ?? ''}"),
                  CountdownTimer(endTime: activity.date)
                ],
              ),
            ),
            HorizontalSmallGap(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CallButton(
                  onTap: () async {
                    if (activity.lead == null) {
                      return;
                    }
                    context.read<CallBloc>().add(CallEvent.callStarted(
                        phoneNumber: activity.lead!.phone ?? '',
                        activityId: activity.id,
                        leadId: activity.lead!.id));
                    final state = await getIt<CallBloc>().stream.firstWhere(
                        (e) => e.makeACallStatus != AppStatus.loading);
                    if (state.makeACallStatus == AppStatus.success) {
                      showSnackbar(
                          context,
                          'Call request sent successfully. please open linkus app to receieve call',
                          SnackBarType.success);
                    } else {
                      showSnackbar(
                          context,
                          'Call request failed to send. error: ${state.makeACallError}',
                          SnackBarType.failure);
                    }
                  },
                  isDnd: activity.lead!.dndStatus,
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
