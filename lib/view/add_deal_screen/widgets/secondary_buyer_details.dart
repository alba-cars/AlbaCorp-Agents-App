import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/view/add_lead_screen/add_lead_screen.dart';

import '../../../model/lead_model.dart';
import '../../../widgets/fields/autocomplete_field.dart';
import '../../../widgets/fields/commission_field.dart';
import '../../../widgets/fields/number_field.dart';
import '../../../widgets/fields/phone_number_field.dart';
import '../../../widgets/fields/text_field.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../cubit/add_deal_cubit.dart';

class SecondaryAlbaBuyerDetails extends StatelessWidget {
  const SecondaryAlbaBuyerDetails({super.key, required this.formKey});

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSmallGap(),
        Divider(
          thickness: 4,
          color: Theme.of(context).colorScheme.secondary,
        ),
        LabelText(
          text: 'Buyer Details',
        ),
        Divider(
          thickness: 4,
          color: Theme.of(context).colorScheme.secondary,
        ),
        VerticalSmallGap(
          adjustment: 0.5,
        ),
        AppAutoComplete(
          name: 'buyerInternalUserId',
          label: 'Client',
          isRequired: true,
          valueTransformer: (p0) => p0?.id,
          displayStringForOption: (lead) =>
              '${lead.firstName} ${lead.lastName} (*****${lead.phone != null ? lead.phone!.substring(lead.phone!.length - 5, lead.phone!.length - 1) : ""})',
          optionsBuilder: (v) async {
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
                final lead =
                    await context.pushNamed<Lead>(AddLeadScreen.routeName);

                if (lead != null) {
                  final fieldValues = formKey.currentState?.instantValue ?? {};
                  formKey.currentState
                      ?.patchValue({...fieldValues, 'user_id': lead});
                }
              },
              child: Text('Add'),
            );
          },
        ),
        BlocSelector<AddDealCubit, AddDealState, Property?>(
          selector: (state) {
            return state.selectedProperty;
          },
          builder: (context, property) {
            return CommissionField(
              isRequired: true,
              name: 'buyerAgreedComm',
              commissionPercentage:
                  num.tryParse(property?.commission.toString() ?? ''),
              price: num.tryParse(formKey
                          .currentState?.instantValue['agreedSalePrice']
                          ?.toString() ??
                      '') ??
                  (property != null
                      ? context.read<AddDealCubit>().getPrice(property)
                      : null),
            );
          },
        ),
      ],
    );
  }
}

class SecondaryExternalBuyerDetails extends StatelessWidget {
  const SecondaryExternalBuyerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSmallGap(),
        Divider(
          thickness: 4,
          color: Theme.of(context).colorScheme.secondary,
        ),
        LabelText(
          text: 'External Buyer Details',
        ),
        Divider(
          thickness: 4,
          color: Theme.of(context).colorScheme.secondary,
        ),
        VerticalSmallGap(
          adjustment: 0.5,
        ),
        AppAutoComplete(
            name: 'agency_id',
            label: 'Choose Agency',
            isRequired: true,
            valueTransformer: (p0) => p0?.id,
            displayStringForOption: (option) =>
                "${option.firstName} ${option.lastName}",
            optionsBuilder: (v) async {
              return context.read<AddDealCubit>().getAgencies(search: v.text);
            }),
        AppTextField(
          name: 'buyerExternalAgentName',
          label: 'Agent',
        ),
        PhoneNumberField(
          name: 'buyerExternalAgentPhone',
          label: 'Agent Phone Number',
        ),
        AppTextField(
          name: 'buyerExternalClientName',
          label: 'Client',
        ),
        PhoneNumberField(
          name: 'buyerExternalClientPhone',
          label: 'Client Phone Number',
        ),
      ],
    );
  }
}
