import 'package:flutter/cupertino.dart';
import 'package:real_estate_app/view/listing_detail_screen/widgets/activity_list.dart';

import '../../../model/activity_model.dart';

class ActivitiesTabView extends StatelessWidget {
  const ActivitiesTabView({super.key, required this.activities});

  final List<Activity> activities;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ActivityList(activities: activities),
    );
  }
}
