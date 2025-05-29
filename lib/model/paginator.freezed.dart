// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Paginator {
  int get itemCount;
  int get perPage;
  int get currentPage;

  /// Create a copy of Paginator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<Paginator> get copyWith =>
      _$PaginatorCopyWithImpl<Paginator>(this as Paginator, _$identity);

  /// Serializes this Paginator to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Paginator &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemCount, perPage, currentPage);

  @override
  String toString() {
    return 'Paginator(itemCount: $itemCount, perPage: $perPage, currentPage: $currentPage)';
  }
}

/// @nodoc
abstract mixin class $PaginatorCopyWith<$Res> {
  factory $PaginatorCopyWith(Paginator value, $Res Function(Paginator) _then) =
      _$PaginatorCopyWithImpl;
  @useResult
  $Res call({int itemCount, int perPage, int currentPage});
}

/// @nodoc
class _$PaginatorCopyWithImpl<$Res> implements $PaginatorCopyWith<$Res> {
  _$PaginatorCopyWithImpl(this._self, this._then);

  final Paginator _self;
  final $Res Function(Paginator) _then;

  /// Create a copy of Paginator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCount = null,
    Object? perPage = null,
    Object? currentPage = null,
  }) {
    return _then(_self.copyWith(
      itemCount: null == itemCount
          ? _self.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Paginator implements Paginator {
  const _Paginator(
      {required this.itemCount,
      required this.perPage,
      required this.currentPage});
  factory _Paginator.fromJson(Map<String, dynamic> json) =>
      _$PaginatorFromJson(json);

  @override
  final int itemCount;
  @override
  final int perPage;
  @override
  final int currentPage;

  /// Create a copy of Paginator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginatorCopyWith<_Paginator> get copyWith =>
      __$PaginatorCopyWithImpl<_Paginator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginatorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Paginator &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemCount, perPage, currentPage);

  @override
  String toString() {
    return 'Paginator(itemCount: $itemCount, perPage: $perPage, currentPage: $currentPage)';
  }
}

/// @nodoc
abstract mixin class _$PaginatorCopyWith<$Res>
    implements $PaginatorCopyWith<$Res> {
  factory _$PaginatorCopyWith(
          _Paginator value, $Res Function(_Paginator) _then) =
      __$PaginatorCopyWithImpl;
  @override
  @useResult
  $Res call({int itemCount, int perPage, int currentPage});
}

/// @nodoc
class __$PaginatorCopyWithImpl<$Res> implements _$PaginatorCopyWith<$Res> {
  __$PaginatorCopyWithImpl(this._self, this._then);

  final _Paginator _self;
  final $Res Function(_Paginator) _then;

  /// Create a copy of Paginator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemCount = null,
    Object? perPage = null,
    Object? currentPage = null,
  }) {
    return _then(_Paginator(
      itemCount: null == itemCount
          ? _self.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
