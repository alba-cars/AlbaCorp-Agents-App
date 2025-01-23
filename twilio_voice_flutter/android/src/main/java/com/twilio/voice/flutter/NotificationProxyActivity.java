package com.twilio.voice.flutter;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

import com.twilio.voice.flutter.Utils.TwilioConstants;


public class NotificationProxyActivity extends Activity {
    private static final String TAG = "NotificationProxy";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d(TAG, "onCreate");
        handleIntent(getIntent());
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Log.d(TAG, "onNewIntent");
        handleIntent(intent);
    }

    private void handleIntent(Intent intent) {
        if (intent == null) {
            Log.e(TAG, "Received null intent");
            finish();
            return;
        }

        final String action = intent.getAction();
        Log.d(TAG, "Handling intent with action: " + action);

        if (action != null) {
            switch (action) {
                case TwilioConstants.ACTION_INCOMING_CALL:
                case TwilioConstants.ACTION_ACCEPT:
                    // Launch main activity first
                    launchMainActivity(intent);
                    // Then start service
                    startIncomingCallService(intent);
                    break;
                case TwilioConstants.ACTION_REJECT:
                    startIncomingCallService(intent);
                    break;
                default:
                    Log.w(TAG, "Unknown action: " + action);
                    break;
            }
        }
        finish();
    }

    private void launchMainActivity(Intent intent) {
        try {
            Log.d(TAG, "Launching main activity");
            Intent launchIntent = getPackageManager()
                .getLaunchIntentForPackage(getPackageName());
            
            if (launchIntent != null) {
                launchIntent.setAction(intent.getAction());
                launchIntent.putExtras(intent.getExtras() != null ? intent.getExtras() : new Bundle());
                launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | 
                                   Intent.FLAG_ACTIVITY_SINGLE_TOP |
                                   Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(launchIntent);
                Log.d(TAG, "Successfully launched main activity");
            } else {
                Log.e(TAG, "Could not get launch intent for package");
            }
        } catch (Exception e) {
            Log.e(TAG, "Error launching main activity", e);
        }
    }

    private void startIncomingCallService(Intent intent) {
        try {
            Log.d(TAG, "Starting IncomingCallNotificationService");
            Intent serviceIntent = new Intent(intent);
            serviceIntent.setClass(this, IncomingCallNotificationService.class);
            startService(serviceIntent);
            Log.d(TAG, "Successfully started IncomingCallNotificationService");
        } catch (Exception e) {
            Log.e(TAG, "Error starting service", e);
        }
    }
}