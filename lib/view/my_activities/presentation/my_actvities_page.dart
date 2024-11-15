// lib/features/activities/presentation/screens/activities_screen.dart

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/my_activities/cubit/my_activities_cubit.dart';
import '../../../util/status.dart';
import 'widgets/activity_calender_section.dart';
import 'widgets/activity_filters_section.dart';
import 'widgets/activity_list_section.dart';

class MyActvitiesPage extends StatefulWidget {
  static const routeName = '/activities';

  const MyActvitiesPage({Key? key}) : super(key: key);

  @override
  State<MyActvitiesPage> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<MyActvitiesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<MyActivitiesCubit>(),
        child: Builder(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: Text(
                  'My Activities',
                ),
                centerTitle: true,
              ),
              body: SafeArea(
                child: NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    EasyDebounce.debounce(
                        "pagination-my-activities", Durations.medium2, () {
                      if (scrollInfo.metrics.pixels >=
                          scrollInfo.metrics.maxScrollExtent * 0.8) {
                        context.read<MyActivitiesCubit>().getAgentActivities(
                              loadMore: true,
                            );
                      }
                    });
                    return true;
                  },
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: ActivityFiltersSection(),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.all(16.0),
                        sliver: ActivityListSection(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        ));
  }
}
