// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoggedIn,
    required TResult Function() userLoggedOut,
    required TResult Function() started,
    required TResult Function() refreshAgentData,
    required TResult Function(List<String> activityIds) newImportantActivity,
    required TResult Function(String activityId) completedImportantActivity,
    required TResult Function() checkForImportantActivity,
    required TResult Function() checkForCallFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
    TResult? Function(List<String> activityIds)? newImportantActivity,
    TResult? Function(String activityId)? completedImportantActivity,
    TResult? Function()? checkForImportantActivity,
    TResult? Function()? checkForCallFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    TResult Function(List<String> activityIds)? newImportantActivity,
    TResult Function(String activityId)? completedImportantActivity,
    TResult Function()? checkForImportantActivity,
    TResult Function()? checkForCallFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
    required TResult Function(_NewImportantActivity value) newImportantActivity,
    required TResult Function(_CompletedImportantActivity value)
        completedImportantActivity,
    required TResult Function(_CheckForImportantActivity value)
        checkForImportantActivity,
    required TResult Function(_CheckForCallFeedback value) checkForCallFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
    TResult? Function(_NewImportantActivity value)? newImportantActivity,
    TResult? Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult? Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult? Function(_CheckForCallFeedback value)? checkForCallFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
    TResult Function(_NewImportantActivity value)? newImportantActivity,
    TResult Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult Function(_CheckForCallFeedback value)? checkForCallFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserLoggedInImplCopyWith<$Res> {
  factory _$$UserLoggedInImplCopyWith(
          _$UserLoggedInImpl value, $Res Function(_$UserLoggedInImpl) then) =
      __$$UserLoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserLoggedInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserLoggedInImpl>
    implements _$$UserLoggedInImplCopyWith<$Res> {
  __$$UserLoggedInImplCopyWithImpl(
      _$UserLoggedInImpl _value, $Res Function(_$UserLoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserLoggedInImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserLoggedInImpl implements _UserLoggedIn {
  const _$UserLoggedInImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.userLoggedIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      __$$UserLoggedInImplCopyWithImpl<_$UserLoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoggedIn,
    required TResult Function() userLoggedOut,
    required TResult Function() started,
    required TResult Function() refreshAgentData,
    required TResult Function(List<String> activityIds) newImportantActivity,
    required TResult Function(String activityId) completedImportantActivity,
    required TResult Function() checkForImportantActivity,
    required TResult Function() checkForCallFeedback,
  }) {
    return userLoggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
    TResult? Function(List<String> activityIds)? newImportantActivity,
    TResult? Function(String activityId)? completedImportantActivity,
    TResult? Function()? checkForImportantActivity,
    TResult? Function()? checkForCallFeedback,
  }) {
    return userLoggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    TResult Function(List<String> activityIds)? newImportantActivity,
    TResult Function(String activityId)? completedImportantActivity,
    TResult Function()? checkForImportantActivity,
    TResult Function()? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
    required TResult Function(_NewImportantActivity value) newImportantActivity,
    required TResult Function(_CompletedImportantActivity value)
        completedImportantActivity,
    required TResult Function(_CheckForImportantActivity value)
        checkForImportantActivity,
    required TResult Function(_CheckForCallFeedback value) checkForCallFeedback,
  }) {
    return userLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
    TResult? Function(_NewImportantActivity value)? newImportantActivity,
    TResult? Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult? Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult? Function(_CheckForCallFeedback value)? checkForCallFeedback,
  }) {
    return userLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
    TResult Function(_NewImportantActivity value)? newImportantActivity,
    TResult Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult Function(_CheckForCallFeedback value)? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _UserLoggedIn implements AuthEvent {
  const factory _UserLoggedIn({required final User user}) = _$UserLoggedInImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoggedOutImplCopyWith<$Res> {
  factory _$$UserLoggedOutImplCopyWith(
          _$UserLoggedOutImpl value, $Res Function(_$UserLoggedOutImpl) then) =
      __$$UserLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoggedOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserLoggedOutImpl>
    implements _$$UserLoggedOutImplCopyWith<$Res> {
  __$$UserLoggedOutImplCopyWithImpl(
      _$UserLoggedOutImpl _value, $Res Function(_$UserLoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoggedOutImpl implements _UserLoggedOut {
  const _$UserLoggedOutImpl();

  @override
  String toString() {
    return 'AuthEvent.userLoggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoggedIn,
    required TResult Function() userLoggedOut,
    required TResult Function() started,
    required TResult Function() refreshAgentData,
    required TResult Function(List<String> activityIds) newImportantActivity,
    required TResult Function(String activityId) completedImportantActivity,
    required TResult Function() checkForImportantActivity,
    required TResult Function() checkForCallFeedback,
  }) {
    return userLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
    TResult? Function(List<String> activityIds)? newImportantActivity,
    TResult? Function(String activityId)? completedImportantActivity,
    TResult? Function()? checkForImportantActivity,
    TResult? Function()? checkForCallFeedback,
  }) {
    return userLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    TResult Function(List<String> activityIds)? newImportantActivity,
    TResult Function(String activityId)? completedImportantActivity,
    TResult Function()? checkForImportantActivity,
    TResult Function()? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
    required TResult Function(_NewImportantActivity value) newImportantActivity,
    required TResult Function(_CompletedImportantActivity value)
        completedImportantActivity,
    required TResult Function(_CheckForImportantActivity value)
        checkForImportantActivity,
    required TResult Function(_CheckForCallFeedback value) checkForCallFeedback,
  }) {
    return userLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
    TResult? Function(_NewImportantActivity value)? newImportantActivity,
    TResult? Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult? Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult? Function(_CheckForCallFeedback value)? checkForCallFeedback,
  }) {
    return userLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
    TResult Function(_NewImportantActivity value)? newImportantActivity,
    TResult Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult Function(_CheckForCallFeedback value)? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut(this);
    }
    return orElse();
  }
}

abstract class _UserLoggedOut implements AuthEvent {
  const factory _UserLoggedOut() = _$UserLoggedOutImpl;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AuthEvent.started()';
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
    required TResult Function(User user) userLoggedIn,
    required TResult Function() userLoggedOut,
    required TResult Function() started,
    required TResult Function() refreshAgentData,
    required TResult Function(List<String> activityIds) newImportantActivity,
    required TResult Function(String activityId) completedImportantActivity,
    required TResult Function() checkForImportantActivity,
    required TResult Function() checkForCallFeedback,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
    TResult? Function(List<String> activityIds)? newImportantActivity,
    TResult? Function(String activityId)? completedImportantActivity,
    TResult? Function()? checkForImportantActivity,
    TResult? Function()? checkForCallFeedback,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    TResult Function(List<String> activityIds)? newImportantActivity,
    TResult Function(String activityId)? completedImportantActivity,
    TResult Function()? checkForImportantActivity,
    TResult Function()? checkForCallFeedback,
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
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
    required TResult Function(_NewImportantActivity value) newImportantActivity,
    required TResult Function(_CompletedImportantActivity value)
        completedImportantActivity,
    required TResult Function(_CheckForImportantActivity value)
        checkForImportantActivity,
    required TResult Function(_CheckForCallFeedback value) checkForCallFeedback,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
    TResult? Function(_NewImportantActivity value)? newImportantActivity,
    TResult? Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult? Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult? Function(_CheckForCallFeedback value)? checkForCallFeedback,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
    TResult Function(_NewImportantActivity value)? newImportantActivity,
    TResult Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult Function(_CheckForCallFeedback value)? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RefreshAgentDataImplCopyWith<$Res> {
  factory _$$RefreshAgentDataImplCopyWith(_$RefreshAgentDataImpl value,
          $Res Function(_$RefreshAgentDataImpl) then) =
      __$$RefreshAgentDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshAgentDataImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RefreshAgentDataImpl>
    implements _$$RefreshAgentDataImplCopyWith<$Res> {
  __$$RefreshAgentDataImplCopyWithImpl(_$RefreshAgentDataImpl _value,
      $Res Function(_$RefreshAgentDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshAgentDataImpl implements _RefreshAgentData {
  const _$RefreshAgentDataImpl();

  @override
  String toString() {
    return 'AuthEvent.refreshAgentData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshAgentDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoggedIn,
    required TResult Function() userLoggedOut,
    required TResult Function() started,
    required TResult Function() refreshAgentData,
    required TResult Function(List<String> activityIds) newImportantActivity,
    required TResult Function(String activityId) completedImportantActivity,
    required TResult Function() checkForImportantActivity,
    required TResult Function() checkForCallFeedback,
  }) {
    return refreshAgentData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
    TResult? Function(List<String> activityIds)? newImportantActivity,
    TResult? Function(String activityId)? completedImportantActivity,
    TResult? Function()? checkForImportantActivity,
    TResult? Function()? checkForCallFeedback,
  }) {
    return refreshAgentData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    TResult Function(List<String> activityIds)? newImportantActivity,
    TResult Function(String activityId)? completedImportantActivity,
    TResult Function()? checkForImportantActivity,
    TResult Function()? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (refreshAgentData != null) {
      return refreshAgentData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
    required TResult Function(_NewImportantActivity value) newImportantActivity,
    required TResult Function(_CompletedImportantActivity value)
        completedImportantActivity,
    required TResult Function(_CheckForImportantActivity value)
        checkForImportantActivity,
    required TResult Function(_CheckForCallFeedback value) checkForCallFeedback,
  }) {
    return refreshAgentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
    TResult? Function(_NewImportantActivity value)? newImportantActivity,
    TResult? Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult? Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult? Function(_CheckForCallFeedback value)? checkForCallFeedback,
  }) {
    return refreshAgentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
    TResult Function(_NewImportantActivity value)? newImportantActivity,
    TResult Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult Function(_CheckForCallFeedback value)? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (refreshAgentData != null) {
      return refreshAgentData(this);
    }
    return orElse();
  }
}

abstract class _RefreshAgentData implements AuthEvent {
  const factory _RefreshAgentData() = _$RefreshAgentDataImpl;
}

/// @nodoc
abstract class _$$NewImportantActivityImplCopyWith<$Res> {
  factory _$$NewImportantActivityImplCopyWith(_$NewImportantActivityImpl value,
          $Res Function(_$NewImportantActivityImpl) then) =
      __$$NewImportantActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> activityIds});
}

/// @nodoc
class __$$NewImportantActivityImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$NewImportantActivityImpl>
    implements _$$NewImportantActivityImplCopyWith<$Res> {
  __$$NewImportantActivityImplCopyWithImpl(_$NewImportantActivityImpl _value,
      $Res Function(_$NewImportantActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityIds = null,
  }) {
    return _then(_$NewImportantActivityImpl(
      activityIds: null == activityIds
          ? _value._activityIds
          : activityIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$NewImportantActivityImpl implements _NewImportantActivity {
  const _$NewImportantActivityImpl({required final List<String> activityIds})
      : _activityIds = activityIds;

  final List<String> _activityIds;
  @override
  List<String> get activityIds {
    if (_activityIds is EqualUnmodifiableListView) return _activityIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activityIds);
  }

  @override
  String toString() {
    return 'AuthEvent.newImportantActivity(activityIds: $activityIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewImportantActivityImpl &&
            const DeepCollectionEquality()
                .equals(other._activityIds, _activityIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activityIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewImportantActivityImplCopyWith<_$NewImportantActivityImpl>
      get copyWith =>
          __$$NewImportantActivityImplCopyWithImpl<_$NewImportantActivityImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoggedIn,
    required TResult Function() userLoggedOut,
    required TResult Function() started,
    required TResult Function() refreshAgentData,
    required TResult Function(List<String> activityIds) newImportantActivity,
    required TResult Function(String activityId) completedImportantActivity,
    required TResult Function() checkForImportantActivity,
    required TResult Function() checkForCallFeedback,
  }) {
    return newImportantActivity(activityIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
    TResult? Function(List<String> activityIds)? newImportantActivity,
    TResult? Function(String activityId)? completedImportantActivity,
    TResult? Function()? checkForImportantActivity,
    TResult? Function()? checkForCallFeedback,
  }) {
    return newImportantActivity?.call(activityIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    TResult Function(List<String> activityIds)? newImportantActivity,
    TResult Function(String activityId)? completedImportantActivity,
    TResult Function()? checkForImportantActivity,
    TResult Function()? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (newImportantActivity != null) {
      return newImportantActivity(activityIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
    required TResult Function(_NewImportantActivity value) newImportantActivity,
    required TResult Function(_CompletedImportantActivity value)
        completedImportantActivity,
    required TResult Function(_CheckForImportantActivity value)
        checkForImportantActivity,
    required TResult Function(_CheckForCallFeedback value) checkForCallFeedback,
  }) {
    return newImportantActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
    TResult? Function(_NewImportantActivity value)? newImportantActivity,
    TResult? Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult? Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult? Function(_CheckForCallFeedback value)? checkForCallFeedback,
  }) {
    return newImportantActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
    TResult Function(_NewImportantActivity value)? newImportantActivity,
    TResult Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult Function(_CheckForCallFeedback value)? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (newImportantActivity != null) {
      return newImportantActivity(this);
    }
    return orElse();
  }
}

abstract class _NewImportantActivity implements AuthEvent {
  const factory _NewImportantActivity(
      {required final List<String> activityIds}) = _$NewImportantActivityImpl;

  List<String> get activityIds;
  @JsonKey(ignore: true)
  _$$NewImportantActivityImplCopyWith<_$NewImportantActivityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedImportantActivityImplCopyWith<$Res> {
  factory _$$CompletedImportantActivityImplCopyWith(
          _$CompletedImportantActivityImpl value,
          $Res Function(_$CompletedImportantActivityImpl) then) =
      __$$CompletedImportantActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String activityId});
}

/// @nodoc
class __$$CompletedImportantActivityImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CompletedImportantActivityImpl>
    implements _$$CompletedImportantActivityImplCopyWith<$Res> {
  __$$CompletedImportantActivityImplCopyWithImpl(
      _$CompletedImportantActivityImpl _value,
      $Res Function(_$CompletedImportantActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
  }) {
    return _then(_$CompletedImportantActivityImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompletedImportantActivityImpl implements _CompletedImportantActivity {
  const _$CompletedImportantActivityImpl({required this.activityId});

  @override
  final String activityId;

  @override
  String toString() {
    return 'AuthEvent.completedImportantActivity(activityId: $activityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedImportantActivityImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedImportantActivityImplCopyWith<_$CompletedImportantActivityImpl>
      get copyWith => __$$CompletedImportantActivityImplCopyWithImpl<
          _$CompletedImportantActivityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoggedIn,
    required TResult Function() userLoggedOut,
    required TResult Function() started,
    required TResult Function() refreshAgentData,
    required TResult Function(List<String> activityIds) newImportantActivity,
    required TResult Function(String activityId) completedImportantActivity,
    required TResult Function() checkForImportantActivity,
    required TResult Function() checkForCallFeedback,
  }) {
    return completedImportantActivity(activityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
    TResult? Function(List<String> activityIds)? newImportantActivity,
    TResult? Function(String activityId)? completedImportantActivity,
    TResult? Function()? checkForImportantActivity,
    TResult? Function()? checkForCallFeedback,
  }) {
    return completedImportantActivity?.call(activityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    TResult Function(List<String> activityIds)? newImportantActivity,
    TResult Function(String activityId)? completedImportantActivity,
    TResult Function()? checkForImportantActivity,
    TResult Function()? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (completedImportantActivity != null) {
      return completedImportantActivity(activityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
    required TResult Function(_NewImportantActivity value) newImportantActivity,
    required TResult Function(_CompletedImportantActivity value)
        completedImportantActivity,
    required TResult Function(_CheckForImportantActivity value)
        checkForImportantActivity,
    required TResult Function(_CheckForCallFeedback value) checkForCallFeedback,
  }) {
    return completedImportantActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
    TResult? Function(_NewImportantActivity value)? newImportantActivity,
    TResult? Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult? Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult? Function(_CheckForCallFeedback value)? checkForCallFeedback,
  }) {
    return completedImportantActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
    TResult Function(_NewImportantActivity value)? newImportantActivity,
    TResult Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult Function(_CheckForCallFeedback value)? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (completedImportantActivity != null) {
      return completedImportantActivity(this);
    }
    return orElse();
  }
}

abstract class _CompletedImportantActivity implements AuthEvent {
  const factory _CompletedImportantActivity(
      {required final String activityId}) = _$CompletedImportantActivityImpl;

  String get activityId;
  @JsonKey(ignore: true)
  _$$CompletedImportantActivityImplCopyWith<_$CompletedImportantActivityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckForImportantActivityImplCopyWith<$Res> {
  factory _$$CheckForImportantActivityImplCopyWith(
          _$CheckForImportantActivityImpl value,
          $Res Function(_$CheckForImportantActivityImpl) then) =
      __$$CheckForImportantActivityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckForImportantActivityImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckForImportantActivityImpl>
    implements _$$CheckForImportantActivityImplCopyWith<$Res> {
  __$$CheckForImportantActivityImplCopyWithImpl(
      _$CheckForImportantActivityImpl _value,
      $Res Function(_$CheckForImportantActivityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckForImportantActivityImpl implements _CheckForImportantActivity {
  const _$CheckForImportantActivityImpl();

  @override
  String toString() {
    return 'AuthEvent.checkForImportantActivity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckForImportantActivityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoggedIn,
    required TResult Function() userLoggedOut,
    required TResult Function() started,
    required TResult Function() refreshAgentData,
    required TResult Function(List<String> activityIds) newImportantActivity,
    required TResult Function(String activityId) completedImportantActivity,
    required TResult Function() checkForImportantActivity,
    required TResult Function() checkForCallFeedback,
  }) {
    return checkForImportantActivity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
    TResult? Function(List<String> activityIds)? newImportantActivity,
    TResult? Function(String activityId)? completedImportantActivity,
    TResult? Function()? checkForImportantActivity,
    TResult? Function()? checkForCallFeedback,
  }) {
    return checkForImportantActivity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    TResult Function(List<String> activityIds)? newImportantActivity,
    TResult Function(String activityId)? completedImportantActivity,
    TResult Function()? checkForImportantActivity,
    TResult Function()? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (checkForImportantActivity != null) {
      return checkForImportantActivity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
    required TResult Function(_NewImportantActivity value) newImportantActivity,
    required TResult Function(_CompletedImportantActivity value)
        completedImportantActivity,
    required TResult Function(_CheckForImportantActivity value)
        checkForImportantActivity,
    required TResult Function(_CheckForCallFeedback value) checkForCallFeedback,
  }) {
    return checkForImportantActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
    TResult? Function(_NewImportantActivity value)? newImportantActivity,
    TResult? Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult? Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult? Function(_CheckForCallFeedback value)? checkForCallFeedback,
  }) {
    return checkForImportantActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
    TResult Function(_NewImportantActivity value)? newImportantActivity,
    TResult Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult Function(_CheckForCallFeedback value)? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (checkForImportantActivity != null) {
      return checkForImportantActivity(this);
    }
    return orElse();
  }
}

abstract class _CheckForImportantActivity implements AuthEvent {
  const factory _CheckForImportantActivity() = _$CheckForImportantActivityImpl;
}

/// @nodoc
abstract class _$$CheckForCallFeedbackImplCopyWith<$Res> {
  factory _$$CheckForCallFeedbackImplCopyWith(_$CheckForCallFeedbackImpl value,
          $Res Function(_$CheckForCallFeedbackImpl) then) =
      __$$CheckForCallFeedbackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckForCallFeedbackImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckForCallFeedbackImpl>
    implements _$$CheckForCallFeedbackImplCopyWith<$Res> {
  __$$CheckForCallFeedbackImplCopyWithImpl(_$CheckForCallFeedbackImpl _value,
      $Res Function(_$CheckForCallFeedbackImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckForCallFeedbackImpl implements _CheckForCallFeedback {
  const _$CheckForCallFeedbackImpl();

  @override
  String toString() {
    return 'AuthEvent.checkForCallFeedback()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckForCallFeedbackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoggedIn,
    required TResult Function() userLoggedOut,
    required TResult Function() started,
    required TResult Function() refreshAgentData,
    required TResult Function(List<String> activityIds) newImportantActivity,
    required TResult Function(String activityId) completedImportantActivity,
    required TResult Function() checkForImportantActivity,
    required TResult Function() checkForCallFeedback,
  }) {
    return checkForCallFeedback();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
    TResult? Function(List<String> activityIds)? newImportantActivity,
    TResult? Function(String activityId)? completedImportantActivity,
    TResult? Function()? checkForImportantActivity,
    TResult? Function()? checkForCallFeedback,
  }) {
    return checkForCallFeedback?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    TResult Function(List<String> activityIds)? newImportantActivity,
    TResult Function(String activityId)? completedImportantActivity,
    TResult Function()? checkForImportantActivity,
    TResult Function()? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (checkForCallFeedback != null) {
      return checkForCallFeedback();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
    required TResult Function(_NewImportantActivity value) newImportantActivity,
    required TResult Function(_CompletedImportantActivity value)
        completedImportantActivity,
    required TResult Function(_CheckForImportantActivity value)
        checkForImportantActivity,
    required TResult Function(_CheckForCallFeedback value) checkForCallFeedback,
  }) {
    return checkForCallFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
    TResult? Function(_NewImportantActivity value)? newImportantActivity,
    TResult? Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult? Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult? Function(_CheckForCallFeedback value)? checkForCallFeedback,
  }) {
    return checkForCallFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
    TResult Function(_NewImportantActivity value)? newImportantActivity,
    TResult Function(_CompletedImportantActivity value)?
        completedImportantActivity,
    TResult Function(_CheckForImportantActivity value)?
        checkForImportantActivity,
    TResult Function(_CheckForCallFeedback value)? checkForCallFeedback,
    required TResult orElse(),
  }) {
    if (checkForCallFeedback != null) {
      return checkForCallFeedback(this);
    }
    return orElse();
  }
}

abstract class _CheckForCallFeedback implements AuthEvent {
  const factory _CheckForCallFeedback() = _$CheckForCallFeedbackImpl;
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get authStatus => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Agent? get agent => throw _privateConstructorUsedError;
  Set<String>? get veryImportantActivities =>
      throw _privateConstructorUsedError;
  String? get lastCalledNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthStatus authStatus,
      User? user,
      Agent? agent,
      Set<String>? veryImportantActivities,
      String? lastCalledNumber});

  $UserCopyWith<$Res>? get user;
  $AgentCopyWith<$Res>? get agent;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? user = freezed,
    Object? agent = freezed,
    Object? veryImportantActivities = freezed,
    Object? lastCalledNumber = freezed,
  }) {
    return _then(_value.copyWith(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      veryImportantActivities: freezed == veryImportantActivities
          ? _value.veryImportantActivities
          : veryImportantActivities // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      lastCalledNumber: freezed == lastCalledNumber
          ? _value.lastCalledNumber
          : lastCalledNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get agent {
    if (_value.agent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_value.agent!, (value) {
      return _then(_value.copyWith(agent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthStatus authStatus,
      User? user,
      Agent? agent,
      Set<String>? veryImportantActivities,
      String? lastCalledNumber});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $AgentCopyWith<$Res>? get agent;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? user = freezed,
    Object? agent = freezed,
    Object? veryImportantActivities = freezed,
    Object? lastCalledNumber = freezed,
  }) {
    return _then(_$AuthStateImpl(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      veryImportantActivities: freezed == veryImportantActivities
          ? _value._veryImportantActivities
          : veryImportantActivities // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      lastCalledNumber: freezed == lastCalledNumber
          ? _value.lastCalledNumber
          : lastCalledNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.authStatus = AuthStatus.initial,
      this.user,
      this.agent,
      final Set<String>? veryImportantActivities,
      this.lastCalledNumber})
      : _veryImportantActivities = veryImportantActivities;

  @override
  @JsonKey()
  final AuthStatus authStatus;
  @override
  final User? user;
  @override
  final Agent? agent;
  final Set<String>? _veryImportantActivities;
  @override
  Set<String>? get veryImportantActivities {
    final value = _veryImportantActivities;
    if (value == null) return null;
    if (_veryImportantActivities is EqualUnmodifiableSetView)
      return _veryImportantActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  final String? lastCalledNumber;

  @override
  String toString() {
    return 'AuthState(authStatus: $authStatus, user: $user, agent: $agent, veryImportantActivities: $veryImportantActivities, lastCalledNumber: $lastCalledNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            const DeepCollectionEquality().equals(
                other._veryImportantActivities, _veryImportantActivities) &&
            (identical(other.lastCalledNumber, lastCalledNumber) ||
                other.lastCalledNumber == lastCalledNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      authStatus,
      user,
      agent,
      const DeepCollectionEquality().hash(_veryImportantActivities),
      lastCalledNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final AuthStatus authStatus,
      final User? user,
      final Agent? agent,
      final Set<String>? veryImportantActivities,
      final String? lastCalledNumber}) = _$AuthStateImpl;

  @override
  AuthStatus get authStatus;
  @override
  User? get user;
  @override
  Agent? get agent;
  @override
  Set<String>? get veryImportantActivities;
  @override
  String? get lastCalledNumber;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
