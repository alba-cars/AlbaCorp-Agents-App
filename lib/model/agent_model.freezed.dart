// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Agent implements DiagnosticableTreeMixin {
  @JsonKey(readValue: readId)
  String get id;
  @JsonKey(readValue: userIdFromJson)
  String get userId;
  List<String> get languages;
  String? get RERANo;
  String? get DEDNo;
  String? get PERMITNo;
  bool get RICSCertified;
  int get creditsBalance;
  int get creditsLimit;
  @JsonKey(readValue: userFromJson)
  User get user;
  bool get usePbx;

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AgentCopyWith<Agent> get copyWith =>
      _$AgentCopyWithImpl<Agent>(this as Agent, _$identity);

  /// Serializes this Agent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Agent'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('languages', languages))
      ..add(DiagnosticsProperty('RERANo', RERANo))
      ..add(DiagnosticsProperty('DEDNo', DEDNo))
      ..add(DiagnosticsProperty('PERMITNo', PERMITNo))
      ..add(DiagnosticsProperty('RICSCertified', RICSCertified))
      ..add(DiagnosticsProperty('creditsBalance', creditsBalance))
      ..add(DiagnosticsProperty('creditsLimit', creditsLimit))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('usePbx', usePbx));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Agent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other.languages, languages) &&
            (identical(other.RERANo, RERANo) || other.RERANo == RERANo) &&
            (identical(other.DEDNo, DEDNo) || other.DEDNo == DEDNo) &&
            (identical(other.PERMITNo, PERMITNo) ||
                other.PERMITNo == PERMITNo) &&
            (identical(other.RICSCertified, RICSCertified) ||
                other.RICSCertified == RICSCertified) &&
            (identical(other.creditsBalance, creditsBalance) ||
                other.creditsBalance == creditsBalance) &&
            (identical(other.creditsLimit, creditsLimit) ||
                other.creditsLimit == creditsLimit) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.usePbx, usePbx) || other.usePbx == usePbx));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      const DeepCollectionEquality().hash(languages),
      RERANo,
      DEDNo,
      PERMITNo,
      RICSCertified,
      creditsBalance,
      creditsLimit,
      user,
      usePbx);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Agent(id: $id, userId: $userId, languages: $languages, RERANo: $RERANo, DEDNo: $DEDNo, PERMITNo: $PERMITNo, RICSCertified: $RICSCertified, creditsBalance: $creditsBalance, creditsLimit: $creditsLimit, user: $user, usePbx: $usePbx)';
  }
}

/// @nodoc
abstract mixin class $AgentCopyWith<$Res> {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) _then) =
      _$AgentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(readValue: userIdFromJson) String userId,
      List<String> languages,
      String? RERANo,
      String? DEDNo,
      String? PERMITNo,
      bool RICSCertified,
      int creditsBalance,
      int creditsLimit,
      @JsonKey(readValue: userFromJson) User user,
      bool usePbx});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AgentCopyWithImpl<$Res> implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._self, this._then);

  final Agent _self;
  final $Res Function(Agent) _then;

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? languages = null,
    Object? RERANo = freezed,
    Object? DEDNo = freezed,
    Object? PERMITNo = freezed,
    Object? RICSCertified = null,
    Object? creditsBalance = null,
    Object? creditsLimit = null,
    Object? user = null,
    Object? usePbx = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _self.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      RERANo: freezed == RERANo
          ? _self.RERANo
          : RERANo // ignore: cast_nullable_to_non_nullable
              as String?,
      DEDNo: freezed == DEDNo
          ? _self.DEDNo
          : DEDNo // ignore: cast_nullable_to_non_nullable
              as String?,
      PERMITNo: freezed == PERMITNo
          ? _self.PERMITNo
          : PERMITNo // ignore: cast_nullable_to_non_nullable
              as String?,
      RICSCertified: null == RICSCertified
          ? _self.RICSCertified
          : RICSCertified // ignore: cast_nullable_to_non_nullable
              as bool,
      creditsBalance: null == creditsBalance
          ? _self.creditsBalance
          : creditsBalance // ignore: cast_nullable_to_non_nullable
              as int,
      creditsLimit: null == creditsLimit
          ? _self.creditsLimit
          : creditsLimit // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      usePbx: null == usePbx
          ? _self.usePbx
          : usePbx // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Agent
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
@JsonSerializable()
class _Agent with DiagnosticableTreeMixin implements Agent {
  const _Agent(
      {@JsonKey(readValue: readId) required this.id,
      @JsonKey(readValue: userIdFromJson) required this.userId,
      final List<String> languages = const [],
      this.RERANo,
      this.DEDNo,
      this.PERMITNo,
      this.RICSCertified = false,
      this.creditsBalance = 0,
      this.creditsLimit = 0,
      @JsonKey(readValue: userFromJson) required this.user,
      this.usePbx = false})
      : _languages = languages;
  factory _Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  @JsonKey(readValue: userIdFromJson)
  final String userId;
  final List<String> _languages;
  @override
  @JsonKey()
  List<String> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  final String? RERANo;
  @override
  final String? DEDNo;
  @override
  final String? PERMITNo;
  @override
  @JsonKey()
  final bool RICSCertified;
  @override
  @JsonKey()
  final int creditsBalance;
  @override
  @JsonKey()
  final int creditsLimit;
  @override
  @JsonKey(readValue: userFromJson)
  final User user;
  @override
  @JsonKey()
  final bool usePbx;

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AgentCopyWith<_Agent> get copyWith =>
      __$AgentCopyWithImpl<_Agent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AgentToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Agent'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('languages', languages))
      ..add(DiagnosticsProperty('RERANo', RERANo))
      ..add(DiagnosticsProperty('DEDNo', DEDNo))
      ..add(DiagnosticsProperty('PERMITNo', PERMITNo))
      ..add(DiagnosticsProperty('RICSCertified', RICSCertified))
      ..add(DiagnosticsProperty('creditsBalance', creditsBalance))
      ..add(DiagnosticsProperty('creditsLimit', creditsLimit))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('usePbx', usePbx));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Agent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.RERANo, RERANo) || other.RERANo == RERANo) &&
            (identical(other.DEDNo, DEDNo) || other.DEDNo == DEDNo) &&
            (identical(other.PERMITNo, PERMITNo) ||
                other.PERMITNo == PERMITNo) &&
            (identical(other.RICSCertified, RICSCertified) ||
                other.RICSCertified == RICSCertified) &&
            (identical(other.creditsBalance, creditsBalance) ||
                other.creditsBalance == creditsBalance) &&
            (identical(other.creditsLimit, creditsLimit) ||
                other.creditsLimit == creditsLimit) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.usePbx, usePbx) || other.usePbx == usePbx));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      const DeepCollectionEquality().hash(_languages),
      RERANo,
      DEDNo,
      PERMITNo,
      RICSCertified,
      creditsBalance,
      creditsLimit,
      user,
      usePbx);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Agent(id: $id, userId: $userId, languages: $languages, RERANo: $RERANo, DEDNo: $DEDNo, PERMITNo: $PERMITNo, RICSCertified: $RICSCertified, creditsBalance: $creditsBalance, creditsLimit: $creditsLimit, user: $user, usePbx: $usePbx)';
  }
}

/// @nodoc
abstract mixin class _$AgentCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$AgentCopyWith(_Agent value, $Res Function(_Agent) _then) =
      __$AgentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(readValue: userIdFromJson) String userId,
      List<String> languages,
      String? RERANo,
      String? DEDNo,
      String? PERMITNo,
      bool RICSCertified,
      int creditsBalance,
      int creditsLimit,
      @JsonKey(readValue: userFromJson) User user,
      bool usePbx});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AgentCopyWithImpl<$Res> implements _$AgentCopyWith<$Res> {
  __$AgentCopyWithImpl(this._self, this._then);

  final _Agent _self;
  final $Res Function(_Agent) _then;

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? languages = null,
    Object? RERANo = freezed,
    Object? DEDNo = freezed,
    Object? PERMITNo = freezed,
    Object? RICSCertified = null,
    Object? creditsBalance = null,
    Object? creditsLimit = null,
    Object? user = null,
    Object? usePbx = null,
  }) {
    return _then(_Agent(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _self._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      RERANo: freezed == RERANo
          ? _self.RERANo
          : RERANo // ignore: cast_nullable_to_non_nullable
              as String?,
      DEDNo: freezed == DEDNo
          ? _self.DEDNo
          : DEDNo // ignore: cast_nullable_to_non_nullable
              as String?,
      PERMITNo: freezed == PERMITNo
          ? _self.PERMITNo
          : PERMITNo // ignore: cast_nullable_to_non_nullable
              as String?,
      RICSCertified: null == RICSCertified
          ? _self.RICSCertified
          : RICSCertified // ignore: cast_nullable_to_non_nullable
              as bool,
      creditsBalance: null == creditsBalance
          ? _self.creditsBalance
          : creditsBalance // ignore: cast_nullable_to_non_nullable
              as int,
      creditsLimit: null == creditsLimit
          ? _self.creditsLimit
          : creditsLimit // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      usePbx: null == usePbx
          ? _self.usePbx
          : usePbx // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Agent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
