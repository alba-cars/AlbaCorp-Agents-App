import 'dart:io';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:real_estate_app/services/firebase_messaging_service.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:twilio_voice_flutter/model/event.dart';
import 'package:twilio_voice_flutter/twilio_voice_flutter.dart';

class TwilioVoiceServices {
  static Stream<TwilioVoiceFlutterEvent> get callEventsListener {
    return TwilioVoiceFlutter.onCallEvent;
  }

  static Future<void> initialize({
    required String accessToken,
    required String identity,
  }) async {
    await setTwilioToken(accessToken: accessToken, identity: identity);
  }

  static Future<void> _requestAudioPermission() async {
    var status = await Permission.microphone.status;
    if (!status.isGranted) {
      await Permission.microphone.request();
    }
  }

  static Future<bool> setTwilioToken({
    required String accessToken,
    required String identity,
  }) async {
    if (Platform.isAndroid) {
      String? fcmToken = await _getFcmToken();
      try {
        await TwilioVoiceFlutter.register(
            identity: identity, accessToken: accessToken, fcmToken: fcmToken);
      } on PlatformException catch (error) {
        if (error.code == "TOKEN_EXPIRED") {
          showSnackbar(null, error.message.toString(), SnackBarType.failure);
        } else {
          showSnackbar(null, error.message.toString(), SnackBarType.info);
        }
      }
    } else {
      try {
        await TwilioVoiceFlutter.register(
            identity: identity, accessToken: accessToken, fcmToken: "");
      } on PlatformException catch (error) {
        if (error.code == "TOKEN_EXPIRED") {
          showSnackbar(null, error.message.toString(), SnackBarType.failure);
        } else {
          showSnackbar(null, error.message.toString(), SnackBarType.info);
        }
      }
    }
    return true;
  }

  static Future<String> _getFcmToken() async {
    return await AwesomeFcm.getFirebaseMessagingToken();
  }

  static Future<bool> makeCall({
    required String to,
  }) async {
    try {
      await _requestAudioPermission();
      Logger().d(to);
      await TwilioVoiceFlutter.makeCall(
        to: to,
      );
      return true;
    } catch (e, stack) {
      Logger().e(stack, stackTrace: stack);

      showSnackbar(null, e.toString(), SnackBarType.info);
      return false;
    }
  }

  static Future<bool?> hangUp() async {
    try {
      await TwilioVoiceFlutter.hangUp();
      return true;
    } catch (e) {
      Logger().d(e);

      showSnackbar(null, e.toString(), SnackBarType.info);
      return null;
    }
  }

  static Future<bool?> toggleMute() async {
    try {
      await TwilioVoiceFlutter.toggleMute();
      return await TwilioVoiceFlutter.isMuted();
    } catch (e) {
      Logger().d(e);

      showSnackbar(null, e.toString(), SnackBarType.info);
      return null;
    }
  }

  static Future<bool?> isMuted() async {
    try {
      return await TwilioVoiceFlutter.isMuted();
    } catch (e) {
      Logger().d(e);

      showSnackbar(null, e.toString(), SnackBarType.info);
      return null;
    }
  }

  static Future<bool?> isSpeaker() async {
    try {
      return await TwilioVoiceFlutter.isSpeaker();
    } catch (e) {
      Logger().d(e);
      showSnackbar(null, e.toString(), SnackBarType.info);
      return null;
    }
  }

  static Future<bool?> toggleSpeaker() async {
    try {
      await TwilioVoiceFlutter.toggleSpeaker();
      return await TwilioVoiceFlutter.isSpeaker();
    } catch (e) {
      Logger().d(e);

      showSnackbar(null, e.toString(), SnackBarType.info);
    }
    return null;
  }
}
