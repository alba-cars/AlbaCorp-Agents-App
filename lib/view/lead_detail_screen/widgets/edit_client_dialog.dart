import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:real_estate_app/view/add_task_screen/add_task_screen.dart';
import 'package:real_estate_app/view/lead_detail_screen/cubit/lead_detail_cubit.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/text_field.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

showEditClientDialog(BuildContext pcontext) {
  return showGeneralDialog(
      context: pcontext,
      pageBuilder: (context, anim1, anim2) {
        return BlocProvider.value(
          value: pcontext.read<LeadDetailCubit>(),
          child: _DialogContent(),
        );
      });
}

class _DialogContent extends StatefulWidget {
  const _DialogContent({
    super.key,
  });

  @override
  State<_DialogContent> createState() => _DialogContentState();
}

class _DialogContentState extends State<_DialogContent> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FormBuilder(
          key: _formKey,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            BlockTitleText(text: 'Edit User'),
            VerticalSmallGap(),
            AppTextField(
              name: 'first_name',
              label: 'First Name',
            ),
            AppTextField(
              name: 'last_name',
              label: 'Last Name',
            ),
            AppTextField(
              name: 'email',
              label: 'Email',
            ),
            VerticalSmallGap(),
            Row(
              children: [
                Expanded(
                  child: AppPrimaryButton(
                      text: 'Cancel',
                      onTap: () {
                        Navigator.of(context).pop();
                      }),
                ),
                HorizontalSmallGap(),
                Expanded(
                  child: AppPrimaryButton(
                      text: 'Save',
                      onTap: () async {
                        final val = _formKey.currentState?.saveAndValidate();
                        if (val == true) {
                          await context
                              .read<LeadDetailCubit>()
                              .updateLead(_formKey.currentState!.value);
                          Navigator.of(context).pop();
                        }
                      }),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
