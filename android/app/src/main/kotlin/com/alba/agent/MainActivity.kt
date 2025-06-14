package com.alba.agent

import android.app.role.RoleManager
import android.app.role.RoleManager.ROLE_CALL_SCREENING
import android.content.Intent
import android.os.Build
import android.os.Bundle
import androidx.annotation.RequiresApi
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import com.alba.agent.MyApplication


@RequiresApi(Build.VERSION_CODES.Q)
class MainActivity: FlutterFragmentActivity() {
    companion object {
        private const val REQUEST_ID_BECOME_CALL_SCREENER = 1
        private const val REQUEST_ID_REQUEST_READ_CONTACTS_PERMISSION = 1
        private const val EXTRA_CONTACT_READ_PERMISSION_DENIED = "contact_permission_denied_forever"
        private const val CHANNEL = "com.alba.agent/calling"
    }
    
    private val roleManager by lazy { getSystemService(RoleManager::class.java) }
    private lateinit var methodChannel: MethodChannel
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
        methodChannel.setMethodCallHandler { call, result ->
            // Handle method calls from Flutter if needed
            result.success(null)
        }
        
    }



    override fun onResume() {
        super.onResume()
        MyApplication.activityResumed()
    }

    override fun onPause() {
        super.onPause()
        MyApplication.activityPaused()
    }
}