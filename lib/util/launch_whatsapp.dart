import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> launchWhatsApp(BuildContext context, String? number) async {
  try {
    if (number == null) {
      showSnackbar(context, 'Phone number not available', SnackBarType.failure);
    }
    final whatsappUrl = "https://wa.me/$number}";
    await launchUrlString(whatsappUrl);
  } catch (e) {
    showSnackbar(context, 'Could not launch WhatsApp', SnackBarType.failure);
  }
}