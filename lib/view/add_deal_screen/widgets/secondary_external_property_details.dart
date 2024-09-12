import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/widgets/fields/commission_field.dart';

import '../../../model/building_model.dart';
import '../../../model/community_model.dart';
import '../../../widgets/fields/autocomplete_field.dart';
import '../../../widgets/fields/currency_field.dart';
import '../../../widgets/fields/number_field.dart';
import '../../../widgets/fields/text_field.dart';
import '../../../widgets/fields/wrap_select_field.dart';
import '../../../widgets/space.dart';
import '../../../widgets/text.dart';
import '../cubit/add_deal_cubit.dart';

class SecondaryExternalPropertyDetails extends StatefulWidget {
  final Map<String, dynamic> values;
  const SecondaryExternalPropertyDetails({super.key, required this.values});

  @override
  State<SecondaryExternalPropertyDetails> createState() =>
      _SecondaryExternalPropertyDetailsState();
}

class _SecondaryExternalPropertyDetailsState
    extends State<SecondaryExternalPropertyDetails> {
  num? agreedPrice;
  String? propertytype;
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
            values: ["Villa", "Townhouse", "Apartment", "Plot", "Commercial"],
            onSelected: (val) {
              propertytype = val;
              setState(() {});
            },
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
        AppAutoComplete<Community>(
            onSelected: (v) {},
            name: 'community_id',
            label: 'Community',
            isRequired: true,
            valueTransformer: (p0) => p0?.id,
            displayStringForOption: (p0) => p0.community,
            optionsBuilder: (v) async {
              final list = await context
                  .read<AddDealCubit>()
                  .getCommunities(search: v.text);
              return list.where((element) => element.community
                  .toLowerCase()
                  .contains(v.text.toLowerCase()));
            }),
        AppTextField(
          name: 'subCommunity',
          label: 'Sub Community',
        ),
        if (propertytype?.contains(RegExp('Apartment|Flat')) ?? false)
          AppAutoComplete<Building>(
              onSelected: (v) {},
              name: 'building_id',
              label: 'Building Name',
              isRequired: true,
              valueTransformer: (p0) => p0?.id,
              displayStringForOption: (p0) => p0.name,
              optionsBuilder: (v) async {
                final list = await context.read<AddDealCubit>().getBuildings(
                    search: v.text,
                    communities: widget.values["community_id"] != null
                        ? [widget.values["community_id"]]
                        : null);
                return list;
              }),
        CurrencyField(
          isRequired: true,
          name: 'agreedSalesPrice',
          label: 'Listing Price',
          onChanged: (p0) {
            agreedPrice = p0;
            setState(() {});
          },
        ),
        CommissionField(
          name: 'agreedCommission',
          price: agreedPrice,
        )
      ],
    );
  }
}
