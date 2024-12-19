// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get whatsapp => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  UserPBXNumbers? get userPBXNumbers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String? email,
      String phone,
      String? whatsapp,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      String? city,
      String? photo,
      String? role,
      UserPBXNumbers? userPBXNumbers});

  $UserPBXNumbersCopyWith<$Res>? get userPBXNumbers;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? phone = null,
    Object? whatsapp = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? city = freezed,
    Object? photo = freezed,
    Object? role = freezed,
    Object? userPBXNumbers = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userPBXNumbers: freezed == userPBXNumbers
          ? _value.userPBXNumbers
          : userPBXNumbers // ignore: cast_nullable_to_non_nullable
              as UserPBXNumbers?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserPBXNumbersCopyWith<$Res>? get userPBXNumbers {
    if (_value.userPBXNumbers == null) {
      return null;
    }

    return $UserPBXNumbersCopyWith<$Res>(_value.userPBXNumbers!, (value) {
      return _then(_value.copyWith(userPBXNumbers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      String? email,
      String phone,
      String? whatsapp,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
      String? city,
      String? photo,
      String? role,
      UserPBXNumbers? userPBXNumbers});

  @override
  $UserPBXNumbersCopyWith<$Res>? get userPBXNumbers;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? phone = null,
    Object? whatsapp = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? city = freezed,
    Object? photo = freezed,
    Object? role = freezed,
    Object? userPBXNumbers = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userPBXNumbers: freezed == userPBXNumbers
          ? _value.userPBXNumbers
          : userPBXNumbers // ignore: cast_nullable_to_non_nullable
              as UserPBXNumbers?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(readValue: readId) required this.id,
      required this.email,
      this.phone = '',
      this.whatsapp,
      @JsonKey(name: "first_name") this.firstName = '',
      @JsonKey(name: "last_name") this.lastName = '',
      this.city,
      this.photo,
      this.role,
      this.userPBXNumbers});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final String? email;
  @override
  @JsonKey()
  final String phone;
  @override
  final String? whatsapp;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
  @override
  final String? city;
  @override
  final String? photo;
  @override
  final String? role;
  @override
  final UserPBXNumbers? userPBXNumbers;

  @override
  String toString() {
    return 'User(id: $id, email: $email, phone: $phone, whatsapp: $whatsapp, firstName: $firstName, lastName: $lastName, city: $city, photo: $photo, role: $role, userPBXNumbers: $userPBXNumbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.userPBXNumbers, userPBXNumbers) ||
                other.userPBXNumbers == userPBXNumbers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, phone, whatsapp,
      firstName, lastName, city, photo, role, userPBXNumbers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(readValue: readId) required final String id,
      required final String? email,
      final String phone,
      final String? whatsapp,
      @JsonKey(name: "first_name") final String firstName,
      @JsonKey(name: "last_name") final String lastName,
      final String? city,
      final String? photo,
      final String? role,
      final UserPBXNumbers? userPBXNumbers}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  String? get email;
  @override
  String get phone;
  @override
  String? get whatsapp;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String get lastName;
  @override
  String? get city;
  @override
  String? get photo;
  @override
  String? get role;
  @override
  UserPBXNumbers? get userPBXNumbers;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPBXNumbers _$UserPBXNumbersFromJson(Map<String, dynamic> json) {
  return _UserPBXNumbers.fromJson(json);
}

/// @nodoc
mixin _$UserPBXNumbers {
  String get publicNumber => throw _privateConstructorUsedError;
  String? get pfNumber => throw _privateConstructorUsedError;
  String? get bayutNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPBXNumbersCopyWith<UserPBXNumbers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPBXNumbersCopyWith<$Res> {
  factory $UserPBXNumbersCopyWith(
          UserPBXNumbers value, $Res Function(UserPBXNumbers) then) =
      _$UserPBXNumbersCopyWithImpl<$Res, UserPBXNumbers>;
  @useResult
  $Res call({String publicNumber, String? pfNumber, String? bayutNumber});
}

/// @nodoc
class _$UserPBXNumbersCopyWithImpl<$Res, $Val extends UserPBXNumbers>
    implements $UserPBXNumbersCopyWith<$Res> {
  _$UserPBXNumbersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicNumber = null,
    Object? pfNumber = freezed,
    Object? bayutNumber = freezed,
  }) {
    return _then(_value.copyWith(
      publicNumber: null == publicNumber
          ? _value.publicNumber
          : publicNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pfNumber: freezed == pfNumber
          ? _value.pfNumber
          : pfNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bayutNumber: freezed == bayutNumber
          ? _value.bayutNumber
          : bayutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPBXNumbersImplCopyWith<$Res>
    implements $UserPBXNumbersCopyWith<$Res> {
  factory _$$UserPBXNumbersImplCopyWith(_$UserPBXNumbersImpl value,
          $Res Function(_$UserPBXNumbersImpl) then) =
      __$$UserPBXNumbersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicNumber, String? pfNumber, String? bayutNumber});
}

/// @nodoc
class __$$UserPBXNumbersImplCopyWithImpl<$Res>
    extends _$UserPBXNumbersCopyWithImpl<$Res, _$UserPBXNumbersImpl>
    implements _$$UserPBXNumbersImplCopyWith<$Res> {
  __$$UserPBXNumbersImplCopyWithImpl(
      _$UserPBXNumbersImpl _value, $Res Function(_$UserPBXNumbersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicNumber = null,
    Object? pfNumber = freezed,
    Object? bayutNumber = freezed,
  }) {
    return _then(_$UserPBXNumbersImpl(
      publicNumber: null == publicNumber
          ? _value.publicNumber
          : publicNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pfNumber: freezed == pfNumber
          ? _value.pfNumber
          : pfNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bayutNumber: freezed == bayutNumber
          ? _value.bayutNumber
          : bayutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPBXNumbersImpl implements _UserPBXNumbers {
  const _$UserPBXNumbersImpl(
      {required this.publicNumber, this.pfNumber, this.bayutNumber});

  factory _$UserPBXNumbersImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPBXNumbersImplFromJson(json);

  @override
  final String publicNumber;
  @override
  final String? pfNumber;
  @override
  final String? bayutNumber;

  @override
  String toString() {
    return 'UserPBXNumbers(publicNumber: $publicNumber, pfNumber: $pfNumber, bayutNumber: $bayutNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPBXNumbersImpl &&
            (identical(other.publicNumber, publicNumber) ||
                other.publicNumber == publicNumber) &&
            (identical(other.pfNumber, pfNumber) ||
                other.pfNumber == pfNumber) &&
            (identical(other.bayutNumber, bayutNumber) ||
                other.bayutNumber == bayutNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publicNumber, pfNumber, bayutNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPBXNumbersImplCopyWith<_$UserPBXNumbersImpl> get copyWith =>
      __$$UserPBXNumbersImplCopyWithImpl<_$UserPBXNumbersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPBXNumbersImplToJson(
      this,
    );
  }
}

abstract class _UserPBXNumbers implements UserPBXNumbers {
  const factory _UserPBXNumbers(
      {required final String publicNumber,
      final String? pfNumber,
      final String? bayutNumber}) = _$UserPBXNumbersImpl;

  factory _UserPBXNumbers.fromJson(Map<String, dynamic> json) =
      _$UserPBXNumbersImpl.fromJson;

  @override
  String get publicNumber;
  @override
  String? get pfNumber;
  @override
  String? get bayutNumber;
  @override
  @JsonKey(ignore: true)
  _$$UserPBXNumbersImplCopyWith<_$UserPBXNumbersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
