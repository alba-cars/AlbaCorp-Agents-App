import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:real_estate_app/app/app.dart';
import 'package:real_estate_app/firebase_options.dart';
import 'package:real_estate_app/service_locator/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await configureDependencies(env: 'Prod');

  runApp(const App());
}
