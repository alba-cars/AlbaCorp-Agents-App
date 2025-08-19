// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_access_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuickAccessSection {
  String get id;
  String get name;
  int get order;
  List<QuickAccessCard> get cards;

  /// Create a copy of QuickAccessSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuickAccessSectionCopyWith<QuickAccessSection> get copyWith =>
      _$QuickAccessSectionCopyWithImpl<QuickAccessSection>(
          this as QuickAccessSection, _$identity);

  /// Serializes this QuickAccessSection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuickAccessSection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other.cards, cards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, order, const DeepCollectionEquality().hash(cards));

  @override
  String toString() {
    return 'QuickAccessSection(id: $id, name: $name, order: $order, cards: $cards)';
  }
}

/// @nodoc
abstract mixin class $QuickAccessSectionCopyWith<$Res> {
  factory $QuickAccessSectionCopyWith(
          QuickAccessSection value, $Res Function(QuickAccessSection) _then) =
      _$QuickAccessSectionCopyWithImpl;
  @useResult
  $Res call({String id, String name, int order, List<QuickAccessCard> cards});
}

/// @nodoc
class _$QuickAccessSectionCopyWithImpl<$Res>
    implements $QuickAccessSectionCopyWith<$Res> {
  _$QuickAccessSectionCopyWithImpl(this._self, this._then);

  final QuickAccessSection _self;
  final $Res Function(QuickAccessSection) _then;

  /// Create a copy of QuickAccessSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? order = null,
    Object? cards = null,
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
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      cards: null == cards
          ? _self.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<QuickAccessCard>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _QuickAccessSection implements QuickAccessSection {
  const _QuickAccessSection(
      {required this.id,
      required this.name,
      required this.order,
      required final List<QuickAccessCard> cards})
      : _cards = cards;
  factory _QuickAccessSection.fromJson(Map<String, dynamic> json) =>
      _$QuickAccessSectionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int order;
  final List<QuickAccessCard> _cards;
  @override
  List<QuickAccessCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  /// Create a copy of QuickAccessSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuickAccessSectionCopyWith<_QuickAccessSection> get copyWith =>
      __$QuickAccessSectionCopyWithImpl<_QuickAccessSection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuickAccessSectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuickAccessSection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, order,
      const DeepCollectionEquality().hash(_cards));

  @override
  String toString() {
    return 'QuickAccessSection(id: $id, name: $name, order: $order, cards: $cards)';
  }
}

/// @nodoc
abstract mixin class _$QuickAccessSectionCopyWith<$Res>
    implements $QuickAccessSectionCopyWith<$Res> {
  factory _$QuickAccessSectionCopyWith(
          _QuickAccessSection value, $Res Function(_QuickAccessSection) _then) =
      __$QuickAccessSectionCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, int order, List<QuickAccessCard> cards});
}

/// @nodoc
class __$QuickAccessSectionCopyWithImpl<$Res>
    implements _$QuickAccessSectionCopyWith<$Res> {
  __$QuickAccessSectionCopyWithImpl(this._self, this._then);

  final _QuickAccessSection _self;
  final $Res Function(_QuickAccessSection) _then;

  /// Create a copy of QuickAccessSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? order = null,
    Object? cards = null,
  }) {
    return _then(_QuickAccessSection(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      cards: null == cards
          ? _self._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<QuickAccessCard>,
    ));
  }
}

/// @nodoc
mixin _$QuickAccessCard {
  String get id;
  String get title;
  String get link;
  @JsonKey(name: 'section_id')
  String get sectionId;
  int get order;

  /// Create a copy of QuickAccessCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuickAccessCardCopyWith<QuickAccessCard> get copyWith =>
      _$QuickAccessCardCopyWithImpl<QuickAccessCard>(
          this as QuickAccessCard, _$identity);

  /// Serializes this QuickAccessCard to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuickAccessCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, link, sectionId, order);

  @override
  String toString() {
    return 'QuickAccessCard(id: $id, title: $title, link: $link, sectionId: $sectionId, order: $order)';
  }
}

/// @nodoc
abstract mixin class $QuickAccessCardCopyWith<$Res> {
  factory $QuickAccessCardCopyWith(
          QuickAccessCard value, $Res Function(QuickAccessCard) _then) =
      _$QuickAccessCardCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String link,
      @JsonKey(name: 'section_id') String sectionId,
      int order});
}

/// @nodoc
class _$QuickAccessCardCopyWithImpl<$Res>
    implements $QuickAccessCardCopyWith<$Res> {
  _$QuickAccessCardCopyWithImpl(this._self, this._then);

  final QuickAccessCard _self;
  final $Res Function(QuickAccessCard) _then;

  /// Create a copy of QuickAccessCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? link = null,
    Object? sectionId = null,
    Object? order = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _self.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _QuickAccessCard implements QuickAccessCard {
  const _QuickAccessCard(
      {required this.id,
      required this.title,
      required this.link,
      @JsonKey(name: 'section_id') required this.sectionId,
      required this.order});
  factory _QuickAccessCard.fromJson(Map<String, dynamic> json) =>
      _$QuickAccessCardFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String link;
  @override
  @JsonKey(name: 'section_id')
  final String sectionId;
  @override
  final int order;

  /// Create a copy of QuickAccessCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuickAccessCardCopyWith<_QuickAccessCard> get copyWith =>
      __$QuickAccessCardCopyWithImpl<_QuickAccessCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuickAccessCardToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuickAccessCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, link, sectionId, order);

  @override
  String toString() {
    return 'QuickAccessCard(id: $id, title: $title, link: $link, sectionId: $sectionId, order: $order)';
  }
}

/// @nodoc
abstract mixin class _$QuickAccessCardCopyWith<$Res>
    implements $QuickAccessCardCopyWith<$Res> {
  factory _$QuickAccessCardCopyWith(
          _QuickAccessCard value, $Res Function(_QuickAccessCard) _then) =
      __$QuickAccessCardCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String link,
      @JsonKey(name: 'section_id') String sectionId,
      int order});
}

/// @nodoc
class __$QuickAccessCardCopyWithImpl<$Res>
    implements _$QuickAccessCardCopyWith<$Res> {
  __$QuickAccessCardCopyWithImpl(this._self, this._then);

  final _QuickAccessCard _self;
  final $Res Function(_QuickAccessCard) _then;

  /// Create a copy of QuickAccessCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? link = null,
    Object? sectionId = null,
    Object? order = null,
  }) {
    return _then(_QuickAccessCard(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _self.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
