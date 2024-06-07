package com.alba.linkus_sdk.utils.permission

import android.app.Activity
import android.os.Build.VERSION_CODES
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentActivity
import com.permissionx.guolindev.PermissionX
import com.permissionx.guolindev.callback.RequestCallback
import com.permissionx.guolindev.request.PermissionBuilder

/**
 * Created by ted on 17-8-3.
 */
class PermissionRequest {
    private var mActivity: Activity? = null
    private var fragment: Fragment? = null
    private var mCallback: PermissionCallback?

    constructor(activity: Activity?, callback: PermissionCallback?) {
        this.mActivity = activity
        this.mCallback = callback
    }

    constructor(fragment: Fragment?, callback: PermissionCallback?) {
        this.fragment = fragment
        this.mCallback = callback
    }

    fun hasPermission( permissions:List< String>) {
        val permissionMediator =
            if (mActivity != null) PermissionX.init(mActivity as FragmentActivity?)
            else PermissionX.init(fragment)
        val context =
            if (mActivity != null) mActivity!!.applicationContext else fragment!!.context!!
        permissionMediator.permissions(permissions)
            .request(RequestCallback { allGranted: Boolean, grantedList: List<String?>?, deniedList: List<String?>? ->
                if (allGranted) {
                    if (mCallback != null) {
                        mCallback!!.onSuccessful(grantedList)
                    }
                } else {
                    if (mCallback != null) {
                        mCallback!!.onFailure(deniedList)
                        Toast.makeText(
                            context,
                           "Permission failed",
                            Toast.LENGTH_SHORT
                        ).show()
                    }
                }
            })
    }

    interface PermissionCallback {
        fun onSuccessful(permissions: List<String?>?)

        fun onFailure(permissions: List<String?>?)
    }
}

