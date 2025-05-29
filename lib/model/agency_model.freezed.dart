// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Agency implements DiagnosticableTreeMixin {
  String get id;
  String get type;
  @JsonKey(name: 'agency_name')
  String get agencyName;
  @JsonKey(name: 'first_name')
  String get firstName;
  @JsonKey(name: 'last_name')
  String get lastName;
  String? get email;
  String? get phone;
  @JsonKey(name: 'documentType')
  String get documentType;
  String? get document;
  List<dynamic> get documents;
  bool get active;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @JsonKey(name: 'created_by')
  String get createdBy;

  /// Create a copy of Agency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AgencyCopyWith<Agency> get copyWith =>
      _$AgencyCopyWithImpl<Agency>(this as Agency, _$identity);

  /// Serializes this Agency to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Agency'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('agencyName', agencyName))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('documentType', documentType))
      ..add(DiagnosticsProperty('document', document))
      ..add(DiagnosticsProperty('documents', documents))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('createdBy', createdBy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Agency &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.agencyName, agencyName) ||
                other.agencyName == agencyName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.document, document) ||
                other.document == document) &&
            const DeepCollectionEquality().equals(other.documents, documents) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      agencyName,
      firstName,
      lastName,
      email,
      phone,
      documentType,
      document,
      const DeepCollectionEquality().hash(documents),
      active,
      createdAt,
      updatedAt,
      createdBy);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Agency(id: $id, type: $type, agencyName: $agencyName, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, documentType: $documentType, document: $document, documents: $documents, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $AgencyCopyWith<$Res> {
  factory $AgencyCopyWith(Agency value, $Res Function(Agency) _then) =
      _$AgencyCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String type,
      @JsonKey(name: 'agency_name') String agencyName,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? email,
      String? phone,
      @JsonKey(name: 'documentType') String documentType,
      String? document,
      List<dynamic> documents,
      bool active,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class _$AgencyCopyWithImpl<$Res> implements $AgencyCopyWith<$Res> {
  _$AgencyCopyWithImpl(this._self, this._then);

  final Agency _self;
  final $Res Function(Agency) _then;

  /// Create a copy of Agency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? agencyName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? documentType = null,
    Object? document = freezed,
    Object? documents = null,
    Object? active = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? createdBy = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      agencyName: null == agencyName
          ? _self.agencyName
          : agencyName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      documentType: null == documentType
          ? _self.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      document: freezed == document
          ? _self.document
          : document // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _self.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Agency with DiagnosticableTreeMixin implements Agency {
  const _Agency(
      {required this.id,
      required this.type,
      @JsonKey(name: 'agency_name') this.agencyName = '',
      @JsonKey(name: 'first_name') this.firstName = '',
      @JsonKey(name: 'last_name') this.lastName = '',
      this.email,
      this.phone,
      @JsonKey(name: 'documentType') required this.documentType,
      this.document,
      final List<dynamic> documents = const [],
      required this.active,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'created_by') required this.createdBy})
      : _documents = documents;
  factory _Agency.fromJson(Map<String, dynamic> json) => _$AgencyFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  @JsonKey(name: 'agency_name')
  final String agencyName;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'documentType')
  final String documentType;
  @override
  final String? document;
  final List<dynamic> _documents;
  @override
  @JsonKey()
  List<dynamic> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final bool active;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;

  /// Create a copy of Agency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AgencyCopyWith<_Agency> get copyWith =>
      __$AgencyCopyWithImpl<_Agency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AgencyToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Agency'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('agencyName', agencyName))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('documentType', documentType))
      ..add(DiagnosticsProperty('document', document))
      ..add(DiagnosticsProperty('documents', documents))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('createdBy', createdBy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Agency &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.agencyName, agencyName) ||
                other.agencyName == agencyName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.document, document) ||
                other.document == document) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      agencyName,
      firstName,
      lastName,
      email,
      phone,
      documentType,
      document,
      const DeepCollectionEquality().hash(_documents),
      active,
      createdAt,
      updatedAt,
      createdBy);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Agency(id: $id, type: $type, agencyName: $agencyName, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, documentType: $documentType, document: $document, documents: $documents, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class _$AgencyCopyWith<$Res> implements $AgencyCopyWith<$Res> {
  factory _$AgencyCopyWith(_Agency value, $Res Function(_Agency) _then) =
      __$AgencyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      @JsonKey(name: 'agency_name') String agencyName,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? email,
      String? phone,
      @JsonKey(name: 'documentType') String documentType,
      String? document,
      List<dynamic> documents,
      bool active,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class __$AgencyCopyWithImpl<$Res> implements _$AgencyCopyWith<$Res> {
  __$AgencyCopyWithImpl(this._self, this._then);

  final _Agency _self;
  final $Res Function(_Agency) _then;

  /// Create a copy of Agency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? agencyName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? documentType = null,
    Object? document = freezed,
    Object? documents = null,
    Object? active = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? createdBy = null,
  }) {
    return _then(_Agency(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      agencyName: null == agencyName
          ? _self.agencyName
          : agencyName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      documentType: null == documentType
          ? _self.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      document: freezed == document
          ? _self.document
          : document // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _self._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
