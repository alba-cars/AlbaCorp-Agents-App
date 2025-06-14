import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/view/twilio_screen/twilio_screen.dart';

class CallManager {
  static const platform = MethodChannel('com.alba.agent/calling');

  static void initialize(GoRouter router) {
    Logger().d('CallManager initialized');
    platform.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'navigateToCallingScreen':
          Logger().d('navigateToCallingScreen');
          try {
            final args = Map<String, dynamic>.from(call.arguments);
            final callSid = args['callSid'] as String?;
            final from = args['from'] as String?;

            // Navigate using GoRouter
            // router.goNamed(
            //   TwilioCallPage.routeName,
            //   extra: {
            //     'callSid': callSid,
            //     'from': from,
            //   },
            // );
          } catch (e) {
            Logger().e(e);
          }
          break;
        default:
          Logger().d('Unknown method called');
          break;
      }
    });
  }
}
