// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callEnded,
    required TResult Function(String note, String description, String feedback)
        updateActivity,
    required TResult Function(
            String phoneNumber, String activityId, String leadId)
        callStarted,
    required TResult Function(String phoneNumber) clickToCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callEnded,
    TResult? Function(String note, String description, String feedback)?
        updateActivity,
    TResult? Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult? Function(String phoneNumber)? clickToCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callEnded,
    TResult Function(String note, String description, String feedback)?
        updateActivity,
    TResult Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult Function(String phoneNumber)? clickToCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallEnded value) callEnded,
    required TResult Function(_UpdateActivity value) updateActivity,
    required TResult Function(_CallStarted value) callStarted,
    required TResult Function(_ClickToCall value) clickToCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallEnded value)? callEnded,
    TResult? Function(_UpdateActivity value)? updateActivity,
    TResult? Function(_CallStarted value)? callStarted,
    TResult? Function(_ClickToCall value)? clickToCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallEnded value)? callEnded,
    TResult Function(_UpdateActivity value)? updateActivity,
    TResult Function(_CallStarted value)? callStarted,
    TResult Function(_ClickToCall value)? clickToCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallEventCopyWith<$Res> {
  factory $CallEventCopyWith(CallEvent value, $Res Function(CallEvent) then) =
      _$CallEventCopyWithImpl<$Res, CallEvent>;
}

/// @nodoc
class _$CallEventCopyWithImpl<$Res, $Val extends CallEvent>
    implements $CallEventCopyWith<$Res> {
  _$CallEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CallEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callEnded,
    required TResult Function(String note, String description, String feedback)
        updateActivity,
    required TResult Function(
            String phoneNumber, String activityId, String leadId)
        callStarted,
    required TResult Function(String phoneNumber) clickToCall,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callEnded,
    TResult? Function(String note, String description, String feedback)?
        updateActivity,
    TResult? Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult? Function(String phoneNumber)? clickToCall,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callEnded,
    TResult Function(String note, String description, String feedback)?
        updateActivity,
    TResult Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult Function(String phoneNumber)? clickToCall,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallEnded value) callEnded,
    required TResult Function(_UpdateActivity value) updateActivity,
    required TResult Function(_CallStarted value) callStarted,
    required TResult Function(_ClickToCall value) clickToCall,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallEnded value)? callEnded,
    TResult? Function(_UpdateActivity value)? updateActivity,
    TResult? Function(_CallStarted value)? callStarted,
    TResult? Function(_ClickToCall value)? clickToCall,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallEnded value)? callEnded,
    TResult Function(_UpdateActivity value)? updateActivity,
    TResult Function(_CallStarted value)? callStarted,
    TResult Function(_ClickToCall value)? clickToCall,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CallEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CallEndedImplCopyWith<$Res> {
  factory _$$CallEndedImplCopyWith(
          _$CallEndedImpl value, $Res Function(_$CallEndedImpl) then) =
      __$$CallEndedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CallEndedImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$CallEndedImpl>
    implements _$$CallEndedImplCopyWith<$Res> {
  __$$CallEndedImplCopyWithImpl(
      _$CallEndedImpl _value, $Res Function(_$CallEndedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CallEndedImpl implements _CallEnded {
  const _$CallEndedImpl();

  @override
  String toString() {
    return 'CallEvent.callEnded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CallEndedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callEnded,
    required TResult Function(String note, String description, String feedback)
        updateActivity,
    required TResult Function(
            String phoneNumber, String activityId, String leadId)
        callStarted,
    required TResult Function(String phoneNumber) clickToCall,
  }) {
    return callEnded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callEnded,
    TResult? Function(String note, String description, String feedback)?
        updateActivity,
    TResult? Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult? Function(String phoneNumber)? clickToCall,
  }) {
    return callEnded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callEnded,
    TResult Function(String note, String description, String feedback)?
        updateActivity,
    TResult Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult Function(String phoneNumber)? clickToCall,
    required TResult orElse(),
  }) {
    if (callEnded != null) {
      return callEnded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallEnded value) callEnded,
    required TResult Function(_UpdateActivity value) updateActivity,
    required TResult Function(_CallStarted value) callStarted,
    required TResult Function(_ClickToCall value) clickToCall,
  }) {
    return callEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallEnded value)? callEnded,
    TResult? Function(_UpdateActivity value)? updateActivity,
    TResult? Function(_CallStarted value)? callStarted,
    TResult? Function(_ClickToCall value)? clickToCall,
  }) {
    return callEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallEnded value)? callEnded,
    TResult Function(_UpdateActivity value)? updateActivity,
    TResult Function(_CallStarted value)? callStarted,
    TResult Function(_ClickToCall value)? clickToCall,
    required TResult orElse(),
  }) {
    if (callEnded != null) {
      return callEnded(this);
    }
    return orElse();
  }
}

abstract class _CallEnded implements CallEvent {
  const factory _CallEnded() = _$CallEndedImpl;
}

/// @nodoc
abstract class _$$UpdateActivityImplCopyWith<$Res> {
  factory _$$UpdateActivityImplCopyWith(_$UpdateActivityImpl value,
          $Res Function(_$UpdateActivityImpl) then) =
      __$$UpdateActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String note, String description, String feedback});
}

/// @nodoc
class __$$UpdateActivityImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$UpdateActivityImpl>
    implements _$$UpdateActivityImplCopyWith<$Res> {
  __$$UpdateActivityImplCopyWithImpl(
      _$UpdateActivityImpl _value, $Res Function(_$UpdateActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? description = null,
    Object? feedback = null,
  }) {
    return _then(_$UpdateActivityImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateActivityImpl implements _UpdateActivity {
  const _$UpdateActivityImpl(
      {required this.note, required this.description, required this.feedback});

  @override
  final String note;
  @override
  final String description;
  @override
  final String feedback;

  @override
  String toString() {
    return 'CallEvent.updateActivity(note: $note, description: $description, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateActivityImpl &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, description, feedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateActivityImplCopyWith<_$UpdateActivityImpl> get copyWith =>
      __$$UpdateActivityImplCopyWithImpl<_$UpdateActivityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callEnded,
    required TResult Function(String note, String description, String feedback)
        updateActivity,
    required TResult Function(
            String phoneNumber, String activityId, String leadId)
        callStarted,
    required TResult Function(String phoneNumber) clickToCall,
  }) {
    return updateActivity(note, description, feedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callEnded,
    TResult? Function(String note, String description, String feedback)?
        updateActivity,
    TResult? Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult? Function(String phoneNumber)? clickToCall,
  }) {
    return updateActivity?.call(note, description, feedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callEnded,
    TResult Function(String note, String description, String feedback)?
        updateActivity,
    TResult Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult Function(String phoneNumber)? clickToCall,
    required TResult orElse(),
  }) {
    if (updateActivity != null) {
      return updateActivity(note, description, feedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallEnded value) callEnded,
    required TResult Function(_UpdateActivity value) updateActivity,
    required TResult Function(_CallStarted value) callStarted,
    required TResult Function(_ClickToCall value) clickToCall,
  }) {
    return updateActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallEnded value)? callEnded,
    TResult? Function(_UpdateActivity value)? updateActivity,
    TResult? Function(_CallStarted value)? callStarted,
    TResult? Function(_ClickToCall value)? clickToCall,
  }) {
    return updateActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallEnded value)? callEnded,
    TResult Function(_UpdateActivity value)? updateActivity,
    TResult Function(_CallStarted value)? callStarted,
    TResult Function(_ClickToCall value)? clickToCall,
    required TResult orElse(),
  }) {
    if (updateActivity != null) {
      return updateActivity(this);
    }
    return orElse();
  }
}

abstract class _UpdateActivity implements CallEvent {
  const factory _UpdateActivity(
      {required final String note,
      required final String description,
      required final String feedback}) = _$UpdateActivityImpl;

  String get note;
  String get description;
  String get feedback;
  @JsonKey(ignore: true)
  _$$UpdateActivityImplCopyWith<_$UpdateActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CallStartedImplCopyWith<$Res> {
  factory _$$CallStartedImplCopyWith(
          _$CallStartedImpl value, $Res Function(_$CallStartedImpl) then) =
      __$$CallStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String activityId, String leadId});
}

/// @nodoc
class __$$CallStartedImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$CallStartedImpl>
    implements _$$CallStartedImplCopyWith<$Res> {
  __$$CallStartedImplCopyWithImpl(
      _$CallStartedImpl _value, $Res Function(_$CallStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? activityId = null,
    Object? leadId = null,
  }) {
    return _then(_$CallStartedImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CallStartedImpl implements _CallStarted {
  const _$CallStartedImpl(
      {required this.phoneNumber,
      required this.activityId,
      required this.leadId});

  @override
  final String phoneNumber;
  @override
  final String activityId;
  @override
  final String leadId;

  @override
  String toString() {
    return 'CallEvent.callStarted(phoneNumber: $phoneNumber, activityId: $activityId, leadId: $leadId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallStartedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.leadId, leadId) || other.leadId == leadId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, activityId, leadId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CallStartedImplCopyWith<_$CallStartedImpl> get copyWith =>
      __$$CallStartedImplCopyWithImpl<_$CallStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callEnded,
    required TResult Function(String note, String description, String feedback)
        updateActivity,
    required TResult Function(
            String phoneNumber, String activityId, String leadId)
        callStarted,
    required TResult Function(String phoneNumber) clickToCall,
  }) {
    return callStarted(phoneNumber, activityId, leadId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callEnded,
    TResult? Function(String note, String description, String feedback)?
        updateActivity,
    TResult? Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult? Function(String phoneNumber)? clickToCall,
  }) {
    return callStarted?.call(phoneNumber, activityId, leadId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callEnded,
    TResult Function(String note, String description, String feedback)?
        updateActivity,
    TResult Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult Function(String phoneNumber)? clickToCall,
    required TResult orElse(),
  }) {
    if (callStarted != null) {
      return callStarted(phoneNumber, activityId, leadId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallEnded value) callEnded,
    required TResult Function(_UpdateActivity value) updateActivity,
    required TResult Function(_CallStarted value) callStarted,
    required TResult Function(_ClickToCall value) clickToCall,
  }) {
    return callStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallEnded value)? callEnded,
    TResult? Function(_UpdateActivity value)? updateActivity,
    TResult? Function(_CallStarted value)? callStarted,
    TResult? Function(_ClickToCall value)? clickToCall,
  }) {
    return callStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallEnded value)? callEnded,
    TResult Function(_UpdateActivity value)? updateActivity,
    TResult Function(_CallStarted value)? callStarted,
    TResult Function(_ClickToCall value)? clickToCall,
    required TResult orElse(),
  }) {
    if (callStarted != null) {
      return callStarted(this);
    }
    return orElse();
  }
}

abstract class _CallStarted implements CallEvent {
  const factory _CallStarted(
      {required final String phoneNumber,
      required final String activityId,
      required final String leadId}) = _$CallStartedImpl;

  String get phoneNumber;
  String get activityId;
  String get leadId;
  @JsonKey(ignore: true)
  _$$CallStartedImplCopyWith<_$CallStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickToCallImplCopyWith<$Res> {
  factory _$$ClickToCallImplCopyWith(
          _$ClickToCallImpl value, $Res Function(_$ClickToCallImpl) then) =
      __$$ClickToCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$ClickToCallImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$ClickToCallImpl>
    implements _$$ClickToCallImplCopyWith<$Res> {
  __$$ClickToCallImplCopyWithImpl(
      _$ClickToCallImpl _value, $Res Function(_$ClickToCallImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$ClickToCallImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClickToCallImpl implements _ClickToCall {
  const _$ClickToCallImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'CallEvent.clickToCall(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickToCallImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickToCallImplCopyWith<_$ClickToCallImpl> get copyWith =>
      __$$ClickToCallImplCopyWithImpl<_$ClickToCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() callEnded,
    required TResult Function(String note, String description, String feedback)
        updateActivity,
    required TResult Function(
            String phoneNumber, String activityId, String leadId)
        callStarted,
    required TResult Function(String phoneNumber) clickToCall,
  }) {
    return clickToCall(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? callEnded,
    TResult? Function(String note, String description, String feedback)?
        updateActivity,
    TResult? Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult? Function(String phoneNumber)? clickToCall,
  }) {
    return clickToCall?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? callEnded,
    TResult Function(String note, String description, String feedback)?
        updateActivity,
    TResult Function(String phoneNumber, String activityId, String leadId)?
        callStarted,
    TResult Function(String phoneNumber)? clickToCall,
    required TResult orElse(),
  }) {
    if (clickToCall != null) {
      return clickToCall(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CallEnded value) callEnded,
    required TResult Function(_UpdateActivity value) updateActivity,
    required TResult Function(_CallStarted value) callStarted,
    required TResult Function(_ClickToCall value) clickToCall,
  }) {
    return clickToCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CallEnded value)? callEnded,
    TResult? Function(_UpdateActivity value)? updateActivity,
    TResult? Function(_CallStarted value)? callStarted,
    TResult? Function(_ClickToCall value)? clickToCall,
  }) {
    return clickToCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CallEnded value)? callEnded,
    TResult Function(_UpdateActivity value)? updateActivity,
    TResult Function(_CallStarted value)? callStarted,
    TResult Function(_ClickToCall value)? clickToCall,
    required TResult orElse(),
  }) {
    if (clickToCall != null) {
      return clickToCall(this);
    }
    return orElse();
  }
}

abstract class _ClickToCall implements CallEvent {
  const factory _ClickToCall({required final String phoneNumber}) =
      _$ClickToCallImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$ClickToCallImplCopyWith<_$ClickToCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CallState {
  String? get calledNumber => throw _privateConstructorUsedError;
  String? get activityId => throw _privateConstructorUsedError;
  String? get leadId => throw _privateConstructorUsedError;
  DateTime? get callStartTime => throw _privateConstructorUsedError;
  PhoneCallStatus get phoneCallStatus => throw _privateConstructorUsedError;
  bool get feedbackRequestDialogOpen => throw _privateConstructorUsedError;
  AppStatus get updateActivityStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallStateCopyWith<CallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallStateCopyWith<$Res> {
  factory $CallStateCopyWith(CallState value, $Res Function(CallState) then) =
      _$CallStateCopyWithImpl<$Res, CallState>;
  @useResult
  $Res call(
      {String? calledNumber,
      String? activityId,
      String? leadId,
      DateTime? callStartTime,
      PhoneCallStatus phoneCallStatus,
      bool feedbackRequestDialogOpen,
      AppStatus updateActivityStatus});
}

/// @nodoc
class _$CallStateCopyWithImpl<$Res, $Val extends CallState>
    implements $CallStateCopyWith<$Res> {
  _$CallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      calledNumber: freezed == calledNumber
          ? _value.calledNumber
          : calledNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      activityId: freezed == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String?,
      leadId: freezed == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String?,
      callStartTime: freezed == callStartTime
          ? _value.callStartTime
          : callStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneCallStatus: null == phoneCallStatus
          ? _value.phoneCallStatus
          : phoneCallStatus // ignore: cast_nullable_to_non_nullable
              as PhoneCallStatus,
      feedbackRequestDialogOpen: null == feedbackRequestDialogOpen
          ? _value.feedbackRequestDialogOpen
          : feedbackRequestDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      updateActivityStatus: null == updateActivityStatus
          ? _value.updateActivityStatus
          : updateActivityStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallStateImplCopyWith<$Res>
    implements $CallStateCopyWith<$Res> {
  factory _$$CallStateImplCopyWith(
          _$CallStateImpl value, $Res Function(_$CallStateImpl) then) =
      __$$CallStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? calledNumber,
      String? activityId,
      String? leadId,
      DateTime? callStartTime,
      PhoneCallStatus phoneCallStatus,
      bool feedbackRequestDialogOpen,
      AppStatus updateActivityStatus});
}

/// @nodoc
class __$$CallStateImplCopyWithImpl<$Res>
    extends _$CallStateCopyWithImpl<$Res, _$CallStateImpl>
    implements _$$CallStateImplCopyWith<$Res> {
  __$$CallStateImplCopyWithImpl(
      _$CallStateImpl _value, $Res Function(_$CallStateImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$CallStateImpl(
      calledNumber: freezed == calledNumber
          ? _value.calledNumber
          : calledNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      activityId: freezed == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String?,
      leadId: freezed == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String?,
      callStartTime: freezed == callStartTime
          ? _value.callStartTime
          : callStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneCallStatus: null == phoneCallStatus
          ? _value.phoneCallStatus
          : phoneCallStatus // ignore: cast_nullable_to_non_nullable
              as PhoneCallStatus,
      feedbackRequestDialogOpen: null == feedbackRequestDialogOpen
          ? _value.feedbackRequestDialogOpen
          : feedbackRequestDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      updateActivityStatus: null == updateActivityStatus
          ? _value.updateActivityStatus
          : updateActivityStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$CallStateImpl implements _CallState {
  const _$CallStateImpl(
      {this.calledNumber,
      this.activityId,
      this.leadId,
      this.callStartTime,
      this.phoneCallStatus = PhoneCallStatus.noCall,
      this.feedbackRequestDialogOpen = false,
      this.updateActivityStatus = AppStatus.init});

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
  String toString() {
    return 'CallState(calledNumber: $calledNumber, activityId: $activityId, leadId: $leadId, callStartTime: $callStartTime, phoneCallStatus: $phoneCallStatus, feedbackRequestDialogOpen: $feedbackRequestDialogOpen, updateActivityStatus: $updateActivityStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallStateImpl &&
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
                other.updateActivityStatus == updateActivityStatus));
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
      updateActivityStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CallStateImplCopyWith<_$CallStateImpl> get copyWith =>
      __$$CallStateImplCopyWithImpl<_$CallStateImpl>(this, _$identity);
}

abstract class _CallState implements CallState {
  const factory _CallState(
      {final String? calledNumber,
      final String? activityId,
      final String? leadId,
      final DateTime? callStartTime,
      final PhoneCallStatus phoneCallStatus,
      final bool feedbackRequestDialogOpen,
      final AppStatus updateActivityStatus}) = _$CallStateImpl;

  @override
  String? get calledNumber;
  @override
  String? get activityId;
  @override
  String? get leadId;
  @override
  DateTime? get callStartTime;
  @override
  PhoneCallStatus get phoneCallStatus;
  @override
  bool get feedbackRequestDialogOpen;
  @override
  AppStatus get updateActivityStatus;
  @override
  @JsonKey(ignore: true)
  _$$CallStateImplCopyWith<_$CallStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
