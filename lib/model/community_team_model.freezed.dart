// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommunityTeamModel {
  String get id;
  String get teamName;
  List<User> get members;
  List<CommunityName> get communities;
  String get nextAssigned;

  /// Create a copy of CommunityTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommunityTeamModelCopyWith<CommunityTeamModel> get copyWith =>
      _$CommunityTeamModelCopyWithImpl<CommunityTeamModel>(
          this as CommunityTeamModel, _$identity);

  /// Serializes this CommunityTeamModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommunityTeamModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality()
                .equals(other.communities, communities) &&
            (identical(other.nextAssigned, nextAssigned) ||
                other.nextAssigned == nextAssigned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      teamName,
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(communities),
      nextAssigned);

  @override
  String toString() {
    return 'CommunityTeamModel(id: $id, teamName: $teamName, members: $members, communities: $communities, nextAssigned: $nextAssigned)';
  }
}

/// @nodoc
abstract mixin class $CommunityTeamModelCopyWith<$Res> {
  factory $CommunityTeamModelCopyWith(
          CommunityTeamModel value, $Res Function(CommunityTeamModel) _then) =
      _$CommunityTeamModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String teamName,
      List<User> members,
      List<CommunityName> communities,
      String nextAssigned});
}

/// @nodoc
class _$CommunityTeamModelCopyWithImpl<$Res>
    implements $CommunityTeamModelCopyWith<$Res> {
  _$CommunityTeamModelCopyWithImpl(this._self, this._then);

  final CommunityTeamModel _self;
  final $Res Function(CommunityTeamModel) _then;

  /// Create a copy of CommunityTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamName = null,
    Object? members = null,
    Object? communities = null,
    Object? nextAssigned = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      teamName: null == teamName
          ? _self.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _self.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<User>,
      communities: null == communities
          ? _self.communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<CommunityName>,
      nextAssigned: null == nextAssigned
          ? _self.nextAssigned
          : nextAssigned // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CommunityTeamModel implements CommunityTeamModel {
  const _CommunityTeamModel(
      {required this.id,
      required this.teamName,
      required final List<User> members,
      required final List<CommunityName> communities,
      required this.nextAssigned})
      : _members = members,
        _communities = communities;
  factory _CommunityTeamModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityTeamModelFromJson(json);

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

  /// Create a copy of CommunityTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommunityTeamModelCopyWith<_CommunityTeamModel> get copyWith =>
      __$CommunityTeamModelCopyWithImpl<_CommunityTeamModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CommunityTeamModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommunityTeamModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._communities, _communities) &&
            (identical(other.nextAssigned, nextAssigned) ||
                other.nextAssigned == nextAssigned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      teamName,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_communities),
      nextAssigned);

  @override
  String toString() {
    return 'CommunityTeamModel(id: $id, teamName: $teamName, members: $members, communities: $communities, nextAssigned: $nextAssigned)';
  }
}

/// @nodoc
abstract mixin class _$CommunityTeamModelCopyWith<$Res>
    implements $CommunityTeamModelCopyWith<$Res> {
  factory _$CommunityTeamModelCopyWith(
          _CommunityTeamModel value, $Res Function(_CommunityTeamModel) _then) =
      __$CommunityTeamModelCopyWithImpl;
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
class __$CommunityTeamModelCopyWithImpl<$Res>
    implements _$CommunityTeamModelCopyWith<$Res> {
  __$CommunityTeamModelCopyWithImpl(this._self, this._then);

  final _CommunityTeamModel _self;
  final $Res Function(_CommunityTeamModel) _then;

  /// Create a copy of CommunityTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? teamName = null,
    Object? members = null,
    Object? communities = null,
    Object? nextAssigned = null,
  }) {
    return _then(_CommunityTeamModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      teamName: null == teamName
          ? _self.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _self._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<User>,
      communities: null == communities
          ? _self._communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<CommunityName>,
      nextAssigned: null == nextAssigned
          ? _self.nextAssigned
          : nextAssigned // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CommunityName {
  @JsonKey(name: '_id')
  String get id;
  String get community;
  @JsonKey(name: 'team_id')
  String get teamId;

  /// Create a copy of CommunityName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommunityNameCopyWith<CommunityName> get copyWith =>
      _$CommunityNameCopyWithImpl<CommunityName>(
          this as CommunityName, _$identity);

  /// Serializes this CommunityName to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommunityName &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, community, teamId);

  @override
  String toString() {
    return 'CommunityName(id: $id, community: $community, teamId: $teamId)';
  }
}

/// @nodoc
abstract mixin class $CommunityNameCopyWith<$Res> {
  factory $CommunityNameCopyWith(
          CommunityName value, $Res Function(CommunityName) _then) =
      _$CommunityNameCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String community,
      @JsonKey(name: 'team_id') String teamId});
}

/// @nodoc
class _$CommunityNameCopyWithImpl<$Res>
    implements $CommunityNameCopyWith<$Res> {
  _$CommunityNameCopyWithImpl(this._self, this._then);

  final CommunityName _self;
  final $Res Function(CommunityName) _then;

  /// Create a copy of CommunityName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? community = null,
    Object? teamId = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _self.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CommunityName implements CommunityName {
  const _CommunityName(
      {@JsonKey(name: '_id') required this.id,
      required this.community,
      @JsonKey(name: 'team_id') required this.teamId});
  factory _CommunityName.fromJson(Map<String, dynamic> json) =>
      _$CommunityNameFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String community;
  @override
  @JsonKey(name: 'team_id')
  final String teamId;

  /// Create a copy of CommunityName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommunityNameCopyWith<_CommunityName> get copyWith =>
      __$CommunityNameCopyWithImpl<_CommunityName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CommunityNameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommunityName &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, community, teamId);

  @override
  String toString() {
    return 'CommunityName(id: $id, community: $community, teamId: $teamId)';
  }
}

/// @nodoc
abstract mixin class _$CommunityNameCopyWith<$Res>
    implements $CommunityNameCopyWith<$Res> {
  factory _$CommunityNameCopyWith(
          _CommunityName value, $Res Function(_CommunityName) _then) =
      __$CommunityNameCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String community,
      @JsonKey(name: 'team_id') String teamId});
}

/// @nodoc
class __$CommunityNameCopyWithImpl<$Res>
    implements _$CommunityNameCopyWith<$Res> {
  __$CommunityNameCopyWithImpl(this._self, this._then);

  final _CommunityName _self;
  final $Res Function(_CommunityName) _then;

  /// Create a copy of CommunityName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? community = null,
    Object? teamId = null,
  }) {
    return _then(_CommunityName(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _self.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
