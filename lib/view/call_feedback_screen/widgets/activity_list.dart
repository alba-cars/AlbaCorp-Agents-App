import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/util/date_formatter.dart';
import 'package:real_estate_app/view/call_feedback_screen/cubit/call_feedback_cubit.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

class ActivityListCallFeedback extends StatelessWidget {
  const ActivityListCallFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CallFeedbackCubit, CallFeedbackState, List<Activity>>(
      selector: (state) {
        return state.activities;
      },
      builder: (context, activities) {
        if (activities.length <= 1) {
          return SizedBox();
        }
        return ExpansionTile(
            title: TitleText(text: "Last 5 Activies by this lead"),
            tilePadding: EdgeInsets.zero,
            collapsedShape: RoundedRectangleBorder(),
            shape: RoundedRectangleBorder(),
            collapsedBackgroundColor: Colors.white,
            backgroundColor: Colors.white,
            children: activities
                .slice(0, activities.length > 5 ? 5 : activities.length)
                .where((e) => e.status == 'Complete')
                .map((activity) => Container(
                      margin: EdgeInsets.only(bottom: 8),
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
                                Expanded(
                                    child: Text(activity.description ?? '')),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(child: Text(activity.notes ?? '')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList());
      },
    );
  }
}
