import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/view/call_feedback_screen/cubit/call_feedback_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/wrap_select_field.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:real_estate_app/widgets/space.dart';

import '../../../model/lead_source_model.dart';
import '../../../util/status.dart';
import '../../../widgets/fields/autocomplete_field.dart';
import '../../../widgets/fields/phone_number_field.dart';
import '../../../widgets/fields/text_field.dart';

class AddLeadWidget extends StatefulWidget {
  const AddLeadWidget();

  @override
  State<AddLeadWidget> createState() => _TryState();
}

class _TryState extends State<AddLeadWidget> {
  late final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    context.read<CallFeedbackCubit>().getLeadSources();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _step1(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: BlocListener<CallFeedbackCubit, CallFeedbackState>(
                    listener: (context, state) {
                      if (state.addLeadStatus == AppStatus.success) {
                        showSnackbar(context, 'Client Added Successfully',
                            SnackBarType.success);
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
                        final validated =
                            _formKey.currentState?.saveAndValidate();
                        if (validated == true) {
                          final val = _formKey.currentState!.value;

                          await context.read<CallFeedbackCubit>().addLead(val);
                        }
                      },
                      text: 'Next',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ValueNotifier<String?> leadSourceListenable = ValueNotifier(null);
  Widget _step1() {
    return BlocSelector<CallFeedbackCubit, CallFeedbackState,
        Map<String, dynamic>?>(
      selector: (state) {
        return state.val;
      },
      builder: (context, step1Values) {
        return FormBuilder(
          initialValue: step1Values ?? {},
          key: _formKey,
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
                Text('Select the source of the lead. *'),
                SizedBox(height: 16),
                ValueListenableBuilder(
                    valueListenable: leadSourceListenable,
                    builder: (context, val, _) {
                      return Column(children: [
                        Wrap(
                          runSpacing: 8,
                          spacing: 8,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          children: [
                            "Bayut",
                            "Dubizzle",
                            "Property Finder",
                            "Referer",
                            "Alba Website"
                          ]
                              .map((e) => InkWell(
                                    onTap: () {
                                      leadSourceListenable.value = e;
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 3),
                                      decoration: BoxDecoration(
                                        color: val == e
                                            ? Theme.of(context)
                                                .colorScheme
                                                .secondary
                                            : null,
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.wallet,
                                            color: val != e
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .secondary
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            e,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                  color: val != e
                                                      ? Theme.of(context)
                                                          .colorScheme
                                                          .secondary
                                                      : Theme.of(context)
                                                          .colorScheme
                                                          .onSecondary,
                                                ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        BlocSelector<CallFeedbackCubit, CallFeedbackState,
                            List<LeadSource>>(
                          selector: (state) {
                            return state.leadSources;
                          },
                          builder: (context, leadSources) {
                            return AppAutoComplete(
                                isRequired: true,
                                value: val,
                                onSelected: (value) {
                                  leadSourceListenable.value = value;
                                },
                                optionsBuilder: (v) => leadSources
                                    .where((e) => e.name
                                        .toLowerCase()
                                        .contains(v.text.toLowerCase()))
                                    .map((e) => e.name),
                                name: 'lead_source');
                          },
                        )
                      ]);
                    }),
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
                ),
                SizedBox(height: 16),
                PhoneNumberField(
                  isRequired: true,
                  name: 'phone',
                  label: 'Phone',
                  value: context.read<CallFeedbackCubit>().state.number,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
