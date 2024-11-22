import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/list_state_cubit/list_state_cubit.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/enquiries_screen/cubit/enquiries_cubit.dart';
import 'package:real_estate_app/view/enquiries_screen/widget/leadsource_filter_widget.dart';
import 'package:real_estate_app/view/expired_hot_lead_explorer/expired_hot_lead_explorer.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/search_bar.dart';
import 'package:real_estate_app/widgets/space.dart';
import '../../../widgets/fields/multi_select_autocomplete_field.dart';
import '../../../widgets/tab_bar.dart';
import '../../../widgets/text.dart';
import '../../cold_lead_screen/cubit/cold_lead_cubit.dart';
import '../../home_screen/home_screen.dart';
import 'activity_sort_control_widget.dart';
import '../../leads_list_explorer/leads_list_explorer.dart';

class EnquiriesPage extends StatefulWidget {
  const EnquiriesPage({super.key});

  @override
  State<EnquiriesPage> createState() => _EnquiriesPageState();
}

class _EnquiriesPageState extends State<EnquiriesPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: TaskFilterEnum.values.length, vsync: this);
  int tabIndex = 0;

  List<Widget> filterFields(
      BuildContext context, Map<String, dynamic>? values) {
    return [
      WrapSelectField(
        name: 'sortBy',
        label: "Sort By",
        values: [
          {"label": "Latest", "value": 'latest'},
          {"label": "Oldest", "value": 'oldest'}
        ],
        displayOption: (option) => option['label'] ?? '',
      ),
      LeadSourceFilterWidget(),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          AppSearchBar(
            filterFields: filterFields,
            filter: context.select<EnquiriesCubit, Map<String, dynamic>?>(
                (state) => state.state.activityFilter),
            leadWidgets: [
              Expanded(
                child: ListTile(
                  title: HeadingText(text: "Enquiries"),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              HorizontalSmallGap(),
              InkWell(
                onTap: () {
                  context.pushNamed(ExpiredHotLeadExplorer.routeName);
                },
                child: SizedBox(
                  height: 40,
                  width: 150,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Theme.of(context).colorScheme.secondary),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.explore,
                          color: Colors.white,
                        ),
                        HorizontalSmallGap(),
                        Text(
                          "Hot explorer",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                        ),
                      ],
                    ),
                  ),
                ),)
            ],
            showSearch: false,
            skipDisplayFilterKeys: ['sortBy'],
            onChanged: (v) {},
            onFilterApplied: (filter) {
              context
                  .read<EnquiriesCubit>()
                  .setActivityFilters(filter, TaskFilterEnum.values[tabIndex]);
            },
          ),
          VerticalSmallGap(),
          AppTabBar(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            selectedColor: Theme.of(context).primaryColor,
            tabController: _tabController,
            tabs: TaskFilterEnum.values.map((e) => e.getName()).toList(),
            onTap: (index) {
              tabIndex = index;
              loadData(context);
              if (mounted) setState(() {});
            },
          ),
          SizedBox(
            height: 12,
          ),
          if (tabIndex == 3)
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.blueGrey.withOpacity(.4)),
              height: 56,
              child: ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text(
                      "These leads will get unassigned from you after 24 hrs",
                      style: TextStyle(fontSize: 12))),
            ),
          SizedBox(
            height: 24,
          ),
          BlocBuilder<EnquiriesCubit, EnquiriesState>(
            builder: (context, state) {
              TaskFilterEnum taskFilterEnum = TaskFilterEnum.values[tabIndex];
              AppStatus? appStatus = state.fetchStatus[taskFilterEnum];
              Paginator? currentPaginator = state.paginator[taskFilterEnum];
              if (currentPaginator == null) {
                // First load with  out pagination
                Logger().d("Status : $appStatus");
                switch (appStatus) {
                  case AppStatus.success:
                    return showActivities(
                        context,
                        state.activities[taskFilterEnum] ?? [],
                        currentPaginator,
                        appStatus,
                        taskFilterEnum);
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
                // For pagination show existing list
                return showActivities(
                    context,
                    state.activities[taskFilterEnum] ?? [],
                    currentPaginator,
                    appStatus,
                    taskFilterEnum);
              }
            },
          ),
        ],
      ),
    );
  }

  loadData(
    BuildContext context,
  ) {
    context
        .read<EnquiriesCubit>()
        .fetchHoteads(TaskFilterEnum.values[tabIndex], paginator: null);
  }

  Widget showActivities(BuildContext context, List<Activity> activities,
      Paginator? paginator, AppStatus? appStatus, TaskFilterEnum taskFilter) {
    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          bool isScrollEnd = scrollInfo.metrics.pixels >=
              0.9 * scrollInfo.metrics.maxScrollExtent;
          if (isScrollEnd && (paginator?.hasNextPage ?? false)) {
            Logger().d("Paginator is executing");
            context.read<EnquiriesCubit>().fetchHoteads(
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
                    Text("No data found"),
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
                  "${activity.lead?.firstName ?? ""} ${activity.lead?.lastName ?? ""}";
                  return ActivityListItem(
                    activity: activity,
                    index: pos,
                    onActionPerformed: () {
                      loadData(
                          context); // Reloading data after a call has performed or page pop event
                    },
                    taskFiler: taskFilter,
                    taskType: TaskType.Hot,
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
        Text("Error loading data, try again"),
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
