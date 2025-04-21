import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/view/listings_screen/cubit/listings_cubit.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/multi_dropdown_field.dart';
import 'package:real_estate_app/widgets/fields/multi_select_autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/range_slider_field.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';

/// Builds filter fields for the pocket listings screen
List<Widget> buildFilterFields(
    BuildContext context, Map<String, dynamic>? values) {
  return [
    // Time filter
    WrapSelectField(
      name: 'timeFilter',
      label: 'Created Period',
      values: ['This Week', 'This Month', 'Old'],
      isRequired: false,
    ),

    // Community filter
    MultiSelectAutoCompleteField(
      label: 'Community',
      optionsBuilder: (textEditingValue, refresh) async {
        final stateResult = context.read<ListingsCubit>().state.communityList;
        if (stateResult.isEmpty) {
          await context.read<ListingsCubit>().getCommunities(
                search: textEditingValue.text,
              );
        }

        final list = context.read<ListingsCubit>().state.communityList.where(
              (element) => element.community
                  .toLowerCase()
                  .contains(textEditingValue.text.toLowerCase()),
            );

        return list.map((e) => {
              'value': e.id,
              'label': e.community,
            });
      },
      displayStringForOption: (option) => option['label'] ?? '',
      name: 'communities',
    ),

    // Agent filter
    AppAutoComplete(
      label: 'Agent',
      optionsBuilder: (textEditingValue, refresh) async {
        final stateResult = context.read<ListingsCubit>().state.agentList;
        if (stateResult.isEmpty) {
          await context.read<ListingsCubit>().getAgents(
                search: textEditingValue.text,
              );
        }

        final list = context.read<ListingsCubit>().state.agentList.where(
              (element) => "${element.user.firstName} ${element.user.lastName}"
                  .toLowerCase()
                  .contains(textEditingValue.text.toLowerCase()),
            );

        return list.map((e) => {
              'value': e.id,
              'label': "${e.user.firstName} ${e.user.lastName}",
            });
      },
      displayStringForOption: (option) => option['label'] ?? '',
      isRequired: false,
      name: 'currentAgent',
    ),

    // Building filter
    MultiSelectAutoCompleteField(
      label: 'Building',
      optionsBuilder: (textEditingValue, refresh) async {
        final stateResult = context.read<ListingsCubit>().state.buildingList;
        if (stateResult.isEmpty) {
          await context.read<ListingsCubit>().getBuildings(
                search: textEditingValue.text,
              );
        }

        final list = context.read<ListingsCubit>().state.buildingList.where(
              (element) => element.name
                  .toLowerCase()
                  .contains(textEditingValue.text.toLowerCase()),
            );

        return list.map((e) => {
              'value': e.id,
              'label': e.name,
            });
      },
      displayStringForOption: (option) => option['label'] ?? '',
      name: 'buildings',
    ),

    // Property type filter
    WrapSelectField(
      name: 'property_type_id',
      label: 'Property Type',
      values: context
          .read<ListingsCubit>()
          .state
          .propertyTypeList
          .map((e) => {
                'value': e.id,
                'label': e.propertyType,
              })
          .toList(),
      displayOption: (option) => option['label'] ?? '',
      isRequired: true,
    ),

    // Purpose filter
    WrapSelectField(
      name: 'type',
      label: 'Purpose',
      values: ['Sell', 'Lease'],
      isRequired: true,
    ),

    // Beds filter
    WrapSelectField(
      name: 'beds',
      label: 'Beds',
      values: ['Studio', '1', '2', '3', '4', '5', '6', '7+'],
      isRequired: true,
    ),

    // Baths filter
    WrapSelectField(
      name: 'baths',
      label: 'Baths',
      values: ['1', '2', '3', '4', '5', '6', '7+'],
      isRequired: true,
    ),

    // Price range filter
    RangeSliderField(
      name: 'price',
      label: 'Price Range',
      min: 10000,
      max: 10000000,
    ),
  ];
}
