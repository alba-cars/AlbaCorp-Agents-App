import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/enquiries_screen/cubit/enquiries_cubit.dart';
import 'package:real_estate_app/view/enquiries_screen/cubit/enquiries_state.dart';
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
      TabController(length: 3, vsync: this);
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
              return Container(
                child: state.maybeWhen(
                    loading: () => SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator()),
                    error: (errorMessage) => showError(context, errorMessage),
                    loaded: (activities, paginator) =>
                        showActivities(context, activities, paginator),
                    orElse: () => showError(context, "Error loading data")),
              );
            },
          ),
        ],
      ),
    );
  }

  loadData(
    BuildContext context,
  ) {
    if (tabIndex == 0) {
      context.read<EnquiriesCubit>().fetchFreshEnquiries();
    } else if (tabIndex == 1) {
      context.read<EnquiriesCubit>().fetchFollowUpEnquiries();
    } else if (tabIndex == 2) {
      context.read<EnquiriesCubit>().fetchFavouritesEnquiries();
    }
  }

  Widget showActivities(
      BuildContext context, List<Activity> activities, Paginator? paginator) {
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
            context.read<EnquiriesCubit>().fetchMoreEnquiries(paginator!);
          }
          return true;
        },
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_, pos) {
              if (pos == activities.length) {}
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
            itemCount: activities.length),
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
