package com.twilio.voice.flutter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import androidx.annotation.RequiresApi;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import androidx.annotation.NonNull;

import com.twilio.voice.Call;
import com.twilio.voice.CallException;
import com.twilio.voice.CallInvite;
import com.twilio.voice.ConnectOptions;
import com.twilio.voice.RegistrationException;
import com.twilio.voice.RegistrationListener;
import com.twilio.voice.UnregistrationListener;
import com.twilio.voice.Voice;
import com.twilio.voice.flutter.Utils.PreferencesUtils;
import com.twilio.voice.flutter.audio.AudioDeviceManager;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.ArrayList;
import java.util.List;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.EventChannel;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.plugin.common.PluginRegistry.NewIntentListener;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import android.content.pm.PackageManager;
import com.twilio.voice.flutter.Utils.TwilioConstants;



public class TwilioVoiceFlutterPlugin
    implements FlutterPlugin, MethodCallHandler, EventChannel.StreamHandler, ActivityAware, NewIntentListener {
  private static final String TAG = "TwilioVoiceFlutter";
  public static final String ACTION_CALL_EVENT = "ACTION_CALL_EVENT";
  private static final String METHOD_CHANNEL_NAME = "twilio_voice_flutter";
  private static final String EVENT_CHANNEL_NAME = "twilio_voice_flutter_events";

  private MethodChannel methodChannel;
  private EventChannel eventChannel;
  private static EventChannel.EventSink eventSink;
  private Context context;
  private PreferencesUtils preferencesUtils;
  private BroadcastReceiver callEventReceiver;
  private AudioDeviceManager audioDeviceManager;
  private AudioDeviceManager.AudioDevice lastSelectedDevice = AudioDeviceManager.AudioDevice.NONE;

  private final List<Map<String, Object>> pendingEvents = new CopyOnWriteArrayList<>();

  public static Call activeCall;
  private static String status;
  public static CallInvite activeCallInvite;
  private RegistrationListener registrationListener;
  public static Call.Listener callListener;

  @RequiresApi(api = Build.VERSION_CODES.TIRAMISU)
  @Override
  public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    Log.d(TAG, "onAttachedToEngine");
    context = flutterPluginBinding.getApplicationContext();
    preferencesUtils = new PreferencesUtils(context);
    methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), METHOD_CHANNEL_NAME);
    methodChannel.setMethodCallHandler(this);

    eventChannel = new EventChannel(flutterPluginBinding.getBinaryMessenger(), EVENT_CHANNEL_NAME);
    eventChannel.setStreamHandler(this);

    audioDeviceManager = new AudioDeviceManager(context);
    initializePlugin();

audioDeviceManager.setAudioDeviceChangeListener((selectedDevice, availableDevices) -> {
    // Convert to a format suitable for Flutter
    HashMap<String, Object> event = new HashMap<>();
    event.put("event", "audioDeviceChanged");
    
    HashMap<String, Object> data = new HashMap<>();
    data.put("selectedDevice", selectedDevice.name());
    List<String> devices = new ArrayList<>();
    for (AudioDeviceManager.AudioDevice device : availableDevices) {
        devices.add(device.name());
    }
    data.put("availableDevices", devices);
    
    event.put("data", data);
    
    if (eventSink != null) {
        new Handler(Looper.getMainLooper()).post(() -> eventSink.success(event));
    }
});

    registrationListener = createRegistrationListener();
    

    callEventReceiver = new BroadcastReceiver() {
      @Override
      public void onReceive(Context context, Intent intent) {
        if (Objects.equals(intent.getAction(), ACTION_CALL_EVENT)) {
          String eventName = intent.getStringExtra("eventName");
          String eventData = intent.getStringExtra("eventData");
          sendEvent(eventName, eventData);
        }
      }
    };

    IntentFilter intentFilter = new IntentFilter(ACTION_CALL_EVENT);
    context.registerReceiver(callEventReceiver, intentFilter, Context.RECEIVER_NOT_EXPORTED);
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    switch (call.method) {
      case "register":
        String identity = call.argument("identity");
        String accessToken = call.argument("accessToken");
        String fcmToken = call.argument("fcmToken");
        register(identity, accessToken, fcmToken, result);
        break;
      case "unregister":
        unregister();
        break;
      case "makeCall":
        String to = call.argument("to");
        makeCall(to, result);
        break;
      case "hangUp":
        hangup(result);
        break;
      case "toggleMute":
        toggleMute(result);
        break;
      case "isMuted":
        isMuted(result);
        break;
      case "isSpeaker":
        isOnSpeaker(result);
        break;
      case "toggleSpeaker":
        toggleSpeaker(result);
        break;
      case "sendDigits":
        String digits = call.argument("digits");
        sendDigits(digits, result);
        break;
      case "getAccessToken":
        getAccessToken(result);
        break;
      case "getFcmToken":
        getFcmToken(result);
        break;
        case "getAudioDevices":
        getAudioDevices(result);
        break;
      case "selectAudioDevice":
        String deviceName = call.argument("device");
        selectAudioDevice(deviceName, result);
        break;
      case "getCurrentAudioDevice":
        getCurrentAudioDevice(result);
        break;
      default:
        result.notImplemented();
    }
  }

  private void register(String identity, String accessToken, String fcmToken, Result result) {
    preferencesUtils.setAccessToken(accessToken);
    preferencesUtils.setFcmToken(fcmToken);
    Log.d(TAG, "Registering with identity: " + fcmToken);
    Voice.register(accessToken, Voice.RegistrationChannel.FCM, fcmToken, registrationListener);
    result.success("Registering with identity: " + identity);
  }

  public void unregister() {
    String accessToken = preferencesUtils.getAccessToken();
    if (accessToken == null)
      return;

    String fcmToken = preferencesUtils.getFcmToken();
    if (fcmToken == null)
      return;

    preferencesUtils.clearTokens();
    Voice.unregister(accessToken, Voice.RegistrationChannel.FCM, fcmToken, new UnregistrationListener() {
      @Override
      public void onUnregistered(String s, String s1) {
        Log.d(TAG, "Successfully unregistered");
      }

      @Override
      public void onError(RegistrationException error, String accessToken, String fcmToken) {
        String message = String.format(
            Locale.US,
            "Registration Error: %d, %s",
            error.getErrorCode(),
            error.getMessage());

        Log.d(TAG, "Error unregistering. " + message);
      }
    });
  }

  private void makeCall(String to, Result result) {
    if (context.checkSelfPermission(android.Manifest.permission.RECORD_AUDIO) 
    != PackageManager.PERMISSION_GRANTED) {
result.error("PERMISSION_DENIED", 
    "Requires RECORD_AUDIO permission for making calls", null);
return;
}

String accessToken = preferencesUtils.getAccessToken();
if (accessToken == null) {
result.error("NO_ACCESS_TOKEN", "No access token available", null);
return;
}

sendEvent("callConnecting", "");

Map<String, String> params = new HashMap<>();
params.put("to", to);
Log.d(TAG, "Calling to " + to);

try {
ConnectOptions connectOptions = new ConnectOptions.Builder(accessToken)
    .params(params)
    .build();
activeCall = Voice.connect(context, connectOptions, callListener);

// Return a map instead of just a String
HashMap<String, Object> callDetails = getCallDetails();
result.success(callDetails);
} catch (SecurityException e) {
result.error("PERMISSION_DENIED", 
    "SecurityException: " + e.getMessage(), null);
} catch (Exception e) {
result.error("CALL_FAILED", 
    "Failed to make call: " + e.getMessage(), null);
}
}

  private void hangup(Result result) {
    if (activeCall != null) {
      activeCall.disconnect();
      activeCall = null;
      result.success(true);
    }
    else {
    result.error("NO_ACTIVE_CALL", "No active call to hangup", false);
    }
  }

  private void getFcmToken(Result result) {
    String fcmToken = preferencesUtils.getFcmToken();
    if (fcmToken != null) {
      result.success(fcmToken);
    } else {
      result.error("NO_FCM_TOKEN", "No FCM token available", null);
    }
  }

  private void getAccessToken(Result result) {
    String accessToken = preferencesUtils.getAccessToken();
    if (accessToken != null) {
      result.success(accessToken);
    } else {
      result.error("NO_ACCESS_TOKEN", "No access token available", null);
    }
  }



  private void isMuted(Result result) {
    if (activeCall != null) {
      result.success(activeCall.isMuted());
    }
    result.success(false);

  }

  private void isOnSpeaker(Result result) {
    AudioManager audioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
    result.success(audioManager.isSpeakerphoneOn());
  }

  private void toggleMute(Result result) {
    if (activeCall != null) {
        boolean mute = !activeCall.isMuted();
        activeCall.mute(mute);
        result.success(mute);  // Return the actual mute state
    } else {
        result.success(false);
    }
}


  private void sendDigits(String digits, Result result) {
    if (activeCall != null && digits != null) {
      activeCall.sendDigits(digits);
      result.success("Digits sent: " + digits);
    } else {
      result.error("SEND_DIGITS_ERROR", "No active call or invalid digits", null);
    }
  }

  private RegistrationListener createRegistrationListener() {
    return new RegistrationListener() {
      @Override
      public void onRegistered(@NonNull String accessToken, @NonNull String fcmToken) {
        Log.d(TAG, "Successfully registered FCM " + fcmToken);
      }

      @Override
      public void onError(@NonNull RegistrationException error,
          @NonNull String accessToken,
          @NonNull String fcmToken) {
        String message = String.format(
            Locale.US,
            "Registration Error: %d, %s",
            error.getErrorCode(),
            error.getMessage());
        Log.e(TAG, message);

      }
    };
  }

  private Call.Listener createCallListener() {
    return new Call.Listener() {

      @Override
      public void onRinging(@NonNull Call call) {
        Log.d(TAG, "Ringing");
        sendEvent("callRinging", "");
        status = "callRinging";
      }

      @Override
      public void onConnectFailure(@NonNull Call call, @NonNull CallException error) {
        String message = String.format(
            Locale.US,
            "Call Error: %d, %s",
            error.getErrorCode(),
            error.getMessage());
        Log.e(TAG, message);
        status = "callFailure";
        sendEvent("callFailure", message);
      }

      @Override
      public void onConnected(@NonNull Call call) {
        Log.d(TAG, "Connected");
        activeCall = call;
        status = "callConnected";
        sendEvent("callConnected", "");
      }

      @Override
      public void onReconnecting(@NonNull Call call, @NonNull CallException callException) {
        Log.d(TAG, "Reconnecting");
        status = "callReconnecting";
        sendEvent("callReconnecting", "");
      }

      @Override
      public void onReconnected(@NonNull Call call) {
        Log.d(TAG, "Reconnected");
        status = "callReconnected";
        sendEvent("callReconnected", "");
      }

      @Override
      public void onDisconnected(@NonNull Call call, CallException error) {
        Log.d(TAG, "Disconnected");
        if (error != null) {
          String message = String.format(
              Locale.US,
              "Call Error: %d, %s",
              error.getErrorCode(),
              error.getMessage());
          sendEvent("callDisconnected", message);
        } else {
          sendEvent("callDisconnected", "");
        }
        status = "callDisconnected";
        activeCall = null;
      }
    };
  }

  public HashMap<String, Object> getCallDetails() {
    HashMap<String, Object> map = new HashMap<>();

    if (activeCall == null) {
      map.put("id", "");
      map.put("mute", false);
      map.put("speaker", false);
    } else {
      AudioManager audioManager = (AudioManager) this.context.getSystemService(Context.AUDIO_SERVICE);
      map.put("id", activeCall.getSid());
      map.put("mute", activeCall.isMuted());
      map.put("speaker", audioManager.isSpeakerphoneOn());
    }

    if (activeCallInvite != null) {
      map.put("customParameters", activeCallInvite.getCustomParameters());
    }

    if (activeCallInvite != null) {
      map.put("fromDisplayName", activeCallInvite.getFrom());
      map.put("toDisplayName", activeCallInvite.getTo());
    }

    map.put("outgoing", activeCallInvite == null);
    map.put("status", status);
    return map;
  }

  private void sendEvent(String eventName, String eventData) {
    Log.d(TAG, "event sink is null? " + (eventSink == null));
    Log.d(TAG, "Sending event: " + eventName + " with data: " + eventData);
    Map<String, Object> event = new HashMap<>();
    event.put("event", eventName);
    event.put("data", getCallDetails());
    new Handler(Looper.getMainLooper()).post(() -> {
        if (eventSink != null) {
            eventSink.success(event);
        } else {
            // Store event to be sent when sink becomes available
            pendingEvents.add(event);
            Log.d(TAG, "Added event to pending queue: " + eventName);
        }
    });
    Log.d(TAG, "Attempting to send event: " + eventName + " with data: " + eventData);
  }

  @Override
  public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
    Log.d(TAG, "onAttachedToActivity");
    activityPluginBinding.addOnNewIntentListener(this);
    this.registrationListener = createRegistrationListener();
  }

  @Override
  public void onDetachedFromActivityForConfigChanges() {
    Log.d(TAG, "onDetachedFromActivityForConfigChanges");
    this.unregister();
  }

  @Override
  public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
    Log.d(TAG, "onReattachedToActivityForConfigChanges");
    activityPluginBinding.addOnNewIntentListener(this);
    this.registrationListener = createRegistrationListener();
  }

  @Override
  public void onDetachedFromActivity() {
    Log.d(TAG, "onDetachedFromActivity");
    this.unregister();
  }

  @Override
  public void onListen(Object arguments, EventChannel.EventSink events) {
    Log.d(TAG, "onListen called : " + events.toString());
    eventSink = events;

    // Send any pending events
    if (!pendingEvents.isEmpty()) {
      new Handler(Looper.getMainLooper()).post(() -> {
        Log.d(TAG, "Sending pending events");
        for (Map<String, Object> event : pendingEvents) {
          eventSink.success(event);
        }
        pendingEvents.clear();
      });
    }
  }

  @Override
  public void onCancel(Object arguments) {
    Log.d(TAG, "onCancel called");
    eventSink = null;
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding binding) {
    methodChannel.setMethodCallHandler(null);
    // eventMethodChannel.setMethodCallHandler(null);
    eventChannel.setStreamHandler(null);
    if (callEventReceiver != null) {
      context.unregisterReceiver(callEventReceiver);
    }
  }
  private void initializePlugin() {
    if (callListener == null) {
        callListener = createCallListener();
    }
    
    initializeAudioDefaults();
    
    // If we have an active call, make sure audio routing is correct
    if (activeCall != null) {
        setAudioRoute();
    }
}
private void setAudioRoute() {
  if (audioDeviceManager != null) {
      List<AudioDeviceManager.AudioDevice> devices = audioDeviceManager.getAvailableDevices();
      if (devices.contains(AudioDeviceManager.AudioDevice.EARPIECE)) {
          audioDeviceManager.selectDevice(AudioDeviceManager.AudioDevice.EARPIECE);
          lastSelectedDevice = AudioDeviceManager.AudioDevice.EARPIECE;
      }
  }
}

  @Override
  public boolean onNewIntent(Intent intent) {
    if (intent != null && TwilioConstants.ACTION_ACCEPT.equals(intent.getAction())) {
      // Make sure we're initialized
      initializePlugin();
  }
    return false;
  }

  private void getAudioDevices(Result result) {
    List<AudioDeviceManager.AudioDevice> devices = audioDeviceManager.getAvailableDevices();
    List<String> deviceNames = new ArrayList<>();
    for (AudioDeviceManager.AudioDevice device : devices) {
        deviceNames.add(device.name());
    }
    result.success(deviceNames);
}

private void selectAudioDevice(String deviceName, Result result) {
    try {
        AudioDeviceManager.AudioDevice device = AudioDeviceManager.AudioDevice.valueOf(deviceName);
        audioDeviceManager.selectDevice(device);
        result.success(null);
    } catch (IllegalArgumentException e) {
        result.error("INVALID_DEVICE", "Invalid audio device: " + deviceName, null);
    }
}

private void getCurrentAudioDevice(Result result) {
    AudioDeviceManager.AudioDevice device = audioDeviceManager.getSelectedDevice();
    result.success(device.name());
}

// Update the existing toggleSpeaker method
private void toggleSpeaker(Result result) {
    AudioDeviceManager.AudioDevice currentDevice = audioDeviceManager.getSelectedDevice();
    if (currentDevice == AudioDeviceManager.AudioDevice.SPEAKERPHONE) {
        // If speaker is on, switch to the last used device or earpiece
        if (lastSelectedDevice != AudioDeviceManager.AudioDevice.NONE && 
            lastSelectedDevice != AudioDeviceManager.AudioDevice.SPEAKERPHONE) {
            audioDeviceManager.selectDevice(lastSelectedDevice);
        } else {
            // Default to earpiece if available
            List<AudioDeviceManager.AudioDevice> devices = audioDeviceManager.getAvailableDevices();
            if (devices.contains(AudioDeviceManager.AudioDevice.EARPIECE)) {
                audioDeviceManager.selectDevice(AudioDeviceManager.AudioDevice.EARPIECE);
            } else {
                // If no earpiece, use first available device that's not speaker
                for (AudioDeviceManager.AudioDevice device : devices) {
                    if (device != AudioDeviceManager.AudioDevice.SPEAKERPHONE) {
                        audioDeviceManager.selectDevice(device);
                        break;
                    }
                }
            }
        }
    } else {
        // If speaker is off, turn it on
        lastSelectedDevice = currentDevice;
        audioDeviceManager.selectDevice(AudioDeviceManager.AudioDevice.SPEAKERPHONE);
    }
    
    result.success(audioDeviceManager.getSelectedDevice() == AudioDeviceManager.AudioDevice.SPEAKERPHONE);
}

private void initializeAudioDefaults() {
  List<AudioDeviceManager.AudioDevice> devices = audioDeviceManager.getAvailableDevices();
  // Check if earpiece is available
  if (devices.contains(AudioDeviceManager.AudioDevice.EARPIECE)) {
      audioDeviceManager.selectDevice(AudioDeviceManager.AudioDevice.EARPIECE);
      lastSelectedDevice = AudioDeviceManager.AudioDevice.EARPIECE;
  }
}

}