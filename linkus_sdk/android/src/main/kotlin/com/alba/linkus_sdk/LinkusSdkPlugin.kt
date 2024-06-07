package com.alba.linkus_sdk

import android.Manifest
import android.app.Activity
import android.content.Context
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Log
import com.alba.linkus_sdk.utils.permission.PermissionRequest
import com.yeastar.linkus.constant.YlsConstant
import com.yeastar.linkus.service.base.YlsBaseManager
import com.yeastar.linkus.service.call.YlsCallManager
import com.yeastar.linkus.service.call.vo.CallStateVo
import com.yeastar.linkus.service.callback.ActionCallback
import com.yeastar.linkus.service.callback.CallStateCallback
import com.yeastar.linkus.service.callback.RequestCallback
import com.yeastar.linkus.service.callback.SdkCallback
import com.yeastar.linkus.service.login.YlsLoginManager
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import org.json.JSONObject


/** LinkusSdkPlugin */
class LinkusSdkPlugin: FlutterPlugin, MethodCallHandler,EventChannel.StreamHandler,ActivityAware {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var eventChannel : EventChannel
  private lateinit var context: Context
  private var _eventSink :EventChannel.EventSink? = null
  private var activity: Activity? = null
  private val uiThreadHandler = Handler(Looper.getMainLooper())

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "linkus_sdk")
    channel.setMethodCallHandler(this)
    eventChannel = EventChannel(flutterPluginBinding.binaryMessenger,"linkus-sdk-callback")
    eventChannel.setStreamHandler(this)
    context = flutterPluginBinding.applicationContext
  }

  private class MethodResultWrapper(private val methodResult: Result) :
    Result {
    private val handler: Handler

    init {
      handler = Handler(Looper.getMainLooper())
    }

    override fun success(result: Any?) {
      handler.post(
        Runnable { methodResult.success(result) })
    }

    override fun error(
      errorCode: String, errorMessage: String?, errorDetails: Any?
    ) {
      handler.post(
        Runnable { methodResult.error(errorCode, errorMessage, errorDetails) })
    }

    override fun notImplemented() {
      handler.post(
        Runnable { methodResult.notImplemented() })
    }
  }

  override fun onMethodCall(call: MethodCall, rawResult: Result) {
    val result: Result = MethodResultWrapper(rawResult)
    when (call.method ) {
      "initialize" -> {
        try {
          YlsBaseManager.getInstance().initYlsSDK(activity?.applicationContext, null);

          YlsBaseManager.getInstance().sdkCallback = object : SdkCallback {
            // User account logout callback. Refer to the table below for account logout event types
            override fun onLogout(type: Int) {
              uiThreadHandler.post {   _eventSink?.success(mapOf("onLogout" to type)) }

              Log.d("Something ===========", "onLogout: ")
            }

            // Linus SDK reconnecting with PBX success callback
            override fun onReconnectSuccess() {
              uiThreadHandler.post { _eventSink?.success(mapOf("onReconnectSuccess" to true))}
              Log.d("Something ===========", "onReconnectSuccess: ")
            }

            // CDR records change callback
            override fun onCdrChange(syncResult: Int) {
              uiThreadHandler.post {  _eventSink?.success(mapOf("onCdrChange" to syncResult))}
              Log.d("Something ===========", "onCdrChange: ")
            }
          }
          YlsCallManager.getInstance().callStateCallback = object : CallStateCallback {
            override fun onCallStateChange(callStateVo: CallStateVo) {
              Log.d("Something ===========", "onCallStateChange: $callStateVo")
              uiThreadHandler.post { _eventSink?.success(
                mapOf("onCallStateChange" to mapOf("callId" to callStateVo.callId,"status" to callStateVo.status
              )))}
//              EventBus.getDefault().post(CallStateEvent(callStateVo))
            }

            override fun onNetWorkLevelChange(callId: Int, networkLevel: Int) {
              Log.d("Something ===========", "onNetWorkLevelChange: ")
//              EventBus.getDefault().postSticky(NetWorkLevelEvent(callId, networkLevel))
            }

            override fun onConnectChange() {
              Log.d("Something ===========", "onConnectChange: ")
//              EventBus.getDefault().postSticky(ConnectionChangeEvent())
            }

            override fun onRecordChange(isRecording: Boolean) {
              Log.d("Something ===========", "onRecordChange: ")
//              EventBus.getDefault().post(RecordEvent(isRecording))
            }
          }

          YlsCallManager.getInstance().actionCallback = object : ActionCallback {
            override fun onFinishCall() {
              Log.d("Something ===========", "onFinishCall: ")
//              finishAllCall(context)
            }

            override fun onNewCall() {
              Log.d("Something ===========", "onNewCall: ")
//              if (com.yeastar.linkus.demo.call.CallManager.getInstance()
//                  .getMicroPhoneServiceIntent() == null
//              ) {
//                com.yeastar.linkus.demo.call.CallManager.getInstance()
//                  .makeMicroPhoneNotification(context)
//              }
//              jump2CallActivity(context)
            }

            override fun onCallWaiting() {
              Log.d("Something ===========", "onCallWaiting: ")
//              EventBus.getDefault().post(CallWaitingEvent())
//              SoundManager.getInstance().startPlay(context, YlsConstant.SOUND_CALL_WAITING_TYPE)
            }

            override fun onMissCallClick() {
              Log.d("Something ===========", "onMissCallClick: ")
            }

            override fun onStopMicroPhoneService() {
              Log.d("Something ===========", "onStopMicroPhoneService: ")
//              if (!YlsCallManager.getInstance().isInCall
//                && com.yeastar.linkus.demo.call.CallManager.getInstance()
//                  .getMicroPhoneServiceIntent() != null
//              ) { //未接来电关闭前台服务
//                Log.w(com.yeastar.linkus.demo.call.CallManager.TAG, "stopService MicroPhoneService")
//                App.getInstance().getContext().stopService(
//                  com.yeastar.linkus.demo.call.CallManager.getInstance()
//                    .getMicroPhoneServiceIntent()
//                )
//              }
            }

            override fun onDismissPopupView() {
              Log.d("Something ===========", "onDismissPopupView: ")
//              dismissPopupView()
            }

            override fun onNotifyAudioChange() {
              Log.d("Something ===========", "onNotifyAudioChange: ")
//              notifyAudioChange()
            }

            override fun onMissCallArrive(caller: String) {
              Log.d("Something ===========", "onMissCallArrive: ")
//              if (Utils.isAppOnForeground(context)) {
//                return
//              }
//              NotificationUtils.missCallNotification(
//                context,
//                context.getString(R.string.cdr_missed_call),
//                caller,
//                1,
//                callNotifyId
//              )
            }
          }
          result.success(true)
        }catch ( e:Exception){
          result.error("400",null,null)
        }

      }
      "login" ->{
        val userName = call.requiredArgument<String>("userName")
        val password = call.requiredArgument<String>("password")
        val localeIp = call.requiredArgument<String>("localeIp")
        val localePortI = call.requiredArgument<Int>("localePortI")
        val remoteIp = call.requiredArgument<String>("remoteIp")
        val remotePortI = call.requiredArgument<Int>("remotePortI")

        YlsLoginManager.getInstance().loginBlock(
          activity?.applicationContext, userName, password,localeIp ,localePortI, remoteIp, remotePortI, object : RequestCallback<Boolean?> {
            // Login succeess callback
            override fun onSuccess(res: Boolean?) {
                result.success(res);
            }
            // Login failure callback
            override fun onFailed(code: Int) {
                result.error(code.toString(),null,null);
            }
            // Login exception callback
            override fun onException(exception: Throwable) {
              result.error("400",exception.localizedMessage,exception.stackTrace);
            }
          })

        }
      "requestPermission"->{
        val request: PermissionRequest = PermissionRequest(activity,
          object : PermissionRequest.PermissionCallback {
            override fun onFailure(permissions: List<String?>?) {
              if (permissions != null) {

                for (str in permissions) {
                  Log.w("Linkus Sdk", "onFailure:$str")
                }
              }
              result.success(false)
            }
            override fun onSuccessful(permissions: List<String?>?) {
              result.success(true)
            }

          })
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
          request.hasPermission(listOf(
            Manifest.permission.READ_PHONE_STATE,
            Manifest.permission.RECORD_AUDIO,
            Manifest.permission.BLUETOOTH_CONNECT)
          )
        } else {
          request.hasPermission(
            listOf(
            Manifest.permission.READ_PHONE_STATE,
            Manifest.permission.RECORD_AUDIO)
          )
        }
      }
      "makeACall" ->{
        val number = call.requiredArgument<String>("number")
        try {
          YlsCallManager.getInstance().makeNewCall(number,true)
          YlsCallManager.getInstance().registerSip()
          result.success(true)
        }catch (e:Exception){
          result.error("400",e.message,e.stackTrace);
        }

      }
      "hangUpCall" ->{
        val number = call.requiredArgument<Int>("callId")
        try {
          YlsCallManager.getInstance().hangUpCall(activity?.applicationContext,number)
          YlsCallManager.getInstance().unRegisterSip()
          result.success(true)
        }catch (e:Exception){
          result.error("400",e.message,e.stackTrace);
        }

      }
      "setFcmToken"->{
         val token = call.requiredArgument<String>("token")
        YlsBaseManager.getInstance()
          .setPushInfo(YlsConstant.PUSH_MODE_FIRE_BASE, token, object : RequestCallback<Any> {
            override fun onSuccess(o: Any) {
              result.success(true)
            }

            override fun onFailed(i: Int) {
              result.success(false)
            }

            override fun onException(throwable: Throwable) {
              result.error("400",null,null)
            }
          })
      }
      else ->
        result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
    _eventSink = events
  }

  override fun onCancel(arguments: Any?) {

  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    activity = binding.activity
  }

  override fun onDetachedFromActivityForConfigChanges() {
    activity = null
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    activity = binding.activity
  }

  override fun onDetachedFromActivity() {
    activity = null
  }
}


private inline fun <reified T> MethodCall.optionalArgument(key: String): T? {
  val value = argument<T>(key)
  if (value == JSONObject.NULL)
    return null
  return value
}

private inline fun <reified T> MethodCall.requiredArgument(key: String): T {
  return argument<T>(key) ?: error("Required parameter $key not set")
}
