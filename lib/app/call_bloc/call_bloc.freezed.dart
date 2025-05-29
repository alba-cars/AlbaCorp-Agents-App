// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CallEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CallEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CallEvent()';
  }
}

/// @nodoc
class $CallEventCopyWith<$Res> {
  $CallEventCopyWith(CallEvent _, $Res Function(CallEvent) __);
}

/// @nodoc

class _Started implements CallEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CallEvent.started()';
  }
}

/// @nodoc

class _CallEnded implements CallEvent {
  const _CallEnded();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CallEnded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CallEvent.callEnded()';
  }
}

/// @nodoc

class _UpdateActivity implements CallEvent {
  const _UpdateActivity(
      {required this.note, required this.description, required this.feedback});

  final String note;
  final String description;
  final String feedback;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateActivityCopyWith<_UpdateActivity> get copyWith =>
      __$UpdateActivityCopyWithImpl<_UpdateActivity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateActivity &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, description, feedback);

  @override
  String toString() {
    return 'CallEvent.updateActivity(note: $note, description: $description, feedback: $feedback)';
  }
}

/// @nodoc
abstract mixin class _$UpdateActivityCopyWith<$Res>
    implements $CallEventCopyWith<$Res> {
  factory _$UpdateActivityCopyWith(
          _UpdateActivity value, $Res Function(_UpdateActivity) _then) =
      __$UpdateActivityCopyWithImpl;
  @useResult
  $Res call({String note, String description, String feedback});
}

/// @nodoc
class __$UpdateActivityCopyWithImpl<$Res>
    implements _$UpdateActivityCopyWith<$Res> {
  __$UpdateActivityCopyWithImpl(this._self, this._then);

  final _UpdateActivity _self;
  final $Res Function(_UpdateActivity) _then;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? note = null,
    Object? description = null,
    Object? feedback = null,
  }) {
    return _then(_UpdateActivity(
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _self.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CallStarted implements CallEvent {
  const _CallStarted(
      {required this.phoneNumber,
      required this.activityId,
      required this.leadId,
      required this.leadSource});

  final String phoneNumber;
  final String activityId;
  final String leadId;
  final String leadSource;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CallStartedCopyWith<_CallStarted> get copyWith =>
      __$CallStartedCopyWithImpl<_CallStarted>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallStarted &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.leadSource, leadSource) ||
                other.leadSource == leadSource));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, activityId, leadId, leadSource);

  @override
  String toString() {
    return 'CallEvent.callStarted(phoneNumber: $phoneNumber, activityId: $activityId, leadId: $leadId, leadSource: $leadSource)';
  }
}

/// @nodoc
abstract mixin class _$CallStartedCopyWith<$Res>
    implements $CallEventCopyWith<$Res> {
  factory _$CallStartedCopyWith(
          _CallStarted value, $Res Function(_CallStarted) _then) =
      __$CallStartedCopyWithImpl;
  @useResult
  $Res call(
      {String phoneNumber,
      String activityId,
      String leadId,
      String leadSource});
}

/// @nodoc
class __$CallStartedCopyWithImpl<$Res> implements _$CallStartedCopyWith<$Res> {
  __$CallStartedCopyWithImpl(this._self, this._then);

  final _CallStarted _self;
  final $Res Function(_CallStarted) _then;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? activityId = null,
    Object? leadId = null,
    Object? leadSource = null,
  }) {
    return _then(_CallStarted(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _self.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      leadId: null == leadId
          ? _self.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      leadSource: null == leadSource
          ? _self.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ClickToCall implements CallEvent {
  const _ClickToCall({required this.phoneNumber});

  final String phoneNumber;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClickToCallCopyWith<_ClickToCall> get copyWith =>
      __$ClickToCallCopyWithImpl<_ClickToCall>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClickToCall &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'CallEvent.clickToCall(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class _$ClickToCallCopyWith<$Res>
    implements $CallEventCopyWith<$Res> {
  factory _$ClickToCallCopyWith(
          _ClickToCall value, $Res Function(_ClickToCall) _then) =
      __$ClickToCallCopyWithImpl;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$ClickToCallCopyWithImpl<$Res> implements _$ClickToCallCopyWith<$Res> {
  __$ClickToCallCopyWithImpl(this._self, this._then);

  final _ClickToCall _self;
  final $Res Function(_ClickToCall) _then;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_ClickToCall(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CallState {
  String? get calledNumber;
  String? get activityId;
  String? get leadId;
  DateTime? get callStartTime;
  PhoneCallStatus get phoneCallStatus;
  bool get feedbackRequestDialogOpen;
  AppStatus get updateActivityStatus;
  AppStatus get makeACallStatus;
  String? get makeACallError;

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CallStateCopyWith<CallState> get copyWith =>
      _$CallStateCopyWithImpl<CallState>(this as CallState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CallState &&
            (identical(other.calledNumber, calledNumber) ||
                other.calledNumber == calledNumber) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.callStartTime, callStartTime) ||
                other.callStartTime == callStartTime) &&
            (identical(other.phoneCallStatus, phoneCallStatus) ||
                other.phoneCallStatus == phoneCallStatus) &&
            (identical(other.feedbackRequestDialogOpen,
                    feedbackRequestDialogOpen) ||
                other.feedbackRequestDialogOpen == feedbackRequestDialogOpen) &&
            (identical(other.updateActivityStatus, updateActivityStatus) ||
                other.updateActivityStatus == updateActivityStatus) &&
            (identical(other.makeACallStatus, makeACallStatus) ||
                other.makeACallStatus == makeACallStatus) &&
            (identical(other.makeACallError, makeACallError) ||
                other.makeACallError == makeACallError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      calledNumber,
      activityId,
      leadId,
      callStartTime,
      phoneCallStatus,
      feedbackRequestDialogOpen,
      updateActivityStatus,
      makeACallStatus,
      makeACallError);

  @override
  String toString() {
    return 'CallState(calledNumber: $calledNumber, activityId: $activityId, leadId: $leadId, callStartTime: $callStartTime, phoneCallStatus: $phoneCallStatus, feedbackRequestDialogOpen: $feedbackRequestDialogOpen, updateActivityStatus: $updateActivityStatus, makeACallStatus: $makeACallStatus, makeACallError: $makeACallError)';
  }
}

/// @nodoc
abstract mixin class $CallStateCopyWith<$Res> {
  factory $CallStateCopyWith(CallState value, $Res Function(CallState) _then) =
      _$CallStateCopyWithImpl;
  @useResult
  $Res call(
      {String? calledNumber,
      String? activityId,
      String? leadId,
      DateTime? callStartTime,
      PhoneCallStatus phoneCallStatus,
      bool feedbackRequestDialogOpen,
      AppStatus updateActivityStatus,
      AppStatus makeACallStatus,
      String? makeACallError});
}

/// @nodoc
class _$CallStateCopyWithImpl<$Res> implements $CallStateCopyWith<$Res> {
  _$CallStateCopyWithImpl(this._self, this._then);

  final CallState _self;
  final $Res Function(CallState) _then;

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calledNumber = freezed,
    Object? activityId = freezed,
    Object? leadId = freezed,
    Object? callStartTime = freezed,
    Object? phoneCallStatus = null,
    Object? feedbackRequestDialogOpen = null,
    Object? updateActivityStatus = null,
    Object? makeACallStatus = null,
    Object? makeACallError = freezed,
  }) {
    return _then(_self.copyWith(
      calledNumber: freezed == calledNumber
          ? _self.calledNumber
          : calledNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      activityId: freezed == activityId
          ? _self.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String?,
      leadId: freezed == leadId
          ? _self.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String?,
      callStartTime: freezed == callStartTime
          ? _self.callStartTime
          : callStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneCallStatus: null == phoneCallStatus
          ? _self.phoneCallStatus
          : phoneCallStatus // ignore: cast_nullable_to_non_nullable
              as PhoneCallStatus,
      feedbackRequestDialogOpen: null == feedbackRequestDialogOpen
          ? _self.feedbackRequestDialogOpen
          : feedbackRequestDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      updateActivityStatus: null == updateActivityStatus
          ? _self.updateActivityStatus
          : updateActivityStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      makeACallStatus: null == makeACallStatus
          ? _self.makeACallStatus
          : makeACallStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      makeACallError: freezed == makeACallError
          ? _self.makeACallError
          : makeACallError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _CallState implements CallState {
  const _CallState(
      {this.calledNumber,
      this.activityId,
      this.leadId,
      this.callStartTime,
      this.phoneCallStatus = PhoneCallStatus.noCall,
      this.feedbackRequestDialogOpen = false,
      this.updateActivityStatus = AppStatus.init,
      this.makeACallStatus = AppStatus.init,
      this.makeACallError});

  @override
  final String? calledNumber;
  @override
  final String? activityId;
  @override
  final String? leadId;
  @override
  final DateTime? callStartTime;
  @override
  @JsonKey()
  final PhoneCallStatus phoneCallStatus;
  @override
  @JsonKey()
  final bool feedbackRequestDialogOpen;
  @override
  @JsonKey()
  final AppStatus updateActivityStatus;
  @override
  @JsonKey()
  final AppStatus makeACallStatus;
  @override
  final String? makeACallError;

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CallStateCopyWith<_CallState> get copyWith =>
      __$CallStateCopyWithImpl<_CallState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallState &&
            (identical(other.calledNumber, calledNumber) ||
                other.calledNumber == calledNumber) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.callStartTime, callStartTime) ||
                other.callStartTime == callStartTime) &&
            (identical(other.phoneCallStatus, phoneCallStatus) ||
                other.phoneCallStatus == phoneCallStatus) &&
            (identical(other.feedbackRequestDialogOpen,
                    feedbackRequestDialogOpen) ||
                other.feedbackRequestDialogOpen == feedbackRequestDialogOpen) &&
            (identical(other.updateActivityStatus, updateActivityStatus) ||
                other.updateActivityStatus == updateActivityStatus) &&
            (identical(other.makeACallStatus, makeACallStatus) ||
                other.makeACallStatus == makeACallStatus) &&
            (identical(other.makeACallError, makeACallError) ||
                other.makeACallError == makeACallError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      calledNumber,
      activityId,
      leadId,
      callStartTime,
      phoneCallStatus,
      feedbackRequestDialogOpen,
      updateActivityStatus,
      makeACallStatus,
      makeACallError);

  @override
  String toString() {
    return 'CallState(calledNumber: $calledNumber, activityId: $activityId, leadId: $leadId, callStartTime: $callStartTime, phoneCallStatus: $phoneCallStatus, feedbackRequestDialogOpen: $feedbackRequestDialogOpen, updateActivityStatus: $updateActivityStatus, makeACallStatus: $makeACallStatus, makeACallError: $makeACallError)';
  }
}

/// @nodoc
abstract mixin class _$CallStateCopyWith<$Res>
    implements $CallStateCopyWith<$Res> {
  factory _$CallStateCopyWith(
          _CallState value, $Res Function(_CallState) _then) =
      __$CallStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? calledNumber,
      String? activityId,
      String? leadId,
      DateTime? callStartTime,
      PhoneCallStatus phoneCallStatus,
      bool feedbackRequestDialogOpen,
      AppStatus updateActivityStatus,
      AppStatus makeACallStatus,
      String? makeACallError});
}

/// @nodoc
class __$CallStateCopyWithImpl<$Res> implements _$CallStateCopyWith<$Res> {
  __$CallStateCopyWithImpl(this._self, this._then);

  final _CallState _self;
  final $Res Function(_CallState) _then;

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? calledNumber = freezed,
    Object? activityId = freezed,
    Object? leadId = freezed,
    Object? callStartTime = freezed,
    Object? phoneCallStatus = null,
    Object? feedbackRequestDialogOpen = null,
    Object? updateActivityStatus = null,
    Object? makeACallStatus = null,
    Object? makeACallError = freezed,
  }) {
    return _then(_CallState(
      calledNumber: freezed == calledNumber
          ? _self.calledNumber
          : calledNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      activityId: freezed == activityId
          ? _self.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String?,
      leadId: freezed == leadId
          ? _self.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String?,
      callStartTime: freezed == callStartTime
          ? _self.callStartTime
          : callStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneCallStatus: null == phoneCallStatus
          ? _self.phoneCallStatus
          : phoneCallStatus // ignore: cast_nullable_to_non_nullable
              as PhoneCallStatus,
      feedbackRequestDialogOpen: null == feedbackRequestDialogOpen
          ? _self.feedbackRequestDialogOpen
          : feedbackRequestDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      updateActivityStatus: null == updateActivityStatus
          ? _self.updateActivityStatus
          : updateActivityStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      makeACallStatus: null == makeACallStatus
          ? _self.makeACallStatus
          : makeACallStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      makeACallError: freezed == makeACallError
          ? _self.makeACallError
          : makeACallError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
