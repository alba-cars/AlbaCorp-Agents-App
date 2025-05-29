// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  AppStatus get loginStatus;
  String? get loginErrorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.loginErrorMessage, loginErrorMessage) ||
                other.loginErrorMessage == loginErrorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginStatus, loginErrorMessage);

  @override
  String toString() {
    return 'LoginState(loginStatus: $loginStatus, loginErrorMessage: $loginErrorMessage)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call({AppStatus loginStatus, String? loginErrorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? loginErrorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      loginStatus: null == loginStatus
          ? _self.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      loginErrorMessage: freezed == loginErrorMessage
          ? _self.loginErrorMessage
          : loginErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _LoginState implements LoginState {
  const _LoginState(
      {this.loginStatus = AppStatus.init, this.loginErrorMessage});

  @override
  @JsonKey()
  final AppStatus loginStatus;
  @override
  final String? loginErrorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.loginErrorMessage, loginErrorMessage) ||
                other.loginErrorMessage == loginErrorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginStatus, loginErrorMessage);

  @override
  String toString() {
    return 'LoginState(loginStatus: $loginStatus, loginErrorMessage: $loginErrorMessage)';
  }
}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) _then) =
      __$LoginStateCopyWithImpl;
  @override
  @useResult
  $Res call({AppStatus loginStatus, String? loginErrorMessage});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? loginStatus = null,
    Object? loginErrorMessage = freezed,
  }) {
    return _then(_LoginState(
      loginStatus: null == loginStatus
          ? _self.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      loginErrorMessage: freezed == loginErrorMessage
          ? _self.loginErrorMessage
          : loginErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
