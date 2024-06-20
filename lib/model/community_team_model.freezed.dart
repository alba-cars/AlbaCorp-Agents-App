// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommunityTeamModel _$CommunityTeamModelFromJson(Map<String, dynamic> json) {
  return _CommunityTeamModel.fromJson(json);
}

/// @nodoc
mixin _$CommunityTeamModel {
  String get id => throw _privateConstructorUsedError;
  String get teamName => throw _privateConstructorUsedError;
  List<User> get members => throw _privateConstructorUsedError;
  List<CommunityName> get communities => throw _privateConstructorUsedError;
  String get nextAssigned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityTeamModelCopyWith<CommunityTeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityTeamModelCopyWith<$Res> {
  factory $CommunityTeamModelCopyWith(
          CommunityTeamModel value, $Res Function(CommunityTeamModel) then) =
      _$CommunityTeamModelCopyWithImpl<$Res, CommunityTeamModel>;
  @useResult
  $Res call(
      {String id,
      String teamName,
      List<User> members,
      List<CommunityName> communities,
      String nextAssigned});
}

/// @nodoc
class _$CommunityTeamModelCopyWithImpl<$Res, $Val extends CommunityTeamModel>
    implements $CommunityTeamModelCopyWith<$Res> {
  _$CommunityTeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamName = null,
    Object? members = null,
    Object? communities = null,
    Object? nextAssigned = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<User>,
      communities: null == communities
          ? _value.communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<CommunityName>,
      nextAssigned: null == nextAssigned
          ? _value.nextAssigned
          : nextAssigned // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityTeamModelImplCopyWith<$Res>
    implements $CommunityTeamModelCopyWith<$Res> {
  factory _$$CommunityTeamModelImplCopyWith(_$CommunityTeamModelImpl value,
          $Res Function(_$CommunityTeamModelImpl) then) =
      __$$CommunityTeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String teamName,
      List<User> members,
      List<CommunityName> communities,
      String nextAssigned});
}

/// @nodoc
class __$$CommunityTeamModelImplCopyWithImpl<$Res>
    extends _$CommunityTeamModelCopyWithImpl<$Res, _$CommunityTeamModelImpl>
    implements _$$CommunityTeamModelImplCopyWith<$Res> {
  __$$CommunityTeamModelImplCopyWithImpl(_$CommunityTeamModelImpl _value,
      $Res Function(_$CommunityTeamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamName = null,
    Object? members = null,
    Object? communities = null,
    Object? nextAssigned = null,
  }) {
    return _then(_$CommunityTeamModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<User>,
      communities: null == communities
          ? _value._communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<CommunityName>,
      nextAssigned: null == nextAssigned
          ? _value.nextAssigned
          : nextAssigned // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityTeamModelImpl implements _CommunityTeamModel {
  const _$CommunityTeamModelImpl(
      {required this.id,
      required this.teamName,
      required final List<User> members,
      required final List<CommunityName> communities,
      required this.nextAssigned})
      : _members = members,
        _communities = communities;

  factory _$CommunityTeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityTeamModelImplFromJson(json);

  @override
  final String id;
  @override
  final String teamName;
  final List<User> _members;
  @override
  List<User> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<CommunityName> _communities;
  @override
  List<CommunityName> get communities {
    if (_communities is EqualUnmodifiableListView) return _communities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_communities);
  }

  @override
  final String nextAssigned;

  @override
  String toString() {
    return 'CommunityTeamModel(id: $id, teamName: $teamName, members: $members, communities: $communities, nextAssigned: $nextAssigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityTeamModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._communities, _communities) &&
            (identical(other.nextAssigned, nextAssigned) ||
                other.nextAssigned == nextAssigned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      teamName,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_communities),
      nextAssigned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityTeamModelImplCopyWith<_$CommunityTeamModelImpl> get copyWith =>
      __$$CommunityTeamModelImplCopyWithImpl<_$CommunityTeamModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityTeamModelImplToJson(
      this,
    );
  }
}

abstract class _CommunityTeamModel implements CommunityTeamModel {
  const factory _CommunityTeamModel(
      {required final String id,
      required final String teamName,
      required final List<User> members,
      required final List<CommunityName> communities,
      required final String nextAssigned}) = _$CommunityTeamModelImpl;

  factory _CommunityTeamModel.fromJson(Map<String, dynamic> json) =
      _$CommunityTeamModelImpl.fromJson;

  @override
  String get id;
  @override
  String get teamName;
  @override
  List<User> get members;
  @override
  List<CommunityName> get communities;
  @override
  String get nextAssigned;
  @override
  @JsonKey(ignore: true)
  _$$CommunityTeamModelImplCopyWith<_$CommunityTeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommunityName _$CommunityNameFromJson(Map<String, dynamic> json) {
  return _CommunityName.fromJson(json);
}

/// @nodoc
mixin _$CommunityName {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get community => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_id')
  String get teamId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityNameCopyWith<CommunityName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityNameCopyWith<$Res> {
  factory $CommunityNameCopyWith(
          CommunityName value, $Res Function(CommunityName) then) =
      _$CommunityNameCopyWithImpl<$Res, CommunityName>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String community,
      @JsonKey(name: 'team_id') String teamId});
}

/// @nodoc
class _$CommunityNameCopyWithImpl<$Res, $Val extends CommunityName>
    implements $CommunityNameCopyWith<$Res> {
  _$CommunityNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? community = null,
    Object? teamId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityNameImplCopyWith<$Res>
    implements $CommunityNameCopyWith<$Res> {
  factory _$$CommunityNameImplCopyWith(
          _$CommunityNameImpl value, $Res Function(_$CommunityNameImpl) then) =
      __$$CommunityNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String community,
      @JsonKey(name: 'team_id') String teamId});
}

/// @nodoc
class __$$CommunityNameImplCopyWithImpl<$Res>
    extends _$CommunityNameCopyWithImpl<$Res, _$CommunityNameImpl>
    implements _$$CommunityNameImplCopyWith<$Res> {
  __$$CommunityNameImplCopyWithImpl(
      _$CommunityNameImpl _value, $Res Function(_$CommunityNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? community = null,
    Object? teamId = null,
  }) {
    return _then(_$CommunityNameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityNameImpl implements _CommunityName {
  const _$CommunityNameImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.community,
      @JsonKey(name: 'team_id') required this.teamId});

  factory _$CommunityNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityNameImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String community;
  @override
  @JsonKey(name: 'team_id')
  final String teamId;

  @override
  String toString() {
    return 'CommunityName(id: $id, community: $community, teamId: $teamId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, community, teamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityNameImplCopyWith<_$CommunityNameImpl> get copyWith =>
      __$$CommunityNameImplCopyWithImpl<_$CommunityNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityNameImplToJson(
      this,
    );
  }
}

abstract class _CommunityName implements CommunityName {
  const factory _CommunityName(
          {@JsonKey(name: '_id') required final String id,
          required final String community,
          @JsonKey(name: 'team_id') required final String teamId}) =
      _$CommunityNameImpl;

  factory _CommunityName.fromJson(Map<String, dynamic> json) =
      _$CommunityNameImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get community;
  @override
  @JsonKey(name: 'team_id')
  String get teamId;
  @override
  @JsonKey(ignore: true)
  _$$CommunityNameImplCopyWith<_$CommunityNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
