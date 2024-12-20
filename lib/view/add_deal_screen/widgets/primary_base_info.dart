import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/view/add_lead_screen/add_lead_screen.dart';

import '../../../model/lead_model.dart';
import '../../../model/off_plan_model.dart';
import '../../../model/property_type_model.dart';
import '../../../widgets/fields/autocomplete_field.dart';
import '../../../widgets/fields/currency_field.dart';
import '../../../widgets/fields/number_field.dart';
import '../../../widgets/fields/text_field.dart';
import '../../../widgets/fields/wrap_select_field.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../cubit/add_deal_cubit.dart';

class PrimaryBasicInfoTab extends StatefulWidget {
  const PrimaryBasicInfoTab({
    super.key,
    required GlobalKey<FormBuilderState> formKey,
    required this.propertyTypeList,
  }) : _formKey = formKey;

  final GlobalKey<FormBuilderState> _formKey;
  final List<PropertyType> propertyTypeList;

  @override
  State<PrimaryBasicInfoTab> createState() => _PrimaryBasicInfoTabState();
}

class _PrimaryBasicInfoTabState extends State<PrimaryBasicInfoTab> {
  OffPlanModel? offPlanModel;
  num? price;
  num? commission;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: widget._formKey,
      child: ScrollShadow(
        color: Colors.indigo[50]!,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppAutoComplete(
                name: 'user_id',
                label: 'Client',
                isRequired: true,
                valueTransformer: (p0) => p0?.id,
                displayStringForOption: (lead) =>
                    '${lead.firstName} ${lead.lastName} (*****${lead.phone != null ? lead.phone!.substring(lead.phone!.length - 4, lead.phone!.length) : ""})',
                optionsBuilder: (v, refresh) async {
                  return context.read<AddDealCubit>().getLeads(search: v.text);
                },
                actionButton: (key) {
                  return TextButton(
                    style: TextButton.styleFrom(
                        visualDensity: VisualDensity.compact,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        // alignment: Alignment.centerRight,
                        padding: EdgeInsets.zero),
                    onPressed: () async {
                      final lead = await context
                          .pushNamed<Lead>(AddLeadScreen.routeName);

                      if (lead != null) {
                        final fieldValues =
                            widget._formKey.currentState?.instantValue ?? {};
                        widget._formKey.currentState
                            ?.patchValue({...fieldValues, 'user_id': lead});
                      }
                    },
                    child: Text('Add'),
                  );
                },
              ),
              AppAutoComplete(
                  name: 'offPlanId',
                  label: 'Development',
                  isRequired: true,
                  valueTransformer: (p0) => p0?.id,
                  onSelected: (value) {
                    offPlanModel = value;
                    setState(() {});
                  },
                  displayStringForOption: (offPlan) =>
                      '${offPlan.developmentName}',
                  optionsBuilder: (v, refresh) async {
                    return context
                        .read<AddDealCubit>()
                        .getOffPlans(search: v.text);
                  }),
              AppTextField(
                name: 'developer',
                label: 'Developer',
                disabled: true,
                value: offPlanModel?.developer.name ?? '',
              ),
              VerticalSmallGap(),
              Divider(
                thickness: 4,
                color: Theme.of(context).colorScheme.secondary,
              ),
              LabelText(
                text: 'Property Details',
              ),
              Divider(
                thickness: 4,
                color: Theme.of(context).colorScheme.secondary,
              ),
              VerticalSmallGap(
                adjustment: 0.5,
              ),
              WrapSelectField(
                  name: 'propertyType',
                  label: 'Property Type',
                  values: [
                    "Villa",
                    "Townhouse",
                    "Apartment",
                    "Plot",
                    "Commercial"
                  ],
                  isRequired: true),
              WrapSelectField(
                  name: 'beds',
                  label: 'Beds',
                  values: ['Studio', '1', '2', '3', '4', '5', '6', '7+'],
                  isRequired: true),
              WrapSelectField(
                  name: 'baths',
                  label: 'Baths',
                  values: ['1', '2', '3', '4', '5', '6', '7+'],
                  isRequired: true),
              NumberField(
                isRequired: true,
                name: 'size',
                label: 'Area',
                unit: 'Sqft',
                convertToString: true,
              ),
              AppTextField(
                name: 'unitId',
                label: 'Unit ID Number',
              ),
              CurrencyField(
                isRequired: true,
                name: 'agreedSalesPrice',
                label: 'Agreed Sale Price',
                onChanged: (p0) {
                  price = p0;
                  setState(() {});
                },
              ),
              NumberField(
                isRequired: true,
                name: 'agreedCommission',
                label: 'Agreed Commission',
                unit: '%',
                value: (price != null && commission != null)
                    ? commission! * 100 / price!
                    : null,
                onChanged: (value) {
                  if (value != null && price != null) {
                    commission = price! * value / 100;
                    setState(() {});
                  }
                },
              ),
              NumberField(
                isRequired: true,
                name: 'commission_amount',
                unit: 'AED',
                value: commission,
                onChanged: (value) {
                  if (value != null) {
                    commission = value;
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
