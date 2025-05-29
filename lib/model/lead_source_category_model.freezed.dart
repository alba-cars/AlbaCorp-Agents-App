// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_source_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeadSourceCategory {
  List<LeadSourceItem> get sources;
  String get category;

  /// Create a copy of LeadSourceCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadSourceCategoryCopyWith<LeadSourceCategory> get copyWith =>
      _$LeadSourceCategoryCopyWithImpl<LeadSourceCategory>(
          this as LeadSourceCategory, _$identity);

  /// Serializes this LeadSourceCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadSourceCategory &&
            const DeepCollectionEquality().equals(other.sources, sources) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sources), category);

  @override
  String toString() {
    return 'LeadSourceCategory(sources: $sources, category: $category)';
  }
}

/// @nodoc
abstract mixin class $LeadSourceCategoryCopyWith<$Res> {
  factory $LeadSourceCategoryCopyWith(
          LeadSourceCategory value, $Res Function(LeadSourceCategory) _then) =
      _$LeadSourceCategoryCopyWithImpl;
  @useResult
  $Res call({List<LeadSourceItem> sources, String category});
}

/// @nodoc
class _$LeadSourceCategoryCopyWithImpl<$Res>
    implements $LeadSourceCategoryCopyWith<$Res> {
  _$LeadSourceCategoryCopyWithImpl(this._self, this._then);

  final LeadSourceCategory _self;
  final $Res Function(LeadSourceCategory) _then;

  /// Create a copy of LeadSourceCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = null,
    Object? category = null,
  }) {
    return _then(_self.copyWith(
      sources: null == sources
          ? _self.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<LeadSourceItem>,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LeadSourceCategory implements LeadSourceCategory {
  const _LeadSourceCategory(
      {required final List<LeadSourceItem> sources, required this.category})
      : _sources = sources;
  factory _LeadSourceCategory.fromJson(Map<String, dynamic> json) =>
      _$LeadSourceCategoryFromJson(json);

  final List<LeadSourceItem> _sources;
  @override
  List<LeadSourceItem> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  final String category;

  /// Create a copy of LeadSourceCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadSourceCategoryCopyWith<_LeadSourceCategory> get copyWith =>
      __$LeadSourceCategoryCopyWithImpl<_LeadSourceCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadSourceCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadSourceCategory &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sources), category);

  @override
  String toString() {
    return 'LeadSourceCategory(sources: $sources, category: $category)';
  }
}

/// @nodoc
abstract mixin class _$LeadSourceCategoryCopyWith<$Res>
    implements $LeadSourceCategoryCopyWith<$Res> {
  factory _$LeadSourceCategoryCopyWith(
          _LeadSourceCategory value, $Res Function(_LeadSourceCategory) _then) =
      __$LeadSourceCategoryCopyWithImpl;
  @override
  @useResult
  $Res call({List<LeadSourceItem> sources, String category});
}

/// @nodoc
class __$LeadSourceCategoryCopyWithImpl<$Res>
    implements _$LeadSourceCategoryCopyWith<$Res> {
  __$LeadSourceCategoryCopyWithImpl(this._self, this._then);

  final _LeadSourceCategory _self;
  final $Res Function(_LeadSourceCategory) _then;

  /// Create a copy of LeadSourceCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sources = null,
    Object? category = null,
  }) {
    return _then(_LeadSourceCategory(
      sources: null == sources
          ? _self._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<LeadSourceItem>,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$LeadSourceItem {
  @JsonKey(name: '_id', readValue: readId)
  String get id;
  String get name;
  String get leadSourceType;
  @JsonKey(readValue: readTags)
  List<String>? get tags;

  /// Create a copy of LeadSourceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadSourceItemCopyWith<LeadSourceItem> get copyWith =>
      _$LeadSourceItemCopyWithImpl<LeadSourceItem>(
          this as LeadSourceItem, _$identity);

  /// Serializes this LeadSourceItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadSourceItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.leadSourceType, leadSourceType) ||
                other.leadSourceType == leadSourceType) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, leadSourceType,
      const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'LeadSourceItem(id: $id, name: $name, leadSourceType: $leadSourceType, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $LeadSourceItemCopyWith<$Res> {
  factory $LeadSourceItemCopyWith(
          LeadSourceItem value, $Res Function(LeadSourceItem) _then) =
      _$LeadSourceItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', readValue: readId) String id,
      String name,
      String leadSourceType,
      @JsonKey(readValue: readTags) List<String>? tags});
}

/// @nodoc
class _$LeadSourceItemCopyWithImpl<$Res>
    implements $LeadSourceItemCopyWith<$Res> {
  _$LeadSourceItemCopyWithImpl(this._self, this._then);

  final LeadSourceItem _self;
  final $Res Function(LeadSourceItem) _then;

  /// Create a copy of LeadSourceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? leadSourceType = null,
    Object? tags = freezed,
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
      leadSourceType: null == leadSourceType
          ? _self.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LeadSourceItem implements LeadSourceItem {
  const _LeadSourceItem(
      {@JsonKey(name: '_id', readValue: readId) required this.id,
      required this.name,
      required this.leadSourceType,
      @JsonKey(readValue: readTags) final List<String>? tags})
      : _tags = tags;
  factory _LeadSourceItem.fromJson(Map<String, dynamic> json) =>
      _$LeadSourceItemFromJson(json);

  @override
  @JsonKey(name: '_id', readValue: readId)
  final String id;
  @override
  final String name;
  @override
  final String leadSourceType;
  final List<String>? _tags;
  @override
  @JsonKey(readValue: readTags)
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of LeadSourceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadSourceItemCopyWith<_LeadSourceItem> get copyWith =>
      __$LeadSourceItemCopyWithImpl<_LeadSourceItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeadSourceItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadSourceItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.leadSourceType, leadSourceType) ||
                other.leadSourceType == leadSourceType) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, leadSourceType,
      const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'LeadSourceItem(id: $id, name: $name, leadSourceType: $leadSourceType, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$LeadSourceItemCopyWith<$Res>
    implements $LeadSourceItemCopyWith<$Res> {
  factory _$LeadSourceItemCopyWith(
          _LeadSourceItem value, $Res Function(_LeadSourceItem) _then) =
      __$LeadSourceItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', readValue: readId) String id,
      String name,
      String leadSourceType,
      @JsonKey(readValue: readTags) List<String>? tags});
}

/// @nodoc
class __$LeadSourceItemCopyWithImpl<$Res>
    implements _$LeadSourceItemCopyWith<$Res> {
  __$LeadSourceItemCopyWithImpl(this._self, this._then);

  final _LeadSourceItem _self;
  final $Res Function(_LeadSourceItem) _then;

  /// Create a copy of LeadSourceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? leadSourceType = null,
    Object? tags = freezed,
  }) {
    return _then(_LeadSourceItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leadSourceType: null == leadSourceType
          ? _self.leadSourceType
          : leadSourceType // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
