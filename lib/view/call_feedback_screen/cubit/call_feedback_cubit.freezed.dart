// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_feedback_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CallFeedbackState {
  AppStatus get checkLeadStatus;
  Lead? get lead;
  String? get feedback;
  AppStatus get addActivityStatus;
  bool get requestNumber;
  String? get number;
  AppStatus get addLeadStatus;
  String? get addLeadError;
  List<LeadSource> get leadSources;
  AppStatus get getLeadSourceStatus;
  Map<String, dynamic> get val;
  List<Activity> get activities;
  AppStatus get getActivitiesStatus;
  String? get getActivitiesError;
  String? get attachLastPendingActivityToTheCall;
  bool get requestFollowUpTask;
  bool get leadIsReAssignable;

  /// Create a copy of CallFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CallFeedbackStateCopyWith<CallFeedbackState> get copyWith =>
      _$CallFeedbackStateCopyWithImpl<CallFeedbackState>(
          this as CallFeedbackState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CallFeedbackState &&
            (identical(other.checkLeadStatus, checkLeadStatus) ||
                other.checkLeadStatus == checkLeadStatus) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.addActivityStatus, addActivityStatus) ||
                other.addActivityStatus == addActivityStatus) &&
            (identical(other.requestNumber, requestNumber) ||
                other.requestNumber == requestNumber) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.addLeadStatus, addLeadStatus) ||
                other.addLeadStatus == addLeadStatus) &&
            (identical(other.addLeadError, addLeadError) ||
                other.addLeadError == addLeadError) &&
            const DeepCollectionEquality()
                .equals(other.leadSources, leadSources) &&
            (identical(other.getLeadSourceStatus, getLeadSourceStatus) ||
                other.getLeadSourceStatus == getLeadSourceStatus) &&
            const DeepCollectionEquality().equals(other.val, val) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.getActivitiesError, getActivitiesError) ||
                other.getActivitiesError == getActivitiesError) &&
            (identical(other.attachLastPendingActivityToTheCall,
                    attachLastPendingActivityToTheCall) ||
                other.attachLastPendingActivityToTheCall ==
                    attachLastPendingActivityToTheCall) &&
            (identical(other.requestFollowUpTask, requestFollowUpTask) ||
                other.requestFollowUpTask == requestFollowUpTask) &&
            (identical(other.leadIsReAssignable, leadIsReAssignable) ||
                other.leadIsReAssignable == leadIsReAssignable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      checkLeadStatus,
      lead,
      feedback,
      addActivityStatus,
      requestNumber,
      number,
      addLeadStatus,
      addLeadError,
      const DeepCollectionEquality().hash(leadSources),
      getLeadSourceStatus,
      const DeepCollectionEquality().hash(val),
      const DeepCollectionEquality().hash(activities),
      getActivitiesStatus,
      getActivitiesError,
      attachLastPendingActivityToTheCall,
      requestFollowUpTask,
      leadIsReAssignable);

  @override
  String toString() {
    return 'CallFeedbackState(checkLeadStatus: $checkLeadStatus, lead: $lead, feedback: $feedback, addActivityStatus: $addActivityStatus, requestNumber: $requestNumber, number: $number, addLeadStatus: $addLeadStatus, addLeadError: $addLeadError, leadSources: $leadSources, getLeadSourceStatus: $getLeadSourceStatus, val: $val, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, attachLastPendingActivityToTheCall: $attachLastPendingActivityToTheCall, requestFollowUpTask: $requestFollowUpTask, leadIsReAssignable: $leadIsReAssignable)';
  }
}

/// @nodoc
abstract mixin class $CallFeedbackStateCopyWith<$Res> {
  factory $CallFeedbackStateCopyWith(
          CallFeedbackState value, $Res Function(CallFeedbackState) _then) =
      _$CallFeedbackStateCopyWithImpl;
  @useResult
  $Res call(
      {AppStatus checkLeadStatus,
      Lead? lead,
      String? feedback,
      AppStatus addActivityStatus,
      bool requestNumber,
      String? number,
      AppStatus addLeadStatus,
      String? addLeadError,
      List<LeadSource> leadSources,
      AppStatus getLeadSourceStatus,
      Map<String, dynamic> val,
      List<Activity> activities,
      AppStatus getActivitiesStatus,
      String? getActivitiesError,
      String? attachLastPendingActivityToTheCall,
      bool requestFollowUpTask,
      bool leadIsReAssignable});

  $LeadCopyWith<$Res>? get lead;
}

/// @nodoc
class _$CallFeedbackStateCopyWithImpl<$Res>
    implements $CallFeedbackStateCopyWith<$Res> {
  _$CallFeedbackStateCopyWithImpl(this._self, this._then);

  final CallFeedbackState _self;
  final $Res Function(CallFeedbackState) _then;

  /// Create a copy of CallFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkLeadStatus = null,
    Object? lead = freezed,
    Object? feedback = freezed,
    Object? addActivityStatus = null,
    Object? requestNumber = null,
    Object? number = freezed,
    Object? addLeadStatus = null,
    Object? addLeadError = freezed,
    Object? leadSources = null,
    Object? getLeadSourceStatus = null,
    Object? val = null,
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = freezed,
    Object? attachLastPendingActivityToTheCall = freezed,
    Object? requestFollowUpTask = null,
    Object? leadIsReAssignable = null,
  }) {
    return _then(_self.copyWith(
      checkLeadStatus: null == checkLeadStatus
          ? _self.checkLeadStatus
          : checkLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      lead: freezed == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      feedback: freezed == feedback
          ? _self.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      addActivityStatus: null == addActivityStatus
          ? _self.addActivityStatus
          : addActivityStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      requestNumber: null == requestNumber
          ? _self.requestNumber
          : requestNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      addLeadStatus: null == addLeadStatus
          ? _self.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addLeadError: freezed == addLeadError
          ? _self.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSources: null == leadSources
          ? _self.leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>,
      getLeadSourceStatus: null == getLeadSourceStatus
          ? _self.getLeadSourceStatus
          : getLeadSourceStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      val: null == val
          ? _self.val
          : val // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      activities: null == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _self.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _self.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      attachLastPendingActivityToTheCall: freezed ==
              attachLastPendingActivityToTheCall
          ? _self.attachLastPendingActivityToTheCall
          : attachLastPendingActivityToTheCall // ignore: cast_nullable_to_non_nullable
              as String?,
      requestFollowUpTask: null == requestFollowUpTask
          ? _self.requestFollowUpTask
          : requestFollowUpTask // ignore: cast_nullable_to_non_nullable
              as bool,
      leadIsReAssignable: null == leadIsReAssignable
          ? _self.leadIsReAssignable
          : leadIsReAssignable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of CallFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_self.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.lead!, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }
}

/// @nodoc

class _CallFeedbackState implements CallFeedbackState {
  const _CallFeedbackState(
      {this.checkLeadStatus = AppStatus.init,
      this.lead,
      this.feedback,
      this.addActivityStatus = AppStatus.init,
      this.requestNumber = false,
      this.number,
      this.addLeadStatus = AppStatus.init,
      this.addLeadError,
      final List<LeadSource> leadSources = const [],
      this.getLeadSourceStatus = AppStatus.init,
      final Map<String, dynamic> val = const {},
      final List<Activity> activities = const [],
      this.getActivitiesStatus = AppStatus.init,
      this.getActivitiesError,
      this.attachLastPendingActivityToTheCall,
      this.requestFollowUpTask = false,
      this.leadIsReAssignable = false})
      : _leadSources = leadSources,
        _val = val,
        _activities = activities;

  @override
  @JsonKey()
  final AppStatus checkLeadStatus;
  @override
  final Lead? lead;
  @override
  final String? feedback;
  @override
  @JsonKey()
  final AppStatus addActivityStatus;
  @override
  @JsonKey()
  final bool requestNumber;
  @override
  final String? number;
  @override
  @JsonKey()
  final AppStatus addLeadStatus;
  @override
  final String? addLeadError;
  final List<LeadSource> _leadSources;
  @override
  @JsonKey()
  List<LeadSource> get leadSources {
    if (_leadSources is EqualUnmodifiableListView) return _leadSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leadSources);
  }

  @override
  @JsonKey()
  final AppStatus getLeadSourceStatus;
  final Map<String, dynamic> _val;
  @override
  @JsonKey()
  Map<String, dynamic> get val {
    if (_val is EqualUnmodifiableMapView) return _val;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_val);
  }

  final List<Activity> _activities;
  @override
  @JsonKey()
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  @JsonKey()
  final AppStatus getActivitiesStatus;
  @override
  final String? getActivitiesError;
  @override
  final String? attachLastPendingActivityToTheCall;
  @override
  @JsonKey()
  final bool requestFollowUpTask;
  @override
  @JsonKey()
  final bool leadIsReAssignable;

  /// Create a copy of CallFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CallFeedbackStateCopyWith<_CallFeedbackState> get copyWith =>
      __$CallFeedbackStateCopyWithImpl<_CallFeedbackState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallFeedbackState &&
            (identical(other.checkLeadStatus, checkLeadStatus) ||
                other.checkLeadStatus == checkLeadStatus) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.addActivityStatus, addActivityStatus) ||
                other.addActivityStatus == addActivityStatus) &&
            (identical(other.requestNumber, requestNumber) ||
                other.requestNumber == requestNumber) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.addLeadStatus, addLeadStatus) ||
                other.addLeadStatus == addLeadStatus) &&
            (identical(other.addLeadError, addLeadError) ||
                other.addLeadError == addLeadError) &&
            const DeepCollectionEquality()
                .equals(other._leadSources, _leadSources) &&
            (identical(other.getLeadSourceStatus, getLeadSourceStatus) ||
                other.getLeadSourceStatus == getLeadSourceStatus) &&
            const DeepCollectionEquality().equals(other._val, _val) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.getActivitiesError, getActivitiesError) ||
                other.getActivitiesError == getActivitiesError) &&
            (identical(other.attachLastPendingActivityToTheCall,
                    attachLastPendingActivityToTheCall) ||
                other.attachLastPendingActivityToTheCall ==
                    attachLastPendingActivityToTheCall) &&
            (identical(other.requestFollowUpTask, requestFollowUpTask) ||
                other.requestFollowUpTask == requestFollowUpTask) &&
            (identical(other.leadIsReAssignable, leadIsReAssignable) ||
                other.leadIsReAssignable == leadIsReAssignable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      checkLeadStatus,
      lead,
      feedback,
      addActivityStatus,
      requestNumber,
      number,
      addLeadStatus,
      addLeadError,
      const DeepCollectionEquality().hash(_leadSources),
      getLeadSourceStatus,
      const DeepCollectionEquality().hash(_val),
      const DeepCollectionEquality().hash(_activities),
      getActivitiesStatus,
      getActivitiesError,
      attachLastPendingActivityToTheCall,
      requestFollowUpTask,
      leadIsReAssignable);

  @override
  String toString() {
    return 'CallFeedbackState(checkLeadStatus: $checkLeadStatus, lead: $lead, feedback: $feedback, addActivityStatus: $addActivityStatus, requestNumber: $requestNumber, number: $number, addLeadStatus: $addLeadStatus, addLeadError: $addLeadError, leadSources: $leadSources, getLeadSourceStatus: $getLeadSourceStatus, val: $val, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, attachLastPendingActivityToTheCall: $attachLastPendingActivityToTheCall, requestFollowUpTask: $requestFollowUpTask, leadIsReAssignable: $leadIsReAssignable)';
  }
}

/// @nodoc
abstract mixin class _$CallFeedbackStateCopyWith<$Res>
    implements $CallFeedbackStateCopyWith<$Res> {
  factory _$CallFeedbackStateCopyWith(
          _CallFeedbackState value, $Res Function(_CallFeedbackState) _then) =
      __$CallFeedbackStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppStatus checkLeadStatus,
      Lead? lead,
      String? feedback,
      AppStatus addActivityStatus,
      bool requestNumber,
      String? number,
      AppStatus addLeadStatus,
      String? addLeadError,
      List<LeadSource> leadSources,
      AppStatus getLeadSourceStatus,
      Map<String, dynamic> val,
      List<Activity> activities,
      AppStatus getActivitiesStatus,
      String? getActivitiesError,
      String? attachLastPendingActivityToTheCall,
      bool requestFollowUpTask,
      bool leadIsReAssignable});

  @override
  $LeadCopyWith<$Res>? get lead;
}

/// @nodoc
class __$CallFeedbackStateCopyWithImpl<$Res>
    implements _$CallFeedbackStateCopyWith<$Res> {
  __$CallFeedbackStateCopyWithImpl(this._self, this._then);

  final _CallFeedbackState _self;
  final $Res Function(_CallFeedbackState) _then;

  /// Create a copy of CallFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? checkLeadStatus = null,
    Object? lead = freezed,
    Object? feedback = freezed,
    Object? addActivityStatus = null,
    Object? requestNumber = null,
    Object? number = freezed,
    Object? addLeadStatus = null,
    Object? addLeadError = freezed,
    Object? leadSources = null,
    Object? getLeadSourceStatus = null,
    Object? val = null,
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = freezed,
    Object? attachLastPendingActivityToTheCall = freezed,
    Object? requestFollowUpTask = null,
    Object? leadIsReAssignable = null,
  }) {
    return _then(_CallFeedbackState(
      checkLeadStatus: null == checkLeadStatus
          ? _self.checkLeadStatus
          : checkLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      lead: freezed == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      feedback: freezed == feedback
          ? _self.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      addActivityStatus: null == addActivityStatus
          ? _self.addActivityStatus
          : addActivityStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      requestNumber: null == requestNumber
          ? _self.requestNumber
          : requestNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      addLeadStatus: null == addLeadStatus
          ? _self.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addLeadError: freezed == addLeadError
          ? _self.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSources: null == leadSources
          ? _self._leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>,
      getLeadSourceStatus: null == getLeadSourceStatus
          ? _self.getLeadSourceStatus
          : getLeadSourceStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      val: null == val
          ? _self._val
          : val // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      activities: null == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _self.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _self.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      attachLastPendingActivityToTheCall: freezed ==
              attachLastPendingActivityToTheCall
          ? _self.attachLastPendingActivityToTheCall
          : attachLastPendingActivityToTheCall // ignore: cast_nullable_to_non_nullable
              as String?,
      requestFollowUpTask: null == requestFollowUpTask
          ? _self.requestFollowUpTask
          : requestFollowUpTask // ignore: cast_nullable_to_non_nullable
              as bool,
      leadIsReAssignable: null == leadIsReAssignable
          ? _self.leadIsReAssignable
          : leadIsReAssignable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of CallFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_self.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.lead!, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }
}

// dart format on
