package com.twilio.voice.flutter.fcm;

import android.content.Intent;
import android.os.PowerManager;
import android.os.Build;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;

import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.twilio.voice.CallException;
import com.twilio.voice.CallInvite;
import com.twilio.voice.CancelledCallInvite;
import com.twilio.voice.MessageListener;
import com.twilio.voice.Voice;
import com.twilio.voice.flutter.TwilioVoiceFlutterPlugin;

import com.twilio.voice.flutter.IncomingCallNotificationService;
import com.twilio.voice.flutter.Utils.TwilioConstants;

public class VoiceFirebaseMessagingService extends FirebaseMessagingService {
    private static final String TAG = "VoiceFCMService";
    public static final String ACTION_TOKEN = "com.twilio.voice.flutter.NEW_FCM_TOKEN";
    public static final String EXTRA_TOKEN = "token";
    private PowerManager.WakeLock wakeLock;
    private static final int WAKE_LOCK_TIMEOUT = 60000; // 1 minute timeout

    @Override
    public void onCreate() {
        super.onCreate();
        try {
            PowerManager powerManager = (PowerManager) getSystemService(POWER_SERVICE);
            wakeLock = powerManager.newWakeLock(
                PowerManager.PARTIAL_WAKE_LOCK,
                "TwilioVoice:FCMWakeLock"
            );
        } catch (Exception e) {
            Log.e(TAG, "Error initializing wake lock", e);
        }
    }

    @Override
    public void onNewToken(@NonNull String token) {
        try {
            Log.d(TAG, "Refreshed FCM token: " + token);
            // Broadcast new token to the app
            Intent tokenIntent = new Intent(ACTION_TOKEN);
            tokenIntent.putExtra(EXTRA_TOKEN, token);
            LocalBroadcastManager.getInstance(getApplicationContext())
                .sendBroadcast(tokenIntent);
        } catch (Exception e) {
            Log.e(TAG, "Error handling new FCM token", e);
        }
    }

    @Override
    public void onMessageReceived(@NonNull RemoteMessage remoteMessage) {
        acquireWakeLock();
        
        try {
            

            if (remoteMessage.getData().isEmpty()) {
                Log.w(TAG, "Received empty data payload");
                return;
            }
            Map<String, String> data = new HashMap<>(remoteMessage.getData());
        
        Log.d(TAG, "Received FCM message: " + data);


            // Handle the Twilio Voice message
            boolean validMessage = Voice.handleMessage(
                this, 
                data, 
                new MessageListener() {
                    @Override
                    public void onCallInvite(@NonNull CallInvite callInvite) {
                        Log.d(TAG, "Processing call invite: " + callInvite.getCallSid());
                        handleIncomingCall(callInvite);
                    }

                    @Override
                    public void onCancelledCallInvite(
                            @NonNull CancelledCallInvite cancelledCallInvite,
                            @Nullable CallException callException) {
                        Log.d(TAG, "Processing cancelled call: " + 
                            cancelledCallInvite.getCallSid());
                        handleCancelledCall(cancelledCallInvite);
                        
                        if (callException != null) {
                            Log.e(TAG, "Call cancelled with exception: " + 
                                callException.getMessage());
                        }
                    }
                }
            );

            if (!validMessage) {
                Log.e(TAG, "Received invalid Twilio Voice payload");
            }
        } catch (Exception e) {
            Log.e(TAG, "Error handling FCM message", e);
        } finally {
            releaseWakeLock();
        }
    }

    private void handleIncomingCall(@NonNull CallInvite callInvite) {
        try {
            Log.d(TAG, "Received incoming call invite: " + callInvite.getCallSid());
            
            // Generate a unique notification ID
            int notificationId = (int) System.currentTimeMillis();
            
            // Create intent for the notification service
            Intent intent = new Intent(this, IncomingCallNotificationService.class)
                    .setAction(TwilioConstants.ACTION_INCOMING_CALL)
                    .putExtra(TwilioConstants.EXTRA_INCOMING_CALL_INVITE, callInvite)
                    .putExtra(TwilioConstants.INCOMING_CALL_NOTIFICATION_ID, notificationId)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    
            // Start the service for handling the incoming call
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                Log.d(TAG, "Starting foreground service for incoming call");
                startForegroundService(intent);
            } else {
                Log.d(TAG, "Starting service for incoming call");
                startService(intent);
            }
            
            // Save the active call invite
            TwilioVoiceFlutterPlugin.activeCallInvite = callInvite;
            
        } catch (Exception e) {
            Log.e(TAG, "Error handling incoming call", e);
            e.printStackTrace();
        }
    }
    
    private void handleCancelledCall(@NonNull CancelledCallInvite cancelledCallInvite) {
        try {
            Log.d(TAG, "Handling cancelled call: " + cancelledCallInvite.getCallSid());
            
            // Create intent for the notification service
            Intent intent = new Intent(this, IncomingCallNotificationService.class)
                    .setAction(TwilioConstants.ACTION_CANCEL_CALL)
                    .putExtra(TwilioConstants.EXTRA_CANCELLED_CALL_INVITE, cancelledCallInvite)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(intent);
            } else {
                startService(intent);
            }
            
            // Clear the active call invite
            TwilioVoiceFlutterPlugin.activeCallInvite = null;
            
        } catch (Exception e) {
            Log.e(TAG, "Error handling cancelled call", e);
            e.printStackTrace();
        }
    }

    private void acquireWakeLock() {
        try {
            if (wakeLock != null && !wakeLock.isHeld()) {
                wakeLock.acquire(WAKE_LOCK_TIMEOUT);
                Log.d(TAG, "FCM WakeLock acquired");
            }
        } catch (Exception e) {
            Log.e(TAG, "Error acquiring wake lock", e);
        }
    }

    private void releaseWakeLock() {
        try {
            if (wakeLock != null && wakeLock.isHeld()) {
                wakeLock.release();
                Log.d(TAG, "FCM WakeLock released");
            }
        } catch (Exception e) {
            Log.e(TAG, "Error releasing wake lock", e);
        }
    }

    @Override
    public void onDestroy() {
        try {
            releaseWakeLock();
            super.onDestroy();
        } catch (Exception e) {
            Log.e(TAG, "Error in onDestroy", e);
        }
    }
}