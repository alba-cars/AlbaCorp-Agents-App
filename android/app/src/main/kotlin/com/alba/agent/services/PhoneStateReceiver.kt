package com.alba.agent.services

import android.content.BroadcastReceiver
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.graphics.PixelFormat
import android.os.Build
import android.view.View
import android.telephony.TelephonyManager
import android.util.Log
import android.view.LayoutInflater
import android.view.WindowManager
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TextView
import com.alba.agent.MyApplication
import com.alba.agent.R

class PhoneStateReceiver : BroadcastReceiver() {


    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == TelephonyManager.ACTION_PHONE_STATE_CHANGED) {
            val state = intent.getStringExtra(TelephonyManager.EXTRA_STATE)
            val phoneNumber = intent.getStringExtra(TelephonyManager.EXTRA_INCOMING_NUMBER)

            val preferences: SharedPreferences = context.getSharedPreferences("FlutterSharedPreferences", Context.MODE_PRIVATE)


            when (state) {
                TelephonyManager.EXTRA_STATE_RINGING -> {
                    Log.d("flutter", "Incoming call from $phoneNumber")
                    val numberToSave = phoneNumber ?: "Unknown"
                    preferences.edit().putString("flutter.call", numberToSave).apply()
                    preferences.edit().putString("flutter.CallDirection", "incoming").apply()
                }
                TelephonyManager.EXTRA_STATE_IDLE -> {
                    Log.d("flutter", "Call ended with $phoneNumber")
                    val savedNumber = preferences.getString("flutter.call", null)
                    if (savedNumber != null) {
                        OverlayManager.showOverlay(context, savedNumber,preferences)
                    }
                }
                TelephonyManager.EXTRA_STATE_OFFHOOK->{
                     Log.d("flutter", "Call offhook with $phoneNumber")
                     if(phoneNumber != null){

                      val numberToSave = phoneNumber 
                    preferences.edit().putString("flutter.call", numberToSave).apply()
                    preferences.edit().putString("flutter.CallDirection", "outgoing").apply()
                    
                     }
                }
            }
        }
    }

    

    
}

object OverlayManager {
    private var windowManager: WindowManager? = null
    private var overlayView: View? = null

    fun showOverlay(context: Context, number: String,preferences:SharedPreferences) {
       val ignoreFeedback = preferences.getBoolean("IgnoreCallFeedback", false)
        if (ignoreFeedback) {
            preferences.edit()
                .remove("IgnoreCallFeedback")
                .apply()
            return
        }
        if(number == "042815555" || number == "+97142815555"){
            preferences.edit().putString("flutter.call", "PROPERTY_FINDER").apply()
            startActivity(context)
            return;
        }
        if (overlayView != null) {
            // If an overlay is already showing, remove it first
            removeOverlay()
        }

        windowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager

        val inflater = Context.LAYOUT_INFLATER_SERVICE as String
        val layoutInflater = context.getSystemService(inflater) as LayoutInflater
        overlayView = layoutInflater.inflate(R.layout.call_feedback_layout, null)

        val LAYOUT_FLAG : Int;
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                        LAYOUT_FLAG = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
                    } else {
                        LAYOUT_FLAG = WindowManager.LayoutParams.TYPE_PHONE;
                    }

        val params = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            LAYOUT_FLAG,
            WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or 
                WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM,
            PixelFormat.TRANSLUCENT
        )

        setupOverlayView(context, overlayView!!, number)
        windowManager?.addView(overlayView, params)
    }

    private fun setupOverlayView(context: Context, view: View, number: String) {
        val textWidget = view.findViewById<TextView>(R.id.message)
        textWidget.text = textWidget.text.toString().replace("{number}", number)

        val buttonIgnore = view.findViewById<Button>(R.id.button_ignore)
        val buttonFeedback = view.findViewById<Button>(R.id.button_feedback)

        buttonIgnore.setOnClickListener { removeOverlay() }

        buttonFeedback.setOnClickListener {
            val preferences = context.getSharedPreferences("FlutterSharedPreferences", Context.MODE_PRIVATE)
            preferences.edit().putString("flutter.calledNumber", number.replace("tel:", "")).apply()
            preferences.edit().remove("flutter.call").apply()

            startActivity(context)
            removeOverlay()
        }
    }

    fun removeOverlay() {
        try {
            if (windowManager != null && overlayView != null) {
                windowManager?.removeView(overlayView)
                windowManager = null
                overlayView = null
            }
        } catch (e: IllegalArgumentException) {
            Log.e("OverlayManager", "View not attached to WindowManager", e)
        }
    }

    fun startActivity(context: Context,){
        if (!MyApplication.isActivityVisible()) {
                Intent().also { intents ->
                                intents.component = ComponentName(
                                    "com.alba.agent",
                                    "com.alba.agent.MainActivity"
                                )
                                intents.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                context.startActivity(intents)
                            }
                //val intent = Intent(context, MainActivity::class.java).apply {
                 //   addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                //}
                //context.startActivity(intent)
            }
    }
}