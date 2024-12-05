import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/constants/activity_types.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/add_followup_screen/cubit/add_followup_cubit.dart';
import 'package:real_estate_app/view/task_detail_screen/widgets/feedback_dialog.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/card_picker_field.dart';
import 'package:real_estate_app/widgets/fields/date_field.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/fields/time_field.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../app/auth_bloc/auth_bloc.dart';
import '../../model/property_model.dart';
import '../../service_locator/injectable.dart';
import '../../widgets/fields/wrap_select_field.dart';
import '../../widgets/space.dart';
import '../enquiries_screen/enquiries_screen.dart';
import 'widgets/lead_item.dart';

class AddFollowUpScreen extends StatelessWidget {
  static const routeName = '/AddFollowUpScreen';
  const AddFollowUpScreen({super.key, required this.leadId});
  final String leadId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddFollowupCubit>(param1: leadId),
      child: _AddFollowUpLayout(),
    );
  }
}

class _AddFollowUpLayout extends StatefulWidget {
  const _AddFollowUpLayout({super.key});

  @override
  State<_AddFollowUpLayout> createState() => _AddFollowUpLayoutState();
}

class _AddFollowUpLayoutState extends State<_AddFollowUpLayout> {
  ValueNotifier<Map<String, dynamic>> valListenable = ValueNotifier({});
  late final GlobalKey<FormBuilderState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddFollowupCubit, AddFollowupState>(
      buildWhen: (previous, current) =>
          previous.getLeadStatus != current.getLeadStatus,
      builder: (context, state) {
        if (state.getLeadStatus == AppStatus.loading) {
          return Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
        if (state.lead == null && state.getLeadStatus == AppStatus.success) {
          return Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Text("This is lead is unassigned from you."),
                  ),
                  VerticalSmallGap(),
                  AppPrimaryButton(
                      text: 'Go Back',
                      onTap: () {
                        context.pop();
                      })
                ],
              ),
            ),
          );
        }
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ValueListenableBuilder(
                valueListenable: valListenable,
                builder: (context, val, _) {
                  return FormBuilder(
                    key: _formKey,
                    onChanged: () {
                      valListenable.value =
                          _formKey.currentState?.instantValue ?? {};
                    },
                    child: Column(
                      children: [
                        VerticalSmallGap(
                          adjustment: 4,
                        ),
                        Row(
                          children: [
                            TitleText(text: "Add FollowUp"),
                          ],
                        ),
                        VerticalSmallGap(
                          adjustment: 2,
                        ),
                        BlocSelector<AddFollowupCubit, AddFollowupState, Lead?>(
                          selector: (state) {
                            return state.lead;
                          },
                          builder: (context, lead) {
                            if (lead == null) {
                              return SizedBox();
                            }
                            return LeadItem(
                                lead: lead,
                                colorScheme: Theme.of(context).colorScheme);
                          },
                        ),
                        VerticalSmallGap(
                          adjustment: 2,
                        ),
                        WrapSelectField(
                          name: 'type',
                          label: 'Type',
                          values: activityTypes,
                          isRequired: true,
                        ),
                        DateField(
                            isRequired: true,
                            name: 'date',
                            label: 'Date',
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(Duration(days: 90))),
                        TimeField(
                          isRequired: true,
                          name: 'time',
                          label: 'Time',
                        ),
                        CardPickerDialogField<Property>(
                          name: 'property',
                          label: 'Property',
                          isRequired: false,
                          valueTransformer: (option) => option?.id,
                          optionsBuilder: (v,{isRefresh}) async {
                            return context
                                .read<AddFollowupCubit>()
                                .getListings(search: v.text);
                          },
                          optionBuilder: (context, listing) {
                            return PropertyCardPickerItem(listing: listing);
                          },
                        ),
                        MultiLineField(
                          label: 'Description',
                          name: 'description',
                        ),
                        VerticalSmallGap(),
                        BlocListener<AddFollowupCubit, AddFollowupState>(
                          listener: (context, state) async {
                            if (state.addFollowupStatus == AppStatus.success) {
                              getIt<AuthBloc>()
                                  .add(AuthEvent.setShowFollowup(value: false));

                              await getIt<AuthBloc>().stream.firstWhere(
                                  (state) => !state.showFollowUpScreen);
                              context.goNamed("${EnquiriesScreen.routeName}");
                            }
                          },
                          listenWhen: (previous, current) =>
                              previous.addFollowupStatus !=
                              current.addFollowupStatus,
                          child: AppPrimaryButton(
                              onTap: () async {
                                if (_formKey.currentState?.saveAndValidate() !=
                                    true) {
                                  return;
                                }
                                final val = _formKey.currentState!.value;
                                await context
                                    .read<AddFollowupCubit>()
                                    .addFollowUpActivity(
                                      context: context,
                                      values: val,
                                    );
                              },
                              text: ('Add Followup')),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        );
      },
    );
  }
}
