import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/model/lead_source_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/add_lead_screen/cubit/add_lead_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/autocomplete_field.dart';
import 'package:real_estate_app/widgets/fields/drop_down_field.dart';
import 'package:real_estate_app/widgets/fields/phone_number_field.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:real_estate_app/widgets/space.dart';

import '../../widgets/fields/text_field.dart';

class AddLeadScreen extends StatelessWidget {
  static const routeName = '/addLeadScreen';

  const AddLeadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddLeadCubit>(),
      child: _AddLeadScreenLayout(),
    );
  }
}

class _AddLeadScreenLayout extends StatefulWidget {
  const _AddLeadScreenLayout({super.key});

  @override
  State<_AddLeadScreenLayout> createState() => _TryState();
}

class _TryState extends State<_AddLeadScreenLayout> {
  late final List<GlobalKey<FormBuilderState>> _formKey =
      List.generate(3, (index) => GlobalKey());
  late final List<Key> _stepKey = List.generate(3, (index) => ValueKey(index));
  late final AutoCompleteFieldController _stateFieldController =
      AutoCompleteFieldController();

  late List<Widget> _steps = [
    _step1(),
    _step2(),
    _step3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Lead'),
        centerTitle: true,
      ),
      body: BlocSelector<AddLeadCubit, AddLeadState, int>(
        selector: (state) {
          return state.currentTab;
        },
        builder: (context, currentStep) {
          final previousStep = context.read<AddLeadCubit>().state.previousTab;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      final offsetTween = Tween<Offset>(
                        begin: Offset(
                            0.0,
                            child.key == _stepKey[currentStep]
                                ? previousStep < currentStep
                                    ? 1.0
                                    : -1
                                : previousStep < currentStep
                                    ? -1.0
                                    : 1.0),
                        end: Offset(0.0, 0.0),
                      );
                      final scaleTween = Tween<double>(
                        begin: 0.0,
                        end: 1.0,
                      );
                      final combinedAnimation = CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeInOut,
                      );
                      final offsetAnimation =
                          offsetTween.animate(combinedAnimation);
                      final scaleAnimation =
                          scaleTween.animate(combinedAnimation);
                      return SlideTransition(
                        position: offsetAnimation,
                        child: ScaleTransition(
                          scale: scaleAnimation,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Step ${currentStep + 1} of ${_steps.length}',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Expanded(child: child),
                            ],
                          ),
                        ),
                      );
                    },
                    child: _steps[currentStep],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<AddLeadCubit>().onBackPressed();
                        },
                        child: Text('Back'),
                      ),
                    ),
                    HorizontalSmallGap(),
                    Expanded(
                      child: BlocListener<AddLeadCubit, AddLeadState>(
                        listener: (context, state) {
                          if (state.addLeadStatus == AppStatus.success) {
                            showSnackbar(context, 'Client Added Successfully',
                                SnackBarType.success);
                            context.pop(state.lead);
                          } else if (state.addLeadStatus == AppStatus.failure) {
                            showSnackbar(
                                context,
                                state.addLeadError ?? 'Failed to add client',
                                SnackBarType.failure);
                          }
                        },
                        listenWhen: (previous, current) =>
                            previous.addLeadStatus != current.addLeadStatus,
                        child: AppPrimaryButton(
                          onTap: () async {
                            final validated = _formKey[currentStep]
                                .currentState
                                ?.saveAndValidate();
                            if (validated == true) {
                              final val =
                                  _formKey[currentStep].currentState!.value;

                              await context.read<AddLeadCubit>().onNextPressed(
                                    values: val,
                                  );
                            }
                          },
                          text: currentStep < _steps.length - 1
                              ? 'Next'
                              : 'Submit',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _step1() {
    return BlocSelector<AddLeadCubit, AddLeadState, Map<String, dynamic>?>(
      key: _stepKey[0],
      selector: (state) {
        return state.step1Values;
      },
      builder: (context, step1Values) {
        return FormBuilder(
          initialValue: step1Values ?? {},
          key: _formKey[0],
          onChanged: () {
            final insVal = Map.from(_formKey[0].currentState!.instantValue);
            final Map<String, dynamic> rawVal = insVal.map(
              (key, value) {
                final rawVal = _formKey[0].currentState!.getRawValue(key);
                return MapEntry(key, rawVal);
              },
            );
            context.read<AddLeadCubit>().setFormValues(values: rawVal);
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 500),
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child:
                          Icon(Icons.person_add, size: 48, color: Colors.blue),
                    );
                  },
                ),
                SizedBox(height: 16),
                Text('Select the source of the lead.'),
                SizedBox(height: 16),
                BlocSelector<AddLeadCubit, AddLeadState, List<LeadSource>>(
                  selector: (state) {
                    return state.leadSources;
                  },
                  builder: (context, leadSources) {
                    return DropDownfield(
                        isRequired: true,
                        label: 'Lead Source',
                        items: leadSources,
                        displayOption: (option) => option.name,
                        selectValue: (p0) => p0?.name,
                        name: 'lead_source');
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _step2() {
    return BlocSelector<AddLeadCubit, AddLeadState, Map<String, dynamic>?>(
      key: _stepKey[1],
      selector: (state) {
        return state.step2Values;
      },
      builder: (context, step2Values) {
        return FormBuilder(
          key: _formKey[1],
          initialValue: step2Values ?? {},
          onChanged: () {
            final insVal = Map.from(_formKey[1].currentState!.instantValue);
            final Map<String, dynamic> rawVal = insVal.map(
              (key, value) {
                final rawVal = _formKey[1].currentState!.getRawValue(key);
                return MapEntry(key, rawVal);
              },
            );
            context.read<AddLeadCubit>().setFormValues(values: rawVal);
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 500),
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child: Icon(Icons.person, size: 48, color: Colors.blue),
                    );
                  },
                ),
                SizedBox(height: 16),
                Text('Enter the lead\'s personal information.'),
                SizedBox(height: 16),
                AppTextField(
                  isRequired: true,
                  name: 'first_name',
                  label: 'First Name',
                ),
                SizedBox(height: 16),
                AppTextField(
                  name: 'last_name',
                  label: 'Last Name',
                ),
                SizedBox(height: 16),
                AppTextField(
                  name: 'email',
                  label: 'Email',
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Please enter your email';
                  //   }
                  //   final regex =
                  //       RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                  //   if (!regex.hasMatch(value)) {
                  //     return 'Please enter a valid email address';
                  //   }
                  //   return null;
                  // },
                ),
                SizedBox(height: 16),
                PhoneNumberField(
                  isRequired: true,
                  name: 'phone',
                  label: 'Phone',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _step3() {
    return BlocSelector<AddLeadCubit, AddLeadState, Map<String, dynamic>?>(
      key: _stepKey[2],
      selector: (state) {
        return state.step3Values;
      },
      builder: (context, step3Values) {
        return FormBuilder(
          key: _formKey[2],
          initialValue: step3Values ?? {},
          onChanged: () {
            final insVal = Map.from(_formKey[2].currentState!.instantValue);
            final Map<String, dynamic> rawVal = insVal.map(
              (key, value) {
                final rawVal = _formKey[2].currentState!.getRawValue(key);
                return MapEntry(key, rawVal);
              },
            );
            context.read<AddLeadCubit>().setFormValues(values: rawVal);
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 500),
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child:
                          Icon(Icons.location_on, size: 48, color: Colors.blue),
                    );
                  },
                ),
                SizedBox(height: 16),
                Text('Enter the lead\'s location information.'),
                SizedBox(height: 16),
                AppAutoComplete(
                  name: 'country',
                  label: 'Country',
                  isRequired: false,
                  displayStringForOption: (p0) => p0.name,
                  valueTransformer: (p0) => p0?.name,
                  onSelected: (value) {
                    context.read<AddLeadCubit>().setSelectedCountry(value);
                    _stateFieldController.reset();
                  },
                  optionsBuilder: (v) async {
                    return context.read<AddLeadCubit>().getCountries(v.text);
                  },
                ),
                SizedBox(height: 16),
                AppAutoComplete(
                  name: 'city',
                  label: 'City',
                  isRequired: false,
                  controller: _stateFieldController,
                  displayStringForOption: (p0) => p0.name,
                  valueTransformer: (p0) => p0?.name,
                  optionsBuilder: (v) async {
                    return context.read<AddLeadCubit>().getState(v.text);
                  },
                ),
                SizedBox(height: 16),
                DropDownfield(
                  name: 'nationality',
                  label: 'Nationality',
                  items: ['UAE'],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
