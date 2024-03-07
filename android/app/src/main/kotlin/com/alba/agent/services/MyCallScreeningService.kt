package com.alba.agent.services

import android.content.SharedPreferences
import android.telecom.Call
import android.telecom.CallScreeningService
import android.util.Log
import androidx.preference.PreferenceManager


class MyCallScreeningService : CallScreeningService() {



    override fun onScreenCall(callDetails: Call.Details) {
        val phoneNumber = getPhoneNumber(callDetails)
        var response = CallResponse.Builder()
        Log.i("flutter", "onScreenCall: $phoneNumber")
        try {
            val preferences: SharedPreferences = PreferenceManager.getDefaultSharedPreferences(this)
            preferences.edit().putString("call",phoneNumber);
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