package com.alba.linkus_sdk.utils.permission

import android.app.Activity
import com.permissionx.guolindev.PermissionX

/**
 * Created by ted on 17-8-11.
 */
class PermissionUtil(private val activity: Activity) {
    fun hasPermissions(permissions: String?): Boolean {
        return PermissionX.isGranted(activity, permissions)
    }
}
