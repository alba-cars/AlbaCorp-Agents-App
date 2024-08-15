import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/enquiries_screen/cubit/enquiries_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';

import '../../../widgets/tab_bar.dart';
import '../../../widgets/text.dart';
import '../../cold_lead_screen/cubit/cold_lead_cubit.dart';
import '../../home_screen/home_screen.dart';

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ListTile(
            title: HeadingText(text: "Enquiries"),
            contentPadding: EdgeInsets.zero,
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
        .read<EnquiriesCubit>()
        .fetchHoteads(TaskFilterEnum.values[tabIndex], paginator: null);
  }

  Widget showActivities(BuildContext context, List<Activity> activities,
      Paginator? paginator, AppStatus? appStatus) {
    Logger().d("No of activitiess : ${activities.length}");

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
