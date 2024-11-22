// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_source_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeadSourceState {
  AppStatus get status => throw _privateConstructorUsedError;
  List<LeadSource>? get leadSources => throw _privateConstructorUsedError;
  Paginator? get paginator => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeadSourceStateCopyWith<LeadSourceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadSourceStateCopyWith<$Res> {
  factory $LeadSourceStateCopyWith(
          LeadSourceState value, $Res Function(LeadSourceState) then) =
      _$LeadSourceStateCopyWithImpl<$Res, LeadSourceState>;
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
class _$LeadSourceStateCopyWithImpl<$Res, $Val extends LeadSourceState>
    implements $LeadSourceStateCopyWith<$Res> {
  _$LeadSourceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? leadSources = freezed,
    Object? paginator = freezed,
    Object? error = freezed,
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leadSources: freezed == leadSources
          ? _value.leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>?,
      paginator: freezed == paginator
          ? _value.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get paginator {
    if (_value.paginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.paginator!, (value) {
      return _then(_value.copyWith(paginator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadSourceStateImplCopyWith<$Res>
    implements $LeadSourceStateCopyWith<$Res> {
  factory _$$LeadSourceStateImplCopyWith(_$LeadSourceStateImpl value,
          $Res Function(_$LeadSourceStateImpl) then) =
      __$$LeadSourceStateImplCopyWithImpl<$Res>;
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
class __$$LeadSourceStateImplCopyWithImpl<$Res>
    extends _$LeadSourceStateCopyWithImpl<$Res, _$LeadSourceStateImpl>
    implements _$$LeadSourceStateImplCopyWith<$Res> {
  __$$LeadSourceStateImplCopyWithImpl(
      _$LeadSourceStateImpl _value, $Res Function(_$LeadSourceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? leadSources = freezed,
    Object? paginator = freezed,
    Object? error = freezed,
    Object? search = freezed,
  }) {
    return _then(_$LeadSourceStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leadSources: freezed == leadSources
          ? _value._leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>?,
      paginator: freezed == paginator
          ? _value.paginator
          : paginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LeadSourceStateImpl implements _LeadSourceState {
  const _$LeadSourceStateImpl(
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

  @override
  String toString() {
    return 'LeadSourceState(status: $status, leadSources: $leadSources, paginator: $paginator, error: $error, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadSourceStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadSourceStateImplCopyWith<_$LeadSourceStateImpl> get copyWith =>
      __$$LeadSourceStateImplCopyWithImpl<_$LeadSourceStateImpl>(
          this, _$identity);
}

abstract class _LeadSourceState implements LeadSourceState {
  const factory _LeadSourceState(
      {final AppStatus status,
      final List<LeadSource>? leadSources,
      final Paginator? paginator,
      final String? error,
      final String? search}) = _$LeadSourceStateImpl;

  @override
  AppStatus get status;
  @override
  List<LeadSource>? get leadSources;
  @override
  Paginator? get paginator;
  @override
  String? get error;
  @override
  String? get search;
  @override
  @JsonKey(ignore: true)
  _$$LeadSourceStateImplCopyWith<_$LeadSourceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
