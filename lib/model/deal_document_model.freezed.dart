// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealDocument implements DiagnosticableTreeMixin {
  String get id;
  @JsonKey(name: 'user_id')
  String get userId;
  @JsonKey(name: 'created_by_id')
  String get createdById;
  String? get path;
  String get type;
  List<dynamic>? get documents;
  @JsonKey(name: 'deal_id')
  String? get dealId;
  @JsonKey(name: 'created_by')
  User? get createdBy;

  /// Create a copy of DealDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DealDocumentCopyWith<DealDocument> get copyWith =>
      _$DealDocumentCopyWithImpl<DealDocument>(
          this as DealDocument, _$identity);

  /// Serializes this DealDocument to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DealDocument'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('createdById', createdById))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('documents', documents))
      ..add(DiagnosticsProperty('dealId', dealId))
      ..add(DiagnosticsProperty('createdBy', createdBy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DealDocument &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdById, createdById) ||
                other.createdById == createdById) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.documents, documents) &&
            (identical(other.dealId, dealId) || other.dealId == dealId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, createdById, path,
      type, const DeepCollectionEquality().hash(documents), dealId, createdBy);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DealDocument(id: $id, userId: $userId, createdById: $createdById, path: $path, type: $type, documents: $documents, dealId: $dealId, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $DealDocumentCopyWith<$Res> {
  factory $DealDocumentCopyWith(
          DealDocument value, $Res Function(DealDocument) _then) =
      _$DealDocumentCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_by_id') String createdById,
      String? path,
      String type,
      List<dynamic>? documents,
      @JsonKey(name: 'deal_id') String? dealId,
      @JsonKey(name: 'created_by') User? createdBy});

  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$DealDocumentCopyWithImpl<$Res> implements $DealDocumentCopyWith<$Res> {
  _$DealDocumentCopyWithImpl(this._self, this._then);

  final DealDocument _self;
  final $Res Function(DealDocument) _then;

  /// Create a copy of DealDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdById = null,
    Object? path = freezed,
    Object? type = null,
    Object? documents = freezed,
    Object? dealId = freezed,
    Object? createdBy = freezed,
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
      createdById: null == createdById
          ? _self.createdById
          : createdById // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documents: freezed == documents
          ? _self.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dealId: freezed == dealId
          ? _self.dealId
          : dealId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of DealDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DealDocument with DiagnosticableTreeMixin implements DealDocument {
  _DealDocument(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_by_id') required this.createdById,
      this.path,
      required this.type,
      final List<dynamic>? documents,
      @JsonKey(name: 'deal_id') this.dealId,
      @JsonKey(name: 'created_by') this.createdBy})
      : _documents = documents;
  factory _DealDocument.fromJson(Map<String, dynamic> json) =>
      _$DealDocumentFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_by_id')
  final String createdById;
  @override
  final String? path;
  @override
  final String type;
  final List<dynamic>? _documents;
  @override
  List<dynamic>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'deal_id')
  final String? dealId;
  @override
  @JsonKey(name: 'created_by')
  final User? createdBy;

  /// Create a copy of DealDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DealDocumentCopyWith<_DealDocument> get copyWith =>
      __$DealDocumentCopyWithImpl<_DealDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DealDocumentToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'DealDocument'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('createdById', createdById))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('documents', documents))
      ..add(DiagnosticsProperty('dealId', dealId))
      ..add(DiagnosticsProperty('createdBy', createdBy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealDocument &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdById, createdById) ||
                other.createdById == createdById) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.dealId, dealId) || other.dealId == dealId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, createdById, path,
      type, const DeepCollectionEquality().hash(_documents), dealId, createdBy);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DealDocument(id: $id, userId: $userId, createdById: $createdById, path: $path, type: $type, documents: $documents, dealId: $dealId, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class _$DealDocumentCopyWith<$Res>
    implements $DealDocumentCopyWith<$Res> {
  factory _$DealDocumentCopyWith(
          _DealDocument value, $Res Function(_DealDocument) _then) =
      __$DealDocumentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_by_id') String createdById,
      String? path,
      String type,
      List<dynamic>? documents,
      @JsonKey(name: 'deal_id') String? dealId,
      @JsonKey(name: 'created_by') User? createdBy});

  @override
  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$DealDocumentCopyWithImpl<$Res>
    implements _$DealDocumentCopyWith<$Res> {
  __$DealDocumentCopyWithImpl(this._self, this._then);

  final _DealDocument _self;
  final $Res Function(_DealDocument) _then;

  /// Create a copy of DealDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdById = null,
    Object? path = freezed,
    Object? type = null,
    Object? documents = freezed,
    Object? dealId = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_DealDocument(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdById: null == createdById
          ? _self.createdById
          : createdById // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documents: freezed == documents
          ? _self._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dealId: freezed == dealId
          ? _self.dealId
          : dealId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of DealDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

// dart format on
