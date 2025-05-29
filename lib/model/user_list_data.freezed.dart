// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListData {
  @JsonKey(name: "_id")
  String get id;
  @JsonKey(name: "user_name")
  String? get name;
  @JsonKey(name: "user_phone")
  String? get phone;

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserListDataCopyWith<UserListData> get copyWith =>
      _$UserListDataCopyWithImpl<UserListData>(
          this as UserListData, _$identity);

  /// Serializes this UserListData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserListData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone);

  @override
  String toString() {
    return 'UserListData(id: $id, name: $name, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $UserListDataCopyWith<$Res> {
  factory $UserListDataCopyWith(
          UserListData value, $Res Function(UserListData) _then) =
      _$UserListDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "user_name") String? name,
      @JsonKey(name: "user_phone") String? phone});
}

/// @nodoc
class _$UserListDataCopyWithImpl<$Res> implements $UserListDataCopyWith<$Res> {
  _$UserListDataCopyWithImpl(this._self, this._then);

  final UserListData _self;
  final $Res Function(UserListData) _then;

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserListData implements UserListData {
  const _UserListData(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "user_name") this.name,
      @JsonKey(name: "user_phone") this.phone});
  factory _UserListData.fromJson(Map<String, dynamic> json) =>
      _$UserListDataFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "user_name")
  final String? name;
  @override
  @JsonKey(name: "user_phone")
  final String? phone;

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserListDataCopyWith<_UserListData> get copyWith =>
      __$UserListDataCopyWithImpl<_UserListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserListDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserListData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone);

  @override
  String toString() {
    return 'UserListData(id: $id, name: $name, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$UserListDataCopyWith<$Res>
    implements $UserListDataCopyWith<$Res> {
  factory _$UserListDataCopyWith(
          _UserListData value, $Res Function(_UserListData) _then) =
      __$UserListDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "user_name") String? name,
      @JsonKey(name: "user_phone") String? phone});
}

/// @nodoc
class __$UserListDataCopyWithImpl<$Res>
    implements _$UserListDataCopyWith<$Res> {
  __$UserListDataCopyWithImpl(this._self, this._then);

  final _UserListData _self;
  final $Res Function(_UserListData) _then;

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_UserListData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
