import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/my_activities/cubit/my_activities_cubit.dart';
import 'package:real_estate_app/view/my_activities/presentation/widgets/my_activities_item_widget.dart';
import 'package:real_estate_app/widgets/button.dart';

class MyActvitiesPage extends StatelessWidget {
    static const routeName = '/myActivitiesScreen';
  const MyActvitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MyActivitiesCubit>()..getAgentActivities(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Actvities'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Group by",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 40,
                  child: VerticalDivider(),
                ),
                DropdownButton(
                    hint: Text(
                      "Select Lead",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    items: [
                      DropdownMenuItem(
                          child: Text(
                        "All",
                        style: Theme.of(context).textTheme.bodySmall,
                      ))
                    ],
                    onChanged: onLeadSelected),
                DropdownButton(
                    hint: Text(
                      "Select Status",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    items: [
                      DropdownMenuItem(
                          child: Text(
                        "All",
                        style: Theme.of(context).textTheme.bodySmall,
                      ))
                    ],
                    onChanged: onStatusSelected),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Sort by",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 60,
                  child: VerticalDivider(),
                ),
              ],
            ),
            Divider(),
            BlocBuilder<MyActivitiesCubit , MyActivitiesState>(
              builder: (context, state) {
               if (state.paginator?.currentPage == 1) {
                // First load with  out pagination
                switch (state.status) {
                  case AppStatus.success:
                    return showActivities(
                        context,
                        state.activities,
                        state.paginator,
                        state.status,
                        );
                  case AppStatus.failure:
                    return showError(
                        context,
                        
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
                    state.activities ?? [],
                    state.paginator,
                    state.status,
                    );
              }
              },
            )
          ],
        )),
      ),
    );
  }

  Widget showActivities(BuildContext context, List<Activity> activities,
      Paginator? paginator, AppStatus? appStatus,) {
    Logger().d("No of activitiess : ${activities.length}");

    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          bool isScrollEnd = scrollInfo.metrics.pixels >=
              0.9 * scrollInfo.metrics.maxScrollExtent;
          if (isScrollEnd && (paginator?.hasNextPage ?? false)) {
            Logger().d("Paginator is executing");
            context.read<MyActivitiesCubit>().getAgentActivities(   
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
                  return MyActivitiesItemWidget(activity: activity);
                },
                separatorBuilder: (_, __) => SizedBox(
                      height: 16,
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

  loadData(
    BuildContext context,
  ) {
    context
        .read<MyActivitiesCubit>()
        .getAgentActivities(paginator: null);
  }
  void onLeadSelected(value) {
    // TODO: Implemengt logic
  }

  void onStatusSelected(value) {
    // TODO: Implement logic
  }
}