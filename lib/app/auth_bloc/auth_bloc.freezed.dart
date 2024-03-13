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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userLoggedIn,
    TResult? Function()? userLoggedOut,
    TResult? Function()? started,
    TResult? Function()? refreshAgentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoggedIn,
    TResult Function()? userLoggedOut,
    TResult Function()? started,
    TResult Function()? refreshAgentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoggedIn value) userLoggedIn,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshAgentData value) refreshAgentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
    TResult? Function(_UserLoggedOut value)? userLoggedOut,
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshAgentData value)? refreshAgentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_Started value)? started,
    TResult Function(_RefreshAgentData value)? refreshAgentData,
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
mixin _$AuthState {
  AuthStatus get authStatus => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Agent? get agent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthStatus authStatus, User? user, Agent? agent});

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
  $Res call({AuthStatus authStatus, User? user, Agent? agent});

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
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.authStatus = AuthStatus.initial, this.user, this.agent});

  @override
  @JsonKey()
  final AuthStatus authStatus;
  @override
  final User? user;
  @override
  final Agent? agent;

  @override
  String toString() {
    return 'AuthState(authStatus: $authStatus, user: $user, agent: $agent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.agent, agent) || other.agent == agent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authStatus, user, agent);

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
      final Agent? agent}) = _$AuthStateImpl;

  @override
  AuthStatus get authStatus;
  @override
  User? get user;
  @override
  Agent? get agent;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
