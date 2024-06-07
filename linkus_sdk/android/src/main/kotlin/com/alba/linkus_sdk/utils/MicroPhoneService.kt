package com.alba.linkus_sdk.utils

import android.app.Notification
import android.app.Service
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder
import com.alba.linkus_sdk.Constant
import com.yeastar.linkus.service.log.LogUtil

class MicroPhoneService : Service() {
    override fun onBind(intent: Intent): IBinder? {
        return null
    }

    override fun onStartCommand(intent: Intent, flags: Int, startId: Int): Int {
        LogUtil.w("MicroPhoneService onStartCommand")
        if (intent != null && intent.hasExtra(Constant.EXTRA_DATA)) {
            val notification = intent.getParcelableExtra<Notification>(Constant.EXTRA_DATA)
            if (notification != null && Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                LogUtil.w("MicroPhoneService startForeground")
                startForeground(
                    Constant.MICRO_PHONE_NOTIFICATION_ID,
                    notification,
                    ServiceInfo.FOREGROUND_SERVICE_TYPE_PHONE_CALL
                )
            }
        }
        return super.onStartCommand(intent, flags, startId)
    }

    override fun onDestroy() {
        super.onDestroy()
        LogUtil.w("MicroPhoneService onDestroy")
    }
}
