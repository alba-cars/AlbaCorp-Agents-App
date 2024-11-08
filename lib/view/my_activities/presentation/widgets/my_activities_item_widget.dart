import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:recase/recase.dart';

class MyActivitiesItemWidget extends StatelessWidget {
  final Activity activity;
  const MyActivitiesItemWidget({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.lightGreen,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              child: Text(
                activity.status,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Text(
            activity.lead?.getFullName().sentenceCase ?? "",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
      subtitle: Text(
        "Note : ${activity.notes}",
        style: Theme.of(context).textTheme.labelSmall,
      ),
      leading: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.grey.shade100),
            child: Center(
                child: Icon(
              Icons.phone,
              size: 12,
              color: Colors.teal,
            )),
          ),
          VerticalSmallGap(),
          Text(
            activity.type.sentenceCase,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Colors.teal),
          )
        ],
      ),
      trailing: Text(
        timeElasped(),
        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left:  16.0),
          child: Row(
            children: [
              Text(
                "Description: ${activity.description}",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12),
              ),
            ],
          ),
        ),
        Divider(),
        Row(
          children: [
            Flexible(
                flex: 1,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "SHOW ALL ACTIVITIES",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ))),
            Flexible(
                flex: 1,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "VIEW PROPERTY CARD FOR LEAD",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ))),
            Flexible(
                flex: 1,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "SCHEDULE NEW TASK",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ))),
          ],
        )
      ],
    );
  }

  String timeElasped() {
    Duration timeDiff =
        DateTime.now().difference(activity.completedDate ?? DateTime.now());
    // Logger().d(activity.toJson());
    if (timeDiff.inHours > (30 * 24))
      return "${(timeDiff.inHours / (30 * 24)).round()} month ago";
    if (timeDiff.inHours > 24)
      return "${(timeDiff.inHours / 24).round()} days ago";
    if (timeDiff.inHours > 1) return "${(timeDiff.inHours)} hours ago";
    if (timeDiff.inMinutes > 60) return "${(timeDiff.inMinutes)} min ago";
    return "Just now";
  }
}
