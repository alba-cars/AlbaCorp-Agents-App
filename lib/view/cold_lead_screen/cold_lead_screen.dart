import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/cold_lead_screen/cubit/cold_lead_cubit.dart';

import 'widgets/cold_lead_page.dart';

class ColdLeadScreen extends StatelessWidget {
  static const routeName = "/cold-screen";
  const ColdLeadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ColdLeadCubit>()..fetchColdLeads(TaskFilterEnum.New),
      child: ColdLeadPage(),
    );
  }
}
