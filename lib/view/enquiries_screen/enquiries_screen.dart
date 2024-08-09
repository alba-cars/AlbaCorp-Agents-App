import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';

import 'cubit/enquiries_cubit.dart';
import 'widget/enquiries_page.dart';

class EnquiriesScreen extends StatelessWidget {
  static const routeName = '/enquiriesScreen';
  const EnquiriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EnquiriesCubit>()..fetchFreshEnquiries(),
      child: const EnquiriesPage(),
    );
  }
}
