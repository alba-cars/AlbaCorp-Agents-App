import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/property_card_details/cubit/property_card_details_cubit.dart';
import 'package:real_estate_app/view/property_card_details/widgets/convert_propertycard.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/space.dart';

class PropertyActionButtons extends StatelessWidget {
  final PropertyCardDetailsModel? propertyCard;

  const PropertyActionButtons({
    Key? key,
    required this.propertyCard,
  }) : super(key: key);

  bool get isMyPropertyCard {
    if (propertyCard == null) return false;

    return (propertyCard?.currentAgent is String &&
            getIt<AuthBloc>().state.agent?.id == propertyCard?.currentAgent) ||
        (propertyCard?.currentAgent is Map &&
            getIt<AuthBloc>().state.agent?.id ==
                propertyCard?.currentAgent['id']);
  }

  @override
  Widget build(BuildContext context) {
    // Don't show if no property card or no assignment action needed
    if (propertyCard == null ||
        (!propertyCard!.availableForCheckout && !isMyPropertyCard)) {
      return SizedBox.shrink();
    }

    return Card(
      elevation: 0,
      color: Colors.grey[100],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[300]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            if (propertyCard!.availableForCheckout)
              Expanded(
                child: AppPrimaryButton(
                  backgroundColor: Colors.green,
                  text: 'Assign To Me',
                  height: 45,
                  onTap: () => _showAssignDialog(context),
                ),
              ),
            if (isMyPropertyCard)
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: AppPrimaryButton(
                        backgroundColor: Colors.red[400],
                        text: 'Return',
                        height: 45,
                        onTap: () => _showReturnDialog(context),
                      ),
                    ),
                    HorizontalSmallGap(),
                    Expanded(
                      child: AppPrimaryButton(
                        text: 'Convert',
                        height: 45,
                        onTap: () {
                          if (propertyCard != null)
                            showConvertPropertyCard(context, propertyCard!);
                        },
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _showAssignDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: true,
      barrierLabel: 'assign-property-card',
      pageBuilder: (dContext, anim1, anim2) {
        return AlertDialog(
          title: Text('Assign Property Card'),
          content:
              Text('Do you want to assign this property card to yourself?'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(dContext).pop(),
            ),
            ElevatedButton(
              child: Text('Confirm'),
              onPressed: () async {
                await context
                    .read<PropertyCardDetailsCubit>()
                    .checkOutLead(context: context);
                Navigator.of(dContext).pop();
              },
            )
          ],
        );
      },
    );
  }

  void _showReturnDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: true,
      barrierLabel: 'return-property-card',
      pageBuilder: (dContext, anim1, anim2) {
        return AlertDialog(
          title: Text('Return Property Card'),
          content: Text(
              'Are you sure you want to return this property card to the explorer?'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(dContext).pop(),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: Text('Return'),
              onPressed: () async {
                await context
                    .read<PropertyCardDetailsCubit>()
                    .checkInLead(context: context);
                Navigator.of(dContext).pop();
              },
            )
          ],
        );
      },
    );
  }
}
