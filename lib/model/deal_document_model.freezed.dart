// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DealDocument _$DealDocumentFromJson(Map<String, dynamic> json) {
  return _DealDocument.fromJson(json);
}

/// @nodoc
mixin _$DealDocument {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_id')
  String get createdById => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<dynamic>? get documents => throw _privateConstructorUsedError;
  @JsonKey(name: 'deal_id')
  String get dealId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  User? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealDocumentCopyWith<DealDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealDocumentCopyWith<$Res> {
  factory $DealDocumentCopyWith(
          DealDocument value, $Res Function(DealDocument) then) =
      _$DealDocumentCopyWithImpl<$Res, DealDocument>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_by_id') String createdById,
      String path,
      String type,
      List<dynamic>? documents,
      @JsonKey(name: 'deal_id') String dealId,
      @JsonKey(name: 'created_by') User? createdBy});

  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$DealDocumentCopyWithImpl<$Res, $Val extends DealDocument>
    implements $DealDocumentCopyWith<$Res> {
  _$DealDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdById = null,
    Object? path = null,
    Object? type = null,
    Object? documents = freezed,
    Object? dealId = null,
    Object? createdBy = freezed,
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
      createdById: null == createdById
          ? _value.createdById
          : createdById // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dealId: null == dealId
          ? _value.dealId
          : dealId // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DealDocumentImplCopyWith<$Res>
    implements $DealDocumentCopyWith<$Res> {
  factory _$$DealDocumentImplCopyWith(
          _$DealDocumentImpl value, $Res Function(_$DealDocumentImpl) then) =
      __$$DealDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_by_id') String createdById,
      String path,
      String type,
      List<dynamic>? documents,
      @JsonKey(name: 'deal_id') String dealId,
      @JsonKey(name: 'created_by') User? createdBy});

  @override
  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$DealDocumentImplCopyWithImpl<$Res>
    extends _$DealDocumentCopyWithImpl<$Res, _$DealDocumentImpl>
    implements _$$DealDocumentImplCopyWith<$Res> {
  __$$DealDocumentImplCopyWithImpl(
      _$DealDocumentImpl _value, $Res Function(_$DealDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdById = null,
    Object? path = null,
    Object? type = null,
    Object? documents = freezed,
    Object? dealId = null,
    Object? createdBy = freezed,
  }) {
    return _then(_$DealDocumentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdById: null == createdById
          ? _value.createdById
          : createdById // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dealId: null == dealId
          ? _value.dealId
          : dealId // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DealDocumentImpl with DiagnosticableTreeMixin implements _DealDocument {
  _$DealDocumentImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_by_id') required this.createdById,
      required this.path,
      required this.type,
      final List<dynamic>? documents,
      @JsonKey(name: 'deal_id') required this.dealId,
      @JsonKey(name: 'created_by') this.createdBy})
      : _documents = documents;

  factory _$DealDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealDocumentImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_by_id')
  final String createdById;
  @override
  final String path;
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
  final String dealId;
  @override
  @JsonKey(name: 'created_by')
  final User? createdBy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DealDocument(id: $id, userId: $userId, createdById: $createdById, path: $path, type: $type, documents: $documents, dealId: $dealId, createdBy: $createdBy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
            other is _$DealDocumentImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, createdById, path,
      type, const DeepCollectionEquality().hash(_documents), dealId, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DealDocumentImplCopyWith<_$DealDocumentImpl> get copyWith =>
      __$$DealDocumentImplCopyWithImpl<_$DealDocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealDocumentImplToJson(
      this,
    );
  }
}

abstract class _DealDocument implements DealDocument {
  factory _DealDocument(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_by_id') required final String createdById,
      required final String path,
      required final String type,
      final List<dynamic>? documents,
      @JsonKey(name: 'deal_id') required final String dealId,
      @JsonKey(name: 'created_by') final User? createdBy}) = _$DealDocumentImpl;

  factory _DealDocument.fromJson(Map<String, dynamic> json) =
      _$DealDocumentImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_by_id')
  String get createdById;
  @override
  String get path;
  @override
  String get type;
  @override
  List<dynamic>? get documents;
  @override
  @JsonKey(name: 'deal_id')
  String get dealId;
  @override
  @JsonKey(name: 'created_by')
  User? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$DealDocumentImplCopyWith<_$DealDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
