// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deals_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealsState {
  List<Deal> get deals;
  AppStatus get getDealsStatus;
  String? get getDealsError;
  Paginator? get dealsPaginator;
  String? get dealsSearch;
  Map<String, dynamic>? get dealsFilter;
  List<Deal> get yourListings;
  AppStatus get getYourListingsStatus;
  String? get getYourListingsError;
  Paginator? get yourListingsPaginator;
  String? get yourListingsSearch;
  Map<String, dynamic>? get yourListingsFilter;
  int get currentTab;

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DealsStateCopyWith<DealsState> get copyWith =>
      _$DealsStateCopyWithImpl<DealsState>(this as DealsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DealsState &&
            const DeepCollectionEquality().equals(other.deals, deals) &&
            (identical(other.getDealsStatus, getDealsStatus) ||
                other.getDealsStatus == getDealsStatus) &&
            (identical(other.getDealsError, getDealsError) ||
                other.getDealsError == getDealsError) &&
            (identical(other.dealsPaginator, dealsPaginator) ||
                other.dealsPaginator == dealsPaginator) &&
            (identical(other.dealsSearch, dealsSearch) ||
                other.dealsSearch == dealsSearch) &&
            const DeepCollectionEquality()
                .equals(other.dealsFilter, dealsFilter) &&
            const DeepCollectionEquality()
                .equals(other.yourListings, yourListings) &&
            (identical(other.getYourListingsStatus, getYourListingsStatus) ||
                other.getYourListingsStatus == getYourListingsStatus) &&
            (identical(other.getYourListingsError, getYourListingsError) ||
                other.getYourListingsError == getYourListingsError) &&
            (identical(other.yourListingsPaginator, yourListingsPaginator) ||
                other.yourListingsPaginator == yourListingsPaginator) &&
            (identical(other.yourListingsSearch, yourListingsSearch) ||
                other.yourListingsSearch == yourListingsSearch) &&
            const DeepCollectionEquality()
                .equals(other.yourListingsFilter, yourListingsFilter) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deals),
      getDealsStatus,
      getDealsError,
      dealsPaginator,
      dealsSearch,
      const DeepCollectionEquality().hash(dealsFilter),
      const DeepCollectionEquality().hash(yourListings),
      getYourListingsStatus,
      getYourListingsError,
      yourListingsPaginator,
      yourListingsSearch,
      const DeepCollectionEquality().hash(yourListingsFilter),
      currentTab);

  @override
  String toString() {
    return 'DealsState(deals: $deals, getDealsStatus: $getDealsStatus, getDealsError: $getDealsError, dealsPaginator: $dealsPaginator, dealsSearch: $dealsSearch, dealsFilter: $dealsFilter, yourListings: $yourListings, getYourListingsStatus: $getYourListingsStatus, getYourListingsError: $getYourListingsError, yourListingsPaginator: $yourListingsPaginator, yourListingsSearch: $yourListingsSearch, yourListingsFilter: $yourListingsFilter, currentTab: $currentTab)';
  }
}

/// @nodoc
abstract mixin class $DealsStateCopyWith<$Res> {
  factory $DealsStateCopyWith(
          DealsState value, $Res Function(DealsState) _then) =
      _$DealsStateCopyWithImpl;
  @useResult
  $Res call(
      {List<Deal> deals,
      AppStatus getDealsStatus,
      String? getDealsError,
      Paginator? dealsPaginator,
      String? dealsSearch,
      Map<String, dynamic>? dealsFilter,
      List<Deal> yourListings,
      AppStatus getYourListingsStatus,
      String? getYourListingsError,
      Paginator? yourListingsPaginator,
      String? yourListingsSearch,
      Map<String, dynamic>? yourListingsFilter,
      int currentTab});

  $PaginatorCopyWith<$Res>? get dealsPaginator;
  $PaginatorCopyWith<$Res>? get yourListingsPaginator;
}

/// @nodoc
class _$DealsStateCopyWithImpl<$Res> implements $DealsStateCopyWith<$Res> {
  _$DealsStateCopyWithImpl(this._self, this._then);

  final DealsState _self;
  final $Res Function(DealsState) _then;

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deals = null,
    Object? getDealsStatus = null,
    Object? getDealsError = freezed,
    Object? dealsPaginator = freezed,
    Object? dealsSearch = freezed,
    Object? dealsFilter = freezed,
    Object? yourListings = null,
    Object? getYourListingsStatus = null,
    Object? getYourListingsError = freezed,
    Object? yourListingsPaginator = freezed,
    Object? yourListingsSearch = freezed,
    Object? yourListingsFilter = freezed,
    Object? currentTab = null,
  }) {
    return _then(_self.copyWith(
      deals: null == deals
          ? _self.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _self.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealsError: freezed == getDealsError
          ? _self.getDealsError
          : getDealsError // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsPaginator: freezed == dealsPaginator
          ? _self.dealsPaginator
          : dealsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      dealsSearch: freezed == dealsSearch
          ? _self.dealsSearch
          : dealsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsFilter: freezed == dealsFilter
          ? _self.dealsFilter
          : dealsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      yourListings: null == yourListings
          ? _self.yourListings
          : yourListings // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getYourListingsStatus: null == getYourListingsStatus
          ? _self.getYourListingsStatus
          : getYourListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getYourListingsError: freezed == getYourListingsError
          ? _self.getYourListingsError
          : getYourListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      yourListingsPaginator: freezed == yourListingsPaginator
          ? _self.yourListingsPaginator
          : yourListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      yourListingsSearch: freezed == yourListingsSearch
          ? _self.yourListingsSearch
          : yourListingsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      yourListingsFilter: freezed == yourListingsFilter
          ? _self.yourListingsFilter
          : yourListingsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get dealsPaginator {
    if (_self.dealsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.dealsPaginator!, (value) {
      return _then(_self.copyWith(dealsPaginator: value));
    });
  }

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get yourListingsPaginator {
    if (_self.yourListingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.yourListingsPaginator!, (value) {
      return _then(_self.copyWith(yourListingsPaginator: value));
    });
  }
}

/// @nodoc

class _DealsState implements DealsState {
  const _DealsState(
      {final List<Deal> deals = const [],
      this.getDealsStatus = AppStatus.init,
      this.getDealsError,
      this.dealsPaginator,
      this.dealsSearch,
      final Map<String, dynamic>? dealsFilter,
      final List<Deal> yourListings = const [],
      this.getYourListingsStatus = AppStatus.init,
      this.getYourListingsError,
      this.yourListingsPaginator,
      this.yourListingsSearch,
      final Map<String, dynamic>? yourListingsFilter,
      this.currentTab = 0})
      : _deals = deals,
        _dealsFilter = dealsFilter,
        _yourListings = yourListings,
        _yourListingsFilter = yourListingsFilter;

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
  final AppStatus getDealsStatus;
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

  final List<Deal> _yourListings;
  @override
  @JsonKey()
  List<Deal> get yourListings {
    if (_yourListings is EqualUnmodifiableListView) return _yourListings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yourListings);
  }

  @override
  @JsonKey()
  final AppStatus getYourListingsStatus;
  @override
  final String? getYourListingsError;
  @override
  final Paginator? yourListingsPaginator;
  @override
  final String? yourListingsSearch;
  final Map<String, dynamic>? _yourListingsFilter;
  @override
  Map<String, dynamic>? get yourListingsFilter {
    final value = _yourListingsFilter;
    if (value == null) return null;
    if (_yourListingsFilter is EqualUnmodifiableMapView)
      return _yourListingsFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final int currentTab;

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DealsStateCopyWith<_DealsState> get copyWith =>
      __$DealsStateCopyWithImpl<_DealsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealsState &&
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
                .equals(other._dealsFilter, _dealsFilter) &&
            const DeepCollectionEquality()
                .equals(other._yourListings, _yourListings) &&
            (identical(other.getYourListingsStatus, getYourListingsStatus) ||
                other.getYourListingsStatus == getYourListingsStatus) &&
            (identical(other.getYourListingsError, getYourListingsError) ||
                other.getYourListingsError == getYourListingsError) &&
            (identical(other.yourListingsPaginator, yourListingsPaginator) ||
                other.yourListingsPaginator == yourListingsPaginator) &&
            (identical(other.yourListingsSearch, yourListingsSearch) ||
                other.yourListingsSearch == yourListingsSearch) &&
            const DeepCollectionEquality()
                .equals(other._yourListingsFilter, _yourListingsFilter) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deals),
      getDealsStatus,
      getDealsError,
      dealsPaginator,
      dealsSearch,
      const DeepCollectionEquality().hash(_dealsFilter),
      const DeepCollectionEquality().hash(_yourListings),
      getYourListingsStatus,
      getYourListingsError,
      yourListingsPaginator,
      yourListingsSearch,
      const DeepCollectionEquality().hash(_yourListingsFilter),
      currentTab);

  @override
  String toString() {
    return 'DealsState(deals: $deals, getDealsStatus: $getDealsStatus, getDealsError: $getDealsError, dealsPaginator: $dealsPaginator, dealsSearch: $dealsSearch, dealsFilter: $dealsFilter, yourListings: $yourListings, getYourListingsStatus: $getYourListingsStatus, getYourListingsError: $getYourListingsError, yourListingsPaginator: $yourListingsPaginator, yourListingsSearch: $yourListingsSearch, yourListingsFilter: $yourListingsFilter, currentTab: $currentTab)';
  }
}

/// @nodoc
abstract mixin class _$DealsStateCopyWith<$Res>
    implements $DealsStateCopyWith<$Res> {
  factory _$DealsStateCopyWith(
          _DealsState value, $Res Function(_DealsState) _then) =
      __$DealsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Deal> deals,
      AppStatus getDealsStatus,
      String? getDealsError,
      Paginator? dealsPaginator,
      String? dealsSearch,
      Map<String, dynamic>? dealsFilter,
      List<Deal> yourListings,
      AppStatus getYourListingsStatus,
      String? getYourListingsError,
      Paginator? yourListingsPaginator,
      String? yourListingsSearch,
      Map<String, dynamic>? yourListingsFilter,
      int currentTab});

  @override
  $PaginatorCopyWith<$Res>? get dealsPaginator;
  @override
  $PaginatorCopyWith<$Res>? get yourListingsPaginator;
}

/// @nodoc
class __$DealsStateCopyWithImpl<$Res> implements _$DealsStateCopyWith<$Res> {
  __$DealsStateCopyWithImpl(this._self, this._then);

  final _DealsState _self;
  final $Res Function(_DealsState) _then;

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deals = null,
    Object? getDealsStatus = null,
    Object? getDealsError = freezed,
    Object? dealsPaginator = freezed,
    Object? dealsSearch = freezed,
    Object? dealsFilter = freezed,
    Object? yourListings = null,
    Object? getYourListingsStatus = null,
    Object? getYourListingsError = freezed,
    Object? yourListingsPaginator = freezed,
    Object? yourListingsSearch = freezed,
    Object? yourListingsFilter = freezed,
    Object? currentTab = null,
  }) {
    return _then(_DealsState(
      deals: null == deals
          ? _self._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _self.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealsError: freezed == getDealsError
          ? _self.getDealsError
          : getDealsError // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsPaginator: freezed == dealsPaginator
          ? _self.dealsPaginator
          : dealsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      dealsSearch: freezed == dealsSearch
          ? _self.dealsSearch
          : dealsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsFilter: freezed == dealsFilter
          ? _self._dealsFilter
          : dealsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      yourListings: null == yourListings
          ? _self._yourListings
          : yourListings // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getYourListingsStatus: null == getYourListingsStatus
          ? _self.getYourListingsStatus
          : getYourListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getYourListingsError: freezed == getYourListingsError
          ? _self.getYourListingsError
          : getYourListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      yourListingsPaginator: freezed == yourListingsPaginator
          ? _self.yourListingsPaginator
          : yourListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      yourListingsSearch: freezed == yourListingsSearch
          ? _self.yourListingsSearch
          : yourListingsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      yourListingsFilter: freezed == yourListingsFilter
          ? _self._yourListingsFilter
          : yourListingsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get dealsPaginator {
    if (_self.dealsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.dealsPaginator!, (value) {
      return _then(_self.copyWith(dealsPaginator: value));
    });
  }

  /// Create a copy of DealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get yourListingsPaginator {
    if (_self.yourListingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.yourListingsPaginator!, (value) {
      return _then(_self.copyWith(yourListingsPaginator: value));
    });
  }
}

// dart format on
