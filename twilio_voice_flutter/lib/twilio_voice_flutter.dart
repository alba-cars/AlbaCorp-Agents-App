import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'model/call.dart';
import 'model/event.dart';
import 'model/status.dart';

/// Represents different types of audio devices
enum AudioDevice {
  speakerPhone,
  wiredHeadset,
  earpiece,
  bluetooth,
  none;

  static AudioDevice fromString(String value) {
    return AudioDevice.values.firstWhere(
      (device) =>
          device.toString().split('.').last.toLowerCase() ==
          value.toLowerCase(),
      orElse: () => AudioDevice.none,
    );
  }
}

/// Event data for audio device changes
class AudioDeviceEvent {
  final AudioDevice selectedDevice;
  final List<AudioDevice> availableDevices;

  AudioDeviceEvent({
    required this.selectedDevice,
    required this.availableDevices,
  });

  factory AudioDeviceEvent.fromMap(Map<String, dynamic> map) {
    return AudioDeviceEvent(
      selectedDevice: AudioDevice.fromString(map['selectedDevice'] as String),
      availableDevices: (map['availableDevices'] as List<dynamic>)
          .map((device) => AudioDevice.fromString(device as String))
          .toList(),
    );
  }
}

/// A Flutter plugin for Twilio Voice SDK integration
class TwilioVoiceFlutter {
  static const MethodChannel _channel = MethodChannel('twilio_voice_flutter');
  static const EventChannel _eventChannel =
      EventChannel('twilio_voice_flutter_events');

  static final StreamController<TwilioVoiceFlutterEvent> _streamController =
      StreamController<TwilioVoiceFlutterEvent>.broadcast();

  static final StreamController<AudioDeviceEvent> _audioDeviceController =
      StreamController<AudioDeviceEvent>.broadcast();

  static TwilioVoiceFlutterEvent? _lastEvent;
  static bool _isInitialized = false;

  /// Gets the last event that occurred
  static TwilioVoiceFlutterEvent? get lastEvent => _lastEvent;

  /// Initializes the plugin and sets up event handling
  static Future<void> init() async {
    if (_isInitialized) return;

    try {
      _eventChannel.receiveBroadcastStream().listen(
        _handleEvent,
        onError: (dynamic error) {
          log('EventChannel error: $error');
        },
      );

      _isInitialized = true;
    } catch (e) {
      log('Error initializing TwilioVoiceFlutter: $e');
      rethrow;
    }
  }

  static void _handleEvent(dynamic event) {
    try {
      if (event == null) return;

      final eventMap = Map<String, dynamic>.from(event as Map);

      // Handle audio device events separately
      if (eventMap['event'] == 'audioDeviceChanged') {
        final audioEvent = AudioDeviceEvent.fromMap(
            Map<String, dynamic>.from(eventMap['data'] ?? {}));
        _audioDeviceController.add(audioEvent);
        return;
      }

      final twilioEvent = TwilioVoiceFlutterEvent.fromMap(eventMap);
      _lastEvent = twilioEvent;
      _streamController.add(twilioEvent);
    } catch (e, stack) {
      log('Error processing Twilio event', error: e, stackTrace: stack);
    }
  }

  /// Stream of all call events
  static Stream<TwilioVoiceFlutterEvent> get onCallEvent =>
      _streamController.stream;

  /// Stream of audio device change events
  static Stream<AudioDeviceEvent> get onAudioDeviceChange =>
      _audioDeviceController.stream;

  /// Stream of call connecting events
  static Stream<TwilioVoiceFlutterEvent> get onCallConnecting {
    return _streamController.stream
        .where((event) => event.status == TwilioVoiceFlutterStatus.connecting);
  }

  /// Stream of call connected events
  static Stream<TwilioVoiceFlutterEvent> get onCallConnected {
    return _streamController.stream
        .where((event) => event.status == TwilioVoiceFlutterStatus.connected);
  }

  /// Stream of call disconnected events
  static Stream<TwilioVoiceFlutterEvent> get onCallDisconnected {
    return _streamController.stream.where(
        (event) => event.status == TwilioVoiceFlutterStatus.disconnected);
  }

  /// Gets the list of available audio devices
  static Future<List<AudioDevice>> getAudioDevices() async {
    try {
      final List<dynamic> result =
          await _channel.invokeMethod('getAudioDevices');
      return result
          .map((device) => AudioDevice.fromString(device as String))
          .toList();
    } catch (e) {
      log('Error getting audio devices', error: e);
      rethrow;
    }
  }

  /// Selects a specific audio device
  static Future<void> selectAudioDevice(AudioDevice device) async {
    try {
      await _channel.invokeMethod('selectAudioDevice', {
        'device': device.toString().split('.').last.toUpperCase(),
      });
    } catch (e) {
      log('Error selecting audio device', error: e);
      rethrow;
    }
  }

  /// Gets the currently selected audio device
  static Future<AudioDevice> getCurrentAudioDevice() async {
    try {
      final String result =
          await _channel.invokeMethod('getCurrentAudioDevice');
      return AudioDevice.fromString(result);
    } catch (e) {
      log('Error getting current audio device', error: e);
      rethrow;
    }
  }

  /// Registers the device for incoming calls
  static Future<void> register({
    required String identity,
    required String accessToken,
    required String fcmToken,
  }) async {
    try {
      await _channel.invokeMethod('register', {
        'identity': identity,
        'accessToken': accessToken,
        'fcmToken': fcmToken,
      });
    } catch (e) {
      log('Error registering device', error: e);
      rethrow;
    }
  }

  /// Unregisters the device
  static Future<void> unregister() async {
    try {
      await _channel.invokeMethod('unregister');
    } catch (e) {
      log('Error unregistering device', error: e);
      rethrow;
    }
  }

  /// Makes an outgoing call
  static Future<TwilioVoiceFlutterCall> makeCall({
    required String to,
    Map<String, dynamic> data = const <String, dynamic>{},
  }) async {
    try {
      final result = await _channel.invokeMethod('makeCall', {
        'to': to.trim().replaceAll(' ', ''),
        'data': data,
      });

      return TwilioVoiceFlutterCall.fromMap(Map<String, dynamic>.from(result));
    } catch (e) {
      log('Error making call', error: e);
      rethrow;
    }
  }

  /// Ends the current call
  static Future<bool> hangUp() async {
    try {
      return await _channel.invokeMethod('hangUp') ?? false;
    } catch (e) {
      log('Error hanging up call', error: e);
      rethrow;
    }
  }

  /// Sends DTMF tones during a call
  static Future<void> sendDigits(String digits) async {
    try {
      await _channel.invokeMethod('sendDigits', {'digits': digits});
    } catch (e) {
      log('Error sending digits', error: e);
      rethrow;
    }
  }

  /// Toggles the mute state of the current call
  static Future<bool> toggleMute() async {
    try {
      return await _channel.invokeMethod('toggleMute') ?? false;
    } catch (e) {
      log('Error toggling mute', error: e);
      rethrow;
    }
  }

  /// Checks if the current call is muted
  static Future<bool> isMuted() async {
    try {
      return await _channel.invokeMethod('isMuted') ?? false;
    } catch (e) {
      log('Error checking mute state', error: e);
      rethrow;
    }
  }

  /// Toggles the speaker state with enhanced audio device support
  static Future<bool> toggleSpeaker() async {
    try {
      return await _channel.invokeMethod('toggleSpeaker') ?? false;
    } catch (e) {
      log('Error toggling speaker', error: e);
      rethrow;
    }
  }

  /// Checks if the speaker is enabled with enhanced audio device support
  static Future<bool> isSpeaker() async {
    try {
      final device = await getCurrentAudioDevice();
      return device == AudioDevice.speakerPhone;
    } catch (e) {
      log('Error checking speaker state', error: e);
      rethrow;
    }
  }

  /// Gets the currently active call
  static Future<TwilioVoiceFlutterCall?> getActiveCall() async {
    try {
      final data = await _channel.invokeMethod('activeCall');
      if (data == null || data == '') return null;

      return TwilioVoiceFlutterCall.fromMap(Map<String, dynamic>.from(data));
    } catch (e) {
      log('Error getting active call', error: e);
      return null;
    }
  }

  /// Sets the Android call UI style
  static Future<void> setAndroidCallStyle({
    String? backgroundColor,
    String? textColor,
    String? buttonColor,
    String? buttonIconColor,
    String? buttonFocusColor,
    String? buttonFocusIconColor,
  }) async {
    if (kIsWeb || !Platform.isAndroid) return;

    try {
      await _channel.invokeMethod('setCallStyle', {
        'backgroundColor': backgroundColor,
        'textColor': textColor,
        'buttonColor': buttonColor,
        'buttonIconColor': buttonIconColor,
        'buttonFocusColor': buttonFocusColor,
        'buttonFocusIconColor': buttonFocusIconColor,
      });
    } catch (e) {
      log('Error setting call style', error: e);
      rethrow;
    }
  }

  /// Resets the Android call UI style to default
  static Future<void> resetAndroidCallStyle() async {
    if (kIsWeb || !Platform.isAndroid) return;

    try {
      await _channel.invokeMethod('resetCallStyle');
    } catch (e) {
      log('Error resetting call style', error: e);
      rethrow;
    }
  }

  /// Sets the foreground state of the app
  static Future<void> setForeground(bool foreground) async {
    if (kIsWeb || !Platform.isAndroid) return;

    try {
      await _channel.invokeMethod('setForeground', {'foreground': foreground});
    } catch (e) {
      log('Error setting foreground state', error: e);
      rethrow;
    }
  }
}
