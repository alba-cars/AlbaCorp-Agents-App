// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserListData _$UserListDataFromJson(Map<String, dynamic> json) {
  return _UserListData.fromJson(json);
}

/// @nodoc
mixin _$UserListData {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "user_phone")
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListDataCopyWith<UserListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListDataCopyWith<$Res> {
  factory $UserListDataCopyWith(
          UserListData value, $Res Function(UserListData) then) =
      _$UserListDataCopyWithImpl<$Res, UserListData>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "user_name") String? name,
      @JsonKey(name: "user_phone") String? phone});
}

/// @nodoc
class _$UserListDataCopyWithImpl<$Res, $Val extends UserListData>
    implements $UserListDataCopyWith<$Res> {
  _$UserListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserListDataImplCopyWith<$Res>
    implements $UserListDataCopyWith<$Res> {
  factory _$$UserListDataImplCopyWith(
          _$UserListDataImpl value, $Res Function(_$UserListDataImpl) then) =
      __$$UserListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "user_name") String? name,
      @JsonKey(name: "user_phone") String? phone});
}

/// @nodoc
class __$$UserListDataImplCopyWithImpl<$Res>
    extends _$UserListDataCopyWithImpl<$Res, _$UserListDataImpl>
    implements _$$UserListDataImplCopyWith<$Res> {
  __$$UserListDataImplCopyWithImpl(
      _$UserListDataImpl _value, $Res Function(_$UserListDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$UserListDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListDataImpl implements _UserListData {
  const _$UserListDataImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "user_name") this.name,
      @JsonKey(name: "user_phone") this.phone});

  factory _$UserListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListDataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "user_name")
  final String? name;
  @override
  @JsonKey(name: "user_phone")
  final String? phone;

  @override
  String toString() {
    return 'UserListData(id: $id, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListDataImplCopyWith<_$UserListDataImpl> get copyWith =>
      __$$UserListDataImplCopyWithImpl<_$UserListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListDataImplToJson(
      this,
    );
  }
}

abstract class _UserListData implements UserListData {
  const factory _UserListData(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "user_name") final String? name,
      @JsonKey(name: "user_phone") final String? phone}) = _$UserListDataImpl;

  factory _UserListData.fromJson(Map<String, dynamic> json) =
      _$UserListDataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "user_name")
  String? get name;
  @override
  @JsonKey(name: "user_phone")
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$UserListDataImplCopyWith<_$UserListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
