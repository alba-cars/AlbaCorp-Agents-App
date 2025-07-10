import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:app_badge_plus/app_badge_plus.dart';
import 'package:real_estate_app/app/app.dart';
import 'package:real_estate_app/app/notification_badge_cubit/notification_badge_cubit.dart';
import 'package:real_estate_app/data/repository/notification_repo.dart';
import 'package:real_estate_app/firebase_options.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Add this custom error widget
class AppErrorWidget extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const AppErrorWidget({Key? key, required this.errorDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              const SizedBox(height: 16),
              const Text(
                'Oops! Something went wrong',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                kDebugMode
                    ? errorDetails.summary.toString()
                    : 'Please try again later',
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Restart the app or navigate to a safe screen
                  runApp(const App());
                },
                child: const Text('Restart App'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await dotenv.load(fileName: ".env");
  await configureDependencies(env: 'Stage');
  // TwilioVoiceFlutter.init();

  await _runOneTimeNotificationUpdate();

  // Initialize AppBadgePlus
  if (await AppBadgePlus.isSupported()) {
    // You can add any platform-specific initialization here if needed by the library
    // For now, simply checking support is enough for basic functionality.
    // Later, we might call AppBadgePlus.removeBadge() here to ensure a clean state on app start,
    // but let's handle that in the cubit for now.
    print("App badge is supported on this platform.");
  } else {
    print("App badge is NOT supported on this platform.");
  }

  runApp(const App());
}

Future<void> _runOneTimeNotificationUpdate() async {
  const String oneTimeFlagKey = 'hasMarkedAllPastNotificationsAsRead_v1';
  try {
    final prefs = await SharedPreferences.getInstance();
    final bool alreadyRun = prefs.getBool(oneTimeFlagKey) ?? false;

    if (!alreadyRun) {
      print("Running one-time past notification update...");
      final notificationRepo = getIt<NotificationRepo>();
      await notificationRepo.markAllPastNotificationsAsRead();
      await prefs.setBool(oneTimeFlagKey, true);
      print("One-time past notification update complete. Flag set.");

      // Refresh notification badge
      final notificationBadgeCubit = getIt<NotificationBadgeCubit>();
      notificationBadgeCubit.refreshNotifications();
      print("Notification badge refreshed.");
    } else {
      print("One-time past notification update already performed.");
    }
  } catch (e) {
    print("Error during one-time notification update: $e");
    // Handle error appropriately, maybe log to a crash reporting service
  }
}
