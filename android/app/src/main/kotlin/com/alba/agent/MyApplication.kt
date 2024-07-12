package com.alba.agent

import io.flutter.app.FlutterApplication;
import android.telephony.TelephonyManager

class MyApplication : FlutterApplication() {
    companion object {
        private var activityVisible: Boolean = false

        fun isActivityVisible(): Boolean {
            return activityVisible
        }

        fun activityResumed() {
            activityVisible = true
        }

        fun activityPaused() {
            activityVisible = false
        }

         var lastState = TelephonyManager.CALL_STATE_IDLE
         var callStartTime: Long = 0
         var isIncoming = false
         var savedNumber: String? = null
    }

}