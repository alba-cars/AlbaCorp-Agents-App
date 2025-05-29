// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_source_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeadSourceState {
  AppStatus get status;
  List<LeadSource>? get leadSources;
  Paginator? get paginator;
  String? get error;
  String? get search;

  /// Create a copy of LeadSourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadSourceStateCopyWith<LeadSourceState> get copyWith =>
      _$LeadSourceStateCopyWithImpl<LeadSourceState>(
          this as LeadSourceState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadSourceState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.leadSources, leadSources) &&
            (identical(other.paginator, paginator) ||
                other.paginator == paginator) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(leadSources),
      paginator,
      error,
      search);

  @override
  String toString() {
    return 'LeadSourceState(status: $status, leadSources: $leadSources, paginator: $paginator, error: $error, search: $search)';
  }
}

/// @nodoc
abstract mixin class $LeadSourceStateCopyWith<$Res> {
  factory $LeadSourceStateCopyWith(
          LeadSourceState value, $Res Function(LeadSourceState) _then) =
      _$LeadSourceStateCopyWithImpl;
  @useResult
  $Res call(
      {AppStatus status,
      List<LeadSource>? leadSources,
      Paginator? paginator,
      String? error,
      String? search});

  $PaginatorCopyWith<$Res>? get paginator;
}

/// @nodoc
class _$LeadSourceStateCopyWithImpl<$Res>
    implements $LeadSourceStateCopyWith<$Res> {
  _$LeadSourceStateCopyWithImpl(this._self, this._then);

  final LeadSourceState _self;
  final $Res Function(LeadSourceState) _then;

  /// Create a copy of LeadSourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? leadSources = freezed,
    Object? paginator = freezed,
    Object? error = freezed,
    Object? search = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leadSources: freezed == leadSources
          ? _self.leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>?,
      paginator: freezed == paginator
          ? _self.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LeadSourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get paginator {
    if (_self.paginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.paginator!, (value) {
      return _then(_self.copyWith(paginator: value));
    });
  }
}

/// @nodoc

class _LeadSourceState implements LeadSourceState {
  const _LeadSourceState(
      {this.status = AppStatus.init,
      final List<LeadSource>? leadSources = const [],
      this.paginator,
      this.error,
      this.search})
      : _leadSources = leadSources;

  @override
  @JsonKey()
  final AppStatus status;
  final List<LeadSource>? _leadSources;
  @override
  @JsonKey()
  List<LeadSource>? get leadSources {
    final value = _leadSources;
    if (value == null) return null;
    if (_leadSources is EqualUnmodifiableListView) return _leadSources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Paginator? paginator;
  @override
  final String? error;
  @override
  final String? search;

  /// Create a copy of LeadSourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadSourceStateCopyWith<_LeadSourceState> get copyWith =>
      __$LeadSourceStateCopyWithImpl<_LeadSourceState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadSourceState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._leadSources, _leadSources) &&
            (identical(other.paginator, paginator) ||
                other.paginator == paginator) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_leadSources),
      paginator,
      error,
      search);

  @override
  String toString() {
    return 'LeadSourceState(status: $status, leadSources: $leadSources, paginator: $paginator, error: $error, search: $search)';
  }
}

/// @nodoc
abstract mixin class _$LeadSourceStateCopyWith<$Res>
    implements $LeadSourceStateCopyWith<$Res> {
  factory _$LeadSourceStateCopyWith(
          _LeadSourceState value, $Res Function(_LeadSourceState) _then) =
      __$LeadSourceStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppStatus status,
      List<LeadSource>? leadSources,
      Paginator? paginator,
      String? error,
      String? search});

  @override
  $PaginatorCopyWith<$Res>? get paginator;
}

/// @nodoc
class __$LeadSourceStateCopyWithImpl<$Res>
    implements _$LeadSourceStateCopyWith<$Res> {
  __$LeadSourceStateCopyWithImpl(this._self, this._then);

  final _LeadSourceState _self;
  final $Res Function(_LeadSourceState) _then;

  /// Create a copy of LeadSourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? leadSources = freezed,
    Object? paginator = freezed,
    Object? error = freezed,
    Object? search = freezed,
  }) {
    return _then(_LeadSourceState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leadSources: freezed == leadSources
          ? _self._leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>?,
      paginator: freezed == paginator
          ? _self.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LeadSourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get paginator {
    if (_self.paginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.paginator!, (value) {
      return _then(_self.copyWith(paginator: value));
    });
  }
}

// dart format on
