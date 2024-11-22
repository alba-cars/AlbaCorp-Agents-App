import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/app/list_state_cubit/list_state_cubit.dart';
import 'package:real_estate_app/model/lead_source_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/lead_source/presentation/cubit/lead_source_cubit.dart';
import 'package:real_estate_app/widgets/fields/multi_dropdown_field.dart';
import 'package:real_estate_app/widgets/fields/multi_select_autocomplete_field.dart';

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
    return 
         MultiSelectAutoCompleteField(
          label: 'Lead source',
          optionsBuilder: (v, isRefresh) async {
            final list = await context.read<ListStateCubit>().getLeadSources(
                search: v.text, leadSourceType: LeadSourceType.Hot);

            return list.map((e) => {'value': e.id, 'label': e.name}).toList();
          },
          name: 'leadSourceId',
          displayStringForOption: (option) => option['label'] ?? '',
        );
    
    
  }
}

enum LeadSourceType { All, Hot, Cold }
