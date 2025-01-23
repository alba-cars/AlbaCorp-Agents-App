/// Enum representing the different statuses of a Twilio voice call.
enum TwilioVoiceFlutterStatus {
  /// The call is in the process of connecting.
  connecting,

  /// The call has been disconnected.
  disconnected,

  /// The call is ringing.
  ringing,

  /// The call has been successfully connected.
  connected,

  /// The call is reconnecting due to a temporary connection loss.
  reconnecting,

  /// The call has successfully reconnected after a connection loss.
  reconnected,

  /// The status of the call is unknown.
  unknown,

  failed,

  holdOn,
  holdOff
}

class StatusUtils {
  /// Converts an event string to the corresponding TwilioVoiceFlutterStatus
  static TwilioVoiceFlutterStatus getEventType(String event) {
    switch (event.toLowerCase()) {
      case 'callconnecting':
        return TwilioVoiceFlutterStatus.connecting;
      case 'calldisconnected':
        return TwilioVoiceFlutterStatus.disconnected;
      case 'callringing':
        return TwilioVoiceFlutterStatus.ringing;
      case 'callconnected':
        return TwilioVoiceFlutterStatus.connected;
      case 'callreconnecting':
        return TwilioVoiceFlutterStatus.reconnecting;
      case 'callreconnected':
        return TwilioVoiceFlutterStatus.reconnected;
      case 'callfailure':
        return TwilioVoiceFlutterStatus.failed;
      case 'holdon':
        return TwilioVoiceFlutterStatus.holdOn;
      case 'holdoff':
        return TwilioVoiceFlutterStatus.holdOff;
      default:
        return TwilioVoiceFlutterStatus.unknown;
    }
  }
}
