// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  @JsonKey(readValue: readId)
  String get id;
  String? get email;
  String get phone;
  String? get whatsapp;
  @JsonKey(name: "first_name")
  String get firstName;
  @JsonKey(name: "last_name")
  String get lastName;
  String? get city;
  String? get photo;
  String? get role;
  UserPBXNumbers? get userPBXNumbers;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, phone, whatsapp,
      firstName, lastName, city, photo, role, userPBXNumbers);

  @override
  String toString() {
    return 'User(id: $id, email: $email, phone: $phone, whatsapp: $whatsapp, firstName: $firstName, lastName: $lastName, city: $city, photo: $photo, role: $role, userPBXNumbers: $userPBXNumbers)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
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
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: freezed == whatsapp
          ? _self.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userPBXNumbers: freezed == userPBXNumbers
          ? _self.userPBXNumbers
          : userPBXNumbers // ignore: cast_nullable_to_non_nullable
              as UserPBXNumbers?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPBXNumbersCopyWith<$Res>? get userPBXNumbers {
    if (_self.userPBXNumbers == null) {
      return null;
    }

    return $UserPBXNumbersCopyWith<$Res>(_self.userPBXNumbers!, (value) {
      return _then(_self.copyWith(userPBXNumbers: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _User implements User {
  const _User(
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
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

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

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, phone, whatsapp,
      firstName, lastName, city, photo, role, userPBXNumbers);

  @override
  String toString() {
    return 'User(id: $id, email: $email, phone: $phone, whatsapp: $whatsapp, firstName: $firstName, lastName: $lastName, city: $city, photo: $photo, role: $role, userPBXNumbers: $userPBXNumbers)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
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
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_User(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: freezed == whatsapp
          ? _self.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userPBXNumbers: freezed == userPBXNumbers
          ? _self.userPBXNumbers
          : userPBXNumbers // ignore: cast_nullable_to_non_nullable
              as UserPBXNumbers?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPBXNumbersCopyWith<$Res>? get userPBXNumbers {
    if (_self.userPBXNumbers == null) {
      return null;
    }

    return $UserPBXNumbersCopyWith<$Res>(_self.userPBXNumbers!, (value) {
      return _then(_self.copyWith(userPBXNumbers: value));
    });
  }
}

/// @nodoc
mixin _$UserPBXNumbers {
  String get publicNumber;
  String? get pfNumber;
  String? get bayutNumber;

  /// Create a copy of UserPBXNumbers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserPBXNumbersCopyWith<UserPBXNumbers> get copyWith =>
      _$UserPBXNumbersCopyWithImpl<UserPBXNumbers>(
          this as UserPBXNumbers, _$identity);

  /// Serializes this UserPBXNumbers to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPBXNumbers &&
            (identical(other.publicNumber, publicNumber) ||
                other.publicNumber == publicNumber) &&
            (identical(other.pfNumber, pfNumber) ||
                other.pfNumber == pfNumber) &&
            (identical(other.bayutNumber, bayutNumber) ||
                other.bayutNumber == bayutNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publicNumber, pfNumber, bayutNumber);

  @override
  String toString() {
    return 'UserPBXNumbers(publicNumber: $publicNumber, pfNumber: $pfNumber, bayutNumber: $bayutNumber)';
  }
}

/// @nodoc
abstract mixin class $UserPBXNumbersCopyWith<$Res> {
  factory $UserPBXNumbersCopyWith(
          UserPBXNumbers value, $Res Function(UserPBXNumbers) _then) =
      _$UserPBXNumbersCopyWithImpl;
  @useResult
  $Res call({String publicNumber, String? pfNumber, String? bayutNumber});
}

/// @nodoc
class _$UserPBXNumbersCopyWithImpl<$Res>
    implements $UserPBXNumbersCopyWith<$Res> {
  _$UserPBXNumbersCopyWithImpl(this._self, this._then);

  final UserPBXNumbers _self;
  final $Res Function(UserPBXNumbers) _then;

  /// Create a copy of UserPBXNumbers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicNumber = null,
    Object? pfNumber = freezed,
    Object? bayutNumber = freezed,
  }) {
    return _then(_self.copyWith(
      publicNumber: null == publicNumber
          ? _self.publicNumber
          : publicNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pfNumber: freezed == pfNumber
          ? _self.pfNumber
          : pfNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bayutNumber: freezed == bayutNumber
          ? _self.bayutNumber
          : bayutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserPBXNumbers implements UserPBXNumbers {
  const _UserPBXNumbers(
      {required this.publicNumber, this.pfNumber, this.bayutNumber});
  factory _UserPBXNumbers.fromJson(Map<String, dynamic> json) =>
      _$UserPBXNumbersFromJson(json);

  @override
  final String publicNumber;
  @override
  final String? pfNumber;
  @override
  final String? bayutNumber;

  /// Create a copy of UserPBXNumbers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserPBXNumbersCopyWith<_UserPBXNumbers> get copyWith =>
      __$UserPBXNumbersCopyWithImpl<_UserPBXNumbers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserPBXNumbersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserPBXNumbers &&
            (identical(other.publicNumber, publicNumber) ||
                other.publicNumber == publicNumber) &&
            (identical(other.pfNumber, pfNumber) ||
                other.pfNumber == pfNumber) &&
            (identical(other.bayutNumber, bayutNumber) ||
                other.bayutNumber == bayutNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publicNumber, pfNumber, bayutNumber);

  @override
  String toString() {
    return 'UserPBXNumbers(publicNumber: $publicNumber, pfNumber: $pfNumber, bayutNumber: $bayutNumber)';
  }
}

/// @nodoc
abstract mixin class _$UserPBXNumbersCopyWith<$Res>
    implements $UserPBXNumbersCopyWith<$Res> {
  factory _$UserPBXNumbersCopyWith(
          _UserPBXNumbers value, $Res Function(_UserPBXNumbers) _then) =
      __$UserPBXNumbersCopyWithImpl;
  @override
  @useResult
  $Res call({String publicNumber, String? pfNumber, String? bayutNumber});
}

/// @nodoc
class __$UserPBXNumbersCopyWithImpl<$Res>
    implements _$UserPBXNumbersCopyWith<$Res> {
  __$UserPBXNumbersCopyWithImpl(this._self, this._then);

  final _UserPBXNumbers _self;
  final $Res Function(_UserPBXNumbers) _then;

  /// Create a copy of UserPBXNumbers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicNumber = null,
    Object? pfNumber = freezed,
    Object? bayutNumber = freezed,
  }) {
    return _then(_UserPBXNumbers(
      publicNumber: null == publicNumber
          ? _self.publicNumber
          : publicNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pfNumber: freezed == pfNumber
          ? _self.pfNumber
          : pfNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bayutNumber: freezed == bayutNumber
          ? _self.bayutNumber
          : bayutNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
