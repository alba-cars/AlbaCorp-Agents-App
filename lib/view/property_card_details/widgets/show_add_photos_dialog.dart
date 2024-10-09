import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:real_estate_app/model/file_object.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/view/property_card_details/cubit/property_card_details_cubit.dart';

import '../../../widgets/button.dart';
import '../../../widgets/fields/multi_image_field.dart';
import '../../../widgets/fields/multi_line_textfield.dart';
import '../../../widgets/space.dart';

void showAddPhotosDialog(BuildContext context, List<PropertyCardPhoto>? photos) {
  showGeneralDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: true,
      barrierLabel: 'add-photos-property-card',
      pageBuilder: (dContext, anim1, anim2) {
        final GlobalKey<FormBuilderState> key = GlobalKey();

        return StatefulBuilder(builder: (sContext, StateSetter setState) {
          return AlertDialog(
            title: Text('Add Photos'),
            content: FormBuilder(
              key: key,
              initialValue: {
                'photos':photos?.map((e)=>FileObject(networkImageUrl: e.original)).toList()
              },
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   MultipleImageuploadField(
        name: 'photos',
        label: 'Photos',
        isRequired: false,
      ),
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
                                .updatePropertyCard(
                                    values: values);
                                    Navigator.of(dContext).pop();
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
