import 'call.dart';
import 'status.dart';

/// Represents an event from the Twilio Voice SDK.
/// Each event contains information about the call status and the call itself.
class TwilioVoiceFlutterEvent {
  /// The current status of the Twilio voice call
  final TwilioVoiceFlutterStatus status;

  /// The current Twilio voice call.
  /// Can be null if no call is active or during certain event types.
  final TwilioVoiceFlutterCall? call;

  /// Additional message or error information associated with the event
  final String? message;

  /// Creates a new TwilioVoiceFlutterEvent
  ///
  /// [status] represents the current call status
  /// [call] represents the associated call data (optional)
  /// [message] contains any additional event information (optional)
  const TwilioVoiceFlutterEvent(
    this.status,
    this.call, {
    this.message,
  });

  /// Creates a TwilioVoiceFlutterEvent from a map.
  ///
  /// The map should contain the following keys:
  /// - 'event': String representing the event type
  /// - 'data': Map containing call data (optional)
  /// - 'message': String containing additional event information (optional)
  factory TwilioVoiceFlutterEvent.fromMap(Map<String, dynamic> map) {
    try {
      // Parse the event type to determine status
      final eventName = map['event'] as String?;
      final status = _getStatusFromEvent(eventName);

      // Parse call data if present
      final data = Map<String, dynamic>.from((map['data'] ?? {}) as Map);
      final call = data.isEmpty ? TwilioVoiceFlutterCall.fromMap(data) : null;

      // Get additional message if present
      final message = map['message'] as String?;

      return TwilioVoiceFlutterEvent(status, call, message: message);
    } catch (e) {
      // If parsing fails, return an event with unknown status
      return TwilioVoiceFlutterEvent(
        TwilioVoiceFlutterStatus.unknown,
        null,
        message: 'Error parsing event: $e',
      );
    }
  }

  /// Converts the event types from strings to [TwilioVoiceFlutterStatus]
  static TwilioVoiceFlutterStatus _getStatusFromEvent(String? event) {
    switch (event) {
      case 'callConnecting':
        return TwilioVoiceFlutterStatus.connecting;
      case 'callRinging':
        return TwilioVoiceFlutterStatus.ringing;
      case 'callConnected':
        return TwilioVoiceFlutterStatus.connected;
      case 'callDisconnected':
        return TwilioVoiceFlutterStatus.disconnected;
      case 'callReconnecting':
        return TwilioVoiceFlutterStatus.reconnecting;
      case 'callReconnected':
        return TwilioVoiceFlutterStatus.reconnected;
      case 'callFailure':
        return TwilioVoiceFlutterStatus.failed;
      default:
        return TwilioVoiceFlutterStatus.unknown;
    }
  }

  /// Converts the event to a map representation.
  Map<String, dynamic> toMap() {
    return {
      'status': status.toString(),
      'call': call?.toMap(),
      if (message != null) 'message': message,
    };
  }

  @override
  String toString() {
    return 'TwilioVoiceFlutterEvent(status: $status, call: $call, message: $message)';
  }

  /// Creates a copy of the event with optional parameter updates
  TwilioVoiceFlutterEvent copyWith({
    TwilioVoiceFlutterStatus? status,
    TwilioVoiceFlutterCall? call,
    String? message,
  }) {
    return TwilioVoiceFlutterEvent(
      status ?? this.status,
      call ?? this.call,
      message: message ?? this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TwilioVoiceFlutterEvent &&
        other.status == status &&
        other.call == call &&
        other.message == message;
  }

  @override
  int get hashCode => Object.hash(status, call, message);
}
