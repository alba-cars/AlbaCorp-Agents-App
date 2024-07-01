package com.alba.agent.services

import com.alba.agent.R
import android.content.Context
import android.content.SharedPreferences
import android.graphics.Color
import android.graphics.PixelFormat
import android.os.Build
import android.telecom.Call
import android.telecom.CallScreeningService
import android.telephony.TelephonyCallback
import android.telephony.TelephonyManager
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.WindowManager
import android.widget.LinearLayout
import androidx.annotation.RequiresApi
import androidx.core.content.getSystemService
import android.widget.Button
import android.widget.TextView
import android.widget.EditText
import android.content.ComponentName
import android.content.Intent


class MyCallScreeningService : CallScreeningService() {
    companion object {
        var ly1: LinearLayout? = null
    }
    private var wm: WindowManager? = null



    override fun onScreenCall(callDetails: Call.Details) {
        val phoneNumber = getPhoneNumber(callDetails)
        var response = CallResponse.Builder()
        val preferences: SharedPreferences = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
        val telephonyManager :TelephonyManager? =  applicationContext.getSystemService<TelephonyManager>()
        Log.i("flutter", "onScreenCall: $phoneNumber")
        wm = applicationContext.getSystemService(WINDOW_SERVICE) as WindowManager
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            val listener: TelephonyCallback = MyListener(
                applicationContext,
                wm!!,
                preferences,
                ly1,
                telephonyManager
            );
            telephonyManager?.registerTelephonyCallback(applicationContext.mainExecutor, listener)
            
        }
        try {
            preferences.edit().putString("flutter.call",phoneNumber).apply();
        }catch (e:Exception){
            Log.i("flutter",e.toString())   ;
        }
        response = handlePhoneCall(response, phoneNumber)
        respondToCall(callDetails, response.build())
    }

    private fun handlePhoneCall(
        response: CallResponse.Builder,
        phoneNumber: String
    ): CallResponse.Builder {
        return response
    }

    private fun getPhoneNumber(callDetails: Call.Details): String {
        return callDetails.handle.toString()
    }

    private fun displayToast(message: String) {

    }

}

@RequiresApi(Build.VERSION_CODES.S)
private class MyListener(
    context: Context,
    windowManager: WindowManager,
    sharedPreferences: SharedPreferences,
     var ly1:  LinearLayout?,
     val telephonyManager: TelephonyManager?,
) : TelephonyCallback(), TelephonyCallback.CallStateListener{

    val  sharedPreferences:SharedPreferences = sharedPreferences;
    val wm:WindowManager = windowManager;
    val applicationContext :Context = context;
    private var params1: WindowManager.LayoutParams? = null
    override fun onCallStateChanged(state: Int) {
        Log.d("flutter", "call state listener: $state")
        when(state){
            TelephonyManager.CALL_STATE_IDLE->{

             val number=   sharedPreferences.getString("flutter.call",null);
             Log.d("flutter", "number: $number")
                if(number!= null){
                    sharedPreferences.edit().putString("flutter.calledNumber",number.replace("tel:","")).apply()
                    sharedPreferences.edit().remove("flutter.call").apply()
                    val LAYOUT_FLAG : Int;
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                        LAYOUT_FLAG = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
                    } else {
                        LAYOUT_FLAG = WindowManager.LayoutParams.TYPE_PHONE;
                    }
                    params1 = WindowManager.LayoutParams(
                        WindowManager.LayoutParams.WRAP_CONTENT,
                        WindowManager.LayoutParams.WRAP_CONTENT,
                        LAYOUT_FLAG,
                                 WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or
                                WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM,
                        PixelFormat.TRANSPARENT
                    )

                    params1?.format = PixelFormat.TRANSLUCENT

                    ly1 = LinearLayout(applicationContext)
                    ly1?.setOrientation(LinearLayout.VERTICAL)

                    val hiddenInfo: View? = LayoutInflater.from(applicationContext)?.inflate(R.layout.call_feedback_layout,null)
                    ly1!!.addView(hiddenInfo)

                    wm?.addView(ly1, params1)

                    val buttonIgnore = hiddenInfo?.findViewById<Button>(R.id.button_ignore)
                    val buttonFeedback = hiddenInfo?.findViewById<Button>(R.id.button_feedback)

                    val textWidget = hiddenInfo?.findViewById<TextView>(R.id.message)
                    val feedbackInputWidget = hiddenInfo?.findViewById<EditText>(R.id.feedback_input)
                   val text = textWidget?.text
                    textWidget?.text = text?.toString()?.replace("{number}",number)
                    buttonFeedback?.setOnClickListener {
                        val feedbackText = feedbackInputWidget?.text.toString()
                        sharedPreferences.edit().putString("flutter.calledNumberFeedback",feedbackText).apply()
                        wm?.removeView(ly1);
                        telephonyManager?.unregisterTelephonyCallback(this)
                        Intent().also { intents ->
                            intents.component = ComponentName(
                                "com.alba.agent",
                                "com.alba.agent.MainActivity"
                            )
                            intents.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            applicationContext.startActivity(intents)
                        }

                    }
                    buttonIgnore?.setOnClickListener {
                        wm?.removeView(ly1);
                        telephonyManager?.unregisterTelephonyCallback(this)
                    }


                }
            }
        }
    }

}