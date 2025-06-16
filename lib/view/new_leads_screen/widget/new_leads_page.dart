import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/list_state_cubit/list_state_cubit.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/new_leads_screen/cubit/new_leads_cubit.dart';
import 'package:real_estate_app/view/new_leads_screen/widget/leadsource_filter_widget.dart';
import 'package:real_estate_app/view/expired_hot_lead_explorer/expired_hot_lead_explorer.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/search_bar.dart';
import 'package:real_estate_app/widgets/space.dart';
import '../../../widgets/fields/multi_select_autocomplete_field.dart';
import '../../../widgets/tab_bar.dart';
import '../../../widgets/text.dart';
import '../../followups_screen/cubit/followups_cubit.dart'; // Updated import
import '../../home_screen/home_screen.dart';

class NewLeadsPage extends StatefulWidget {
  const NewLeadsPage({super.key});

  @override
  State<NewLeadsPage> createState() => _EnquiriesPageState();
}

enum NewLeadTaskFilterEnum {
  Enquiry,
  Cold, // Renamed from Cold
  Partner,
  ;

  String getName() {
    switch (this) {
      case NewLeadTaskFilterEnum.Enquiry:
        return "Enquiry";
      case NewLeadTaskFilterEnum.Partner:
        return "Partner";
      case NewLeadTaskFilterEnum.Cold: // Renamed from Cold
        return "Cold"; // Updated name
    }
  }
}

class _EnquiriesPageState extends State<NewLeadsPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: NewLeadTaskFilterEnum.values.length, vsync: this);
  // tabIndex is already managed by _tabController.index, so we can rely on that.
  // int tabIndex = 0; // This can be removed or managed via _tabController.index

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
            filter: context.select<NewLeadsCubit, Map<String, dynamic>?>(
                (state) => state.state.activityFilter),
            leadWidgets: [
              Expanded(
                child: ListTile(
                  title: HeadingText(text: "New Leads"),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              HorizontalSmallGap(),
              if (getIt<AuthBloc>().state.user?.role != 'AnonymousAgent')
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
                  ),
                )
            ],
            showSearch: false,
            skipDisplayFilterKeys: ['sortBy'],
            onChanged: (v) {},
            onFilterApplied: (filter) {
              context.read<NewLeadsCubit>().setActivityFilters(
                  filter, NewLeadTaskFilterEnum.values[_tabController.index]);
            },
          ),
          VerticalSmallGap(),
          BlocSelector<NewLeadsCubit, NewLeadsState,
              Map<NewLeadTaskFilterEnum, int>>(
            selector: (state) => state.tabCounts,
            builder: (context, tabCounts) {
              return AppTabBar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                selectedColor: Theme.of(context).primaryColor,
                tabController: _tabController,
                tabLabels: NewLeadTaskFilterEnum.values
                    .map((e) => e.getName())
                    .toList(),
                tabCounts: NewLeadTaskFilterEnum.values
                    .map((e) => tabCounts[e] ?? 0)
                    .toList(),
                onTap: (index) {
                  // tabIndex = index; // Use _tabController.index directly
                  // When a tab is tapped, fetch its full data.
                  // The cubit's fetchHoteads will also trigger fetching counts for other tabs if needed.
                  context.read<NewLeadsCubit>().fetchHoteads(
                      NewLeadTaskFilterEnum.values[index],
                      fetchOnlyCount: false);
                  // No need to call setState here if UI updates are driven by BlocBuilder/Selector
                },
              );
            },
          ),
          SizedBox(
            height: 12,
          ),
          // The condition for tabIndex == 3 was specific to a previous "Expiring" tab.
          // Review if a similar message is needed for any of the NewLeadTaskFilterEnum tabs.
          // For now, removing it as it might not be relevant.
          // if (_tabController.index == X) // Check specific tab if needed
          //   Container( ... )
          SizedBox(
            height:
                24, // This SizedBox might have been related to the conditional container above.
            // Adjust if layout needs change.
          ),
          BlocBuilder<NewLeadsCubit, NewLeadsState>(
            builder: (context, state) {
              NewLeadTaskFilterEnum taskFilterEnum =
                  NewLeadTaskFilterEnum.values[_tabController.index];
              AppStatus? appStatus = state.fetchStatus[taskFilterEnum];
              Paginator? currentPaginator = state.paginator[taskFilterEnum];
              if (currentPaginator == null &&
                  state.fetchStatus[taskFilterEnum] != AppStatus.loading &&
                  (state.activities[taskFilterEnum]?.isEmpty ?? true)) {
                // First load with  out pagination
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
    // Fetch full data for the current tab, not just count
    context.read<NewLeadsCubit>().fetchHoteads(
        NewLeadTaskFilterEnum.values[_tabController.index],
        paginator: null,
        fetchOnlyCount: false);
  }

  @override
  void initState() {
    super.initState();
    // The initial data load (full for first tab, counts for others)
    // is now handled in NewLeadsScreen's BlocProvider.create.
    // So, no explicit call needed here for the very first load.

    _tabController.addListener(() {
      // Important: only react to user-initiated tab changes.
      if (_tabController.indexIsChanging) {
        // setState is called by AppTabBar's onTap or if _tabController itself drives state.
        // If BlocBuilder/Selector handles UI updates based on cubit state, direct setState might not be needed here
        // unless other local UI elements depend on _tabController.index directly outside of Bloc.
        if (mounted) {
          setState(
              () {}); // To rebuild parts of the UI that depend on tabIndex directly, if any.
        }
        // Fetch full data for the newly selected tab.
        // The cubit will handle not re-fetching if data is already present or loading,
        // and will also manage fetching counts for other tabs if necessary.
        context.read<NewLeadsCubit>().fetchHoteads(
            NewLeadTaskFilterEnum.values[_tabController.index],
            paginator: null,
            fetchOnlyCount: false);
      }
    });
  }

  Widget showActivities(
      BuildContext context,
      List<Activity> activities,
      Paginator? paginator,
      AppStatus? appStatus,
      NewLeadTaskFilterEnum taskFilter) {
    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          bool isScrollEnd = scrollInfo.metrics.pixels >=
              0.9 * scrollInfo.metrics.maxScrollExtent;
          if (isScrollEnd && (paginator?.hasNextPage ?? false)) {
            Logger().d(
                "Paginator is executing for ${_tabController.index} with $paginator");
            context.read<NewLeadsCubit>().fetchHoteads(
                NewLeadTaskFilterEnum.values[_tabController.index],
                paginator: paginator,
                fetchOnlyCount: false); // Ensure pagination fetches full data
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
                    taskFiler: taskFilter.name,
                    taskType: taskFilter == NewLeadTaskFilterEnum.Cold
                        ? TaskType.Cold
                        : TaskType.Hot,
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
