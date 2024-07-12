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
      String? number});

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
      String? number});

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
      this.number});

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
  String toString() {
    return 'CallFeedbackState(checkLeadStatus: $checkLeadStatus, lead: $lead, feedback: $feedback, addActivityStatus: $addActivityStatus, requestNumber: $requestNumber, number: $number)';
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
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkLeadStatus, lead, feedback,
      addActivityStatus, requestNumber, number);

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
      final String? number}) = _$CallFeedbackStateImpl;

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
  @JsonKey(ignore: true)
  _$$CallFeedbackStateImplCopyWith<_$CallFeedbackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
