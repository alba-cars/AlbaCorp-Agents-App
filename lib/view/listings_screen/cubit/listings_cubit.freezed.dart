// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingsState {
  List<Property> get listings;
  AppStatus get getListingsStatus;
  String? get getListingsError;
  Paginator? get listingsPaginator;
  List<Property> get myListings;
  AppStatus get getMyListingsStatus;
  String? get getMyListingsError;
  Paginator? get myListingsPaginator;
  List<PropertyCard> get pocketListings;
  AppStatus get getPocketListingsStatus;
  String? get getPocketListingsError;
  Paginator? get pocketListingsPaginator;
  List<PropertyCard> get myPocketListings;
  AppStatus get getMyPocketListingsStatus;
  String? get getMyPocketListingsError;
  Paginator? get myPocketListingsPaginator;
  int get currentTab;
  String? get listingsSearch;
  String? get pocketListingsSearch;
  List<PropertyType> get propertyTypeList;
  AppStatus get getPropertyTypeListStatus;
  List<Community> get communityList;
  AppStatus get getCommunityListStatus;
  List<Building> get buildingList;
  AppStatus get getBuildingListStatus;
  Paginator? get buildingsPaginator;
  List<Agent> get agentList;
  AppStatus get getAgentListStatus;
  List<Amenity> get amenityList;
  AppStatus get getAmenityListStatus;
  Map<String, dynamic>? get listingsFilter;
  Map<String, dynamic>? get pocketListingsFilter;

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListingsStateCopyWith<ListingsState> get copyWith =>
      _$ListingsStateCopyWithImpl<ListingsState>(
          this as ListingsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListingsState &&
            const DeepCollectionEquality().equals(other.listings, listings) &&
            (identical(other.getListingsStatus, getListingsStatus) ||
                other.getListingsStatus == getListingsStatus) &&
            (identical(other.getListingsError, getListingsError) ||
                other.getListingsError == getListingsError) &&
            (identical(other.listingsPaginator, listingsPaginator) ||
                other.listingsPaginator == listingsPaginator) &&
            const DeepCollectionEquality()
                .equals(other.myListings, myListings) &&
            (identical(other.getMyListingsStatus, getMyListingsStatus) ||
                other.getMyListingsStatus == getMyListingsStatus) &&
            (identical(other.getMyListingsError, getMyListingsError) ||
                other.getMyListingsError == getMyListingsError) &&
            (identical(other.myListingsPaginator, myListingsPaginator) ||
                other.myListingsPaginator == myListingsPaginator) &&
            const DeepCollectionEquality()
                .equals(other.pocketListings, pocketListings) &&
            (identical(other.getPocketListingsStatus, getPocketListingsStatus) ||
                other.getPocketListingsStatus == getPocketListingsStatus) &&
            (identical(other.getPocketListingsError, getPocketListingsError) ||
                other.getPocketListingsError == getPocketListingsError) &&
            (identical(other.pocketListingsPaginator, pocketListingsPaginator) ||
                other.pocketListingsPaginator == pocketListingsPaginator) &&
            const DeepCollectionEquality()
                .equals(other.myPocketListings, myPocketListings) &&
            (identical(other.getMyPocketListingsStatus, getMyPocketListingsStatus) ||
                other.getMyPocketListingsStatus == getMyPocketListingsStatus) &&
            (identical(other.getMyPocketListingsError, getMyPocketListingsError) ||
                other.getMyPocketListingsError == getMyPocketListingsError) &&
            (identical(other.myPocketListingsPaginator, myPocketListingsPaginator) ||
                other.myPocketListingsPaginator == myPocketListingsPaginator) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.listingsSearch, listingsSearch) ||
                other.listingsSearch == listingsSearch) &&
            (identical(other.pocketListingsSearch, pocketListingsSearch) ||
                other.pocketListingsSearch == pocketListingsSearch) &&
            const DeepCollectionEquality()
                .equals(other.propertyTypeList, propertyTypeList) &&
            (identical(other.getPropertyTypeListStatus, getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus) &&
            const DeepCollectionEquality()
                .equals(other.communityList, communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus) &&
            const DeepCollectionEquality()
                .equals(other.buildingList, buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) ||
                other.getBuildingListStatus == getBuildingListStatus) &&
            (identical(other.buildingsPaginator, buildingsPaginator) ||
                other.buildingsPaginator == buildingsPaginator) &&
            const DeepCollectionEquality().equals(other.agentList, agentList) &&
            (identical(other.getAgentListStatus, getAgentListStatus) ||
                other.getAgentListStatus == getAgentListStatus) &&
            const DeepCollectionEquality().equals(other.amenityList, amenityList) &&
            (identical(other.getAmenityListStatus, getAmenityListStatus) || other.getAmenityListStatus == getAmenityListStatus) &&
            const DeepCollectionEquality().equals(other.listingsFilter, listingsFilter) &&
            const DeepCollectionEquality().equals(other.pocketListingsFilter, pocketListingsFilter));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(listings),
        getListingsStatus,
        getListingsError,
        listingsPaginator,
        const DeepCollectionEquality().hash(myListings),
        getMyListingsStatus,
        getMyListingsError,
        myListingsPaginator,
        const DeepCollectionEquality().hash(pocketListings),
        getPocketListingsStatus,
        getPocketListingsError,
        pocketListingsPaginator,
        const DeepCollectionEquality().hash(myPocketListings),
        getMyPocketListingsStatus,
        getMyPocketListingsError,
        myPocketListingsPaginator,
        currentTab,
        listingsSearch,
        pocketListingsSearch,
        const DeepCollectionEquality().hash(propertyTypeList),
        getPropertyTypeListStatus,
        const DeepCollectionEquality().hash(communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(buildingList),
        getBuildingListStatus,
        buildingsPaginator,
        const DeepCollectionEquality().hash(agentList),
        getAgentListStatus,
        const DeepCollectionEquality().hash(amenityList),
        getAmenityListStatus,
        const DeepCollectionEquality().hash(listingsFilter),
        const DeepCollectionEquality().hash(pocketListingsFilter)
      ]);

  @override
  String toString() {
    return 'ListingsState(listings: $listings, getListingsStatus: $getListingsStatus, getListingsError: $getListingsError, listingsPaginator: $listingsPaginator, myListings: $myListings, getMyListingsStatus: $getMyListingsStatus, getMyListingsError: $getMyListingsError, myListingsPaginator: $myListingsPaginator, pocketListings: $pocketListings, getPocketListingsStatus: $getPocketListingsStatus, getPocketListingsError: $getPocketListingsError, pocketListingsPaginator: $pocketListingsPaginator, myPocketListings: $myPocketListings, getMyPocketListingsStatus: $getMyPocketListingsStatus, getMyPocketListingsError: $getMyPocketListingsError, myPocketListingsPaginator: $myPocketListingsPaginator, currentTab: $currentTab, listingsSearch: $listingsSearch, pocketListingsSearch: $pocketListingsSearch, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, buildingsPaginator: $buildingsPaginator, agentList: $agentList, getAgentListStatus: $getAgentListStatus, amenityList: $amenityList, getAmenityListStatus: $getAmenityListStatus, listingsFilter: $listingsFilter, pocketListingsFilter: $pocketListingsFilter)';
  }
}

/// @nodoc
abstract mixin class $ListingsStateCopyWith<$Res> {
  factory $ListingsStateCopyWith(
          ListingsState value, $Res Function(ListingsState) _then) =
      _$ListingsStateCopyWithImpl;
  @useResult
  $Res call(
      {List<Property> listings,
      AppStatus getListingsStatus,
      String? getListingsError,
      Paginator? listingsPaginator,
      List<Property> myListings,
      AppStatus getMyListingsStatus,
      String? getMyListingsError,
      Paginator? myListingsPaginator,
      List<PropertyCard> pocketListings,
      AppStatus getPocketListingsStatus,
      String? getPocketListingsError,
      Paginator? pocketListingsPaginator,
      List<PropertyCard> myPocketListings,
      AppStatus getMyPocketListingsStatus,
      String? getMyPocketListingsError,
      Paginator? myPocketListingsPaginator,
      int currentTab,
      String? listingsSearch,
      String? pocketListingsSearch,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      Paginator? buildingsPaginator,
      List<Agent> agentList,
      AppStatus getAgentListStatus,
      List<Amenity> amenityList,
      AppStatus getAmenityListStatus,
      Map<String, dynamic>? listingsFilter,
      Map<String, dynamic>? pocketListingsFilter});

  $PaginatorCopyWith<$Res>? get listingsPaginator;
  $PaginatorCopyWith<$Res>? get myListingsPaginator;
  $PaginatorCopyWith<$Res>? get pocketListingsPaginator;
  $PaginatorCopyWith<$Res>? get myPocketListingsPaginator;
  $PaginatorCopyWith<$Res>? get buildingsPaginator;
}

/// @nodoc
class _$ListingsStateCopyWithImpl<$Res>
    implements $ListingsStateCopyWith<$Res> {
  _$ListingsStateCopyWithImpl(this._self, this._then);

  final ListingsState _self;
  final $Res Function(ListingsState) _then;

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listings = null,
    Object? getListingsStatus = null,
    Object? getListingsError = freezed,
    Object? listingsPaginator = freezed,
    Object? myListings = null,
    Object? getMyListingsStatus = null,
    Object? getMyListingsError = freezed,
    Object? myListingsPaginator = freezed,
    Object? pocketListings = null,
    Object? getPocketListingsStatus = null,
    Object? getPocketListingsError = freezed,
    Object? pocketListingsPaginator = freezed,
    Object? myPocketListings = null,
    Object? getMyPocketListingsStatus = null,
    Object? getMyPocketListingsError = freezed,
    Object? myPocketListingsPaginator = freezed,
    Object? currentTab = null,
    Object? listingsSearch = freezed,
    Object? pocketListingsSearch = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? buildingsPaginator = freezed,
    Object? agentList = null,
    Object? getAgentListStatus = null,
    Object? amenityList = null,
    Object? getAmenityListStatus = null,
    Object? listingsFilter = freezed,
    Object? pocketListingsFilter = freezed,
  }) {
    return _then(_self.copyWith(
      listings: null == listings
          ? _self.listings
          : listings // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getListingsStatus: null == getListingsStatus
          ? _self.getListingsStatus
          : getListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getListingsError: freezed == getListingsError
          ? _self.getListingsError
          : getListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      listingsPaginator: freezed == listingsPaginator
          ? _self.listingsPaginator
          : listingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      myListings: null == myListings
          ? _self.myListings
          : myListings // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getMyListingsStatus: null == getMyListingsStatus
          ? _self.getMyListingsStatus
          : getMyListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getMyListingsError: freezed == getMyListingsError
          ? _self.getMyListingsError
          : getMyListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      myListingsPaginator: freezed == myListingsPaginator
          ? _self.myListingsPaginator
          : myListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      pocketListings: null == pocketListings
          ? _self.pocketListings
          : pocketListings // ignore: cast_nullable_to_non_nullable
              as List<PropertyCard>,
      getPocketListingsStatus: null == getPocketListingsStatus
          ? _self.getPocketListingsStatus
          : getPocketListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getPocketListingsError: freezed == getPocketListingsError
          ? _self.getPocketListingsError
          : getPocketListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      pocketListingsPaginator: freezed == pocketListingsPaginator
          ? _self.pocketListingsPaginator
          : pocketListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      myPocketListings: null == myPocketListings
          ? _self.myPocketListings
          : myPocketListings // ignore: cast_nullable_to_non_nullable
              as List<PropertyCard>,
      getMyPocketListingsStatus: null == getMyPocketListingsStatus
          ? _self.getMyPocketListingsStatus
          : getMyPocketListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getMyPocketListingsError: freezed == getMyPocketListingsError
          ? _self.getMyPocketListingsError
          : getMyPocketListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      myPocketListingsPaginator: freezed == myPocketListingsPaginator
          ? _self.myPocketListingsPaginator
          : myPocketListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      listingsSearch: freezed == listingsSearch
          ? _self.listingsSearch
          : listingsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      pocketListingsSearch: freezed == pocketListingsSearch
          ? _self.pocketListingsSearch
          : pocketListingsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyTypeList: null == propertyTypeList
          ? _self.propertyTypeList
          : propertyTypeList // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>,
      getPropertyTypeListStatus: null == getPropertyTypeListStatus
          ? _self.getPropertyTypeListStatus
          : getPropertyTypeListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      communityList: null == communityList
          ? _self.communityList
          : communityList // ignore: cast_nullable_to_non_nullable
              as List<Community>,
      getCommunityListStatus: null == getCommunityListStatus
          ? _self.getCommunityListStatus
          : getCommunityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buildingList: null == buildingList
          ? _self.buildingList
          : buildingList // ignore: cast_nullable_to_non_nullable
              as List<Building>,
      getBuildingListStatus: null == getBuildingListStatus
          ? _self.getBuildingListStatus
          : getBuildingListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buildingsPaginator: freezed == buildingsPaginator
          ? _self.buildingsPaginator
          : buildingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      agentList: null == agentList
          ? _self.agentList
          : agentList // ignore: cast_nullable_to_non_nullable
              as List<Agent>,
      getAgentListStatus: null == getAgentListStatus
          ? _self.getAgentListStatus
          : getAgentListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      amenityList: null == amenityList
          ? _self.amenityList
          : amenityList // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      getAmenityListStatus: null == getAmenityListStatus
          ? _self.getAmenityListStatus
          : getAmenityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      listingsFilter: freezed == listingsFilter
          ? _self.listingsFilter
          : listingsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pocketListingsFilter: freezed == pocketListingsFilter
          ? _self.pocketListingsFilter
          : pocketListingsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get listingsPaginator {
    if (_self.listingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.listingsPaginator!, (value) {
      return _then(_self.copyWith(listingsPaginator: value));
    });
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get myListingsPaginator {
    if (_self.myListingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.myListingsPaginator!, (value) {
      return _then(_self.copyWith(myListingsPaginator: value));
    });
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get pocketListingsPaginator {
    if (_self.pocketListingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.pocketListingsPaginator!, (value) {
      return _then(_self.copyWith(pocketListingsPaginator: value));
    });
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get myPocketListingsPaginator {
    if (_self.myPocketListingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.myPocketListingsPaginator!, (value) {
      return _then(_self.copyWith(myPocketListingsPaginator: value));
    });
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get buildingsPaginator {
    if (_self.buildingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.buildingsPaginator!, (value) {
      return _then(_self.copyWith(buildingsPaginator: value));
    });
  }
}

/// @nodoc

class _ListingsState implements ListingsState {
  const _ListingsState(
      {final List<Property> listings = const [],
      this.getListingsStatus = AppStatus.init,
      this.getListingsError,
      this.listingsPaginator,
      final List<Property> myListings = const [],
      this.getMyListingsStatus = AppStatus.init,
      this.getMyListingsError,
      this.myListingsPaginator,
      final List<PropertyCard> pocketListings = const [],
      this.getPocketListingsStatus = AppStatus.init,
      this.getPocketListingsError,
      this.pocketListingsPaginator,
      final List<PropertyCard> myPocketListings = const [],
      this.getMyPocketListingsStatus = AppStatus.init,
      this.getMyPocketListingsError,
      this.myPocketListingsPaginator,
      this.currentTab = 0,
      this.listingsSearch,
      this.pocketListingsSearch,
      final List<PropertyType> propertyTypeList = const [],
      this.getPropertyTypeListStatus = AppStatus.init,
      final List<Community> communityList = const [],
      this.getCommunityListStatus = AppStatus.init,
      final List<Building> buildingList = const [],
      this.getBuildingListStatus = AppStatus.init,
      this.buildingsPaginator,
      final List<Agent> agentList = const [],
      this.getAgentListStatus = AppStatus.init,
      final List<Amenity> amenityList = const [],
      this.getAmenityListStatus = AppStatus.init,
      final Map<String, dynamic>? listingsFilter,
      final Map<String, dynamic>? pocketListingsFilter})
      : _listings = listings,
        _myListings = myListings,
        _pocketListings = pocketListings,
        _myPocketListings = myPocketListings,
        _propertyTypeList = propertyTypeList,
        _communityList = communityList,
        _buildingList = buildingList,
        _agentList = agentList,
        _amenityList = amenityList,
        _listingsFilter = listingsFilter,
        _pocketListingsFilter = pocketListingsFilter;

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
  final AppStatus getListingsStatus;
  @override
  final String? getListingsError;
  @override
  final Paginator? listingsPaginator;
  final List<Property> _myListings;
  @override
  @JsonKey()
  List<Property> get myListings {
    if (_myListings is EqualUnmodifiableListView) return _myListings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myListings);
  }

  @override
  @JsonKey()
  final AppStatus getMyListingsStatus;
  @override
  final String? getMyListingsError;
  @override
  final Paginator? myListingsPaginator;
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
  final AppStatus getPocketListingsStatus;
  @override
  final String? getPocketListingsError;
  @override
  final Paginator? pocketListingsPaginator;
  final List<PropertyCard> _myPocketListings;
  @override
  @JsonKey()
  List<PropertyCard> get myPocketListings {
    if (_myPocketListings is EqualUnmodifiableListView)
      return _myPocketListings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myPocketListings);
  }

  @override
  @JsonKey()
  final AppStatus getMyPocketListingsStatus;
  @override
  final String? getMyPocketListingsError;
  @override
  final Paginator? myPocketListingsPaginator;
  @override
  @JsonKey()
  final int currentTab;
  @override
  final String? listingsSearch;
  @override
  final String? pocketListingsSearch;
  final List<PropertyType> _propertyTypeList;
  @override
  @JsonKey()
  List<PropertyType> get propertyTypeList {
    if (_propertyTypeList is EqualUnmodifiableListView)
      return _propertyTypeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_propertyTypeList);
  }

  @override
  @JsonKey()
  final AppStatus getPropertyTypeListStatus;
  final List<Community> _communityList;
  @override
  @JsonKey()
  List<Community> get communityList {
    if (_communityList is EqualUnmodifiableListView) return _communityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_communityList);
  }

  @override
  @JsonKey()
  final AppStatus getCommunityListStatus;
  final List<Building> _buildingList;
  @override
  @JsonKey()
  List<Building> get buildingList {
    if (_buildingList is EqualUnmodifiableListView) return _buildingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buildingList);
  }

  @override
  @JsonKey()
  final AppStatus getBuildingListStatus;
  @override
  final Paginator? buildingsPaginator;
  final List<Agent> _agentList;
  @override
  @JsonKey()
  List<Agent> get agentList {
    if (_agentList is EqualUnmodifiableListView) return _agentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agentList);
  }

  @override
  @JsonKey()
  final AppStatus getAgentListStatus;
  final List<Amenity> _amenityList;
  @override
  @JsonKey()
  List<Amenity> get amenityList {
    if (_amenityList is EqualUnmodifiableListView) return _amenityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenityList);
  }

  @override
  @JsonKey()
  final AppStatus getAmenityListStatus;
  final Map<String, dynamic>? _listingsFilter;
  @override
  Map<String, dynamic>? get listingsFilter {
    final value = _listingsFilter;
    if (value == null) return null;
    if (_listingsFilter is EqualUnmodifiableMapView) return _listingsFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _pocketListingsFilter;
  @override
  Map<String, dynamic>? get pocketListingsFilter {
    final value = _pocketListingsFilter;
    if (value == null) return null;
    if (_pocketListingsFilter is EqualUnmodifiableMapView)
      return _pocketListingsFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListingsStateCopyWith<_ListingsState> get copyWith =>
      __$ListingsStateCopyWithImpl<_ListingsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListingsState &&
            const DeepCollectionEquality().equals(other._listings, _listings) &&
            (identical(other.getListingsStatus, getListingsStatus) ||
                other.getListingsStatus == getListingsStatus) &&
            (identical(other.getListingsError, getListingsError) ||
                other.getListingsError == getListingsError) &&
            (identical(other.listingsPaginator, listingsPaginator) ||
                other.listingsPaginator == listingsPaginator) &&
            const DeepCollectionEquality()
                .equals(other._myListings, _myListings) &&
            (identical(other.getMyListingsStatus, getMyListingsStatus) ||
                other.getMyListingsStatus == getMyListingsStatus) &&
            (identical(other.getMyListingsError, getMyListingsError) ||
                other.getMyListingsError == getMyListingsError) &&
            (identical(other.myListingsPaginator, myListingsPaginator) ||
                other.myListingsPaginator == myListingsPaginator) &&
            const DeepCollectionEquality()
                .equals(other._pocketListings, _pocketListings) &&
            (identical(other.getPocketListingsStatus, getPocketListingsStatus) ||
                other.getPocketListingsStatus == getPocketListingsStatus) &&
            (identical(other.getPocketListingsError, getPocketListingsError) ||
                other.getPocketListingsError == getPocketListingsError) &&
            (identical(other.pocketListingsPaginator, pocketListingsPaginator) ||
                other.pocketListingsPaginator == pocketListingsPaginator) &&
            const DeepCollectionEquality()
                .equals(other._myPocketListings, _myPocketListings) &&
            (identical(other.getMyPocketListingsStatus, getMyPocketListingsStatus) ||
                other.getMyPocketListingsStatus == getMyPocketListingsStatus) &&
            (identical(
                    other.getMyPocketListingsError, getMyPocketListingsError) ||
                other.getMyPocketListingsError == getMyPocketListingsError) &&
            (identical(other.myPocketListingsPaginator, myPocketListingsPaginator) ||
                other.myPocketListingsPaginator == myPocketListingsPaginator) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.listingsSearch, listingsSearch) ||
                other.listingsSearch == listingsSearch) &&
            (identical(other.pocketListingsSearch, pocketListingsSearch) ||
                other.pocketListingsSearch == pocketListingsSearch) &&
            const DeepCollectionEquality()
                .equals(other._propertyTypeList, _propertyTypeList) &&
            (identical(other.getPropertyTypeListStatus, getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus) &&
            const DeepCollectionEquality()
                .equals(other._communityList, _communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus) &&
            const DeepCollectionEquality()
                .equals(other._buildingList, _buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) ||
                other.getBuildingListStatus == getBuildingListStatus) &&
            (identical(other.buildingsPaginator, buildingsPaginator) ||
                other.buildingsPaginator == buildingsPaginator) &&
            const DeepCollectionEquality().equals(other._agentList, _agentList) &&
            (identical(other.getAgentListStatus, getAgentListStatus) || other.getAgentListStatus == getAgentListStatus) &&
            const DeepCollectionEquality().equals(other._amenityList, _amenityList) &&
            (identical(other.getAmenityListStatus, getAmenityListStatus) || other.getAmenityListStatus == getAmenityListStatus) &&
            const DeepCollectionEquality().equals(other._listingsFilter, _listingsFilter) &&
            const DeepCollectionEquality().equals(other._pocketListingsFilter, _pocketListingsFilter));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_listings),
        getListingsStatus,
        getListingsError,
        listingsPaginator,
        const DeepCollectionEquality().hash(_myListings),
        getMyListingsStatus,
        getMyListingsError,
        myListingsPaginator,
        const DeepCollectionEquality().hash(_pocketListings),
        getPocketListingsStatus,
        getPocketListingsError,
        pocketListingsPaginator,
        const DeepCollectionEquality().hash(_myPocketListings),
        getMyPocketListingsStatus,
        getMyPocketListingsError,
        myPocketListingsPaginator,
        currentTab,
        listingsSearch,
        pocketListingsSearch,
        const DeepCollectionEquality().hash(_propertyTypeList),
        getPropertyTypeListStatus,
        const DeepCollectionEquality().hash(_communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(_buildingList),
        getBuildingListStatus,
        buildingsPaginator,
        const DeepCollectionEquality().hash(_agentList),
        getAgentListStatus,
        const DeepCollectionEquality().hash(_amenityList),
        getAmenityListStatus,
        const DeepCollectionEquality().hash(_listingsFilter),
        const DeepCollectionEquality().hash(_pocketListingsFilter)
      ]);

  @override
  String toString() {
    return 'ListingsState(listings: $listings, getListingsStatus: $getListingsStatus, getListingsError: $getListingsError, listingsPaginator: $listingsPaginator, myListings: $myListings, getMyListingsStatus: $getMyListingsStatus, getMyListingsError: $getMyListingsError, myListingsPaginator: $myListingsPaginator, pocketListings: $pocketListings, getPocketListingsStatus: $getPocketListingsStatus, getPocketListingsError: $getPocketListingsError, pocketListingsPaginator: $pocketListingsPaginator, myPocketListings: $myPocketListings, getMyPocketListingsStatus: $getMyPocketListingsStatus, getMyPocketListingsError: $getMyPocketListingsError, myPocketListingsPaginator: $myPocketListingsPaginator, currentTab: $currentTab, listingsSearch: $listingsSearch, pocketListingsSearch: $pocketListingsSearch, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, buildingsPaginator: $buildingsPaginator, agentList: $agentList, getAgentListStatus: $getAgentListStatus, amenityList: $amenityList, getAmenityListStatus: $getAmenityListStatus, listingsFilter: $listingsFilter, pocketListingsFilter: $pocketListingsFilter)';
  }
}

/// @nodoc
abstract mixin class _$ListingsStateCopyWith<$Res>
    implements $ListingsStateCopyWith<$Res> {
  factory _$ListingsStateCopyWith(
          _ListingsState value, $Res Function(_ListingsState) _then) =
      __$ListingsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Property> listings,
      AppStatus getListingsStatus,
      String? getListingsError,
      Paginator? listingsPaginator,
      List<Property> myListings,
      AppStatus getMyListingsStatus,
      String? getMyListingsError,
      Paginator? myListingsPaginator,
      List<PropertyCard> pocketListings,
      AppStatus getPocketListingsStatus,
      String? getPocketListingsError,
      Paginator? pocketListingsPaginator,
      List<PropertyCard> myPocketListings,
      AppStatus getMyPocketListingsStatus,
      String? getMyPocketListingsError,
      Paginator? myPocketListingsPaginator,
      int currentTab,
      String? listingsSearch,
      String? pocketListingsSearch,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      Paginator? buildingsPaginator,
      List<Agent> agentList,
      AppStatus getAgentListStatus,
      List<Amenity> amenityList,
      AppStatus getAmenityListStatus,
      Map<String, dynamic>? listingsFilter,
      Map<String, dynamic>? pocketListingsFilter});

  @override
  $PaginatorCopyWith<$Res>? get listingsPaginator;
  @override
  $PaginatorCopyWith<$Res>? get myListingsPaginator;
  @override
  $PaginatorCopyWith<$Res>? get pocketListingsPaginator;
  @override
  $PaginatorCopyWith<$Res>? get myPocketListingsPaginator;
  @override
  $PaginatorCopyWith<$Res>? get buildingsPaginator;
}

/// @nodoc
class __$ListingsStateCopyWithImpl<$Res>
    implements _$ListingsStateCopyWith<$Res> {
  __$ListingsStateCopyWithImpl(this._self, this._then);

  final _ListingsState _self;
  final $Res Function(_ListingsState) _then;

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? listings = null,
    Object? getListingsStatus = null,
    Object? getListingsError = freezed,
    Object? listingsPaginator = freezed,
    Object? myListings = null,
    Object? getMyListingsStatus = null,
    Object? getMyListingsError = freezed,
    Object? myListingsPaginator = freezed,
    Object? pocketListings = null,
    Object? getPocketListingsStatus = null,
    Object? getPocketListingsError = freezed,
    Object? pocketListingsPaginator = freezed,
    Object? myPocketListings = null,
    Object? getMyPocketListingsStatus = null,
    Object? getMyPocketListingsError = freezed,
    Object? myPocketListingsPaginator = freezed,
    Object? currentTab = null,
    Object? listingsSearch = freezed,
    Object? pocketListingsSearch = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? buildingsPaginator = freezed,
    Object? agentList = null,
    Object? getAgentListStatus = null,
    Object? amenityList = null,
    Object? getAmenityListStatus = null,
    Object? listingsFilter = freezed,
    Object? pocketListingsFilter = freezed,
  }) {
    return _then(_ListingsState(
      listings: null == listings
          ? _self._listings
          : listings // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getListingsStatus: null == getListingsStatus
          ? _self.getListingsStatus
          : getListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getListingsError: freezed == getListingsError
          ? _self.getListingsError
          : getListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      listingsPaginator: freezed == listingsPaginator
          ? _self.listingsPaginator
          : listingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      myListings: null == myListings
          ? _self._myListings
          : myListings // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getMyListingsStatus: null == getMyListingsStatus
          ? _self.getMyListingsStatus
          : getMyListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getMyListingsError: freezed == getMyListingsError
          ? _self.getMyListingsError
          : getMyListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      myListingsPaginator: freezed == myListingsPaginator
          ? _self.myListingsPaginator
          : myListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      pocketListings: null == pocketListings
          ? _self._pocketListings
          : pocketListings // ignore: cast_nullable_to_non_nullable
              as List<PropertyCard>,
      getPocketListingsStatus: null == getPocketListingsStatus
          ? _self.getPocketListingsStatus
          : getPocketListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getPocketListingsError: freezed == getPocketListingsError
          ? _self.getPocketListingsError
          : getPocketListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      pocketListingsPaginator: freezed == pocketListingsPaginator
          ? _self.pocketListingsPaginator
          : pocketListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      myPocketListings: null == myPocketListings
          ? _self._myPocketListings
          : myPocketListings // ignore: cast_nullable_to_non_nullable
              as List<PropertyCard>,
      getMyPocketListingsStatus: null == getMyPocketListingsStatus
          ? _self.getMyPocketListingsStatus
          : getMyPocketListingsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getMyPocketListingsError: freezed == getMyPocketListingsError
          ? _self.getMyPocketListingsError
          : getMyPocketListingsError // ignore: cast_nullable_to_non_nullable
              as String?,
      myPocketListingsPaginator: freezed == myPocketListingsPaginator
          ? _self.myPocketListingsPaginator
          : myPocketListingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      listingsSearch: freezed == listingsSearch
          ? _self.listingsSearch
          : listingsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      pocketListingsSearch: freezed == pocketListingsSearch
          ? _self.pocketListingsSearch
          : pocketListingsSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyTypeList: null == propertyTypeList
          ? _self._propertyTypeList
          : propertyTypeList // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>,
      getPropertyTypeListStatus: null == getPropertyTypeListStatus
          ? _self.getPropertyTypeListStatus
          : getPropertyTypeListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      communityList: null == communityList
          ? _self._communityList
          : communityList // ignore: cast_nullable_to_non_nullable
              as List<Community>,
      getCommunityListStatus: null == getCommunityListStatus
          ? _self.getCommunityListStatus
          : getCommunityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buildingList: null == buildingList
          ? _self._buildingList
          : buildingList // ignore: cast_nullable_to_non_nullable
              as List<Building>,
      getBuildingListStatus: null == getBuildingListStatus
          ? _self.getBuildingListStatus
          : getBuildingListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buildingsPaginator: freezed == buildingsPaginator
          ? _self.buildingsPaginator
          : buildingsPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      agentList: null == agentList
          ? _self._agentList
          : agentList // ignore: cast_nullable_to_non_nullable
              as List<Agent>,
      getAgentListStatus: null == getAgentListStatus
          ? _self.getAgentListStatus
          : getAgentListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      amenityList: null == amenityList
          ? _self._amenityList
          : amenityList // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      getAmenityListStatus: null == getAmenityListStatus
          ? _self.getAmenityListStatus
          : getAmenityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      listingsFilter: freezed == listingsFilter
          ? _self._listingsFilter
          : listingsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pocketListingsFilter: freezed == pocketListingsFilter
          ? _self._pocketListingsFilter
          : pocketListingsFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get listingsPaginator {
    if (_self.listingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.listingsPaginator!, (value) {
      return _then(_self.copyWith(listingsPaginator: value));
    });
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get myListingsPaginator {
    if (_self.myListingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.myListingsPaginator!, (value) {
      return _then(_self.copyWith(myListingsPaginator: value));
    });
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get pocketListingsPaginator {
    if (_self.pocketListingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.pocketListingsPaginator!, (value) {
      return _then(_self.copyWith(pocketListingsPaginator: value));
    });
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get myPocketListingsPaginator {
    if (_self.myPocketListingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.myPocketListingsPaginator!, (value) {
      return _then(_self.copyWith(myPocketListingsPaginator: value));
    });
  }

  /// Create a copy of ListingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get buildingsPaginator {
    if (_self.buildingsPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.buildingsPaginator!, (value) {
      return _then(_self.copyWith(buildingsPaginator: value));
    });
  }
}

// dart format on
