import 'package:equatable/equatable.dart';
import '../model/status.dart';

/// Represents a Twilio voice call with all its associated properties.
/// This class extends [Equatable] for value comparison.
class TwilioVoiceFlutterCall extends Equatable {
  /// The unique identifier for the call.
  /// This is null until the call reaches the RINGING state.
  final String id;

  /// The display name of the caller (who initiated the call).
  final String fromDisplayName;

  /// The display name of the call recipient.
  final String toDisplayName;

  /// Whether this is an outgoing call (true) or incoming call (false).
  final bool outgoing;

  /// The current status of the call.
  final TwilioVoiceFlutterStatus status;

  /// Whether the local audio is muted.
  final bool mute;

  /// Whether speaker mode is enabled.
  final bool speaker;

  /// The identifier/phone number of the call recipient.
  final String to;

  /// URL to the photo/avatar of the call recipient.
  final String toPhotoURL;

  /// Custom parameters associated with the call.
  final Map<String, dynamic>? customParameters;

  /// Duration of the call in seconds. Null if call hasn't started.
  final int? duration;

  /// Creates a new immutable [TwilioVoiceFlutterCall] instance.
  ///
  /// All parameters are required except [customParameters] and [duration].
  /// Empty strings are used as defaults for string parameters.
  const TwilioVoiceFlutterCall({
    required this.id,
    required this.fromDisplayName,
    required this.toDisplayName,
    required this.mute,
    required this.speaker,
    required this.status,
    required this.outgoing,
    required this.to,
    required this.toPhotoURL,
    this.customParameters,
    this.duration,
  });

  /// Creates a [TwilioVoiceFlutterCall] instance from a map.
  ///
  /// Safely handles missing or invalid data with appropriate defaults.
  /// Throws [FormatException] if the map structure is invalid.
  factory TwilioVoiceFlutterCall.fromMap(Map<String, dynamic> data) {
    try {
      // Validate required fields
      if (!data.containsKey('id')) {
        throw const FormatException('Missing required field: id');
      }

      // Handle custom parameters if present
      Map<String, dynamic>? customParams;
      if (data.containsKey('customParameters')) {
        final params = data['customParameters'];
        if (params is Map<String, dynamic>) {
          customParams = Map<String, dynamic>.from(params);
        }
      }

      // Parse duration if present
      int? callDuration;
      if (data.containsKey('duration')) {
        final durationValue = data['duration'];
        if (durationValue is int) {
          callDuration = durationValue;
        } else if (durationValue is String) {
          callDuration = int.tryParse(durationValue);
        }
      }

      return TwilioVoiceFlutterCall(
        id: data['id'] as String? ?? '',
        fromDisplayName: data['fromDisplayName'] as String? ?? '',
        toDisplayName: data['toDisplayName'] as String? ?? '',
        outgoing: data['outgoing'] as bool? ?? false,
        mute: data['mute'] as bool? ?? false,
        speaker: data['speaker'] as bool? ?? false,
        status: StatusUtils.getEventType(data['status'] as String? ?? ''),
        toPhotoURL: data['toPhotoURL'] as String? ?? '',
        to: data['to'] as String? ?? '',
        customParameters: customParams,
        duration: callDuration,
      );
    } catch (e) {
      throw FormatException('Error parsing call data: $e');
    }
  }

  /// Converts the call instance to a map representation.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fromDisplayName': fromDisplayName,
      'toDisplayName': toDisplayName,
      'outgoing': outgoing,
      'mute': mute,
      'speaker': speaker,
      'status': status.toString(),
      'toPhotoURL': toPhotoURL,
      'to': to,
      if (customParameters != null) 'customParameters': customParameters,
      if (duration != null) 'duration': duration,
    };
  }

  /// Creates a copy of this call with optional parameter updates.
  TwilioVoiceFlutterCall copyWith({
    String? id,
    String? fromDisplayName,
    String? toDisplayName,
    bool? outgoing,
    bool? mute,
    bool? speaker,
    TwilioVoiceFlutterStatus? status,
    String? toPhotoURL,
    String? to,
    Map<String, dynamic>? customParameters,
    int? duration,
  }) {
    return TwilioVoiceFlutterCall(
      id: id ?? this.id,
      fromDisplayName: fromDisplayName ?? this.fromDisplayName,
      toDisplayName: toDisplayName ?? this.toDisplayName,
      outgoing: outgoing ?? this.outgoing,
      mute: mute ?? this.mute,
      speaker: speaker ?? this.speaker,
      status: status ?? this.status,
      toPhotoURL: toPhotoURL ?? this.toPhotoURL,
      to: to ?? this.to,
      customParameters: customParameters ?? this.customParameters,
      duration: duration ?? this.duration,
    );
  }

  @override
  List<Object?> get props => [
        id,
        fromDisplayName,
        toDisplayName,
        outgoing,
        mute,
        speaker,
        status,
        toPhotoURL,
        to,
        customParameters,
        duration,
      ];

  @override
  String toString() {
    return 'TwilioVoiceFlutterCall('
        'id: $id, '
        'fromDisplayName: $fromDisplayName, '
        'toDisplayName: $toDisplayName, '
        'outgoing: $outgoing, '
        'mute: $mute, '
        'speaker: $speaker, '
        'status: $status, '
        'to: $to, '
        'duration: $duration)';
  }

  /// Whether the call is currently active (connected).
  bool get isActive => status == TwilioVoiceFlutterStatus.connected;

  /// Whether the call is currently on hold.
  bool get isOnHold => status == TwilioVoiceFlutterStatus.holdOn;

  /// The formatted duration of the call (mm:ss).
  String get formattedDuration {
    if (duration == null) return '00:00';
    final minutes = (duration! ~/ 60).toString().padLeft(2, '0');
    final seconds = (duration! % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}
