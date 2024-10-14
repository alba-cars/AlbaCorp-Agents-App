import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/constants/beds_baths_optional_list.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_pocket_listing_screen/cubit/add_pocket_listing_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/attachment_field.dart';
import 'package:real_estate_app/widgets/fields/multi_image_field.dart';

import '../../model/building_model.dart';
import '../../model/community_model.dart';
import '../../model/lead_model.dart';
import '../../model/property_type_model.dart';
import '../../widgets/fields/autocomplete_field.dart';
import '../../widgets/fields/currency_field.dart';
import '../../widgets/fields/number_field.dart';
import '../../widgets/fields/text_field.dart';
import '../../widgets/fields/wrap_select_field.dart';
import '../../widgets/space.dart';
import '../../widgets/text.dart';
import '../add_lead_screen/add_lead_screen.dart';

class AddPocketListingScreen extends StatelessWidget {
  static const routeName = '/addPocketListingScreen';
  const AddPocketListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddPocketListingCubit>(),
      child: _AddPocketListingScreenLayout(),
    );
  }
}

class _AddPocketListingScreenLayout extends StatefulWidget {
  const _AddPocketListingScreenLayout();

  @override
  State<_AddPocketListingScreenLayout> createState() =>
      _AddListingScreenLayoutState();
}

class _AddListingScreenLayoutState extends State<_AddPocketListingScreenLayout>
    with SingleTickerProviderStateMixin {
  late final List<GlobalKey<FormBuilderState>> _formKey =
      List.generate(2, (i) => GlobalKey());

  late final TabController _tabController =
      TabController(length: 2, vsync: this);
  late final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    context
        .read<AddPocketListingCubit>()
        .setScrollController(_scrollController);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  final steps = ['Basic Info', 'Images and Documents'];

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final propertyTypeList =
        context.select<AddPocketListingCubit, List<PropertyType>>(
      (value) => value.state.propertyTypeList,
    );
    final currentTab = context.select<AddPocketListingCubit, int>(
      (value) => value.state.currentTab,
    );
    return Scaffold(
      body: GestureDetector(
        
        onTap: () => FocusScope.of(context).unfocus(),
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, isScrolledBelow) => [
            SliverAppBar(
              title: Text('Add Pocket Listing'),
              centerTitle: true,
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: BlocSelector<AddPocketListingCubit, AddPocketListingState,
                    int>(
                  selector: (state) {
                    return state.currentTab;
                  },
                  builder: (context, currentTab) {
                    return Row(
                      children: [
                        SizedBox.square(
                          dimension: 60,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              CircularProgressIndicator(
                                strokeWidth: 8,
                                value: (currentTab + 1) / 2,
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                color: primaryColor,
                                strokeCap: StrokeCap.round,
                                // valueColor: AlwaysStoppedAnimation(Colors.blue),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child:
                                      LabelText(text: '${currentTab + 1} of 2'))
                            ],
                          ),
                        ),
                        HorizontalSmallGap(),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            BlockTitleText(text: steps[currentTab]),
                            NormalText(
                                text:
                                    '${currentTab < 1 ? "Next" : 'Previous'} : ${currentTab < 1 ? steps[currentTab + 1] : steps[currentTab - 1]}')
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
                    child: TabBarView(
                      controller: _tabController,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        BasicInfoTab(
                            formKey: _formKey[0],
                            propertyTypeList: propertyTypeList),
                        CollectDocumentsTab(
                          formKey: _formKey[1],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: BlocSelector<AddPocketListingCubit,
                      AddPocketListingState, int>(
                    selector: (state) {
                      return state.currentTab;
                    },
                    builder: (context, currentTab) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (currentTab != 0) ...[
                            Expanded(
                              child: OutlinedButton(
                                  onPressed: () {
                                    context
                                        .read<AddPocketListingCubit>()
                                        .onPreviousPressed(
                                            tabController: _tabController);
                                  },
                                  child: Text('Previous')),
                            ),
                            HorizontalSmallGap(),
                          ],
                          Expanded(
                            child: AppPrimaryButton(
                                onTap: () async {
                                  await context
                                      .read<AddPocketListingCubit>()
                                      .onNextPressed(context,
                                          formKey: _formKey[currentTab],
                                          tabController: _tabController);
                                },
                                text: currentTab != 1 ? 'Next' : 'Save'),
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
    );
  }
}

class BasicInfoTab extends StatefulWidget {
  const BasicInfoTab({
    super.key,
    required GlobalKey<FormBuilderState> formKey,
    required this.propertyTypeList,
  }) : _formKey = formKey;

  final GlobalKey<FormBuilderState> _formKey;
  final List<PropertyType> propertyTypeList;

  @override
  State<BasicInfoTab> createState() => _BasicInfoTabState();
}

class _BasicInfoTabState extends State<BasicInfoTab> {
  final AutoCompleteFieldController _buildingController =
      AutoCompleteFieldController();

  Map<String, dynamic> val = {};

  @override
  void initState() {
    val = widget._formKey.currentState?.instantValue ?? {};
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: widget._formKey,
      onChanged: () {
        val = widget._formKey.currentState?.instantValue ?? {};
        setState(() {});
      },
      initialValue: context.read<AddPocketListingCubit>().state.rawValues,
      child: ScrollShadow(
        color: Colors.indigo[50]!,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppAutoComplete<Lead>(
                  onSelected: (v) {},
                  name: 'lead',
                  label: 'Client',
                  isRequired: true,
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
                          SchedulerBinding.instance
                              .addPostFrameCallback((timeStamp) {
                            final fieldValues =
                                widget._formKey.currentState?.instantValue ??
                                    {};
                            widget._formKey.currentState
                                ?.patchValue({...fieldValues, 'user_id': lead});
                          });
                        }
                      },
                      child: Text('Add'),
                    );
                  },
                  valueTransformer: (p0) => p0?.id,
                  displayStringForOption: (lead) =>
                      '${lead.firstName} ${lead.lastName} (*****${lead.phone != null ? lead.phone!.substring(lead.phone!.length - 5, lead.phone!.length - 1) : ""})',
                  optionsBuilder: (v, refresh) async {
                    return context
                        .read<AddPocketListingCubit>()
                        .getLeads(search: v.text);
                  }),
              WrapSelectField(
                  name: 'propertyType',
                  label: 'Property Type',
                  values: widget.propertyTypeList,
                  displayOption: (option) => option.propertyType,
                  valueTransformer: (p0) => p0?.propertyType,
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
                    final list = await context
                        .read<AddPocketListingCubit>()
                        .getCommunities(search: v.text);
                    return list.where((element) => element.community
                        .toLowerCase()
                        .contains(v.text.toLowerCase()));
                  }),
              if (widget.propertyTypeList
                      .firstWhereOrNull(
                          (element) => element.id == val['property_type_id'])
                      ?.propertyType
                      .contains(RegExp('Apartment|Flat')) ??
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
                      final list = await context
                          .read<AddPocketListingCubit>()
                          .getBuildings(
                              search: v.text,
                              communityId: (widget._formKey.currentState
                                  ?.instantValue['community']));
                      return list.where((element) => element.name
                          .toLowerCase()
                          .contains(v.text.toLowerCase()));
                    }),
              CurrencyField(
                isRequired: true,
                name: 'askingPrice',
                label: 'Asking Price',
              ),
              CurrencyField(
                isRequired: false,
                name: 'agencyValuationPrice',
                label: 'Agency Valuation',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectDocumentsTab extends StatelessWidget {
  const CollectDocumentsTab(
      {super.key, required GlobalKey<FormBuilderState> formKey})
      : _formKey = formKey;
  final GlobalKey<FormBuilderState> _formKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        key: _formKey,
        initialValue: context.read<AddPocketListingCubit>().state.rawValues,
        child: ScrollShadow(
          size: 12,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              VerticalSmallGap(
                adjustment: 0.5,
              ),
              MultipleImageuploadField(
                name: 'photos',
                label: 'Photos',
                // isRequired: true,
              ),
              VerticalSmallGap(),
              AttachmentField(
                name: 'documents',
                label: 'Documents',
                isRequired: false,
              )
            ]),
          ),
        ));
  }
}
