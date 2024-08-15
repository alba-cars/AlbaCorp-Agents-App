import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/view/call_feedback_screen/cubit/call_feedback_cubit.dart';

import '../../../util/color_category.dart';
import '../../../widgets/call_button.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../../../widgets/timer_text.dart';

class LastPendingActivity extends StatelessWidget {
  const LastPendingActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: "Pending Activity"),
              BlocSelector<CallFeedbackCubit, CallFeedbackState, Activity?>(
                  selector: (state) {
                final ls =
                    state.activities.where((e) => e.status != 'Complete');
                if (ls.isEmpty) {
                  return null;
                }
                return ls.first;
              }, builder: (context, activity) {
                if (activity == null) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SmallText(
                      text: "No Pending activity for this lead.",
                    ),
                  );
                }
                return Column(
                  children: [
                    ActivityListItem(
                      activity: activity,
                    ),
                    CheckboxListTile.adaptive(
                        contentPadding: EdgeInsets.zero,
                        value: context.select((CallFeedbackCubit c) =>
                            c.state.attachLastPendingActivityToTheCall != null),
                        title: NormalText(
                          text: "Attach and Complete this task",
                        ),
                        onChanged: (val) {
                          context
                              .read<CallFeedbackCubit>()
                              .setAttachLastPendingActivity(
                                  (val ?? false) ? activity.id : null);
                        })
                  ],
                );
              })
            ],
          ),
        ),
      ],
    );
  }
}

class ActivityListItem extends StatelessWidget {
  const ActivityListItem({
    super.key,
    required this.activity,
  });

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.h),
          boxShadow: [
            BoxShadow(color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6)),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.errorContainer,
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(activity.status,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ))),
                    VerticalSmallGap(
                      adjustment: 0.3,
                    ),
                    Container(
                      width: 70,
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[100]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          switch (activity.type.toLowerCase()) {
                            'call' => Icon(
                                Icons.call,
                                color: Colors.grey,
                              ),
                            'whatsapp' => ImageIcon(
                                AssetImage('assets/images/whatsapp.png'),
                                color: Colors.grey,
                              ),
                            _ => Icon(
                                Icons.call,
                                color: Colors.grey,
                              )
                          },
                          VerticalSmallGap(
                            adjustment: 0.3,
                          ),
                          SmallText(
                            text: activity.type,
                            textAlign: TextAlign.center,
                            color: Colors.grey[800]!,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                HorizontalSmallGap(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //LabelText(text: activity.createdBy ?? ''),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.labelMedium,
                              text: 'Description : ',
                              children: [
                            TextSpan(
                                text: activity.description?.isNotEmpty == true
                                    ? activity.description
                                    : 'N/A',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(color: Colors.blueGrey))
                          ])),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.labelMedium,
                              text: 'Notes : ',
                              children: [
                            TextSpan(
                                text: activity.notes?.isNotEmpty == true
                                    ? activity.notes
                                    : 'N/A',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(color: Colors.blueGrey))
                          ])),
                      if (activity.status == 'Complete')
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.labelMedium,
                                text: 'Completed Date : ',
                                children: [
                              TextSpan(
                                  text: activity.completedDate != null
                                      ? DateFormat.MMMEd()
                                          .add_jms()
                                          .format(activity.completedDate!)
                                      : null,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(color: Colors.blueGrey))
                            ]))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
