import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/util/date_formatter.dart';

import '../../../widgets/url_text.dart';
import '../cubit/task_detail_cubit.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<TaskDetailCubit, TaskDetailState, List<Activity>>(
      selector: (state) {
        return state.activities;
      },
      builder: (context, activities) {
        if (activities.length <= 1) {
          return Text('No activities for this lead');
        }
        return ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == 0) {
                return SizedBox();
              }
              final activity = activities[index];
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-4, 5),
                          blurRadius: 11,
                          color: Color(0XFF819498).withOpacity(0.14))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text(activity.type)),
                          Expanded(child: Text(activity.status)),
                          Expanded(child: Text(activity.date.formatted)),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(child: UrlText(text:activity.description ?? '')),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: UrlText(text:activity.notes ?? '')),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 6,
              );
            },
            itemCount: activities.length > 10 ? 10 : activities.length);
      },
    );
  }
}
