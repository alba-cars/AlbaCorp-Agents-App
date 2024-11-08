// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_feedback_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CallFeedbackState {
  AppStatus get checkLeadStatus => throw _privateConstructorUsedError;
  Lead? get lead => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  AppStatus get addActivityStatus => throw _privateConstructorUsedError;
  bool get requestNumber => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  AppStatus get addLeadStatus => throw _privateConstructorUsedError;
  String? get addLeadError => throw _privateConstructorUsedError;
  List<LeadSource> get leadSources => throw _privateConstructorUsedError;
  AppStatus get getLeadSourceStatus => throw _privateConstructorUsedError;
  Map<String, dynamic> get val => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  AppStatus get getActivitiesStatus => throw _privateConstructorUsedError;
  String? get getActivitiesError => throw _privateConstructorUsedError;
  String? get attachLastPendingActivityToTheCall =>
      throw _privateConstructorUsedError;
  bool get requestFollowUpTask => throw _privateConstructorUsedError;
  bool get leadIsReAssignable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallFeedbackStateCopyWith<CallFeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallFeedbackStateCopyWith<$Res> {
  factory $CallFeedbackStateCopyWith(
          CallFeedbackState value, $Res Function(CallFeedbackState) then) =
      _$CallFeedbackStateCopyWithImpl<$Res, CallFeedbackState>;
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
class _$CallFeedbackStateCopyWithImpl<$Res, $Val extends CallFeedbackState>
    implements $CallFeedbackStateCopyWith<$Res> {
  _$CallFeedbackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      checkLeadStatus: null == checkLeadStatus
          ? _value.checkLeadStatus
          : checkLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      lead: freezed == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      addActivityStatus: null == addActivityStatus
          ? _value.addActivityStatus
          : addActivityStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      requestNumber: null == requestNumber
          ? _value.requestNumber
          : requestNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      addLeadStatus: null == addLeadStatus
          ? _value.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addLeadError: freezed == addLeadError
          ? _value.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSources: null == leadSources
          ? _value.leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>,
      getLeadSourceStatus: null == getLeadSourceStatus
          ? _value.getLeadSourceStatus
          : getLeadSourceStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      val: null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _value.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      attachLastPendingActivityToTheCall: freezed ==
              attachLastPendingActivityToTheCall
          ? _value.attachLastPendingActivityToTheCall
          : attachLastPendingActivityToTheCall // ignore: cast_nullable_to_non_nullable
              as String?,
      requestFollowUpTask: null == requestFollowUpTask
          ? _value.requestFollowUpTask
          : requestFollowUpTask // ignore: cast_nullable_to_non_nullable
              as bool,
      leadIsReAssignable: null == leadIsReAssignable
          ? _value.leadIsReAssignable
          : leadIsReAssignable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_value.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_value.lead!, (value) {
      return _then(_value.copyWith(lead: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CallFeedbackStateImplCopyWith<$Res>
    implements $CallFeedbackStateCopyWith<$Res> {
  factory _$$CallFeedbackStateImplCopyWith(_$CallFeedbackStateImpl value,
          $Res Function(_$CallFeedbackStateImpl) then) =
      __$$CallFeedbackStateImplCopyWithImpl<$Res>;
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
class __$$CallFeedbackStateImplCopyWithImpl<$Res>
    extends _$CallFeedbackStateCopyWithImpl<$Res, _$CallFeedbackStateImpl>
    implements _$$CallFeedbackStateImplCopyWith<$Res> {
  __$$CallFeedbackStateImplCopyWithImpl(_$CallFeedbackStateImpl _value,
      $Res Function(_$CallFeedbackStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$CallFeedbackStateImpl(
      checkLeadStatus: null == checkLeadStatus
          ? _value.checkLeadStatus
          : checkLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      lead: freezed == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      addActivityStatus: null == addActivityStatus
          ? _value.addActivityStatus
          : addActivityStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      requestNumber: null == requestNumber
          ? _value.requestNumber
          : requestNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      addLeadStatus: null == addLeadStatus
          ? _value.addLeadStatus
          : addLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addLeadError: freezed == addLeadError
          ? _value.addLeadError
          : addLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSources: null == leadSources
          ? _value._leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>,
      getLeadSourceStatus: null == getLeadSourceStatus
          ? _value.getLeadSourceStatus
          : getLeadSourceStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      val: null == val
          ? _value._val
          : val // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _value.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
      attachLastPendingActivityToTheCall: freezed ==
              attachLastPendingActivityToTheCall
          ? _value.attachLastPendingActivityToTheCall
          : attachLastPendingActivityToTheCall // ignore: cast_nullable_to_non_nullable
              as String?,
      requestFollowUpTask: null == requestFollowUpTask
          ? _value.requestFollowUpTask
          : requestFollowUpTask // ignore: cast_nullable_to_non_nullable
              as bool,
      leadIsReAssignable: null == leadIsReAssignable
          ? _value.leadIsReAssignable
          : leadIsReAssignable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CallFeedbackStateImpl implements _CallFeedbackState {
  const _$CallFeedbackStateImpl(
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

  @override
  String toString() {
    return 'CallFeedbackState(checkLeadStatus: $checkLeadStatus, lead: $lead, feedback: $feedback, addActivityStatus: $addActivityStatus, requestNumber: $requestNumber, number: $number, addLeadStatus: $addLeadStatus, addLeadError: $addLeadError, leadSources: $leadSources, getLeadSourceStatus: $getLeadSourceStatus, val: $val, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, attachLastPendingActivityToTheCall: $attachLastPendingActivityToTheCall, requestFollowUpTask: $requestFollowUpTask, leadIsReAssignable: $leadIsReAssignable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallFeedbackStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CallFeedbackStateImplCopyWith<_$CallFeedbackStateImpl> get copyWith =>
      __$$CallFeedbackStateImplCopyWithImpl<_$CallFeedbackStateImpl>(
          this, _$identity);
}

abstract class _CallFeedbackState implements CallFeedbackState {
  const factory _CallFeedbackState(
      {final AppStatus checkLeadStatus,
      final Lead? lead,
      final String? feedback,
      final AppStatus addActivityStatus,
      final bool requestNumber,
      final String? number,
      final AppStatus addLeadStatus,
      final String? addLeadError,
      final List<LeadSource> leadSources,
      final AppStatus getLeadSourceStatus,
      final Map<String, dynamic> val,
      final List<Activity> activities,
      final AppStatus getActivitiesStatus,
      final String? getActivitiesError,
      final String? attachLastPendingActivityToTheCall,
      final bool requestFollowUpTask,
      final bool leadIsReAssignable}) = _$CallFeedbackStateImpl;

  @override
  AppStatus get checkLeadStatus;
  @override
  Lead? get lead;
  @override
  String? get feedback;
  @override
  AppStatus get addActivityStatus;
  @override
  bool get requestNumber;
  @override
  String? get number;
  @override
  AppStatus get addLeadStatus;
  @override
  String? get addLeadError;
  @override
  List<LeadSource> get leadSources;
  @override
  AppStatus get getLeadSourceStatus;
  @override
  Map<String, dynamic> get val;
  @override
  List<Activity> get activities;
  @override
  AppStatus get getActivitiesStatus;
  @override
  String? get getActivitiesError;
  @override
  String? get attachLastPendingActivityToTheCall;
  @override
  bool get requestFollowUpTask;
  @override
  bool get leadIsReAssignable;
  @override
  @JsonKey(ignore: true)
  _$$CallFeedbackStateImplCopyWith<_$CallFeedbackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
