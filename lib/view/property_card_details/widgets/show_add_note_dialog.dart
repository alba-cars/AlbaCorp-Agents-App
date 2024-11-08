import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:real_estate_app/view/property_card_details/cubit/property_card_details_cubit.dart';

import '../../../widgets/button.dart';
import '../../../widgets/fields/multi_line_textfield.dart';
import '../../../widgets/space.dart';

void showAddNoteDialog(BuildContext context) {
  showGeneralDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: true,
      barrierLabel: 'add-note-property-card',
      pageBuilder: (dContext, anim1, anim2) {
        final GlobalKey<FormBuilderState> key = GlobalKey();

        return StatefulBuilder(builder: (sContext, StateSetter setState) {
          return AlertDialog(
            title: Text('Add Note'),
            content: FormBuilder(
              key: key,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MultiLineField(
                      name: 'message',
                      label: 'Message',
                    )
                  ],
                ),
              ),
            ),
            actions: [
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(dContext).pop();
                        }),
                  ),
                  HorizontalSmallGap(),
                  Expanded(
                    child: AppPrimaryButton(
                        text: 'Save',
                        onTap: () async {
                          final validated = key.currentState?.saveAndValidate();
                          if (validated == true) {
                            final values = key.currentState!.value;
                            await context
                                .read<PropertyCardDetailsCubit>()
                                .addPropertyCardNotes(
                                    context: dContext, values: values);
                          }
                        }),
                  )
                ],
              ),
            ],
          );
        });
      });
}
