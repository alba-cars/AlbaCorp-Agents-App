package com.twilio.voice.flutter;

import androidx.annotation.NonNull;

import android.os.Handler;
import android.os.Looper;
import com.twilio.voice.Call;
import com.twilio.voice.CallException;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;

import com.twilio.voice.CallInvite;
import com.twilio.voice.flutter.Utils.SoundUtils;
import com.twilio.voice.flutter.Utils.TwilioConstants;

public class IncomingCallNotificationService extends Service {

    private static final String TAG = IncomingCallNotificationService.class.getSimpleName();
    private SoundUtils soundUtils;

    @Override
    public void onCreate() {
        super.onCreate();
        soundUtils = SoundUtils.getInstance(this);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(TAG, "==== Service onStartCommand ====");  // Added log
        
        if (intent == null) {
            Log.e(TAG, "Received null intent");  // Added null check
            return START_NOT_STICKY;
        }
        String action = intent.getAction();

        if (action != null) {
            CallInvite callInvite = intent.getParcelableExtra(TwilioConstants.EXTRA_INCOMING_CALL_INVITE);
            Log.d(TAG, "Received action: " + action);
            
            int notificationId = intent.getIntExtra(TwilioConstants.INCOMING_CALL_NOTIFICATION_ID, 0);
            switch (action) {
                case TwilioConstants.ACTION_INCOMING_CALL:
                    if (callInvite == null) {
                        Log.e(TAG, "Received ACTION_INCOMING_CALL but CallInvite was null");
                        return START_NOT_STICKY;
                    }
                    handleIncomingCall(intent, callInvite, notificationId);
                    break;
                case TwilioConstants.ACTION_ACCEPT:
                    if (callInvite == null) {
                        Log.e(TAG, "Received ACTION_ACCEPT but CallInvite was null");
                        return START_NOT_STICKY;
                    }
                    accept(callInvite, notificationId);
                    break;
                case TwilioConstants.ACTION_REJECT:
                    if (callInvite == null) {
                        Log.e(TAG, "Received ACTION_REJECT but CallInvite was null");
                        return START_NOT_STICKY;
                    }
                    reject(callInvite, notificationId);
                    break;
                case TwilioConstants.ACTION_CANCEL_CALL:
                    handleCancelledCall(intent, notificationId);
                    break;
                default:
                    Log.d(TAG, "Unknown action received: " + action);
                    break;
            }
        }
        return START_NOT_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    

    @TargetApi(Build.VERSION_CODES.O)
    private Notification buildNotification(String text, PendingIntent pendingIntent, Bundle extras,
            final CallInvite callInvite, int notificationId, String channelId) {
        Log.d(TAG, "Building notification for call: " + callInvite.getCallSid());

        Intent rejectIntent = new Intent(getApplicationContext(), NotificationProxyActivity.class);
        rejectIntent.setAction(TwilioConstants.ACTION_REJECT);
        rejectIntent.putExtra(TwilioConstants.EXTRA_INCOMING_CALL_INVITE, callInvite);
        rejectIntent.putExtra(TwilioConstants.INCOMING_CALL_NOTIFICATION_ID, notificationId);
        PendingIntent piRejectIntent = PendingIntent.getActivity(this, 1, rejectIntent,
                PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);

        Intent acceptIntent = new Intent(getApplicationContext(), NotificationProxyActivity.class);
        acceptIntent.setAction(TwilioConstants.ACTION_ACCEPT);
        acceptIntent.putExtra(TwilioConstants.EXTRA_INCOMING_CALL_INVITE, callInvite);
        acceptIntent.putExtra(TwilioConstants.INCOMING_CALL_NOTIFICATION_ID, notificationId);
        acceptIntent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        PendingIntent piAcceptIntent = PendingIntent.getActivity(this, 2, acceptIntent,
                PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);

        Notification.Builder builder = new Notification.Builder(getApplicationContext(), channelId)
                .setSmallIcon(R.drawable.ic_phone_call)
                .setContentTitle(getString(R.string.notification_incoming_call_title))
                .setContentText(text)
                .setCategory(Notification.CATEGORY_CALL)
                .setExtras(extras)
                .setAutoCancel(true)
                .setOngoing(true)
                .setTimeoutAfter(45000)
                .setContentIntent(pendingIntent)
                .setFullScreenIntent(pendingIntent, true)
                .addAction(android.R.drawable.ic_menu_call, getString(R.string.btn_reject), 
                        piRejectIntent)
                .addAction(android.R.drawable.ic_menu_close_clear_cancel, getString(R.string.btn_accept),
                        piAcceptIntent);

        Notification notification = builder.build();
        notification.flags |= Notification.FLAG_INSISTENT;
        
        return notification;
    }

    @TargetApi(Build.VERSION_CODES.O)
private String createChannel(int channelImportance) {
    String channelId = TwilioConstants.VOICE_CHANNEL_HIGH_IMPORTANCE;
    NotificationManager notificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
    
    // Create channel with maximum importance
    NotificationChannel channel = new NotificationChannel(
        channelId,
        "Incoming Calls",
        NotificationManager.IMPORTANCE_MAX  // Changed to IMPORTANCE_MAX
    );
    
    channel.setLightColor(Color.RED);  // Changed to RED for better visibility
    channel.enableVibration(true);
    channel.setVibrationPattern(new long[]{0, 1000, 500, 1000});
    channel.setLockscreenVisibility(Notification.VISIBILITY_PUBLIC);
    channel.setBypassDnd(true);
    channel.setShowBadge(true);
    channel.enableLights(true);
    channel.setSound(null, null);  // We handle sound separately
    
    Log.d(TAG, "Creating notification channel with importance: " + channel.getImportance());
    notificationManager.createNotificationChannel(channel);
    
    return channelId;
}

private Notification createNotification(CallInvite callInvite, int notificationId, int channelImportance) {
    Log.d(TAG, "Creating notification for call: " + callInvite.getCallSid());

    // Create full screen intent
    Intent fullScreenIntent = new Intent(this, NotificationProxyActivity.class);
    fullScreenIntent.setAction(TwilioConstants.ACTION_INCOMING_CALL_NOTIFICATION);
    fullScreenIntent.putExtra(TwilioConstants.INCOMING_CALL_NOTIFICATION_ID, notificationId);
    fullScreenIntent.putExtra(TwilioConstants.INCOMING_CALL_INVITE, callInvite);
    fullScreenIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP);
    
    PendingIntent fullScreenPendingIntent = PendingIntent.getActivity(this, notificationId,
            fullScreenIntent, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);

    // Create notification builder
    NotificationCompat.Builder builder = new NotificationCompat.Builder(this, 
            Build.VERSION.SDK_INT >= Build.VERSION_CODES.O 
                ? createChannel(channelImportance) 
                : TwilioConstants.VOICE_CHANNEL_HIGH_IMPORTANCE)
            .setSmallIcon(R.drawable.ic_phone_call)
            .setContentTitle("Incoming Call")
            .setContentText(callInvite.getFrom() + " is calling")
            .setPriority(NotificationCompat.PRIORITY_MAX)
            .setCategory(NotificationCompat.CATEGORY_CALL)
            .setFullScreenIntent(fullScreenPendingIntent, true)
            .setOngoing(true)
            .setAutoCancel(false)
            .setVisibility(NotificationCompat.VISIBILITY_PUBLIC)
            .setTimeoutAfter(45000)  // 45 seconds timeout
            .setDefaults(NotificationCompat.DEFAULT_ALL);

    // Add reject action
    Intent rejectIntent = new Intent(this, NotificationProxyActivity.class);
    rejectIntent.setAction(TwilioConstants.ACTION_REJECT);
    rejectIntent.putExtra(TwilioConstants.EXTRA_INCOMING_CALL_INVITE, callInvite);
    rejectIntent.putExtra(TwilioConstants.INCOMING_CALL_NOTIFICATION_ID, notificationId);
    PendingIntent rejectPendingIntent = PendingIntent.getActivity(this, 1, rejectIntent,
            PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
    builder.addAction(new NotificationCompat.Action(
            android.R.drawable.ic_menu_close_clear_cancel,
            "Reject",
            rejectPendingIntent));

    // Add accept action
    Intent acceptIntent = new Intent(this, NotificationProxyActivity.class);
    acceptIntent.setAction(TwilioConstants.ACTION_ACCEPT);
    acceptIntent.putExtra(TwilioConstants.EXTRA_INCOMING_CALL_INVITE, callInvite);
    acceptIntent.putExtra(TwilioConstants.INCOMING_CALL_NOTIFICATION_ID, notificationId);
    PendingIntent acceptPendingIntent = PendingIntent.getActivity(this, 2, acceptIntent,
            PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
    builder.addAction(new NotificationCompat.Action(
            android.R.drawable.ic_menu_call,
            "Accept",
            acceptPendingIntent));

    Notification notification = builder.build();
    notification.flags |= Notification.FLAG_INSISTENT;
    
    return notification;
}

private void setCallInProgressNotification(CallInvite callInvite, int notificationId) {
    Log.d(TAG, "Setting up call notification");
    
    try {
        Notification notification = createNotification(callInvite, notificationId, 
                NotificationManager.IMPORTANCE_MAX);

        // Start foreground service first
        startForeground(notificationId, notification);
        Log.d(TAG, "Started foreground service");

        
    } catch (Exception e) {
        Log.e(TAG, "Error showing notification", e);
    }
}
private void accept(CallInvite callInvite, int notificationId) {
    if (callInvite != null) {
        Log.d(TAG, "Accepting call invite: " + callInvite.getCallSid());
        
        // Store call invite
        TwilioVoiceFlutterPlugin.activeCallInvite = callInvite;

        // Start the main activity first
        Intent launchIntent = getPackageManager().getLaunchIntentForPackage(getPackageName());
        if (launchIntent != null) {
            try {
                launchIntent.setAction(TwilioConstants.ACTION_ACCEPT);
                launchIntent.putExtra(TwilioConstants.EXTRA_INCOMING_CALL_INVITE, callInvite);
                launchIntent.putExtra(TwilioConstants.INCOMING_CALL_NOTIFICATION_ID, notificationId);
                launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(launchIntent);
                
                // Wait for activity to initialize
                new Handler(Looper.getMainLooper()).postDelayed(() -> {
                    try {
                        if (TwilioVoiceFlutterPlugin.callListener != null) {
                            // Use plugin's listener if available
                            callInvite.accept(this, TwilioVoiceFlutterPlugin.callListener);
                        } else {
                            // Create temporary listener if plugin's listener is not ready
                            Call.Listener tempListener = new Call.Listener() {
                                @Override
                                public void onConnected(@NonNull Call call) {
                                    Log.d(TAG, "Call Connected with temp listener");
                                    TwilioVoiceFlutterPlugin.activeCall = call;
                                    sendCallEvent("callConnected", "");
                                }
                                
                                @Override
                                public void onDisconnected(@NonNull Call call, CallException error) {
                                    Log.d(TAG, "Call Disconnected");
                                    TwilioVoiceFlutterPlugin.activeCall = null;
                                    String message = error != null ? error.getMessage() : "";
                                    sendCallEvent("callDisconnected", message);
                                }

                                @Override
                                public void onConnectFailure(@NonNull Call call, @NonNull CallException error) {
                                    Log.e(TAG, "Call Failed: " + error.getMessage());
                                    sendCallEvent("callFailure", error.getMessage());
                                }

                                @Override
                                public void onRinging(@NonNull Call call) {
                                    Log.d(TAG, "Ringing");
                                    sendCallEvent("callRinging", "");
                                }

                                @Override
                                public void onReconnecting(@NonNull Call call, @NonNull CallException callException) {
                                    Log.d(TAG, "Reconnecting");
                                    sendCallEvent("callReconnecting", "");
                                }

                                @Override
                                public void onReconnected(@NonNull Call call) {
                                    Log.d(TAG, "Reconnected");
                                    sendCallEvent("callReconnected", "");
                                }
                            };
                            callInvite.accept(this, tempListener);
                        }

                        // Clean up notification
                        NotificationManager notificationManager = (NotificationManager) 
                                getSystemService(Context.NOTIFICATION_SERVICE);
                        notificationManager.cancel(notificationId);
                        endForeground();

                    } catch (Exception e) {
                        Log.e(TAG, "Error accepting call", e);
                    }
                }, 1000);
                
            } catch (Exception e) {
                Log.e(TAG, "Error starting activity", e);
            }
        }
    } else {
        Log.e(TAG, "CallInvite is null or expired.");
    }
}

private void sendCallEvent(String eventName, String eventData) {
    Intent intent = new Intent(TwilioVoiceFlutterPlugin.ACTION_CALL_EVENT);
    intent.putExtra("eventName", eventName);
    intent.putExtra("eventData", eventData);
    sendBroadcast(intent);
}

    private void reject(CallInvite callInvite, int notificationId) {
        Log.d(TAG, "Rejecting call invite: " + callInvite.getCallSid());
        callInvite.reject(this);
        endForeground();
        TwilioVoiceFlutterPlugin.activeCallInvite = null;
        NotificationManager notificationManager = (NotificationManager) 
                getSystemService(Context.NOTIFICATION_SERVICE);
        notificationManager.cancel(notificationId);
        soundUtils.stopRinging();
        stopSelf();
    }

    private void handleCancelledCall(Intent intent, int notificationId) {
        Log.d(TAG, "Handling cancelled call for notification: " + notificationId);
        endForeground();
        TwilioVoiceFlutterPlugin.activeCallInvite = null;
        NotificationManager notificationManager = (NotificationManager) 
                getSystemService(Context.NOTIFICATION_SERVICE);
        notificationManager.cancel(notificationId);
        soundUtils.stopRinging();
        stopSelf();
    }

    private void handleIncomingCall(Intent intent, CallInvite callInvite, int notificationId) {
        Log.d(TAG, "Handling incoming call: " + callInvite.getCallSid());
        soundUtils.playRinging();
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
        setCallInProgressNotification(callInvite, notificationId);
    }


    private void endForeground() {
        stopForeground(true);
        soundUtils.stopRinging();
    }

    private boolean isAppVisible() {
        return ProcessLifecycleOwner
                .get()
                .getLifecycle()
                .getCurrentState()
                .isAtLeast(Lifecycle.State.STARTED);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        soundUtils.stopRinging();
    }
}