import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';

import '../../../widgets/button.dart';
import '../../../widgets/space.dart';
import '../cubit/property_card_details_cubit.dart';

showUnlinkConfirmationDialog(BuildContext context, LeadPropertyCardModel lead) {
  showDialog(
      context: context,
      builder: (gcontext) {
        return AlertDialog(
          content: Text('Are you sure to unlink this property from this lead'),
          actions: [
            Row(
              children: [
                Expanded(
                  child: AppPrimaryButton(
                      text: 'Cancel',
                      onTap: () {
                        Navigator.of(gcontext).pop();
                      }),
                ),
                HorizontalSmallGap(),
                Expanded(
                  child: AppPrimaryButton(
                      text: 'UnLink',
                      backgroundColor: Colors.red[700],
                      onTap: () async {
                        await context
                            .read<PropertyCardDetailsCubit>()
                            .unLinkLeadFromPropertyCard(leadCardId: lead.id);
                        Navigator.of(gcontext).pop();
                      }),
                )
              ],
            ),
          ],
        );
      });
}
