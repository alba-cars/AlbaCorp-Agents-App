import 'package:flutter/material.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/call_bloc/call_bloc.dart';
import 'package:real_estate_app/model/property_card_details_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AssignedAgentCard extends StatelessWidget {
  final PropertyCardDetailsModel? propertyCard;

  const AssignedAgentCard({
    Key? key,
    required this.propertyCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Only show for other agent's card
    if (propertyCard == null ||
        !(propertyCard!.currentAgent is Map) ||
        propertyCard!.currentAgent["_id"] ==
            getIt<AuthBloc>().state.agent?.id) {
      return SizedBox.shrink();
    }

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[300]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.grey[200],
              child: ClipOval(
                child: S3Image(
                  url: propertyCard?.currentAgent["userId"]["photo"] ?? '',
                  placeHolder: Icon(Icons.person, color: Colors.grey),
                  errorWidget: Icon(Icons.person, color: Colors.grey),
                ),
              ),
            ),
            HorizontalSmallGap(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${propertyCard?.currentAgent["userId"]["first_name"] ?? ''} ${propertyCard?.currentAgent["userId"]["last_name"] ?? ''}",
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Assigned Agent",
                    style: textTheme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.green[400],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => _openWhatsApp(context),
                  icon: ImageIcon(AssetImage('assets/images/whatsapp.png')),
                ),
                HorizontalSmallGap(),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: colorScheme.primary,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => _callAgent(),
                  icon: Icon(Icons.call),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openWhatsApp(BuildContext context) async {
    var createdBy = propertyCard?.createdBy;
    if (createdBy == null) {
      showSnackbar(context, 'Phone number not available', SnackBarType.failure);
      return;
    }

    String phoneNumber = createdBy.phone?.replaceFirst("+", "") ?? '';
    if (phoneNumber.isEmpty) {
      showSnackbar(context, 'Phone number not available', SnackBarType.failure);
      return;
    }

    final message = getWhatsAppMessageText(propertyCard);
    final whatsappUrl = "https://wa.me/$phoneNumber/?text=$message";

    if (await canLaunchUrlString(whatsappUrl)) {
      launchUrlString(whatsappUrl);
    } else {
      showSnackbar(context, 'Cannot launch WhatsApp', SnackBarType.failure);
    }
  }

  void _callAgent() {
    final number =
        propertyCard?.currentAgent?["user"]["userPBXNumbers"]["publicNumber"];
    if (number != null) {
      getIt<CallBloc>().add(CallEvent.clickToCall(
        phoneNumber: number,
      ));
    }
  }

  String getWhatsAppMessageText(PropertyCardDetailsModel? propertyCard) {
    return "Hey ${propertyCard?.currentAgent["userId"]["first_name"] ?? ""}, \n"
        "I want to enquire about this property on "
        "${propertyCard?.building?.name ?? ""}, "
        "${propertyCard?.community?.community ?? ""} under "
        "${propertyCard?.status} for ${propertyCard?.purpose ?? ""}";
  }
}
