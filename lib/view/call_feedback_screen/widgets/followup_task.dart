import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/view/call_feedback_screen/cubit/call_feedback_cubit.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../constants/activity_types.dart';
import '../../../model/property_model.dart';
import '../../../service_locator/injectable.dart';
import '../../../util/status.dart';
import '../../../widgets/button.dart';
import '../../../widgets/fields/card_picker_field.dart';
import '../../../widgets/fields/date_field.dart';
import '../../../widgets/fields/multi_line_textfield.dart';
import '../../../widgets/fields/time_field.dart';
import '../../../widgets/fields/wrap_select_field.dart';
import '../../../widgets/space.dart';
import '../../enquiries_screen/enquiries_screen.dart';
import '../../task_detail_screen/cubit/task_detail_cubit.dart';
import '../../task_detail_screen/widgets/feedback_dialog.dart';

class FollowUpTask extends StatefulWidget {
  const FollowUpTask({super.key});

  @override
  State<FollowUpTask> createState() => _FollowUpTaskState();
}

class _FollowUpTaskState extends State<FollowUpTask> {
  ValueNotifier<Map<String, dynamic>> valListenable = ValueNotifier({});
  late final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
                      optionsBuilder: (v) async {
                        return context
                            .read<CallFeedbackCubit>()
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
                    BlocListener<CallFeedbackCubit, CallFeedbackState>(
                      listener: (context, state) async {
                        if (state.addActivityStatus == AppStatus.success) {
                          getIt<AuthBloc>()
                              .add(AuthEvent.removeLastCallDetails());

                          await getIt<AuthBloc>()
                              .stream
                              .firstWhere((state) => !state.showFeedbackScreen);
                          context.goNamed("${EnquiriesScreen.routeName}");
                        }
                      },
                      listenWhen: (previous, current) =>
                          previous.addActivityStatus !=
                          current.addActivityStatus,
                      child: AppPrimaryButton(
                          onTap: () async {
                            if (_formKey.currentState?.saveAndValidate() !=
                                true) {
                              return;
                            }
                            final val = _formKey.currentState!.value;
                            await context
                                .read<CallFeedbackCubit>()
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
  }
}
