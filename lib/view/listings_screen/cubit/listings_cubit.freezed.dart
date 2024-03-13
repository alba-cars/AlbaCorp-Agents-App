// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListingsState {
  List<Property> get listings => throw _privateConstructorUsedError;
  Status get getListingsStatus => throw _privateConstructorUsedError;
  String? get getListingsError => throw _privateConstructorUsedError;
  Paginator? get listingsPaginator => throw _privateConstructorUsedError;
  List<PropertyCard> get pocketListings => throw _privateConstructorUsedError;
  Status get getPocketListingsStatus => throw _privateConstructorUsedError;
  String? get getPocketListingsError => throw _privateConstructorUsedError;
  Paginator? get pocketListingsPaginator => throw _privateConstructorUsedError;
  int get currentTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListingsStateCopyWith<ListingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingsStateCopyWith<$Res> {
  factory $ListingsStateCopyWith(
          ListingsState value, $Res Function(ListingsState) then) =
      _$ListingsStateCopyWithImpl<$Res, ListingsState>;
  @useResult
  $Res call(
      {List<Property> listings,
      Status getListingsStatus,
      String? getListingsError,
      Paginator? listingsPaginator,
      List<PropertyCard> pocketListings,
      Status getPocketListingsStatus,
      String? getPocketListingsError,
      Paginator? pocketListingsPaginator,
      int currentTab});

  $PaginatorCopyWith<$Res>? get listingsPaginator;
  $PaginatorCopyWith<$Res>? get pocketListingsPaginator;
}

/// @nodoc
class _$ListingsStateCopyWithImpl<$Res, $Val extends ListingsState>
    implements $ListingsStateCopyWith<$Res> {
  _$ListingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listings = null,
    Object? getListingsStatus = null,
    Object? getListingsError = freezed,
    Object? listingsPaginator = freezed,
    Object? pocketListings = null,
    Object? getPocketListingsStatus = null,
    Object? getPocketListingsError = freezed,
    Object? pocketListingsPaginator = freezed,
    Object? currentTab = null,
  }) {
    return _then(_value.copyWith(
      listings: null == listings
          ? _value.listings
          : listings // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getListingsStatus: null == getListingsStatus
          ? _value.getListingsStatus
          : getListingsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getListingsError: freezed == getListingsError
          ? _value.getListingsError
          : getListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      listingsPaginator: freezed == listingsPaginator
          ? _value.listingsPaginator
          : listingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      pocketListings: null == pocketListings
          ? _value.pocketListings
          : pocketListings // ignore: cast_nullable_to_non_nullable
              as List<PropertyCard>,
      getPocketListingsStatus: null == getPocketListingsStatus
          ? _value.getPocketListingsStatus
          : getPocketListingsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getPocketListingsError: freezed == getPocketListingsError
          ? _value.getPocketListingsError
          : getPocketListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      pocketListingsPaginator: freezed == pocketListingsPaginator
          ? _value.pocketListingsPaginator
          : pocketListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get listingsPaginator {
    if (_value.listingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.listingsPaginator!, (value) {
      return _then(_value.copyWith(listingsPaginator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get pocketListingsPaginator {
    if (_value.pocketListingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.pocketListingsPaginator!, (value) {
      return _then(_value.copyWith(pocketListingsPaginator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListingsStateImplCopyWith<$Res>
    implements $ListingsStateCopyWith<$Res> {
  factory _$$ListingsStateImplCopyWith(
          _$ListingsStateImpl value, $Res Function(_$ListingsStateImpl) then) =
      __$$ListingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Property> listings,
      Status getListingsStatus,
      String? getListingsError,
      Paginator? listingsPaginator,
      List<PropertyCard> pocketListings,
      Status getPocketListingsStatus,
      String? getPocketListingsError,
      Paginator? pocketListingsPaginator,
      int currentTab});

  @override
  $PaginatorCopyWith<$Res>? get listingsPaginator;
  @override
  $PaginatorCopyWith<$Res>? get pocketListingsPaginator;
}

/// @nodoc
class __$$ListingsStateImplCopyWithImpl<$Res>
    extends _$ListingsStateCopyWithImpl<$Res, _$ListingsStateImpl>
    implements _$$ListingsStateImplCopyWith<$Res> {
  __$$ListingsStateImplCopyWithImpl(
      _$ListingsStateImpl _value, $Res Function(_$ListingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listings = null,
    Object? getListingsStatus = null,
    Object? getListingsError = freezed,
    Object? listingsPaginator = freezed,
    Object? pocketListings = null,
    Object? getPocketListingsStatus = null,
    Object? getPocketListingsError = freezed,
    Object? pocketListingsPaginator = freezed,
    Object? currentTab = null,
  }) {
    return _then(_$ListingsStateImpl(
      listings: null == listings
          ? _value._listings
          : listings // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getListingsStatus: null == getListingsStatus
          ? _value.getListingsStatus
          : getListingsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getListingsError: freezed == getListingsError
          ? _value.getListingsError
          : getListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      listingsPaginator: freezed == listingsPaginator
          ? _value.listingsPaginator
          : listingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      pocketListings: null == pocketListings
          ? _value._pocketListings
          : pocketListings // ignore: cast_nullable_to_non_nullable
              as List<PropertyCard>,
      getPocketListingsStatus: null == getPocketListingsStatus
          ? _value.getPocketListingsStatus
          : getPocketListingsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getPocketListingsError: freezed == getPocketListingsError
          ? _value.getPocketListingsError
          : getPocketListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      pocketListingsPaginator: freezed == pocketListingsPaginator
          ? _value.pocketListingsPaginator
          : pocketListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListingsStateImpl implements _ListingsState {
  const _$ListingsStateImpl(
      {final List<Property> listings = const [],
      this.getListingsStatus = Status.init,
      this.getListingsError,
      this.listingsPaginator,
      final List<PropertyCard> pocketListings = const [],
      this.getPocketListingsStatus = Status.init,
      this.getPocketListingsError,
      this.pocketListingsPaginator,
      this.currentTab = 0})
      : _listings = listings,
        _pocketListings = pocketListings;

  final List<Property> _listings;
  @override
  @JsonKey()
  List<Property> get listings {
    if (_listings is EqualUnmodifiableListView) return _listings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listings);
  }

  @override
  @JsonKey()
  final Status getListingsStatus;
  @override
  final String? getListingsError;
  @override
  final Paginator? listingsPaginator;
  final List<PropertyCard> _pocketListings;
  @override
  @JsonKey()
  List<PropertyCard> get pocketListings {
    if (_pocketListings is EqualUnmodifiableListView) return _pocketListings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pocketListings);
  }

  @override
  @JsonKey()
  final Status getPocketListingsStatus;
  @override
  final String? getPocketListingsError;
  @override
  final Paginator? pocketListingsPaginator;
  @override
  @JsonKey()
  final int currentTab;

  @override
  String toString() {
    return 'ListingsState(listings: $listings, getListingsStatus: $getListingsStatus, getListingsError: $getListingsError, listingsPaginator: $listingsPaginator, pocketListings: $pocketListings, getPocketListingsStatus: $getPocketListingsStatus, getPocketListingsError: $getPocketListingsError, pocketListingsPaginator: $pocketListingsPaginator, currentTab: $currentTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingsStateImpl &&
            const DeepCollectionEquality().equals(other._listings, _listings) &&
            (identical(other.getListingsStatus, getListingsStatus) ||
                other.getListingsStatus == getListingsStatus) &&
            (identical(other.getListingsError, getListingsError) ||
                other.getListingsError == getListingsError) &&
            (identical(other.listingsPaginator, listingsPaginator) ||
                other.listingsPaginator == listingsPaginator) &&
            const DeepCollectionEquality()
                .equals(other._pocketListings, _pocketListings) &&
            (identical(
                    other.getPocketListingsStatus, getPocketListingsStatus) ||
                other.getPocketListingsStatus == getPocketListingsStatus) &&
            (identical(other.getPocketListingsError, getPocketListingsError) ||
                other.getPocketListingsError == getPocketListingsError) &&
            (identical(
                    other.pocketListingsPaginator, pocketListingsPaginator) ||
                other.pocketListingsPaginator == pocketListingsPaginator) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listings),
      getListingsStatus,
      getListingsError,
      listingsPaginator,
      const DeepCollectionEquality().hash(_pocketListings),
      getPocketListingsStatus,
      getPocketListingsError,
      pocketListingsPaginator,
      currentTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingsStateImplCopyWith<_$ListingsStateImpl> get copyWith =>
      __$$ListingsStateImplCopyWithImpl<_$ListingsStateImpl>(this, _$identity);
}

abstract class _ListingsState implements ListingsState {
  const factory _ListingsState(
      {final List<Property> listings,
      final Status getListingsStatus,
      final String? getListingsError,
      final Paginator? listingsPaginator,
      final List<PropertyCard> pocketListings,
      final Status getPocketListingsStatus,
      final String? getPocketListingsError,
      final Paginator? pocketListingsPaginator,
      final int currentTab}) = _$ListingsStateImpl;

  @override
  List<Property> get listings;
  @override
  Status get getListingsStatus;
  @override
  String? get getListingsError;
  @override
  Paginator? get listingsPaginator;
  @override
  List<PropertyCard> get pocketListings;
  @override
  Status get getPocketListingsStatus;
  @override
  String? get getPocketListingsError;
  @override
  Paginator? get pocketListingsPaginator;
  @override
  int get currentTab;
  @override
  @JsonKey(ignore: true)
  _$$ListingsStateImplCopyWith<_$ListingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
