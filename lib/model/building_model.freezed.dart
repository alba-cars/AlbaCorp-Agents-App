// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'building_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Building {
  @JsonKey(readValue: readId)
  String get id;
  String get name;
  String? get buildingNumber;
  String? get communityId;
  int? get floors;
  String? get type;
  String? get createdBy;
  List<dynamic>? get distances;

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BuildingCopyWith<Building> get copyWith =>
      _$BuildingCopyWithImpl<Building>(this as Building, _$identity);

  /// Serializes this Building to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Building &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(other.distances, distances));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      buildingNumber,
      communityId,
      floors,
      type,
      createdBy,
      const DeepCollectionEquality().hash(distances));

  @override
  String toString() {
    return 'Building(id: $id, name: $name, buildingNumber: $buildingNumber, communityId: $communityId, floors: $floors, type: $type, createdBy: $createdBy, distances: $distances)';
  }
}

/// @nodoc
abstract mixin class $BuildingCopyWith<$Res> {
  factory $BuildingCopyWith(Building value, $Res Function(Building) _then) =
      _$BuildingCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String name,
      String? buildingNumber,
      String? communityId,
      int? floors,
      String? type,
      String? createdBy,
      List<dynamic>? distances});
}

/// @nodoc
class _$BuildingCopyWithImpl<$Res> implements $BuildingCopyWith<$Res> {
  _$BuildingCopyWithImpl(this._self, this._then);

  final Building _self;
  final $Res Function(Building) _then;

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? buildingNumber = freezed,
    Object? communityId = freezed,
    Object? floors = freezed,
    Object? type = freezed,
    Object? createdBy = freezed,
    Object? distances = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      buildingNumber: freezed == buildingNumber
          ? _self.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _self.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      floors: freezed == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      distances: freezed == distances
          ? _self.distances
          : distances // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Building implements Building {
  const _Building(
      {@JsonKey(readValue: readId) required this.id,
      required this.name,
      this.buildingNumber,
      this.communityId,
      this.floors,
      this.type,
      this.createdBy,
      final List<dynamic>? distances})
      : _distances = distances;
  factory _Building.fromJson(Map<String, dynamic> json) =>
      _$BuildingFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final String name;
  @override
  final String? buildingNumber;
  @override
  final String? communityId;
  @override
  final int? floors;
  @override
  final String? type;
  @override
  final String? createdBy;
  final List<dynamic>? _distances;
  @override
  List<dynamic>? get distances {
    final value = _distances;
    if (value == null) return null;
    if (_distances is EqualUnmodifiableListView) return _distances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BuildingCopyWith<_Building> get copyWith =>
      __$BuildingCopyWithImpl<_Building>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BuildingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Building &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality()
                .equals(other._distances, _distances));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      buildingNumber,
      communityId,
      floors,
      type,
      createdBy,
      const DeepCollectionEquality().hash(_distances));

  @override
  String toString() {
    return 'Building(id: $id, name: $name, buildingNumber: $buildingNumber, communityId: $communityId, floors: $floors, type: $type, createdBy: $createdBy, distances: $distances)';
  }
}

/// @nodoc
abstract mixin class _$BuildingCopyWith<$Res>
    implements $BuildingCopyWith<$Res> {
  factory _$BuildingCopyWith(_Building value, $Res Function(_Building) _then) =
      __$BuildingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String name,
      String? buildingNumber,
      String? communityId,
      int? floors,
      String? type,
      String? createdBy,
      List<dynamic>? distances});
}

/// @nodoc
class __$BuildingCopyWithImpl<$Res> implements _$BuildingCopyWith<$Res> {
  __$BuildingCopyWithImpl(this._self, this._then);

  final _Building _self;
  final $Res Function(_Building) _then;

  /// Create a copy of Building
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? buildingNumber = freezed,
    Object? communityId = freezed,
    Object? floors = freezed,
    Object? type = freezed,
    Object? createdBy = freezed,
    Object? distances = freezed,
  }) {
    return _then(_Building(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      buildingNumber: freezed == buildingNumber
          ? _self.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _self.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      floors: freezed == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      distances: freezed == distances
          ? _self._distances
          : distances // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

// dart format on
