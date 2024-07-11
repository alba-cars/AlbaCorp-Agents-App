import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:real_estate_app/app/app.dart';
import 'package:real_estate_app/firebase_options.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/services/firebase_messaging_service.dart';
import 'package:real_estate_app/services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await configureDependencies();
  await NotificationService.initializeNotification();
  await FirebaseMessagingService.initialize();
  runApp(const App());
}
