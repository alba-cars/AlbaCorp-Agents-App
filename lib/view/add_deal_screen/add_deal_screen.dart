import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:real_estate_app/model/off_plan_model.dart';
import 'package:real_estate_app/model/property_type_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_deal_screen/cubit/add_deal_cubit.dart';
import 'package:real_estate_app/view/add_listing_screen/cubit/add_listing_cubit.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/currency_field.dart';
import 'package:real_estate_app/widgets/fields/document_upload_field.dart';
import 'package:real_estate_app/widgets/fields/text_field.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../widgets/fields/number_field.dart';
import 'widgets/primary_base_info.dart';
import 'widgets/secondary_base_info.dart';

class AddDealScreen extends StatelessWidget {
  static const routeName = '/addDealScreen';
  const AddDealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddDealCubit>(),
      child: AddDealScreenLayout(),
    );
  }
}

class AddDealScreenLayout extends StatefulWidget {
  const AddDealScreenLayout({super.key});

  @override
  State<AddDealScreenLayout> createState() => _AddDealScreenLayoutState();
}

class _AddDealScreenLayoutState extends State<AddDealScreenLayout>
    with SingleTickerProviderStateMixin {
  late final GlobalKey<FormBuilderState> _formKeyStepOne = GlobalKey();
  late final GlobalKey<FormBuilderState> _formKeyStepTwo = GlobalKey();
  late final GlobalKey<FormBuilderState> _formKeyStepThree = GlobalKey();
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  late final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    context.read<AddDealCubit>().setScrollController(_scrollController);
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
    final propertyTypeList = context.select<AddDealCubit, List<PropertyType>>(
      (value) => value.state.propertyTypeList,
    );
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, isScrolledBelow) => [
          SliverAppBar(
            title: Text('Add Deal'),
            centerTitle: true,
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: BlocSelector<AddDealCubit, AddDealState, int>(
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
                          BlockTitleText(text: 'Deal Type'),
                          NormalText(text: 'Next : Basic Info')
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
                  child: BlocSelector<AddDealCubit, AddDealState, DealType?>(
                    selector: (state) {
                      return state.selectedDealType;
                    },
                    builder: (context, selectedDealType) {
                      return TabBarView(
                        controller: _tabController,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          DealTypeTab(),
                          selectedDealType == DealType.primaryOffPlan
                              ? PrimaryBasicInfoTab(
                                  formKey: _formKeyStepOne,
                                  propertyTypeList: propertyTypeList)
                              : SecondaryBasicInfoTab(
                                  formKey: _formKeyStepOne,
                                  propertyTypeList: propertyTypeList),
                          CollectDocumentsTab(
                            formKey: _formKeyStepTwo,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: BlocSelector<AddDealCubit, AddDealState, int>(
                  selector: (state) {
                    return state.currentTab;
                  },
                  builder: (context, currentTab) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (currentTab != 0) ...[
                          OutlinedButton(
                              onPressed: () {
                                context.read<AddDealCubit>().onPreviousPressed(
                                    tabController: _tabController);
                              },
                              child: Text('Previous')),
                          HorizontalSmallGap(),
                        ],
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () async {
                                final error = await context
                                    .read<AddDealCubit>()
                                    .onNextPressed(context,
                                        formKey: currentTab == 1
                                            ? _formKeyStepOne
                                            : currentTab == 2
                                                ? _formKeyStepTwo
                                                : _formKeyStepThree,
                                        tabController: _tabController);
                                if (error != null) {
                                  showSnackbar(
                                      context, error, SnackBarType.failure,
                                      bottomSpace: 70);
                                }
                              },
                              child: Text('Next')),
                        ),
                      ],
                    );
                  },
                ),
              ),
              VerticalSmallGap(),
            ],
          ),
        ),
      ),
    );
  }
}

class DealTypeTab extends StatelessWidget {
  const DealTypeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollShadow(
      color: Colors.indigo[50]!,
      child: SingleChildScrollView(
        child: Builder(builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VerticalSmallGap(
                adjustment: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleText(text: 'Create New Deal'),
                ],
              ),
              VerticalSmallGap(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: NormalText(
                      text:
                          "Welcome to the New Deal Creation page! Here, you can quickly set up a new real estate deal tailored to your client's needs. Let's start by selecting the type of deal you're looking to create.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              VerticalSmallGap(
                adjustment: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LabelText(
                    text: 'Select Your Deal Type',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              VerticalSmallGap(),
              NormalText(
                text:
                    "Please choose the deal type that best fits the property you're dealing with. Your selection will help us customize the rest of the form to better suit your specific needs.",
                textAlign: TextAlign.center,
              ),
              VerticalSmallGap(
                adjustment: 2,
              ),
              BlocSelector<AddDealCubit, AddDealState, DealType?>(
                selector: (state) {
                  return state.selectedDealType;
                },
                builder: (context, selectedDealType) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color:
                                    selectedDealType == DealType.primaryOffPlan
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                border: Border.all(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer)),
                            child: InkWell(
                              onTap: () {
                                context
                                    .read<AddDealCubit>()
                                    .setSelectedDealType(
                                        DealType.primaryOffPlan);
                              },
                              child: Column(
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/images/skyline.png'),
                                    size: 80,
                                    color: selectedDealType ==
                                            DealType.primaryOffPlan
                                        ? Colors.white
                                        : Colors.blueGrey,
                                  ),
                                  VerticalSmallGap(
                                    adjustment: .5,
                                  ),
                                  LabelText(
                                    text: 'Primary OffPlan',
                                    color: selectedDealType ==
                                            DealType.primaryOffPlan
                                        ? Colors.white
                                        : Colors.blueGrey,
                                  )
                                ],
                              ),
                            ),
                          )),
                          HorizontalSmallGap(),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color:
                                    selectedDealType == DealType.SecondaryMarket
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                border: Border.all(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer)),
                            child: InkWell(
                              onTap: () {
                                context
                                    .read<AddDealCubit>()
                                    .setSelectedDealType(
                                        DealType.SecondaryMarket);
                              },
                              child: Column(
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/images/building.png'),
                                    size: 80,
                                    color: selectedDealType ==
                                            DealType.SecondaryMarket
                                        ? Colors.white
                                        : Colors.blueGrey,
                                  ),
                                  VerticalSmallGap(
                                    adjustment: .5,
                                  ),
                                  LabelText(
                                    text: 'Secondary Market',
                                    color: selectedDealType ==
                                            DealType.SecondaryMarket
                                        ? Colors.white
                                        : Colors.blueGrey,
                                  )
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                      VerticalSmallGap(),
                      if (selectedDealType == DealType.SecondaryMarket)
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer
                                  .withOpacity(.3),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              LabelText(text: 'Secondary Market'),
                              VerticalSmallGap(),
                              BlocSelector<AddDealCubit, AddDealState,
                                  DealPurpose?>(
                                selector: (state) {
                                  return state.dealPurpose;
                                },
                                builder: (context, dealPurpose) {
                                  return WrapSelectField(
                                      name: 'purpose',
                                      label: 'Choose Purpose',
                                      defaultValue: dealPurpose,
                                      values: [
                                        DealPurpose.rent,
                                        DealPurpose.sale
                                      ],
                                      displayOption: (option) =>
                                          option.name.toUpperCase(),
                                      onSelected: (val) {
                                        context
                                            .read<AddDealCubit>()
                                            .setSelectedDealPurpose(val);
                                      },
                                      isRequired: true);
                                },
                              ),
                              BlocSelector<AddDealCubit, AddDealState,
                                  ClientSource?>(
                                selector: (state) {
                                  return state.sellerSource;
                                },
                                builder: (context, sellerSource) {
                                  return WrapSelectField(
                                      name: 'seller_type',
                                      label: 'Choose Seller Source',
                                      defaultValue: sellerSource,
                                      values: [
                                        ClientSource.alba,
                                        ClientSource.external
                                      ],
                                      displayOption: (option) =>
                                          option.name.toUpperCase(),
                                      onSelected: (val) {
                                        context
                                            .read<AddDealCubit>()
                                            .setSelectedSellerSource(val);
                                      },
                                      isRequired: true);
                                },
                              ),
                              BlocBuilder<AddDealCubit, AddDealState>(
                                buildWhen: (ps, cs) {
                                  return ps.buyerSource != cs.buyerSource ||
                                      ps.sellerSource != cs.sellerSource;
                                },
                                builder: (context, state) {
                                  return WrapSelectField(
                                      name: 'buyer_type',
                                      label: 'Choose Buyer Source',
                                      disabled: state.sellerSource ==
                                          ClientSource.external,
                                      description:
                                          'Choose only if you are selling/Renting a property',
                                      defaultValue: state.buyerSource,
                                      values: [
                                        ClientSource.alba,
                                        ClientSource.external
                                      ],
                                      displayOption: (option) =>
                                          option.name.toUpperCase(),
                                      onSelected: (val) {
                                        context
                                            .read<AddDealCubit>()
                                            .setSelectedBuyerSource(val);
                                      },
                                      isRequired: false);
                                },
                              ),
                            ],
                          ),
                        ),
                    ],
                  );
                },
              )
            ],
          );
        }),
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
                  name: 'Emirates Id',
                  label: 'Emirates Id',
                ),
                DocumentSelectionField(
                  onSelected: (v) {},
                  isEditting: false,
                  name: 'Passport',
                  label: 'Passport',
                ),
              ],
            ),
          ),
        ));
  }
}
