import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/community_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/model/property_type_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_listing_screen/cubit/add_listing_cubit.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/currency_field.dart';
import 'package:real_estate_app/widgets/fields/document_upload_field.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/fields/number_field.dart';
import 'package:real_estate_app/widgets/fields/text_field.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

class AddListingScreen extends StatelessWidget {
  static const routeName = '/addListingScreen';
  const AddListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddListingCubit>(),
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
  late final GlobalKey<FormBuilderState> _formKeyStepOne = GlobalKey();
  late final GlobalKey<FormBuilderState> _formKeyStepTwo = GlobalKey();
  late final GlobalKey<FormBuilderState> _formKeyStepThree = GlobalKey();
  late final TabController _tabController =
      TabController(length: 4, vsync: this);
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
                                    LabelText(text: '${currentTab + 1} of 4'))
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
                          formKey: _formKeyStepOne,
                          propertyTypeList: propertyTypeList),
                      CollectDocumentsTab(
                        formKey: _formKeyStepTwo,
                      ),
                      Text('hi'),
                      Text('hi'),
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
                          OutlinedButton(
                              onPressed: () {
                                context
                                    .read<AddListingCubit>()
                                    .onPreviousPressed(
                                        tabController: _tabController);
                              },
                              child: Text('Previous')),
                          HorizontalSmallGap(),
                        ],
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                context.read<AddListingCubit>().onNextPressed(
                                    context,
                                    formKey: _formKeyStepOne,
                                    tabController: _tabController);
                              },
                              child: Text('Next')),
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

class BasicInfoTab extends StatelessWidget {
  const BasicInfoTab({
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
            children: [
              AppAutoComplete<Lead>(
                  onSelected: (v) {},
                  name: 'user_id',
                  label: 'Client',
                  isRequired: true,
                  valueTransformer: (p0) => p0?.id,
                  displayStringForOption: (lead) =>
                      '${lead.firstName} ${lead.lastName} (*****${lead.phone.substring(lead.phone.length - 5, lead.phone.length - 1)})',
                  optionsBuilder: (v) async {
                    return context
                        .read<AddListingCubit>()
                        .getLeads(search: v.text);
                  }),
              WrapSelectField(
                  name: 'property_type_id',
                  label: 'Property Type',
                  values: propertyTypeList,
                  displayOption: (option) => option.propertyType,
                  valueTransformer: (p0) => p0?.id,
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
                    return context
                        .read<AddListingCubit>()
                        .getCommunities(search: v.text);
                  }),
              AppTextField(
                name: 'subCommunity',
                label: 'Sub Community',
              ),
              AppAutoComplete<Building>(
                  onSelected: (v) {},
                  name: 'building_id',
                  label: 'Building Name',
                  isRequired: true,
                  valueTransformer: (p0) => p0?.id,
                  displayStringForOption: (p0) => p0.name,
                  optionsBuilder: (v) async {
                    return context
                        .read<AddListingCubit>()
                        .getBuildings(search: v.text);
                  }),
              CurrencyField(
                isRequired: true,
                name: 'price',
                label: 'Listing Price',
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
                  name: 'sss',
                  label: 'Title Deed',
                ),
                DocumentSelectionField(
                  onSelected: (v) {},
                  isEditting: false,
                  name: 'ejari',
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
                  name: 'sss',
                  label: 'Emirates Id',
                ),
                DocumentSelectionField(
                  onSelected: (v) {},
                  isEditting: false,
                  name: 'ejari',
                  label: 'Passport',
                ),
              ],
            ),
          ),
        ));
  }
}
