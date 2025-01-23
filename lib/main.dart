import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:real_estate_app/app/app.dart';
import 'package:real_estate_app/app/call_manager.dart';
import 'package:real_estate_app/firebase_options.dart';
import 'package:real_estate_app/routes/app_router.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:twilio_voice_flutter/twilio_voice_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await dotenv.load(fileName: ".env");
  await configureDependencies(env: 'Stage');
  // TwilioVoiceFlutter.init();
  runApp(const App());
}
