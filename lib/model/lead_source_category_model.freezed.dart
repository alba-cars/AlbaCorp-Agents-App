// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_source_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeadSourceCategory _$LeadSourceCategoryFromJson(Map<String, dynamic> json) {
  return _LeadSourceCategory.fromJson(json);
}

/// @nodoc
mixin _$LeadSourceCategory {
  List<LeadSourceItem> get sources => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadSourceCategoryCopyWith<LeadSourceCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadSourceCategoryCopyWith<$Res> {
  factory $LeadSourceCategoryCopyWith(
          LeadSourceCategory value, $Res Function(LeadSourceCategory) then) =
      _$LeadSourceCategoryCopyWithImpl<$Res, LeadSourceCategory>;
  @useResult
  $Res call({List<LeadSourceItem> sources, String category});
}

/// @nodoc
class _$LeadSourceCategoryCopyWithImpl<$Res, $Val extends LeadSourceCategory>
    implements $LeadSourceCategoryCopyWith<$Res> {
  _$LeadSourceCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<LeadSourceItem>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadSourceCategoryImplCopyWith<$Res>
    implements $LeadSourceCategoryCopyWith<$Res> {
  factory _$$LeadSourceCategoryImplCopyWith(_$LeadSourceCategoryImpl value,
          $Res Function(_$LeadSourceCategoryImpl) then) =
      __$$LeadSourceCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeadSourceItem> sources, String category});
}

/// @nodoc
class __$$LeadSourceCategoryImplCopyWithImpl<$Res>
    extends _$LeadSourceCategoryCopyWithImpl<$Res, _$LeadSourceCategoryImpl>
    implements _$$LeadSourceCategoryImplCopyWith<$Res> {
  __$$LeadSourceCategoryImplCopyWithImpl(_$LeadSourceCategoryImpl _value,
      $Res Function(_$LeadSourceCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = null,
    Object? category = null,
  }) {
    return _then(_$LeadSourceCategoryImpl(
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<LeadSourceItem>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadSourceCategoryImpl implements _LeadSourceCategory {
  const _$LeadSourceCategoryImpl(
      {required final List<LeadSourceItem> sources, required this.category})
      : _sources = sources;

  factory _$LeadSourceCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadSourceCategoryImplFromJson(json);

  final List<LeadSourceItem> _sources;
  @override
  List<LeadSourceItem> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  final String category;

  @override
  String toString() {
    return 'LeadSourceCategory(sources: $sources, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadSourceCategoryImpl &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sources), category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadSourceCategoryImplCopyWith<_$LeadSourceCategoryImpl> get copyWith =>
      __$$LeadSourceCategoryImplCopyWithImpl<_$LeadSourceCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadSourceCategoryImplToJson(
      this,
    );
  }
}

abstract class _LeadSourceCategory implements LeadSourceCategory {
  const factory _LeadSourceCategory(
      {required final List<LeadSourceItem> sources,
      required final String category}) = _$LeadSourceCategoryImpl;

  factory _LeadSourceCategory.fromJson(Map<String, dynamic> json) =
      _$LeadSourceCategoryImpl.fromJson;

  @override
  List<LeadSourceItem> get sources;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$LeadSourceCategoryImplCopyWith<_$LeadSourceCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeadSourceItem _$LeadSourceItemFromJson(Map<String, dynamic> json) {
  return _LeadSourceItem.fromJson(json);
}

/// @nodoc
mixin _$LeadSourceItem {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get leadSourceType => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadSourceItemCopyWith<LeadSourceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadSourceItemCopyWith<$Res> {
  factory $LeadSourceItemCopyWith(
          LeadSourceItem value, $Res Function(LeadSourceItem) then) =
      _$LeadSourceItemCopyWithImpl<$Res, LeadSourceItem>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String leadSourceType,
      String tags});
}

/// @nodoc
class _$LeadSourceItemCopyWithImpl<$Res, $Val extends LeadSourceItem>
    implements $LeadSourceItemCopyWith<$Res> {
  _$LeadSourceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? leadSourceType = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leadSourceType: null == leadSourceType
          ? _value.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadSourceItemImplCopyWith<$Res>
    implements $LeadSourceItemCopyWith<$Res> {
  factory _$$LeadSourceItemImplCopyWith(_$LeadSourceItemImpl value,
          $Res Function(_$LeadSourceItemImpl) then) =
      __$$LeadSourceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String leadSourceType,
      String tags});
}

/// @nodoc
class __$$LeadSourceItemImplCopyWithImpl<$Res>
    extends _$LeadSourceItemCopyWithImpl<$Res, _$LeadSourceItemImpl>
    implements _$$LeadSourceItemImplCopyWith<$Res> {
  __$$LeadSourceItemImplCopyWithImpl(
      _$LeadSourceItemImpl _value, $Res Function(_$LeadSourceItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? leadSourceType = null,
    Object? tags = null,
  }) {
    return _then(_$LeadSourceItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leadSourceType: null == leadSourceType
          ? _value.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadSourceItemImpl implements _LeadSourceItem {
  const _$LeadSourceItemImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.leadSourceType,
      required this.tags});

  factory _$LeadSourceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadSourceItemImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String leadSourceType;
  @override
  final String tags;

  @override
  String toString() {
    return 'LeadSourceItem(id: $id, name: $name, leadSourceType: $leadSourceType, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadSourceItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.leadSourceType, leadSourceType) ||
                other.leadSourceType == leadSourceType) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, leadSourceType, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadSourceItemImplCopyWith<_$LeadSourceItemImpl> get copyWith =>
      __$$LeadSourceItemImplCopyWithImpl<_$LeadSourceItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadSourceItemImplToJson(
      this,
    );
  }
}

abstract class _LeadSourceItem implements LeadSourceItem {
  const factory _LeadSourceItem(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      required final String leadSourceType,
      required final String tags}) = _$LeadSourceItemImpl;

  factory _LeadSourceItem.fromJson(Map<String, dynamic> json) =
      _$LeadSourceItemImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get leadSourceType;
  @override
  String get tags;
  @override
  @JsonKey(ignore: true)
  _$$LeadSourceItemImplCopyWith<_$LeadSourceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
