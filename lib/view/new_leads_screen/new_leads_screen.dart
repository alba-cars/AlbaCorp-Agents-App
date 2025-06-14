import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/followups_screen/cubit/followups_cubit.dart'; // Updated import

import 'cubit/new_leads_cubit.dart';
import 'widget/new_leads_page.dart';

class EnquiriesScreen extends StatelessWidget {
  static const routeName = '/enquiriesScreen';
  const EnquiriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<NewLeadsCubit>();
        // Fetch full data for the initial tab (Enquiry)
        cubit.fetchHoteads(NewLeadTaskFilterEnum.Enquiry,
            fetchOnlyCount: false);
        // Then, trigger fetching counts for all other tabs in the background.
        // The fetchAllTabCounts method in the cubit will ensure not to re-fetch for the currentTab (Enquiry).
        cubit.fetchAllTabCounts(currentTab: NewLeadTaskFilterEnum.Enquiry);
        return cubit;
      },
      child: const NewLeadsPage(),
    );
  }
}
