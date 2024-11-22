import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/app/list_state_cubit/list_state_cubit.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/hot_leads_assigned_today_screen/cubit/hot_leads_assigned_today_cubit.dart';
import 'package:real_estate_app/view/hot_leads_assigned_today_screen/widgets/lead_card.dart';

class HotLeadsAssignedToday extends StatelessWidget {
  static const routeName = '/HotLeadsAssignedToday';
  const HotLeadsAssignedToday({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HotLeadsAssignedTodayCubit>(),
      child: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hot Leads Today"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            BlocBuilder<HotLeadsAssignedTodayCubit, HotLeadsAssignedTodayState>(
              builder: (context, state) {
                return Expanded(
                  child: RefreshIndicator(
                    onRefresh: ()async{
                      await context.read<HotLeadsAssignedTodayCubit>().getLeadsExplorerList(refresh: true);
                    },
                    child: NotificationListener<ScrollNotification>(
                      onNotification: (notification) {
                        if(notification.metrics.pixels >= notification.metrics.maxScrollExtent *0.8 && (state.paginator?.hasNextPage ?? false)){
                          context.read<HotLeadsAssignedTodayCubit>().getLeadsExplorerList();
                        }
                        return true;
                      },
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(vertical: 20),
                          itemBuilder: (context, index) {
                            final activity = state.activities[index];
                            return LeadCard(
                                name:
                                    "${activity.lead?.firstName} ${activity.lead?.lastName}",
                                phone: activity.lead?.phone ?? '',
                                leadSource: activity.lead?.leadSource ?? "",
                                assignedAt: activity.completedDate!,
                                dueAt: activity.lead?.lastActivityDate ?? DateTime.now());
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                height: 8,
                              ),
                          itemCount: state.activities.length),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
