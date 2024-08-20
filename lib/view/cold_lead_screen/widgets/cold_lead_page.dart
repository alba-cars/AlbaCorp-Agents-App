import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/cold_lead_screen/cubit/cold_lead_cubit.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../../model/activity_model.dart';
import '../../../widgets/button.dart';
import '../../../widgets/tab_bar.dart';
import '../../home_screen/home_screen.dart';
import '../../leads_list_explorer/leads_list_explorer.dart';

class ColdLeadPage extends StatefulWidget {
  const ColdLeadPage({super.key});

  @override
  State<ColdLeadPage> createState() => _ColdLeadPageState();
}

class _ColdLeadPageState extends State<ColdLeadPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: TaskFilterEnum.values.length, vsync: this);
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ListTile(
              title: HeadingText(text: "Explorer Leads"),
              // trailing: SizedBox(
              //   width: 160,
              //   child: OutlinedButton(
              //     style: OutlinedButton.styleFrom(padding: EdgeInsets.all(2)),
              //     onPressed: () {
              //       context.pushNamed(LeadsExplorerScreen.routeName);
              //     },
              //     child: Text('Go to explorer'),
              //   ),
              // ),
              trailing: InkWell(
                onTap: () {
                  context.pushNamed(LeadsExplorerScreen.routeName);
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
                          "Go to explorer",
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
              ),
              contentPadding: EdgeInsets.zero,
            ),
          ),
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
          BlocBuilder<ColdLeadCubit, ColdLeadState>(
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
        .read<ColdLeadCubit>()
        .fetchColdLeads(TaskFilterEnum.values[tabIndex], paginator: null);
  }

  Widget showActivities(
      BuildContext context,
      List<Activity> activities,
      Paginator? paginator,
      AppStatus? appStatus,
      TaskFilterEnum taskFilterEnum) {
    Logger().d("No of activitiess : ${activities.length}");

    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          bool isScrollEnd = scrollInfo.metrics.pixels >=
              0.9 * scrollInfo.metrics.maxScrollExtent;
          if (isScrollEnd && (paginator?.hasNextPage ?? false)) {
            Logger().d("Paginator is executing $paginator");
            context.read<ColdLeadCubit>().fetchColdLeads(
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
                    taskFiler: taskFilterEnum,
                    taskType: TaskType.Cold,
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
