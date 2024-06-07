package com.alba.linkus_sdk

object Constant {
    //EventBus事件(string类型)
    const val EVENT_SYSTEM_RING: String = "系统来电"
    const val EVENT_ANSWER_CALL: String = "ANSWER_CALL"
    const val EVENT_REJECT_CALL: String = "REJECT_CALL"
    const val EVENT_ON_HOLD: String = "ON_HOLD"
    const val EVENT_ON_UN_HOLD: String = "ON_UN_HOLD"
    const val EVENT_ON_DISCONNECT_OR_ABORT: String = "ON_DISCONNECT_OR_ON_ABORT"
    const val EVENT_INCOMING_FAILED: String = "INCOMING_FAILED"
    const val EVENT_OUTGOING_FAILED: String = "OUTGOING_FAILED"
    const val EXTRA_DATA: String = "data"
    const val TAG_FRAGMENT_CALL: String = "tag_fragment_call"
    const val TAG_FRAGMENT_CONFERENCE: String = "tag_fragment_conference"
    const val EXTRA_ON_NEW_INTENT: String = "onNewIntent"
    const val EXTRA_NUMBER: String = "number"
    const val EXTRA_FROM: String = "from"
    const val EXTRA_CONFERENCE: String = "conference"

    /*------------------------------------推送相关------------------------------------------*/
    const val TITLE: String = "title"
    const val NAME: String = "Name" //来电名称
    const val TEXT: String = "text"
    const val NEW_VOICE_MAIL: String = "New Voicemail"
    const val START_TIMESTAMP: String = "starttimestamp"
    const val RING_TIMEOUT: String = "ringtimeout"
    const val CALL_TYPE: String = "calltype"
    const val DELETE_CDR: String = "deletecdr"
    const val MISS_CALL: String = "Missed Call"
    const val OTHER_LOGIN: String = "OtherLogin"
    const val MODIFY_PASSWORD: String = "ModifyPassword"
    const val LOGIN_CHANGED: String = "LoginChanged"
    const val LOGIN_EMAIL_CHANGE: String = "LoginEmailChange"
    const val NO_PERMISSION: String = "NoPermission"
    const val HEARTBEAT: String = "Heartbeat"
    const val LINKEDID: String = "Linkedid"
    const val CALLID: String = "CallID"
    const val TYPE: String = "Type"
    const val SN: String = "sn"
    const val PUSH_DONT_POP: String = "pushdontpop"
    const val PUSH_COMPANY_NAME: String = "company"
    const val CONFERENCE: String = "Conference"
    const val PUSH_CONFERENCE: String = "PushConference"

    const val YES: String = "yes"
    const val NO: String = "no"

    const val NEW_CALL_NOTIFICATION_ID: Int = 3
    const val MISS_CALL_GROUP_ID: Int = 4
    const val RE_USER_LOGIN_GROUP_ID: Int = 6
    const val MICRO_PHONE_NOTIFICATION_ID: Int = 7
    const val NOTIFICATION_CHANNEL_PUSH_ID: String = "push"
    const val NOTIFICATION_CHANNEL_NEW_CALL_ID: String = "new_call"
    const val NOTIFICATION_CHANNEL_MISS_CALL_ID: String = "miss_call"

    const val IN_CONFERENCE: Int = 1
}
