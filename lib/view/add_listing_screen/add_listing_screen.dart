import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/constants/beds_baths_optional_list.dart';
import 'package:real_estate_app/model/amenity_model.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/community_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_type_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_lead_screen/add_lead_screen.dart';
import 'package:real_estate_app/view/add_listing_screen/cubit/add_listing_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/currency_field.dart';
import 'package:real_estate_app/widgets/fields/document_upload_field.dart';
import 'package:real_estate_app/widgets/fields/document_upload_field_multi.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/fields/multi_dropdown_field.dart';
import 'package:real_estate_app/widgets/fields/multi_image_field.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/fields/number_field.dart';
import 'package:real_estate_app/widgets/fields/text_field.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../widgets/fields/commission_field.dart';
import '../../widgets/fields/multi_select_autocomplete_field.dart';

class AddListingScreen extends StatelessWidget {
  static const routeName = '/addListingScreen';
  const AddListingScreen({super.key, required this.isEdit, this.deal});
  final bool isEdit;
  final Deal? deal;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddListingCubit>(param1: isEdit, param2: deal),
      child: AddListingScreenLayout(),
    );
  }
}

class AddListingScreenLayout extends StatefulWidget {
  const AddListingScreenLayout({super.key});

  @override
  State<AddListingScreenLayout> createState() => _AddListingScreenLayoutState();
}

class _AddListingScreenLayoutState extends State<AddListingScreenLayout>
    with SingleTickerProviderStateMixin {
  late final List<GlobalKey<FormBuilderState>> _formKey =
      List.generate(2, (index) => GlobalKey());

  late final TabController _tabController =
      TabController(length: 2, vsync: this);
  late final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    context.read<AddListingCubit>().setScrollController(_scrollController);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final propertyTypeList =
        context.select<AddListingCubit, List<PropertyType>>(
      (value) => value.state.propertyTypeList,
    );
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, isScrolledBelow) => [
          SliverAppBar(
            title: Text('Add Listing'),
            centerTitle: true,
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: BlocSelector<AddListingCubit, AddListingState, int>(
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
                              value: (currentTab + 1) / 4,
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
                          BlockTitleText(text: 'Basic Info'),
                          NormalText(text: 'Next : Collect Documents')
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
                child: BlocSelector<AddListingCubit, AddListingState, int>(
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
                                      .read<AddListingCubit>()
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
                                    .read<AddListingCubit>()
                                    .onNextPressed(context,
                                        formKey: _formKey[currentTab],
                                        tabController: _tabController);
                              },
                              text: ('Next')),
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
  Map<String, dynamic> val = {};
  String? propertyType;

  AutoCompleteFieldController _controller = AutoCompleteFieldController();

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      val = widget._formKey.currentState?.instantValue ?? {};
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: widget._formKey,
      initialValue: context.read<AddListingCubit>().state.initialValues ?? {},
      onChanged: () {
        val = widget._formKey.currentState?.instantValue ?? {};
        setState(() {});
      },
      child: ScrollShadow(
        color: Colors.indigo[50]!,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppAutoComplete<Lead>(
                  onSelected: (v) {},
                  name: 'user_id',
                  label: 'Client',
                  isRequired: true,
                  disabled: context.read<AddListingCubit>().isEdit,
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
                        Logger().d(lead);
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
                  optionsBuilder: (v) async {
                    return context
                        .read<AddListingCubit>()
                        .getLeads(search: v.text);
                  }),
              WrapSelectField(
                  name: 'property_type_id',
                  label: 'Property Type',
                  values: widget.propertyTypeList,
                  displayOption: (option) => option.propertyType,
                  valueTransformer: (p0) => p0?.id,
                  onSelected: (val) {
                    propertyType = val?.propertyType;
                    setState(() {});
                  },
                  isRequired: true),
              WrapSelectField(
                  name: 'type',
                  label: 'Listing Type',
                  values: ['Buy', 'Rent', 'Holiday Homes'],
                  isRequired: true),
              WrapSelectField(
                  name: 'beds',
                  label: 'Beds',
                  values: ['Studio', '1', '2', '3', '4', '5', '6', '7+'],
                  isRequired:
                      propertyTypesExcludeBedsBaths.contains(propertyType)
                          ? false
                          : true),
              WrapSelectField(
                  name: 'baths',
                  label: 'Baths',
                  values: ['1', '2', '3', '4', '5', '6', '7+'],
                  isRequired:
                      propertyTypesExcludeBedsBaths.contains(propertyType)
                          ? false
                          : true),
              WrapSelectField(
                  name: 'contractValidity',
                  label: 'Duration of Contract',
                  values: ['1 Month', '3 Months', '6 Months'],
                  isRequired: true),
              WrapSelectField(
                  name: 'furnishing',
                  label: 'Furnishing',
                  values: ['Furnished', 'Semi furnished', 'Unfurnished'],
                  isRequired:
                      propertyTypesExcludeBedsBaths.contains(propertyType)
                          ? false
                          : true),
              NumberField(
                isRequired: true,
                name: 'size',
                label: 'Area',
                unit: 'Sqft',
                convertToString: true,
              ),
              AppAutoComplete<Community>(
                  onSelected: (v) {
                    _controller.reset();
                  },
                  name: 'community_id',
                  label: 'Community',
                  isRequired: true,
                  valueTransformer: (p0) => p0?.id,
                  displayStringForOption: (p0) => p0.community,
                  optionsBuilder: (v) async {
                    final list = await context
                        .read<AddListingCubit>()
                        .getCommunities(search: v.text);
                    return list.where((element) => element.community
                        .toLowerCase()
                        .contains(v.text.toLowerCase()));
                  }),
              AppTextField(
                name: 'subCommunity',
                label: 'Sub Community',
              ),
              if (widget.propertyTypeList
                      .firstWhereOrNull(
                          (element) => element.id == val['property_type_id'])
                      ?.propertyType
                      .contains(RegExp('Apartment|Flat')) ??
                  false)
                AppAutoComplete<Building>(
                    controller: _controller,
                    name: 'building_id',
                    label: 'Building Name',
                    isRequired: true,
                    valueTransformer: (p0) => p0?.id,
                    displayStringForOption: (p0) => p0.name,
                    optionsBuilder: (v) async {
                      final list =
                          await context.read<AddListingCubit>().getBuildings(
                                search: v.text,
                              );
                      return list.where((element) =>
                          (element.name
                              .toLowerCase()
                              .contains(v.text.toLowerCase())) &&
                          (element.communityId == val['community_id']));
                    }),
              BlocSelector<AddListingCubit, AddListingState, List<Amenity>>(
                selector: (state) {
                  return state.amenityList;
                },
                builder: (context, amenityList) {
                  return MultiSelectAutoCompleteField(
                    label: 'Amenities',
                    name: "amenities",
                    displayStringForOption: (option) => option['label']?.toString() ?? '',
                    optionsBuilder: (v) async {
                      var list = amenityList
                          .map((e) => {'label': e.amenity, 'value': e.id})
                          .toList();
                      if (v.text.trim().isNotEmpty) {
                        list = list
                            .where((e) => e["label"]
                            .toString()
                            .toLowerCase()
                            .contains(v.text.toString()))
                            .toList();
                      }

                      return list;
                    },
                    // valueTransformer: (p0) {
                    //   TODO: Check this
                    //   return p0?.map((k,v) => v["value"]).toList();
                    // },
                  );
                },
              ),
              DropDownfield(
                label: 'Vacancy',
                items: ['Vacant', 'Tenanted'],
                name: 'vacancy',
                isRequired: true,
              ),
              FormBuilderSwitch(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero),
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
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero),
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
              if (val['type'] == 'Rent')
                NumberField(
                  label: 'Number of Cheques',
                  name: "numberOfCheques",
                  unit: '',
                ),
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
              if (val['isOffPlanResale'] == true)
                CurrencyField(
                  isRequired: val['isOffPlanResale'] == true,
                  name: 'amountAlreadyPaid',
                  label: 'Amount Already Paid',
                ),
              CurrencyField(
                isRequired: true,
                name: 'price',
                label: 'Listing Price',
                onChanged: (p0) {
                  EasyDebounce.debounce('price-debounce', Durations.medium1,
                      () {
                    setState(() {});
                  });
                },
              ),
              CommissionField(
                name: 'agreedCommission',
                isRequired: true,
                price: val['price'],
                commissionPercentage: val['agreedCommission'],
              ),
              VerticalSmallGap(
                adjustment: 0.3,
              ),
              MultiLineField(
                name: 'relatedInfo',
                label: 'Related Info',
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
        child: ScrollShadow(
          size: 12,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 4,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                LabelText(
                  text: 'Deal Documents',
                ),
                Divider(
                  thickness: 4,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                VerticalSmallGap(
                  adjustment: 0.5,
                ),
                DocumentSelectionField(
                  onSelected: (v) {},
                  isEditting: false,
                  name: 'Title Deed',
                  label: 'Title Deed',
                ),
                DocumentSelectionField(
                  onSelected: (v) {},
                  isEditting: false,
                  name: 'Ejari',
                  label: 'Ejari',
                ),
                VerticalSmallGap(),
                Divider(
                  thickness: 4,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                LabelText(
                  text: 'Client Documents',
                ),
                Divider(
                  thickness: 4,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                VerticalSmallGap(
                  adjustment: 0.5,
                ),
                DocumentSelectionField(
                  onSelected: (v) {},
                  isEditting: false,
                  name: 'EID',
                  label: 'Emirates Id',
                ),
                DocumentSelectionField(
                  onSelected: (v) {},
                  isEditting: false,
                  name: 'Passport',
                  label: 'Passport',
                ),
                MultiDocumentUploadField(
                  name: 'Other',
                  label: 'Other Documents',
                ),
              ],
            ),
          ),
        ));
  }
}
