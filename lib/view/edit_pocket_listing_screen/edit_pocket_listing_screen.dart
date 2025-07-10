import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/constants/beds_baths_optional_list.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/edit_pocket_listing_screen/cubit/edit_pocket_listing_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/attachment_field.dart';
import 'package:real_estate_app/widgets/fields/multi_image_field.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../model/building_model.dart';
import '../../model/community_model.dart';
import '../../model/lead_model.dart';
import '../../model/property_type_model.dart';
import '../../util/status.dart';
import '../../widgets/fields/autocomplete_field.dart';
import '../../widgets/fields/currency_field.dart';
import '../../widgets/fields/number_field.dart';
import '../../widgets/fields/text_field.dart';
import '../../widgets/fields/wrap_select_field.dart';
import '../../widgets/space.dart';
import '../../widgets/text.dart';

class EditPocketListingScreen extends StatelessWidget {
  static const routeName = '/editPocketListingScreen';
  const EditPocketListingScreen({super.key, required this.pocketlisting});

  final PropertyCardDetailsModel pocketlisting;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EditPocketListingCubit>(param1: pocketlisting),
      child: _EditPocketListingScreenLayout(
        pocketlisting: pocketlisting,
      ),
    );
  }
}

class _EditPocketListingScreenLayout extends StatefulWidget {
  const _EditPocketListingScreenLayout({required this.pocketlisting});
  final PropertyCardDetailsModel pocketlisting;

  @override
  State<_EditPocketListingScreenLayout> createState() =>
      _AddListingScreenLayoutState();
}

class _AddListingScreenLayoutState
    extends State<_EditPocketListingScreenLayout> {
  late final List<GlobalKey<FormBuilderState>> _formKey =
      List.generate(2, (i) => GlobalKey());
  late final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<EditPocketListingCubit>()
          .setScrollController(_scrollController);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final steps = ['Basic Info', 'Images and Documents'];

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return BlocListener<EditPocketListingCubit, EditPocketListingState>(
      listenWhen: (previous, current) =>
          previous.updatePocketListingStatus !=
          current.updatePocketListingStatus,
      listener: (context, state) {
        if (state.updatePocketListingStatus == AppStatus.success) {
          showSnackbar(context, 'Pocket listing updated', SnackBarType.success);
          context.pop(true);
        }
        if (state.updatePocketListingStatus == AppStatus.failure) {
          showSnackbar(
              context,
              state.updatePocketListingError ?? 'Unable to update listing',
              SnackBarType.failure);
        }
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (context, isScrolledBelow) => [
              SliverAppBar(
                title: Text('Edit Pocket Listing'),
                centerTitle: true,
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: BlocSelector<EditPocketListingCubit,
                      EditPocketListingState, int>(
                    selector: (state) {
                      return state.currentTab;
                    },
                    builder: (context, currentTab) {
                      return Row(
                        children: [
                          HorizontalSmallGap(),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              BlockTitleText(text: steps[currentTab]),
                              NormalText(text: 'Basic Info')
                            ],
                          ))
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: BasicInfoTab(
                        formKey: _formKey[0],
                        pocketlisting: widget.pocketlisting,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: BlocSelector<EditPocketListingCubit,
                        EditPocketListingState, int>(
                      selector: (state) {
                        return state.currentTab;
                      },
                      builder: (context, currentTab) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: AppPrimaryButton(
                                  onTap: () async {
                                    final validated = _formKey[currentTab]
                                        .currentState
                                        ?.saveAndValidate();
                                    if (validated != true) {
                                      return;
                                    }
                                    final val = _formKey[currentTab]
                                        .currentState
                                        ?.value;
                                    if (val == null) {
                                      return;
                                    }
                                    await context
                                        .read<EditPocketListingCubit>()
                                        .updatePocketListing(values: {
                                      ...val,
                                      'baths': val['baths']?.toString(),
                                      'size': val['size']?.toString()
                                    });
                                  },
                                  text: 'Update'),
                            ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BasicInfoTab extends StatefulWidget {
  const BasicInfoTab({
    super.key,
    required GlobalKey<FormBuilderState> formKey,
    required this.pocketlisting,
  }) : _formKey = formKey;

  final GlobalKey<FormBuilderState> _formKey;
  final PropertyCardDetailsModel pocketlisting;

  @override
  State<BasicInfoTab> createState() => _BasicInfoTabState();
}

class _BasicInfoTabState extends State<BasicInfoTab> {
  final AutoCompleteFieldController _buildingController =
      AutoCompleteFieldController();

  Map<String, dynamic> val = {};

  @override
  void initState() {
    val = widget.pocketlisting.toJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final propertyTypes = context.select(
      (EditPocketListingCubit value) => value.state.propertyTypeList,
    );
    return FormBuilder(
      key: widget._formKey,
      onChanged: () {
        val = widget._formKey.currentState?.instantValue ?? {};
        if (mounted) setState(() {});
      },
      initialValue: widget.pocketlisting.toJson(),
      child: ScrollShadow(
        color: Colors.indigo[50]!,
        child: SingleChildScrollView(
          child: Column(
            children: [
              WrapSelectField(
                  name: 'propertyType',
                  label: 'Property Type',
                  values: propertyTypes.map((v) => v.propertyType).toList(),
                  isRequired: true),
              WrapSelectField(
                  name: 'purpose',
                  label: 'Purpose',
                  values: ['Sell', 'Lease'],
                  isRequired: true),
              WrapSelectField(
                  name: 'beds',
                  label: 'Beds',
                  values: ['Studio', "1", "2", "3", "4", "5", "6", "7+"],
                  isRequired: propertyTypesExcludeBedsBaths
                          .contains(val['propertyType'])
                      ? false
                      : true),
              WrapSelectField(
                  name: 'baths',
                  label: 'Baths',
                  values: [1, 2, 3, 4, 5, 6, 7],
                  isRequired: propertyTypesExcludeBedsBaths
                          .contains(val['propertyType'])
                      ? false
                      : true),
              NumberField(
                isRequired: true,
                name: 'size',
                label: 'Area',
                unit: 'Sqft',
              ),
              AppTextField(
                name: 'unitId',
                label: 'Unit Number',
              ),
              AppAutoComplete<Community>(
                  onSelected: (v) {
                    _buildingController.reset();
                  },
                  name: 'community',
                  label: 'Community',
                  isRequired: true,
                  valueTransformer: (p0) => p0?.id,
                  displayStringForOption: (p0) => p0.community,
                  optionsBuilder: (v, refresh) async {
                    final result = await context
                        .read<EditPocketListingCubit>()
                        .getCommunities(search: v.text);
                    return result;
                  }),
              if (val['propertyType']?.contains(RegExp('Apartment|Flat')) ??
                  false)
                AppAutoComplete<Building>(
                    onSelected: (v) {},
                    name: 'building',
                    label: 'Building',
                    isRequired: true,
                    valueTransformer: (p0) => p0?.id,
                    displayStringForOption: (p0) => p0.name,
                    controller: _buildingController,
                    optionsBuilder: (v, refresh) async {
                      final result = await context
                          .read<EditPocketListingCubit>()
                          .getBuildings(
                              search: v.text, communityId: val['community']);
                      return result;
                    }),

              CurrencyField(
                isRequired: true,
                name: 'askingPrice',
                label: 'Asking Price',
              ),
              // CurrencyField(
              //   isRequired: false,
              //   name: 'agencyValuationPrice',
              //   label: 'Agency Valuation',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
