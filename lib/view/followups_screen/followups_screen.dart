import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/followups_screen/cubit/followups_cubit.dart';

import 'widgets/followups_page.dart';

class FollowupsScreen extends StatelessWidget {
  static const routeName = "/followups-screen";
  const FollowupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FollowupsCubit>()
        ..fetchFollowups(
            TaskFilterEnum.FollowUpToday), // Changed to FollowUpToday
      child: FollowupsPage(),
    );
  }
}
