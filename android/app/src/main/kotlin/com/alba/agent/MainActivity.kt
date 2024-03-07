package com.alba.agent

import android.app.role.RoleManager
import android.app.role.RoleManager.ROLE_CALL_SCREENING
import android.os.Build
import android.os.Bundle
import android.os.PersistableBundle
import androidx.annotation.RequiresApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity


@RequiresApi(Build.VERSION_CODES.Q)
class MainActivity: FlutterFragmentActivity() {
    companion object {
        private const val REQUEST_ID_BECOME_CALL_SCREENER = 1
        private const val REQUEST_ID_REQUEST_READ_CONTACTS_PERMISSION = 1

        private const val EXTRA_CONTACT_READ_PERMISSION_DENIED = "contact_permission_denied_forever"
    }
    private val roleManager by lazy { getSystemService(RoleManager::class.java) }
    
    override fun onCreate(savedInstanceState: Bundle?) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            requestRole()
        };
        super.onCreate(savedInstanceState)
    }
    @RequiresApi(Build.VERSION_CODES.Q)
    private fun requestRole() {
    val intent = roleManager.createRequestRoleIntent(ROLE_CALL_SCREENING)

        @Suppress("DEPRECATION")
    startActivityForResult(intent,
      REQUEST_ID_BECOME_CALL_SCREENER
    )
  }
    
}
