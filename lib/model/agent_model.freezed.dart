// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Agent _$AgentFromJson(Map<String, dynamic> json) {
  return _Agent.fromJson(json);
}

/// @nodoc
mixin _$Agent {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(readValue: userIdFromJson)
  String get userId => throw _privateConstructorUsedError;
  List<String> get languages => throw _privateConstructorUsedError;
  String? get RERANo => throw _privateConstructorUsedError;
  String? get DEDNo => throw _privateConstructorUsedError;
  String? get PERMITNo => throw _privateConstructorUsedError;
  bool get RICSCertified => throw _privateConstructorUsedError;
  int get creditsBalance => throw _privateConstructorUsedError;
  int get creditsLimit => throw _privateConstructorUsedError;
  @JsonKey(readValue: userFromJson)
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentCopyWith<Agent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentCopyWith<$Res> {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) then) =
      _$AgentCopyWithImpl<$Res, Agent>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(readValue: userIdFromJson) String userId,
      List<String> languages,
      String? RERANo,
      String? DEDNo,
      String? PERMITNo,
      bool RICSCertified,
      int creditsBalance,
      int creditsLimit,
      @JsonKey(readValue: userFromJson) User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AgentCopyWithImpl<$Res, $Val extends Agent>
    implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      RERANo: freezed == RERANo
          ? _value.RERANo
          : RERANo // ignore: cast_nullable_to_non_nullable
              as String?,
      DEDNo: freezed == DEDNo
          ? _value.DEDNo
          : DEDNo // ignore: cast_nullable_to_non_nullable
              as String?,
      PERMITNo: freezed == PERMITNo
          ? _value.PERMITNo
          : PERMITNo // ignore: cast_nullable_to_non_nullable
              as String?,
      RICSCertified: null == RICSCertified
          ? _value.RICSCertified
          : RICSCertified // ignore: cast_nullable_to_non_nullable
              as bool,
      creditsBalance: null == creditsBalance
          ? _value.creditsBalance
          : creditsBalance // ignore: cast_nullable_to_non_nullable
              as int,
      creditsLimit: null == creditsLimit
          ? _value.creditsLimit
          : creditsLimit // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentImplCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$$AgentImplCopyWith(
          _$AgentImpl value, $Res Function(_$AgentImpl) then) =
      __$$AgentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(readValue: userIdFromJson) String userId,
      List<String> languages,
      String? RERANo,
      String? DEDNo,
      String? PERMITNo,
      bool RICSCertified,
      int creditsBalance,
      int creditsLimit,
      @JsonKey(readValue: userFromJson) User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AgentImplCopyWithImpl<$Res>
    extends _$AgentCopyWithImpl<$Res, _$AgentImpl>
    implements _$$AgentImplCopyWith<$Res> {
  __$$AgentImplCopyWithImpl(
      _$AgentImpl _value, $Res Function(_$AgentImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$AgentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      RERANo: freezed == RERANo
          ? _value.RERANo
          : RERANo // ignore: cast_nullable_to_non_nullable
              as String?,
      DEDNo: freezed == DEDNo
          ? _value.DEDNo
          : DEDNo // ignore: cast_nullable_to_non_nullable
              as String?,
      PERMITNo: freezed == PERMITNo
          ? _value.PERMITNo
          : PERMITNo // ignore: cast_nullable_to_non_nullable
              as String?,
      RICSCertified: null == RICSCertified
          ? _value.RICSCertified
          : RICSCertified // ignore: cast_nullable_to_non_nullable
              as bool,
      creditsBalance: null == creditsBalance
          ? _value.creditsBalance
          : creditsBalance // ignore: cast_nullable_to_non_nullable
              as int,
      creditsLimit: null == creditsLimit
          ? _value.creditsLimit
          : creditsLimit // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentImpl with DiagnosticableTreeMixin implements _Agent {
  const _$AgentImpl(
      {required this.id,
      @JsonKey(readValue: userIdFromJson) required this.userId,
      final List<String> languages = const [],
      this.RERANo,
      this.DEDNo,
      this.PERMITNo,
      this.RICSCertified = false,
      this.creditsBalance = 0,
      this.creditsLimit = 0,
      @JsonKey(readValue: userFromJson) required this.user})
      : _languages = languages;

  factory _$AgentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentImplFromJson(json);

  @override
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Agent(id: $id, userId: $userId, languages: $languages, RERANo: $RERANo, DEDNo: $DEDNo, PERMITNo: $PERMITNo, RICSCertified: $RICSCertified, creditsBalance: $creditsBalance, creditsLimit: $creditsLimit, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentImpl &&
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
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
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
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentImplCopyWith<_$AgentImpl> get copyWith =>
      __$$AgentImplCopyWithImpl<_$AgentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentImplToJson(
      this,
    );
  }
}

abstract class _Agent implements Agent {
  const factory _Agent(
          {required final String id,
          @JsonKey(readValue: userIdFromJson) required final String userId,
          final List<String> languages,
          final String? RERANo,
          final String? DEDNo,
          final String? PERMITNo,
          final bool RICSCertified,
          final int creditsBalance,
          final int creditsLimit,
          @JsonKey(readValue: userFromJson) required final User user}) =
      _$AgentImpl;

  factory _Agent.fromJson(Map<String, dynamic> json) = _$AgentImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(readValue: userIdFromJson)
  String get userId;
  @override
  List<String> get languages;
  @override
  String? get RERANo;
  @override
  String? get DEDNo;
  @override
  String? get PERMITNo;
  @override
  bool get RICSCertified;
  @override
  int get creditsBalance;
  @override
  int get creditsLimit;
  @override
  @JsonKey(readValue: userFromJson)
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$AgentImplCopyWith<_$AgentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
