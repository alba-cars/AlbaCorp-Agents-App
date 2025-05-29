// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_state_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListStateState {
  String? get tasksCategorizedView;
  String? get taskSortedView;
  String? get leadsView;
  String? get listingsView;
  String? get pocketListingsView;
  String? get dealsView;
  String? get listingAcquiredView;
  List<PropertyType> get propertyTypeList;
  AppStatus get getPropertyTypeListStatus;
  List<CommunityTeamModel> get communityList;
  AppStatus get getCommunityListStatus;
  List<CommunityName> get placesList;
  AppStatus get getPlacesListStatus;
  List<Building> get buildingList;
  AppStatus get getBuildingListStatus;
  Paginator? get buildingsPaginator;
  AppStatus get getLeadSourcestatus;
  List<LeadSource>? get leadSources;
  Paginator? get leadSourcePaginator;
  String? get leadSourceError;
  String? get leadSourceSearch;

  /// Create a copy of ListStateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListStateStateCopyWith<ListStateState> get copyWith =>
      _$ListStateStateCopyWithImpl<ListStateState>(
          this as ListStateState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListStateState &&
            (identical(other.tasksCategorizedView, tasksCategorizedView) ||
                other.tasksCategorizedView == tasksCategorizedView) &&
            (identical(other.taskSortedView, taskSortedView) ||
                other.taskSortedView == taskSortedView) &&
            (identical(other.leadsView, leadsView) ||
                other.leadsView == leadsView) &&
            (identical(other.listingsView, listingsView) ||
                other.listingsView == listingsView) &&
            (identical(other.pocketListingsView, pocketListingsView) ||
                other.pocketListingsView == pocketListingsView) &&
            (identical(other.dealsView, dealsView) ||
                other.dealsView == dealsView) &&
            (identical(other.listingAcquiredView, listingAcquiredView) ||
                other.listingAcquiredView == listingAcquiredView) &&
            const DeepCollectionEquality()
                .equals(other.propertyTypeList, propertyTypeList) &&
            (identical(other.getPropertyTypeListStatus,
                    getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus) &&
            const DeepCollectionEquality()
                .equals(other.communityList, communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus) &&
            const DeepCollectionEquality()
                .equals(other.placesList, placesList) &&
            (identical(other.getPlacesListStatus, getPlacesListStatus) ||
                other.getPlacesListStatus == getPlacesListStatus) &&
            const DeepCollectionEquality()
                .equals(other.buildingList, buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) ||
                other.getBuildingListStatus == getBuildingListStatus) &&
            (identical(other.buildingsPaginator, buildingsPaginator) ||
                other.buildingsPaginator == buildingsPaginator) &&
            (identical(other.getLeadSourcestatus, getLeadSourcestatus) ||
                other.getLeadSourcestatus == getLeadSourcestatus) &&
            const DeepCollectionEquality()
                .equals(other.leadSources, leadSources) &&
            (identical(other.leadSourcePaginator, leadSourcePaginator) ||
                other.leadSourcePaginator == leadSourcePaginator) &&
            (identical(other.leadSourceError, leadSourceError) ||
                other.leadSourceError == leadSourceError) &&
            (identical(other.leadSourceSearch, leadSourceSearch) ||
                other.leadSourceSearch == leadSourceSearch));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        tasksCategorizedView,
        taskSortedView,
        leadsView,
        listingsView,
        pocketListingsView,
        dealsView,
        listingAcquiredView,
        const DeepCollectionEquality().hash(propertyTypeList),
        getPropertyTypeListStatus,
        const DeepCollectionEquality().hash(communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(placesList),
        getPlacesListStatus,
        const DeepCollectionEquality().hash(buildingList),
        getBuildingListStatus,
        buildingsPaginator,
        getLeadSourcestatus,
        const DeepCollectionEquality().hash(leadSources),
        leadSourcePaginator,
        leadSourceError,
        leadSourceSearch
      ]);

  @override
  String toString() {
    return 'ListStateState(tasksCategorizedView: $tasksCategorizedView, taskSortedView: $taskSortedView, leadsView: $leadsView, listingsView: $listingsView, pocketListingsView: $pocketListingsView, dealsView: $dealsView, listingAcquiredView: $listingAcquiredView, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, placesList: $placesList, getPlacesListStatus: $getPlacesListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, buildingsPaginator: $buildingsPaginator, getLeadSourcestatus: $getLeadSourcestatus, leadSources: $leadSources, leadSourcePaginator: $leadSourcePaginator, leadSourceError: $leadSourceError, leadSourceSearch: $leadSourceSearch)';
  }
}

/// @nodoc
abstract mixin class $ListStateStateCopyWith<$Res> {
  factory $ListStateStateCopyWith(
          ListStateState value, $Res Function(ListStateState) _then) =
      _$ListStateStateCopyWithImpl;
  @useResult
  $Res call(
      {String? tasksCategorizedView,
      String? taskSortedView,
      String? leadsView,
      String? listingsView,
      String? pocketListingsView,
      String? dealsView,
      String? listingAcquiredView,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<CommunityTeamModel> communityList,
      AppStatus getCommunityListStatus,
      List<CommunityName> placesList,
      AppStatus getPlacesListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      Paginator? buildingsPaginator,
      AppStatus getLeadSourcestatus,
      List<LeadSource>? leadSources,
      Paginator? leadSourcePaginator,
      String? leadSourceError,
      String? leadSourceSearch});

  $PaginatorCopyWith<$Res>? get buildingsPaginator;
  $PaginatorCopyWith<$Res>? get leadSourcePaginator;
}

/// @nodoc
class _$ListStateStateCopyWithImpl<$Res>
    implements $ListStateStateCopyWith<$Res> {
  _$ListStateStateCopyWithImpl(this._self, this._then);

  final ListStateState _self;
  final $Res Function(ListStateState) _then;

  /// Create a copy of ListStateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksCategorizedView = freezed,
    Object? taskSortedView = freezed,
    Object? leadsView = freezed,
    Object? listingsView = freezed,
    Object? pocketListingsView = freezed,
    Object? dealsView = freezed,
    Object? listingAcquiredView = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? placesList = null,
    Object? getPlacesListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? buildingsPaginator = freezed,
    Object? getLeadSourcestatus = null,
    Object? leadSources = freezed,
    Object? leadSourcePaginator = freezed,
    Object? leadSourceError = freezed,
    Object? leadSourceSearch = freezed,
  }) {
    return _then(_self.copyWith(
      tasksCategorizedView: freezed == tasksCategorizedView
          ? _self.tasksCategorizedView
          : tasksCategorizedView // ignore: cast_nullable_to_non_nullable
              as String?,
      taskSortedView: freezed == taskSortedView
          ? _self.taskSortedView
          : taskSortedView // ignore: cast_nullable_to_non_nullable
              as String?,
      leadsView: freezed == leadsView
          ? _self.leadsView
          : leadsView // ignore: cast_nullable_to_non_nullable
              as String?,
      listingsView: freezed == listingsView
          ? _self.listingsView
          : listingsView // ignore: cast_nullable_to_non_nullable
              as String?,
      pocketListingsView: freezed == pocketListingsView
          ? _self.pocketListingsView
          : pocketListingsView // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsView: freezed == dealsView
          ? _self.dealsView
          : dealsView // ignore: cast_nullable_to_non_nullable
              as String?,
      listingAcquiredView: freezed == listingAcquiredView
          ? _self.listingAcquiredView
          : listingAcquiredView // ignore: cast_nullable_to_non_nullable
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
              as List<CommunityTeamModel>,
      getCommunityListStatus: null == getCommunityListStatus
          ? _self.getCommunityListStatus
          : getCommunityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      placesList: null == placesList
          ? _self.placesList
          : placesList // ignore: cast_nullable_to_non_nullable
              as List<CommunityName>,
      getPlacesListStatus: null == getPlacesListStatus
          ? _self.getPlacesListStatus
          : getPlacesListStatus // ignore: cast_nullable_to_non_nullable
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
      getLeadSourcestatus: null == getLeadSourcestatus
          ? _self.getLeadSourcestatus
          : getLeadSourcestatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leadSources: freezed == leadSources
          ? _self.leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>?,
      leadSourcePaginator: freezed == leadSourcePaginator
          ? _self.leadSourcePaginator
          : leadSourcePaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      leadSourceError: freezed == leadSourceError
          ? _self.leadSourceError
          : leadSourceError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSourceSearch: freezed == leadSourceSearch
          ? _self.leadSourceSearch
          : leadSourceSearch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ListStateState
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

  /// Create a copy of ListStateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get leadSourcePaginator {
    if (_self.leadSourcePaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.leadSourcePaginator!, (value) {
      return _then(_self.copyWith(leadSourcePaginator: value));
    });
  }
}

/// @nodoc

class _ListStateState implements ListStateState {
  const _ListStateState(
      {this.tasksCategorizedView,
      this.taskSortedView,
      this.leadsView,
      this.listingsView,
      this.pocketListingsView,
      this.dealsView,
      this.listingAcquiredView,
      final List<PropertyType> propertyTypeList = const [],
      this.getPropertyTypeListStatus = AppStatus.init,
      final List<CommunityTeamModel> communityList = const [],
      this.getCommunityListStatus = AppStatus.init,
      final List<CommunityName> placesList = const [],
      this.getPlacesListStatus = AppStatus.init,
      final List<Building> buildingList = const [],
      this.getBuildingListStatus = AppStatus.init,
      this.buildingsPaginator,
      this.getLeadSourcestatus = AppStatus.init,
      final List<LeadSource>? leadSources = const [],
      this.leadSourcePaginator,
      this.leadSourceError,
      this.leadSourceSearch})
      : _propertyTypeList = propertyTypeList,
        _communityList = communityList,
        _placesList = placesList,
        _buildingList = buildingList,
        _leadSources = leadSources;

  @override
  final String? tasksCategorizedView;
  @override
  final String? taskSortedView;
  @override
  final String? leadsView;
  @override
  final String? listingsView;
  @override
  final String? pocketListingsView;
  @override
  final String? dealsView;
  @override
  final String? listingAcquiredView;
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
  final List<CommunityTeamModel> _communityList;
  @override
  @JsonKey()
  List<CommunityTeamModel> get communityList {
    if (_communityList is EqualUnmodifiableListView) return _communityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_communityList);
  }

  @override
  @JsonKey()
  final AppStatus getCommunityListStatus;
  final List<CommunityName> _placesList;
  @override
  @JsonKey()
  List<CommunityName> get placesList {
    if (_placesList is EqualUnmodifiableListView) return _placesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placesList);
  }

  @override
  @JsonKey()
  final AppStatus getPlacesListStatus;
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
  @override
  @JsonKey()
  final AppStatus getLeadSourcestatus;
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
  final Paginator? leadSourcePaginator;
  @override
  final String? leadSourceError;
  @override
  final String? leadSourceSearch;

  /// Create a copy of ListStateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListStateStateCopyWith<_ListStateState> get copyWith =>
      __$ListStateStateCopyWithImpl<_ListStateState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListStateState &&
            (identical(other.tasksCategorizedView, tasksCategorizedView) ||
                other.tasksCategorizedView == tasksCategorizedView) &&
            (identical(other.taskSortedView, taskSortedView) ||
                other.taskSortedView == taskSortedView) &&
            (identical(other.leadsView, leadsView) ||
                other.leadsView == leadsView) &&
            (identical(other.listingsView, listingsView) ||
                other.listingsView == listingsView) &&
            (identical(other.pocketListingsView, pocketListingsView) ||
                other.pocketListingsView == pocketListingsView) &&
            (identical(other.dealsView, dealsView) ||
                other.dealsView == dealsView) &&
            (identical(other.listingAcquiredView, listingAcquiredView) ||
                other.listingAcquiredView == listingAcquiredView) &&
            const DeepCollectionEquality()
                .equals(other._propertyTypeList, _propertyTypeList) &&
            (identical(other.getPropertyTypeListStatus,
                    getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus) &&
            const DeepCollectionEquality()
                .equals(other._communityList, _communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus) &&
            const DeepCollectionEquality()
                .equals(other._placesList, _placesList) &&
            (identical(other.getPlacesListStatus, getPlacesListStatus) ||
                other.getPlacesListStatus == getPlacesListStatus) &&
            const DeepCollectionEquality()
                .equals(other._buildingList, _buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) ||
                other.getBuildingListStatus == getBuildingListStatus) &&
            (identical(other.buildingsPaginator, buildingsPaginator) ||
                other.buildingsPaginator == buildingsPaginator) &&
            (identical(other.getLeadSourcestatus, getLeadSourcestatus) ||
                other.getLeadSourcestatus == getLeadSourcestatus) &&
            const DeepCollectionEquality()
                .equals(other._leadSources, _leadSources) &&
            (identical(other.leadSourcePaginator, leadSourcePaginator) ||
                other.leadSourcePaginator == leadSourcePaginator) &&
            (identical(other.leadSourceError, leadSourceError) ||
                other.leadSourceError == leadSourceError) &&
            (identical(other.leadSourceSearch, leadSourceSearch) ||
                other.leadSourceSearch == leadSourceSearch));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        tasksCategorizedView,
        taskSortedView,
        leadsView,
        listingsView,
        pocketListingsView,
        dealsView,
        listingAcquiredView,
        const DeepCollectionEquality().hash(_propertyTypeList),
        getPropertyTypeListStatus,
        const DeepCollectionEquality().hash(_communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(_placesList),
        getPlacesListStatus,
        const DeepCollectionEquality().hash(_buildingList),
        getBuildingListStatus,
        buildingsPaginator,
        getLeadSourcestatus,
        const DeepCollectionEquality().hash(_leadSources),
        leadSourcePaginator,
        leadSourceError,
        leadSourceSearch
      ]);

  @override
  String toString() {
    return 'ListStateState(tasksCategorizedView: $tasksCategorizedView, taskSortedView: $taskSortedView, leadsView: $leadsView, listingsView: $listingsView, pocketListingsView: $pocketListingsView, dealsView: $dealsView, listingAcquiredView: $listingAcquiredView, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, placesList: $placesList, getPlacesListStatus: $getPlacesListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, buildingsPaginator: $buildingsPaginator, getLeadSourcestatus: $getLeadSourcestatus, leadSources: $leadSources, leadSourcePaginator: $leadSourcePaginator, leadSourceError: $leadSourceError, leadSourceSearch: $leadSourceSearch)';
  }
}

/// @nodoc
abstract mixin class _$ListStateStateCopyWith<$Res>
    implements $ListStateStateCopyWith<$Res> {
  factory _$ListStateStateCopyWith(
          _ListStateState value, $Res Function(_ListStateState) _then) =
      __$ListStateStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? tasksCategorizedView,
      String? taskSortedView,
      String? leadsView,
      String? listingsView,
      String? pocketListingsView,
      String? dealsView,
      String? listingAcquiredView,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<CommunityTeamModel> communityList,
      AppStatus getCommunityListStatus,
      List<CommunityName> placesList,
      AppStatus getPlacesListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      Paginator? buildingsPaginator,
      AppStatus getLeadSourcestatus,
      List<LeadSource>? leadSources,
      Paginator? leadSourcePaginator,
      String? leadSourceError,
      String? leadSourceSearch});

  @override
  $PaginatorCopyWith<$Res>? get buildingsPaginator;
  @override
  $PaginatorCopyWith<$Res>? get leadSourcePaginator;
}

/// @nodoc
class __$ListStateStateCopyWithImpl<$Res>
    implements _$ListStateStateCopyWith<$Res> {
  __$ListStateStateCopyWithImpl(this._self, this._then);

  final _ListStateState _self;
  final $Res Function(_ListStateState) _then;

  /// Create a copy of ListStateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tasksCategorizedView = freezed,
    Object? taskSortedView = freezed,
    Object? leadsView = freezed,
    Object? listingsView = freezed,
    Object? pocketListingsView = freezed,
    Object? dealsView = freezed,
    Object? listingAcquiredView = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? placesList = null,
    Object? getPlacesListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? buildingsPaginator = freezed,
    Object? getLeadSourcestatus = null,
    Object? leadSources = freezed,
    Object? leadSourcePaginator = freezed,
    Object? leadSourceError = freezed,
    Object? leadSourceSearch = freezed,
  }) {
    return _then(_ListStateState(
      tasksCategorizedView: freezed == tasksCategorizedView
          ? _self.tasksCategorizedView
          : tasksCategorizedView // ignore: cast_nullable_to_non_nullable
              as String?,
      taskSortedView: freezed == taskSortedView
          ? _self.taskSortedView
          : taskSortedView // ignore: cast_nullable_to_non_nullable
              as String?,
      leadsView: freezed == leadsView
          ? _self.leadsView
          : leadsView // ignore: cast_nullable_to_non_nullable
              as String?,
      listingsView: freezed == listingsView
          ? _self.listingsView
          : listingsView // ignore: cast_nullable_to_non_nullable
              as String?,
      pocketListingsView: freezed == pocketListingsView
          ? _self.pocketListingsView
          : pocketListingsView // ignore: cast_nullable_to_non_nullable
              as String?,
      dealsView: freezed == dealsView
          ? _self.dealsView
          : dealsView // ignore: cast_nullable_to_non_nullable
              as String?,
      listingAcquiredView: freezed == listingAcquiredView
          ? _self.listingAcquiredView
          : listingAcquiredView // ignore: cast_nullable_to_non_nullable
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
              as List<CommunityTeamModel>,
      getCommunityListStatus: null == getCommunityListStatus
          ? _self.getCommunityListStatus
          : getCommunityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      placesList: null == placesList
          ? _self._placesList
          : placesList // ignore: cast_nullable_to_non_nullable
              as List<CommunityName>,
      getPlacesListStatus: null == getPlacesListStatus
          ? _self.getPlacesListStatus
          : getPlacesListStatus // ignore: cast_nullable_to_non_nullable
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
      getLeadSourcestatus: null == getLeadSourcestatus
          ? _self.getLeadSourcestatus
          : getLeadSourcestatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leadSources: freezed == leadSources
          ? _self._leadSources
          : leadSources // ignore: cast_nullable_to_non_nullable
              as List<LeadSource>?,
      leadSourcePaginator: freezed == leadSourcePaginator
          ? _self.leadSourcePaginator
          : leadSourcePaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      leadSourceError: freezed == leadSourceError
          ? _self.leadSourceError
          : leadSourceError // ignore: cast_nullable_to_non_nullable
              as String?,
      leadSourceSearch: freezed == leadSourceSearch
          ? _self.leadSourceSearch
          : leadSourceSearch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ListStateState
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

  /// Create a copy of ListStateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get leadSourcePaginator {
    if (_self.leadSourcePaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.leadSourcePaginator!, (value) {
      return _then(_self.copyWith(leadSourcePaginator: value));
    });
  }
}

// dart format on
