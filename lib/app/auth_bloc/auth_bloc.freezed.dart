// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent()';
  }
}

/// @nodoc
class $AuthEventCopyWith<$Res> {
  $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}

/// @nodoc

class _UserLoggedIn implements AuthEvent {
  const _UserLoggedIn({required this.user});

  final User user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserLoggedInCopyWith<_UserLoggedIn> get copyWith =>
      __$UserLoggedInCopyWithImpl<_UserLoggedIn>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLoggedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AuthEvent.userLoggedIn(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$UserLoggedInCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$UserLoggedInCopyWith(
          _UserLoggedIn value, $Res Function(_UserLoggedIn) _then) =
      __$UserLoggedInCopyWithImpl;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserLoggedInCopyWithImpl<$Res>
    implements _$UserLoggedInCopyWith<$Res> {
  __$UserLoggedInCopyWithImpl(this._self, this._then);

  final _UserLoggedIn _self;
  final $Res Function(_UserLoggedIn) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(_UserLoggedIn(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc

class _UserLoggedOut implements AuthEvent {
  const _UserLoggedOut();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UserLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.userLoggedOut()';
  }
}

/// @nodoc

class _Started implements AuthEvent {
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
    return 'AuthEvent.started()';
  }
}

/// @nodoc

class _RefreshAgentData implements AuthEvent {
  const _RefreshAgentData();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RefreshAgentData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.refreshAgentData()';
  }
}

/// @nodoc

class _NewImportantActivity implements AuthEvent {
  const _NewImportantActivity({required final List<String> activityIds})
      : _activityIds = activityIds;

  final List<String> _activityIds;
  List<String> get activityIds {
    if (_activityIds is EqualUnmodifiableListView) return _activityIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activityIds);
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewImportantActivityCopyWith<_NewImportantActivity> get copyWith =>
      __$NewImportantActivityCopyWithImpl<_NewImportantActivity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewImportantActivity &&
            const DeepCollectionEquality()
                .equals(other._activityIds, _activityIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activityIds));

  @override
  String toString() {
    return 'AuthEvent.newImportantActivity(activityIds: $activityIds)';
  }
}

/// @nodoc
abstract mixin class _$NewImportantActivityCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$NewImportantActivityCopyWith(_NewImportantActivity value,
          $Res Function(_NewImportantActivity) _then) =
      __$NewImportantActivityCopyWithImpl;
  @useResult
  $Res call({List<String> activityIds});
}

/// @nodoc
class __$NewImportantActivityCopyWithImpl<$Res>
    implements _$NewImportantActivityCopyWith<$Res> {
  __$NewImportantActivityCopyWithImpl(this._self, this._then);

  final _NewImportantActivity _self;
  final $Res Function(_NewImportantActivity) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? activityIds = null,
  }) {
    return _then(_NewImportantActivity(
      activityIds: null == activityIds
          ? _self._activityIds
          : activityIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _CompletedImportantActivity implements AuthEvent {
  const _CompletedImportantActivity({required this.activityId});

  final String activityId;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompletedImportantActivityCopyWith<_CompletedImportantActivity>
      get copyWith => __$CompletedImportantActivityCopyWithImpl<
          _CompletedImportantActivity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompletedImportantActivity &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activityId);

  @override
  String toString() {
    return 'AuthEvent.completedImportantActivity(activityId: $activityId)';
  }
}

/// @nodoc
abstract mixin class _$CompletedImportantActivityCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$CompletedImportantActivityCopyWith(
          _CompletedImportantActivity value,
          $Res Function(_CompletedImportantActivity) _then) =
      __$CompletedImportantActivityCopyWithImpl;
  @useResult
  $Res call({String activityId});
}

/// @nodoc
class __$CompletedImportantActivityCopyWithImpl<$Res>
    implements _$CompletedImportantActivityCopyWith<$Res> {
  __$CompletedImportantActivityCopyWithImpl(this._self, this._then);

  final _CompletedImportantActivity _self;
  final $Res Function(_CompletedImportantActivity) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? activityId = null,
  }) {
    return _then(_CompletedImportantActivity(
      activityId: null == activityId
          ? _self.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ClearImportantActivity implements AuthEvent {
  const _ClearImportantActivity();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearImportantActivity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.clearImportantActivity()';
  }
}

/// @nodoc

class _CheckForImportantActivity implements AuthEvent {
  const _CheckForImportantActivity();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckForImportantActivity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.checkForImportantActivity()';
  }
}

/// @nodoc

class _CheckForCallFeedback implements AuthEvent {
  const _CheckForCallFeedback();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckForCallFeedback);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.checkForCallFeedback()';
  }
}

/// @nodoc

class _RemoveLastCallDetails implements AuthEvent {
  const _RemoveLastCallDetails();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RemoveLastCallDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.removeLastCallDetails()';
  }
}

/// @nodoc

class _SetShowFollowup implements AuthEvent {
  const _SetShowFollowup({required this.value});

  final bool value;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetShowFollowupCopyWith<_SetShowFollowup> get copyWith =>
      __$SetShowFollowupCopyWithImpl<_SetShowFollowup>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetShowFollowup &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'AuthEvent.setShowFollowup(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$SetShowFollowupCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$SetShowFollowupCopyWith(
          _SetShowFollowup value, $Res Function(_SetShowFollowup) _then) =
      __$SetShowFollowupCopyWithImpl;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$SetShowFollowupCopyWithImpl<$Res>
    implements _$SetShowFollowupCopyWith<$Res> {
  __$SetShowFollowupCopyWithImpl(this._self, this._then);

  final _SetShowFollowup _self;
  final $Res Function(_SetShowFollowup) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_SetShowFollowup(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _GetAppConfig implements AuthEvent {
  const _GetAppConfig();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetAppConfig);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.getAppConfig()';
  }
}

/// @nodoc

class _GetSettings implements AuthEvent {
  const _GetSettings();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.getSettings()';
  }
}

/// @nodoc

class _InitializeTwilio implements AuthEvent {
  const _InitializeTwilio();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitializeTwilio);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.initializeTwilio()';
  }
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get authStatus;
  User? get user;
  Agent? get agent;
  Set<String>? get veryImportantActivities;
  String? get lastCalledNumber;
  AppConfig? get appConfig;
  bool get showFeedbackScreen;
  bool get showFollowUpScreen;
  GlobalSettings? get globalSettings;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<AuthState> get copyWith =>
      _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            const DeepCollectionEquality().equals(
                other.veryImportantActivities, veryImportantActivities) &&
            (identical(other.lastCalledNumber, lastCalledNumber) ||
                other.lastCalledNumber == lastCalledNumber) &&
            (identical(other.appConfig, appConfig) ||
                other.appConfig == appConfig) &&
            (identical(other.showFeedbackScreen, showFeedbackScreen) ||
                other.showFeedbackScreen == showFeedbackScreen) &&
            (identical(other.showFollowUpScreen, showFollowUpScreen) ||
                other.showFollowUpScreen == showFollowUpScreen) &&
            (identical(other.globalSettings, globalSettings) ||
                other.globalSettings == globalSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      authStatus,
      user,
      agent,
      const DeepCollectionEquality().hash(veryImportantActivities),
      lastCalledNumber,
      appConfig,
      showFeedbackScreen,
      showFollowUpScreen,
      globalSettings);

  @override
  String toString() {
    return 'AuthState(authStatus: $authStatus, user: $user, agent: $agent, veryImportantActivities: $veryImportantActivities, lastCalledNumber: $lastCalledNumber, appConfig: $appConfig, showFeedbackScreen: $showFeedbackScreen, showFollowUpScreen: $showFollowUpScreen, globalSettings: $globalSettings)';
  }
}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) =
      _$AuthStateCopyWithImpl;
  @useResult
  $Res call(
      {AuthStatus authStatus,
      User? user,
      Agent? agent,
      Set<String>? veryImportantActivities,
      String? lastCalledNumber,
      AppConfig? appConfig,
      bool showFeedbackScreen,
      bool showFollowUpScreen,
      GlobalSettings? globalSettings});

  $UserCopyWith<$Res>? get user;
  $AgentCopyWith<$Res>? get agent;
  $AppConfigCopyWith<$Res>? get appConfig;
  $GlobalSettingsCopyWith<$Res>? get globalSettings;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? user = freezed,
    Object? agent = freezed,
    Object? veryImportantActivities = freezed,
    Object? lastCalledNumber = freezed,
    Object? appConfig = freezed,
    Object? showFeedbackScreen = null,
    Object? showFollowUpScreen = null,
    Object? globalSettings = freezed,
  }) {
    return _then(_self.copyWith(
      authStatus: null == authStatus
          ? _self.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      agent: freezed == agent
          ? _self.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      veryImportantActivities: freezed == veryImportantActivities
          ? _self.veryImportantActivities
          : veryImportantActivities // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      lastCalledNumber: freezed == lastCalledNumber
          ? _self.lastCalledNumber
          : lastCalledNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      appConfig: freezed == appConfig
          ? _self.appConfig
          : appConfig // ignore: cast_nullable_to_non_nullable
              as AppConfig?,
      showFeedbackScreen: null == showFeedbackScreen
          ? _self.showFeedbackScreen
          : showFeedbackScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showFollowUpScreen: null == showFollowUpScreen
          ? _self.showFollowUpScreen
          : showFollowUpScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      globalSettings: freezed == globalSettings
          ? _self.globalSettings
          : globalSettings // ignore: cast_nullable_to_non_nullable
              as GlobalSettings?,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get agent {
    if (_self.agent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.agent!, (value) {
      return _then(_self.copyWith(agent: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppConfigCopyWith<$Res>? get appConfig {
    if (_self.appConfig == null) {
      return null;
    }

    return $AppConfigCopyWith<$Res>(_self.appConfig!, (value) {
      return _then(_self.copyWith(appConfig: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GlobalSettingsCopyWith<$Res>? get globalSettings {
    if (_self.globalSettings == null) {
      return null;
    }

    return $GlobalSettingsCopyWith<$Res>(_self.globalSettings!, (value) {
      return _then(_self.copyWith(globalSettings: value));
    });
  }
}

/// @nodoc

class _AuthState implements AuthState {
  const _AuthState(
      {this.authStatus = AuthStatus.initial,
      this.user,
      this.agent,
      final Set<String>? veryImportantActivities,
      this.lastCalledNumber,
      this.appConfig,
      this.showFeedbackScreen = false,
      this.showFollowUpScreen = false,
      this.globalSettings})
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
  final AppConfig? appConfig;
  @override
  @JsonKey()
  final bool showFeedbackScreen;
  @override
  @JsonKey()
  final bool showFollowUpScreen;
  @override
  final GlobalSettings? globalSettings;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            const DeepCollectionEquality().equals(
                other._veryImportantActivities, _veryImportantActivities) &&
            (identical(other.lastCalledNumber, lastCalledNumber) ||
                other.lastCalledNumber == lastCalledNumber) &&
            (identical(other.appConfig, appConfig) ||
                other.appConfig == appConfig) &&
            (identical(other.showFeedbackScreen, showFeedbackScreen) ||
                other.showFeedbackScreen == showFeedbackScreen) &&
            (identical(other.showFollowUpScreen, showFollowUpScreen) ||
                other.showFollowUpScreen == showFollowUpScreen) &&
            (identical(other.globalSettings, globalSettings) ||
                other.globalSettings == globalSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      authStatus,
      user,
      agent,
      const DeepCollectionEquality().hash(_veryImportantActivities),
      lastCalledNumber,
      appConfig,
      showFeedbackScreen,
      showFollowUpScreen,
      globalSettings);

  @override
  String toString() {
    return 'AuthState(authStatus: $authStatus, user: $user, agent: $agent, veryImportantActivities: $veryImportantActivities, lastCalledNumber: $lastCalledNumber, appConfig: $appConfig, showFeedbackScreen: $showFeedbackScreen, showFollowUpScreen: $showFollowUpScreen, globalSettings: $globalSettings)';
  }
}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) _then) =
      __$AuthStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AuthStatus authStatus,
      User? user,
      Agent? agent,
      Set<String>? veryImportantActivities,
      String? lastCalledNumber,
      AppConfig? appConfig,
      bool showFeedbackScreen,
      bool showFollowUpScreen,
      GlobalSettings? globalSettings});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $AgentCopyWith<$Res>? get agent;
  @override
  $AppConfigCopyWith<$Res>? get appConfig;
  @override
  $GlobalSettingsCopyWith<$Res>? get globalSettings;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authStatus = null,
    Object? user = freezed,
    Object? agent = freezed,
    Object? veryImportantActivities = freezed,
    Object? lastCalledNumber = freezed,
    Object? appConfig = freezed,
    Object? showFeedbackScreen = null,
    Object? showFollowUpScreen = null,
    Object? globalSettings = freezed,
  }) {
    return _then(_AuthState(
      authStatus: null == authStatus
          ? _self.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      agent: freezed == agent
          ? _self.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      veryImportantActivities: freezed == veryImportantActivities
          ? _self._veryImportantActivities
          : veryImportantActivities // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      lastCalledNumber: freezed == lastCalledNumber
          ? _self.lastCalledNumber
          : lastCalledNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      appConfig: freezed == appConfig
          ? _self.appConfig
          : appConfig // ignore: cast_nullable_to_non_nullable
              as AppConfig?,
      showFeedbackScreen: null == showFeedbackScreen
          ? _self.showFeedbackScreen
          : showFeedbackScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showFollowUpScreen: null == showFollowUpScreen
          ? _self.showFollowUpScreen
          : showFollowUpScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      globalSettings: freezed == globalSettings
          ? _self.globalSettings
          : globalSettings // ignore: cast_nullable_to_non_nullable
              as GlobalSettings?,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get agent {
    if (_self.agent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.agent!, (value) {
      return _then(_self.copyWith(agent: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppConfigCopyWith<$Res>? get appConfig {
    if (_self.appConfig == null) {
      return null;
    }

    return $AppConfigCopyWith<$Res>(_self.appConfig!, (value) {
      return _then(_self.copyWith(appConfig: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GlobalSettingsCopyWith<$Res>? get globalSettings {
    if (_self.globalSettings == null) {
      return null;
    }

    return $GlobalSettingsCopyWith<$Res>(_self.globalSettings!, (value) {
      return _then(_self.copyWith(globalSettings: value));
    });
  }
}

// dart format on
