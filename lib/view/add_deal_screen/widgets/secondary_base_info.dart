import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:real_estate_app/model/agent_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/view/add_deal_screen/cubit/add_deal_cubit.dart';
import 'package:real_estate_app/view/add_deal_screen/widgets/secondary_buyer_details.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/commission_field.dart';
import 'package:real_estate_app/widgets/fields/currency_field.dart';
import 'package:real_estate_app/widgets/fields/phone_number_field.dart';
import 'package:real_estate_app/widgets/fields/text_field.dart';

import '../../../model/property_type_model.dart';
import '../../../widgets/fields/drop_down_field.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import 'secondary_external_property_details.dart';

class SecondaryBasicInfoTab extends StatelessWidget {
  const SecondaryBasicInfoTab({
    super.key,
    required GlobalKey<FormBuilderState> formKey,
    required this.propertyTypeList,
  }) : _formKey = formKey;

  final GlobalKey<FormBuilderState> _formKey;
  final List<PropertyType> propertyTypeList;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: ScrollShadow(
        color: Colors.indigo[50]!,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocSelector<AddDealCubit, AddDealState, ClientSource?>(
                selector: (state) {
                  return state.sellerSource;
                },
                builder: (context, sellerSource) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sellerSource == ClientSource.alba
                          ? SellerSourceAlbaFields()
                          : SellerSourceExternalFields(),
                      BlocSelector<AddDealCubit, AddDealState, ClientSource?>(
                        selector: (state) {
                          return state.buyerSource;
                        },
                        builder: (context, buyerSource) {
                          if (buyerSource == null) {
                            return SizedBox();
                          } else if (buyerSource == ClientSource.alba) {
                            return SecondaryAlbaBuyerDetails(
                              formKey: _formKey,
                            );
                          } else {
                            return SecondaryExternalBuyerDetails();
                          }
                        },
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SellerSourceAlbaFields extends StatefulWidget {
  const SellerSourceAlbaFields({super.key});

  @override
  State<SellerSourceAlbaFields> createState() => _SellerSourceAlbaFieldsState();
}

class _SellerSourceAlbaFieldsState extends State<SellerSourceAlbaFields> {
  late final DropDownFieldController _downFieldController =
      DropDownFieldController();
  Property? property;
  double? commissionPercentage;
  double? agreedSalePrice;
  @override
  Widget build(BuildContext context) {
    final types = context.select(
      (AddDealCubit value) => value.state.propertyTypeList,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSmallGap(),
        Divider(
          thickness: 4,
          color: Theme.of(context).colorScheme.secondary,
        ),
        LabelText(
          text: 'Alba Seller Details',
        ),
        Divider(
          thickness: 4,
          color: Theme.of(context).colorScheme.secondary,
        ),
        VerticalSmallGap(
          adjustment: 0.5,
        ),
        BlocSelector<AddDealCubit, AddDealState, List<Agent>>(
            selector: (state) {
          return state.agentList;
        }, builder: (context, agentList) {
          return AppAutoComplete(
            name: 'sellerAssignedAgent',
            label: 'Choose Agent',
            isRequired: true,
            valueTransformer: (p0) => p0?.id,
            optionsBuilder: (v) async {
              return context.read<AddDealCubit>().getAgentsAutoComplete(v.text);
            },
            onSelected: (option) {
              context
                  .read<AddDealCubit>()
                  .getAgentProperties(agentId: option.id);
              property = null;
              _downFieldController.reset();
              setState(() {});
            },
            displayStringForOption: (option) =>
                "${option.user.firstName} ${option.user.lastName}",
          );
        }),
        BlocSelector<AddDealCubit, AddDealState, List<Property>>(
            selector: (state) {
          return state.agentPropertyList;
        }, builder: (context, agentPropertyList) {
          return DropDownfield<Property>(
            controller: _downFieldController,
            name: 'property_id',
            label: 'Choose Property',
            isRequired: true,
            items: agentPropertyList,
            selectValue: (p0) => p0?.id,
            initialValue: null,
            onSelected: (option) {
              property = option;

              context.read<AddDealCubit>().setSelectedProperty(property);
              context
                  .read<AddDealCubit>()
                  .getPropertyOwner(ownerId: option.propertyOwnerId!);
              if (mounted) {
                SchedulerBinding.instance.addPostFrameCallback((s) {
                  setState(() {});
                });
              }
            },
            displayOption: (option) =>
                "${option.referNo} | ${types.firstWhereOrNull((element) => element.id == option.propertyTypeId)?.propertyType ?? ''} | ${option.communityName}",
          );
        }),
        BlocSelector<AddDealCubit, AddDealState, Lead?>(
          selector: (state) {
            return state.propertyOwner;
          },
          builder: (context, propertyOwner) {
            return DropDownfield<Lead>(
              name: 'sellerInternalUserId',
              label: 'Property Owner',
              disabled: true,
              selectValue: (p0) => p0?.id,
              displayOption: (propertyOwner) =>
                  "${propertyOwner.firstName} ${propertyOwner.lastName}",
              initialValue: propertyOwner,
              items: [],
            );
          },
        ),
        CurrencyField(
          name: 'agreedSalePrice',
          label: 'Agreed Sale Price',
          isRequired: true,
          value: (property != null)
              ? context.read<AddDealCubit>().getPrice(property!)?.toDouble()
              : null,
          onChanged: (val) {
            agreedSalePrice = val?.toDouble();
          },
        ),
        CommissionField(
          name: 'sellerAgreedComm',
          isRequired: true,
          commissionPercentage:
              num.tryParse(property?.commission.toString() ?? ''),
          price: agreedSalePrice ??
              (property != null
                  ? context.read<AddDealCubit>().getPrice(property!)
                  : null),
        ),
      ],
    );
  }
}

class SellerSourceExternalFields extends StatelessWidget {
  const SellerSourceExternalFields({super.key});

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
          text: 'External Seller Details',
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
          name: 'sellerExternalAgentName',
          label: 'Agent',
        ),
        PhoneNumberField(
          name: 'sellerExternalAgentPhone',
          label: 'Agent Phone Number',
        ),
        AppTextField(
          name: 'sellerExternalClientName',
          label: 'Client',
        ),
        PhoneNumberField(
          name: 'sellerExternalClientPhone',
          label: 'Client Phone Number',
        ),
        SecondaryExternalPropertyDetails(),
      ],
    );
  }
}
