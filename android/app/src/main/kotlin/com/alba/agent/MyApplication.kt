package com.alba.agent

import io.flutter.app.FlutterApplication;

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
    }

}