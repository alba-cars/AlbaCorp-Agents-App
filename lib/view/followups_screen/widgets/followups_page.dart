import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/followups_screen/cubit/followups_cubit.dart';
import 'package:real_estate_app/view/new_leads_screen/widget/leadsource_filter_widget.dart'; // May need to be generalized or moved
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../app/list_state_cubit/list_state_cubit.dart';
import '../../../model/activity_model.dart';
import '../../../service_locator/injectable.dart';
import '../../../widgets/button.dart';
import '../../../widgets/fields/multi_select_autocomplete_field.dart';
import '../../../widgets/fields/wrap_select_field.dart';
import '../../../widgets/search_bar.dart';
import '../../../widgets/tab_bar.dart';
import '../../home_screen/home_screen.dart'; // Check if still relevant
import '../../leads_list_explorer/leads_list_explorer.dart'; // Check if still relevant

class FollowupsPage extends StatefulWidget {
  const FollowupsPage({super.key});

  @override
  State<FollowupsPage> createState() => _FollowupsPageState();
}

class _FollowupsPageState extends State<FollowupsPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(
      length: TaskFilterEnum.values.length,
      vsync: this); // Will adjust to new enum
  int tabIndex = 0;

  List<Widget> filterFields(
      BuildContext context, Map<String, dynamic>? values) {
    // This filter section might need significant changes based on "Followups" context
    // For now, keeping structure similar to ColdLeadPage
    return [
      WrapSelectField(
        name: 'sortBy',
        label: "Sort By",
        values: [
          {"label": "Latest", "value": 'latest'},
          {"label": "Oldest", "value": 'oldest'},
          {
            "label": "Rating",
            "value": 'rating'
          }, // Consider if rating is applicable for followups
        ],
        displayOption: (option) => option['label'] ?? '',
      ),
      LeadSourceFilterWidget(), // Review if lead source is relevant here
      MultiSelectAutoCompleteField(
          label: 'Community',
          optionsBuilder: (v, refresh) async {
            final stateResult = context.read<ListStateCubit>().state.placesList;
            if (stateResult.isEmpty) {
              await context.read<ListStateCubit>().getPlaces(search: v.text);
            }
            final list = context.read<ListStateCubit>().state.placesList.where(
                (element) => element.community
                    .toLowerCase()
                    .contains(v.text.toLowerCase()));
            return list.map((e) => {'value': e.id, 'label': e.community});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'communityId'),
      MultiSelectAutoCompleteField(
          label: 'Building',
          optionsBuilder: (v, refresh) async {
            final stateResult =
                context.read<ListStateCubit>().state.buildingList;
            if (stateResult.isEmpty) {
              await context.read<ListStateCubit>().getBuildings(search: v.text);
            }
            final list = context
                .read<ListStateCubit>()
                .state
                .buildingList
                .where((element) =>
                    element.name.toLowerCase().contains(v.text.toLowerCase()));
            return list.map((e) => {'value': e.id, 'label': e.name});
          },
          displayStringForOption: (option) => option['label'] ?? '',
          name: 'buildingId'),
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
          values: context
              .read<ListStateCubit>()
              .state
              .propertyTypeList
              .map((e) => {'value': e.propertyType, 'label': e.propertyType})
              .toList(),
          displayOption: (option) => option['label'] ?? '',
          isRequired: true),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // Adjust tab length based on the new TaskFilterEnum for Followups
    // For now, assuming TaskFilterEnum.values.length is correct after state update
    if (_tabController.length != TaskFilterEnum.values.length) {
      _tabController.dispose();
      // Re-initialize TabController if needed, or ensure TaskFilterEnum is stable
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          AppSearchBar(
            filterFields: filterFields,
            filter: context.select<FollowupsCubit, Map<String, dynamic>?>(
                (state) => state.state.activityFilter),
            leadWidgets: [
              // "leadWidgets" might need renaming if context changes
              Expanded(
                child: ListTile(
                  title: HeadingText(text: "Follow-ups"), // Updated title
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              HorizontalSmallGap(),
              BlocSelector<FollowupsCubit, FollowupsState, String?>(
                selector: (state) => state.leadSourceType,
                builder: (context, leadSourceType) {
                  return SegmentedButton<String>(
                    segments: const <ButtonSegment<String>>[
                      ButtonSegment<String>(
                        value: 'hot',
                        label: Text('Hot'),
                        icon: Icon(Icons.local_fire_department_outlined),
                      ),
                      ButtonSegment<String>(
                        value: 'cold',
                        label: Text('Cold'),
                        icon: Icon(Icons.ac_unit_outlined),
                      ),
                    ],
                    selected: leadSourceType != null
                        ? <String>{leadSourceType}
                        : <String>{},
                    onSelectionChanged: (Set<String> newSelection) {
                      if (newSelection.isNotEmpty) {
                        context
                            .read<FollowupsCubit>()
                            .setLeadSourceTypeFilter(newSelection.first);
                      } else {
                        context
                            .read<FollowupsCubit>()
                            .setLeadSourceTypeFilter(null);
                      }
                    },
                    emptySelectionAllowed: true,
                    showSelectedIcon: false,
                    style: SegmentedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      // backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                      // foregroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
                      selectedForegroundColor:
                          Theme.of(context).colorScheme.onPrimary,
                      selectedBackgroundColor:
                          Theme.of(context).colorScheme.primary,
                    ),
                  );
                },
              ),
            ],
            showSearch: false, // Review if search is needed for followups
            onChanged: (v) {},
            onFilterApplied: (filter) {
              context
                  .read<FollowupsCubit>()
                  .setActivityFilters(filter, TaskFilterEnum.values[tabIndex]);
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
          BlocSelector<FollowupsCubit, FollowupsState,
              Map<TaskFilterEnum, int>>(
            selector: (state) => state.tabCounts,
            builder: (context, tabCounts) {
              return AppTabBar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                selectedColor: Theme.of(context).primaryColor,
                tabController: _tabController,
                tabLabels:
                    TaskFilterEnum.values.map((e) => e.getName()).toList(),
                tabCounts: TaskFilterEnum.values
                    .map((e) => tabCounts[e] ?? 0)
                    .toList(),
                onTap: (index) {
                  tabIndex = index;
                  // Check if data for this tab is already loaded or primarily loading
                  // If not, or if counts were just placeholders, fetch full data.
                  // The cubit's fetchFollowups will handle not re-fetching if already loading.
                  context.read<FollowupsCubit>().fetchFollowups(
                      TaskFilterEnum.values[index],
                      paginator: null,
                      fetchOnlyCount:
                          false // Ensure full data fetch on tab click
                      );
                  if (mounted) setState(() {});
                },
              );
            },
          ),
          SizedBox(
            height: 12,
          ),
          // Conditional UI based on tabIndex might need adjustment for new enums
          // Example: if (TaskFilterEnum.values[tabIndex] == TaskFilterEnum.FollowUpOverDue) ...
          // For now, removing the specific tabIndex == 3 condition as it related to "Expiring"
          // if (tabIndex == 3) // This was for Expiring in ColdLead
          //   Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(6),
          //         color: Colors.blueGrey.withOpacity(.4)),
          //     height: 56,
          //     child: ListTile(
          //         leading: Icon(Icons.info_outline),
          //         title: Text(
          //             "These leads will get unassigned from you after 24 hrs", // Message needs update
          //             style: TextStyle(fontSize: 12))),
          //   ),
          SizedBox(
            height: 24,
          ),
          BlocBuilder<FollowupsCubit, FollowupsState>(
            builder: (context, state) {
              TaskFilterEnum taskFilterEnum = TaskFilterEnum.values[tabIndex];
              AppStatus? appStatus = state.fetchStatus[taskFilterEnum];
              Paginator? currentPaginator = state.paginator[taskFilterEnum];
              if (currentPaginator == null) {
                switch (appStatus) {
                  case AppStatus.success:
                    return showActivities(
                        context,
                        state.activities[taskFilterEnum] ?? [],
                        currentPaginator,
                        appStatus,
                        taskFilterEnum,
                        state.leadSourceType == 'hot'
                            ? TaskType.Hot
                            : TaskType.Cold);
                  case AppStatus.failure:
                    return showError(
                        context,
                        state.error[taskFilterEnum] ??
                            'Unexpected error happened');
                  case AppStatus.loading:
                    return CircularProgressIndicator();
                  default:
                    return SizedBox();
                }
              } else {
                return showActivities(
                    context,
                    state.activities[taskFilterEnum] ?? [],
                    currentPaginator,
                    appStatus,
                    taskFilterEnum,
                    state.leadSourceType == 'hot'
                        ? TaskType.Hot
                        : TaskType.Cold);
              }
            },
          ),
        ],
      ),
    );
  }

  loadData(BuildContext context, {bool fetchOnlyCount = false}) {
    context.read<FollowupsCubit>().fetchFollowups(
        TaskFilterEnum.values[tabIndex],
        paginator: null,
        fetchOnlyCount: fetchOnlyCount);
  }

  @override
  void initState() {
    super.initState();
    // Initial data load for the first tab, and trigger background count fetching
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        // Fetch full data for the initially selected tab
        context.read<FollowupsCubit>().fetchFollowups(
            TaskFilterEnum.values[_tabController.index],
            paginator: null,
            fetchOnlyCount: false);
      }
    });
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        // This check is important to only react to user-initiated tab changes
        // and not programmatic ones if any.
        tabIndex = _tabController.index;
        // Fetch full data for the newly selected tab
        // The cubit will handle not re-fetching if data is already present or loading
        context.read<FollowupsCubit>().fetchFollowups(
            TaskFilterEnum.values[tabIndex],
            paginator: null,
            fetchOnlyCount: false);
        if (mounted) {
          setState(() {});
        }
      }
    });
  }

  Widget showActivities(
      BuildContext context,
      List<Activity> activities,
      Paginator? paginator,
      AppStatus? appStatus,
      TaskFilterEnum taskFilterEnum,
      TaskType taskType) {
    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          bool isScrollEnd = scrollInfo.metrics.pixels >=
              0.9 * scrollInfo.metrics.maxScrollExtent;
          if (isScrollEnd && (paginator?.hasNextPage ?? false)) {
            Logger().d("Paginator is executing $paginator");
            context.read<FollowupsCubit>().fetchFollowups(
                TaskFilterEnum.values[tabIndex],
                paginator: paginator);
          }
          return true;
        },
        child: RefreshIndicator.adaptive(
          onRefresh: () async {
            await loadData(context);
          },
          child: Visibility(
            visible: activities.length > 0,
            replacement: ListView(
              children: [
                Column(
                  children: [
                    Text("No follow-ups found"), // Updated text
                    SizedBox(
                      height: 8,
                    ),
                  ],
                )
              ],
            ),
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, pos) {
                  if (pos == activities.length) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            height: 40,
                            width: 40,
                            child: CircularProgressIndicator()),
                      ],
                    );
                  }
                  Activity activity = activities[pos];
                  // Ensure ActivityListItem is generic enough or create a FollowupListItem
                  // For now, assuming ActivityListItem can be reused or will be refactored.
                  // The TaskType.Cold will need to become TaskType.Followup or similar.
                  return ActivityListItem(
                    activity: activity,
                    index: pos,
                    onActionPerformed: () {
                      loadData(context);
                    },
                    taskFiler: taskFilterEnum.name, // This should be fine
                    taskType: taskType,
                  );
                },
                separatorBuilder: (_, __) => SizedBox(
                      height: 8,
                    ),
                itemCount: appStatus == AppStatus.loading &&
                        (paginator?.hasNextPage ?? false)
                    ? activities.length + 1
                    : activities.length),
          ),
        ),
      ),
    );
  }

  Widget showError(BuildContext context, String errorMessage) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Error loading follow-ups, try again"), // Updated text
        SizedBox(
          height: 8,
        ),
        AppPrimaryButton(
            text: "Retry",
            onTap: () {
              loadData(context);
            })
      ],
    );
  }
}
