import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/cold_lead_screen/cubit/cold_lead_cubit.dart';
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
      TabController(length: 3, vsync: this);
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ListTile(
            title: HeadingText(text: "Explorer Leads"),
            // trailing: AppPrimaryButton(
            //   text: 'Go to Explorer',
            //   width: 34,
            //   loading: false,
            //   onTap: () {
            //     return Navigator.of(context)
            //         .pushNamed(LeadsExplorerScreen.routeName);
            //   },
            //   foregroundColor: Theme.of(context).colorScheme.primary,
            //   backgroundColor: Colors.white,
            //   borderShow: true,
            // ),
            trailing: SizedBox(
              width: 160,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(padding: EdgeInsets.all(2)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LeadsExplorerScreen()));
                },
                child: Text('Go to explorer'),
              ),
            ),
            contentPadding: EdgeInsets.zero,
          ),
          SizedBox(
            height: 24,
          ),
          AppTabBar(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            selectedColor: Theme.of(context).primaryColor,
            tabController: _tabController,
            tabs: TaskFilterEnum.values.map((e) => e.getName()).toList(),
            onTap: (index) {
              tabIndex = index;
              loadData(context);
            },
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
                        appStatus);
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
                    appStatus);
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

  Widget showActivities(BuildContext context, List<Activity> activities,
      Paginator? paginator, AppStatus? appStatus) {
    Logger().d("No of activitiess : ${activities.length}");
    if (activities.length == 0) {
      return Column(
        children: [
          Text("No data found"),
          SizedBox(
            height: 8,
          ),
        ],
      );
    }
    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          bool isScrollEnd = scrollInfo.metrics.pixels >=
              0.9 * scrollInfo.metrics.maxScrollExtent;
          if (isScrollEnd && (paginator?.hasNextPage ?? false)) {
            Logger().d("Paginator is executing");
            context.read<ColdLeadCubit>().fetchColdLeads(
                TaskFilterEnum.values[tabIndex],
                paginator: paginator);
          }
          return true;
        },
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
