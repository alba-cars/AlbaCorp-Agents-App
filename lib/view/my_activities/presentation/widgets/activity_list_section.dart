// lib/features/activities/presentation/widgets/activity_list_section.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/view/my_activities/cubit/my_activities_cubit.dart';
import '../../../../util/status.dart';
import './activity_card.dart';
import './empty_state_widget.dart';
import './error_state_widget.dart';

class ActivityListSection extends StatefulWidget {

  const ActivityListSection({Key? key, }) : super(key: key);

  @override
  State<ActivityListSection> createState() => _ActivityListSectionState();
}

class _ActivityListSectionState extends State<ActivityListSection> {





  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyActivitiesCubit, MyActivitiesState>(
      builder: (context, state) {
        if (state.status == AppStatus.loading && state.activities.isEmpty) {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.status == AppStatus.failure && state.activities.isEmpty) {
          return const SliverFillRemaining(
            child: Center(child: Text('Error loading activities')),
          );
        }

        if (state.activities.isEmpty) {
          return const SliverFillRemaining(
            child: Center(child: Text('No activities found')),
          );
        }

        return  SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == state.activities.length) {
                  return state.paginator?.hasNextPage ?? false
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : null;
                }

                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: ActivityCard(
                    activity: state.activities[index],
                  ),
                );
              },
              childCount: state.activities.length + 
                (state.paginator?.hasNextPage ?? false ? 1 : 0),
            ),
          
        );
      },
    );
  }


}