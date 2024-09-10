import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';

import '../../../constants/beds_baths_optional_list.dart';
import '../../../util/status.dart';
import '../../../widgets/button.dart';
import '../../../widgets/fields/attachment_field.dart';
import '../../../widgets/fields/commission_field.dart';
import '../../../widgets/fields/currency_field.dart';
import '../../../widgets/fields/drop_down_field.dart';
import '../../../widgets/fields/multi_image_field.dart';
import '../../../widgets/fields/multi_line_textfield.dart';
import '../../../widgets/fields/number_field.dart';
import '../../../widgets/fields/wrap_select_field.dart';
import '../../../widgets/snackbar.dart';
import '../../../widgets/space.dart';
import '../cubit/property_card_details_cubit.dart';

List<Widget> get _pocketListingFields => [
      WrapSelectField(
        name: 'purpose',
        label: 'Purpose',
        values: ['Sell', 'Lease'],
        isRequired: true,
      ),
      CurrencyField(
        isRequired: true,
        name: 'askingPrice',
        label: 'Asking Price',
      ),
      CurrencyField(
        isRequired: true,
        name: 'agentValutionPrice',
        label: 'Agency Valuation',
      ),
      MultipleImageuploadField(
        name: 'photos',
        label: 'Photos',
        isRequired: true,
      ),
      VerticalSmallGap(),
      AttachmentField(
        name: 'documents',
        label: 'Documents',
        isRequired: true,
      )
    ];

List<Widget> _ListingAcquiredFields(BuildContext context,
        PropertyCardDetailsModel propertyCard, ValueNotifier val) =>
    [
      WrapSelectField(
          name: 'contractValidity',
          label: 'Duration of Contract',
          values: ['1 Month', '3 Months', '6 Months', '12 Months'],
          isRequired: true),
      WrapSelectField(
          name: 'furnishing',
          label: 'Furnishing',
          values: ['Furnished', 'Semi furnished', 'Unfurnished'],
          isRequired:
              propertyTypesExcludeBedsBaths.contains(propertyCard.propertyType)
                  ? false
                  : true),
      WrapSelectField(
        label: 'Vacancy',
        values: ['Vacant', 'Tenanted'],
        name: 'vacancy',
        isRequired: true,
      ),
      FormBuilderSwitch(
          decoration: InputDecoration(
              border: InputBorder.none, contentPadding: EdgeInsets.zero),
          name: 'vacantOnTransfer',
          title: Text(
            'Vacant On Transfer',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF555555),
                ),
          )),
      FormBuilderSwitch(
          decoration: InputDecoration(
              border: InputBorder.none, contentPadding: EdgeInsets.zero),
          name: 'exclusive',
          title: Text(
            'Exclusive',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF555555),
                ),
          )),
      VerticalSmallGap(
        adjustment: 0.3,
      ),
      ValueListenableBuilder(
          valueListenable: val,
          builder: (context, value, _) {
            if (value['type'] != 'Rent') {
              return SizedBox();
            }
            return NumberField(
              label: 'Number of Cheques',
              name: "numberOfCheques",
              unit: '',
            );
          }),
      WrapSelectField(
          name: 'isOffPlanResale',
          label: 'Is OffPlan Resale',
          values: [
            {"label": 'Yes', "value": true},
            {"label": 'No', "value": false}
          ],
          displayOption: (option) => option['label'] as String? ?? '',
          valueTransformer: (option) => option?['value'] as bool?,
          isRequired: true),
      ValueListenableBuilder(
          valueListenable: val,
          builder: (context, value, _) {
            if (value['isOffPlanResale'] != true) {
              return SizedBox();
            }
            return CurrencyField(
              isRequired: value['isOffPlanResale'] == true,
              name: 'amountAlreadyPaid',
              label: 'Amount Already Paid',
            );
          }),
      CurrencyField(
        isRequired: true,
        name: 'price',
        label: 'Listing Price',
      ),
      VerticalSmallGap(
        adjustment: 0.3,
      ),
      MultiLineField(
        name: 'relatedInfo',
        label: 'Related Info',
      ),
    ];

showConvertPropertyCard(
    BuildContext context, PropertyCardDetailsModel propertyCard) {
  final statuses = ['Pocket Listing', 'Listing Acquired']
    ..remove(propertyCard.status);
  showGeneralDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: true,
      barrierLabel: 'change-status-property-card',
      pageBuilder: (dContext, anim1, anim2) {
        final GlobalKey<FormBuilderState> key = GlobalKey();
        String? status;
        ValueNotifier val = ValueNotifier({});
        return StatefulBuilder(builder: (sContext, StateSetter setState) {
          return BlocProvider.value(
            value: context.read<PropertyCardDetailsCubit>(),
            child: Builder(builder: (context) {
              return AlertDialog(
                title: Text('Property card Status'),
                content: FormBuilder(
                  key: key,
                  onChanged: () {
                    val.value = key.currentState?.instantValue ?? {};
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        WrapSelectField(
                            label: 'Convert to',
                            isRequired: true,
                            values: statuses,
                            onSelected: (option) {
                              status = option;
                              setState(() {});
                            },
                            name: 'status'),
                        if (status == 'Pocket Listing') ..._pocketListingFields,
                        if (status == 'Listing Acquired')
                          ..._ListingAcquiredFields(context, propertyCard, val)
                      ],
                    ),
                  ),
                ),
                actions: [
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.of(dContext).pop();
                            }),
                      ),
                      HorizontalSmallGap(),
                      Expanded(
                        child: BlocListener<PropertyCardDetailsCubit,
                            PropertyCardDetailsState>(
                          listener: (context, state) {
                            if (state.updatePropertyCardStatus ==
                                AppStatus.failure) {
                              showSnackbar(
                                  context,
                                  state.updatePropertyCardError ?? '',
                                  SnackBarType.failure);
                            } else if (state.updatePropertyCardStatus ==
                                AppStatus.success) {
                              showSnackbar(
                                  context,
                                  "Successfully updated propertycard",
                                  SnackBarType.success);
                              Navigator.of(dContext).pop();
                            }
                          },
                          listenWhen: (previous, current) =>
                              previous.updatePropertyCardStatus !=
                              current.updatePropertyCardStatus,
                          child: AppPrimaryButton(
                              text: 'Save',
                              onTap: () async {
                                final validated =
                                    key.currentState?.saveAndValidate();
                                if (validated == true) {
                                  final values = key.currentState!.value;
                                  await context
                                      .read<PropertyCardDetailsCubit>()
                                      .updatePropertyCard(values: values);
                                }
                              }),
                        ),
                      )
                    ],
                  ),
                ],
              );
            }),
          );
        });
      });
}
