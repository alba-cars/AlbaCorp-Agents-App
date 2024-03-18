// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deals_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DealsState {
  List<Deal> get deals => throw _privateConstructorUsedError;
  Status get getDealsStatus => throw _privateConstructorUsedError;
  String? get getDealsError => throw _privateConstructorUsedError;
  Paginator? get dealsPaginator => throw _privateConstructorUsedError;
  String? get dealsSearch => throw _privateConstructorUsedError;
  Map<String, dynamic>? get dealsFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealsStateCopyWith<DealsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealsStateCopyWith<$Res> {
  factory $DealsStateCopyWith(
          DealsState value, $Res Function(DealsState) then) =
      _$DealsStateCopyWithImpl<$Res, DealsState>;
  @useResult
  $Res call(
      {List<Deal> deals,
      Status getDealsStatus,
      String? getDealsError,
      Paginator? dealsPaginator,
      String? dealsSearch,
      Map<String, dynamic>? dealsFilter});

  $PaginatorCopyWith<$Res>? get dealsPaginator;
}

/// @nodoc
class _$DealsStateCopyWithImpl<$Res, $Val extends DealsState>
    implements $DealsStateCopyWith<$Res> {
  _$DealsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deals = null,
    Object? getDealsStatus = null,
    Object? getDealsError = freezed,
    Object? dealsPaginator = freezed,
    Object? dealsSearch = freezed,
    Object? dealsFilter = freezed,
  }) {
    return _then(_value.copyWith(
      deals: null == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _value.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getDealsError: freezed == getDealsError
          ? _value.getDealsError
          : getDealsError // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsPaginator: freezed == dealsPaginator
          ? _value.dealsPaginator
          : dealsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      dealsSearch: freezed == dealsSearch
          ? _value.dealsSearch
          : dealsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsFilter: freezed == dealsFilter
          ? _value.dealsFilter
          : dealsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get dealsPaginator {
    if (_value.dealsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.dealsPaginator!, (value) {
      return _then(_value.copyWith(dealsPaginator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DealsStateImplCopyWith<$Res>
    implements $DealsStateCopyWith<$Res> {
  factory _$$DealsStateImplCopyWith(
          _$DealsStateImpl value, $Res Function(_$DealsStateImpl) then) =
      __$$DealsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Deal> deals,
      Status getDealsStatus,
      String? getDealsError,
      Paginator? dealsPaginator,
      String? dealsSearch,
      Map<String, dynamic>? dealsFilter});

  @override
  $PaginatorCopyWith<$Res>? get dealsPaginator;
}

/// @nodoc
class __$$DealsStateImplCopyWithImpl<$Res>
    extends _$DealsStateCopyWithImpl<$Res, _$DealsStateImpl>
    implements _$$DealsStateImplCopyWith<$Res> {
  __$$DealsStateImplCopyWithImpl(
      _$DealsStateImpl _value, $Res Function(_$DealsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deals = null,
    Object? getDealsStatus = null,
    Object? getDealsError = freezed,
    Object? dealsPaginator = freezed,
    Object? dealsSearch = freezed,
    Object? dealsFilter = freezed,
  }) {
    return _then(_$DealsStateImpl(
      deals: null == deals
          ? _value._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _value.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getDealsError: freezed == getDealsError
          ? _value.getDealsError
          : getDealsError // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsPaginator: freezed == dealsPaginator
          ? _value.dealsPaginator
          : dealsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      dealsSearch: freezed == dealsSearch
          ? _value.dealsSearch
          : dealsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsFilter: freezed == dealsFilter
          ? _value._dealsFilter
          : dealsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$DealsStateImpl implements _DealsState {
  const _$DealsStateImpl(
      {final List<Deal> deals = const [],
      this.getDealsStatus = Status.init,
      this.getDealsError,
      this.dealsPaginator,
      this.dealsSearch,
      final Map<String, dynamic>? dealsFilter})
      : _deals = deals,
        _dealsFilter = dealsFilter;

  final List<Deal> _deals;
  @override
  @JsonKey()
  List<Deal> get deals {
    if (_deals is EqualUnmodifiableListView) return _deals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deals);
  }

  @override
  @JsonKey()
  final Status getDealsStatus;
  @override
  final String? getDealsError;
  @override
  final Paginator? dealsPaginator;
  @override
  final String? dealsSearch;
  final Map<String, dynamic>? _dealsFilter;
  @override
  Map<String, dynamic>? get dealsFilter {
    final value = _dealsFilter;
    if (value == null) return null;
    if (_dealsFilter is EqualUnmodifiableMapView) return _dealsFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DealsState(deals: $deals, getDealsStatus: $getDealsStatus, getDealsError: $getDealsError, dealsPaginator: $dealsPaginator, dealsSearch: $dealsSearch, dealsFilter: $dealsFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealsStateImpl &&
            const DeepCollectionEquality().equals(other._deals, _deals) &&
            (identical(other.getDealsStatus, getDealsStatus) ||
                other.getDealsStatus == getDealsStatus) &&
            (identical(other.getDealsError, getDealsError) ||
                other.getDealsError == getDealsError) &&
            (identical(other.dealsPaginator, dealsPaginator) ||
                other.dealsPaginator == dealsPaginator) &&
            (identical(other.dealsSearch, dealsSearch) ||
                other.dealsSearch == dealsSearch) &&
            const DeepCollectionEquality()
                .equals(other._dealsFilter, _dealsFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deals),
      getDealsStatus,
      getDealsError,
      dealsPaginator,
      dealsSearch,
      const DeepCollectionEquality().hash(_dealsFilter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DealsStateImplCopyWith<_$DealsStateImpl> get copyWith =>
      __$$DealsStateImplCopyWithImpl<_$DealsStateImpl>(this, _$identity);
}

abstract class _DealsState implements DealsState {
  const factory _DealsState(
      {final List<Deal> deals,
      final Status getDealsStatus,
      final String? getDealsError,
      final Paginator? dealsPaginator,
      final String? dealsSearch,
      final Map<String, dynamic>? dealsFilter}) = _$DealsStateImpl;

  @override
  List<Deal> get deals;
  @override
  Status get getDealsStatus;
  @override
  String? get getDealsError;
  @override
  Paginator? get dealsPaginator;
  @override
  String? get dealsSearch;
  @override
  Map<String, dynamic>? get dealsFilter;
  @override
  @JsonKey(ignore: true)
  _$$DealsStateImplCopyWith<_$DealsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
