import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/model/lead_source_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/lead_source/presentation/cubit/lead_source_cubit.dart';
import 'package:real_estate_app/widgets/fields/multi_dropdown_field.dart';

class LeadSourceFilterWidget extends StatefulWidget {
  final LeadSourceType leadSourceType;
  const LeadSourceFilterWidget({
    this.leadSourceType = LeadSourceType.All,
    super.key,
  });

  @override
  State<LeadSourceFilterWidget> createState() => _LeadSourceFilterWidgetState();
}

class _LeadSourceFilterWidgetState extends State<LeadSourceFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          getIt<LeadSourceCubit>()..getLeadSources(),
      child: BlocBuilder<LeadSourceCubit, LeadSourceState>(
        builder: (context, state) {
          if (state.status == AppStatus.success) {
            return MultiDropDownField<LeadSource>(
              label: 'Lead source',
              items: state.leadSources ?? [],
              name: 'lead_source',
              displayOption: (option) => option.name,
              valueTransformer: (p0) => p0?.map((e) => e.id),
            );
          }
          return MultiDropDownField<LeadSource>(
            label: 'Lead source',
            isLoadingItems: state.status == AppStatus.loading,
            items: [],
            name: 'lead_source',
          );
        },
      ),
    );
  }
}

enum LeadSourceType { All, Hot, Cold }
