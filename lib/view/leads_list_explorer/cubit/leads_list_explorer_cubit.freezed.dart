// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leads_list_explorer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeadsListExplorerState {
  AppStatus get getExplorerListStatus;
  List<LeadExplorerItem> get explorerList;
  String? get getExplorerListError;
  Paginator? get explorerPaginator;
  AppStatus get getCheckedOutExplorerListStatus;
  List<PropertyCard> get checkedOutExplorerList;
  String? get getCheckedOutExplorerListError;
  Paginator? get checkedOutPaginator;
  AppStatus get checkInLeadStatus;
  String? get checkInLeadError;
  AppStatus get checkOutLeadStatus;
  String? get checkOutLeadError;
  AppStatus get randomLeadsAssignmentStatus;
  String? get randomLeadsAssignmentError;
  dynamic get currentTab;
  String? get explorerSearch;
  String? get checkedOutSearch;
  Map<String, dynamic>? get explorerFilter;
  Map<String, dynamic>? get checkedOutFilter;
  List<PropertyType> get propertyTypeList;
  AppStatus get getPropertyTypeListStatus;
  List<CommunityTeamModel> get communityList;
  AppStatus get getCommunityListStatus;
  List<CommunityName> get placesList;
  AppStatus get getPlacesListStatus;
  List<Building> get buildingList;
  AppStatus get getBuildingListStatus;
  Paginator? get buildingsPaginator;
  bool get selectModeEnabled;
  List<LeadExplorerItem> get selectedPropertyCards;
  bool get showOnlyAvailable;

  /// Create a copy of LeadsListExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadsListExplorerStateCopyWith<LeadsListExplorerState> get copyWith =>
      _$LeadsListExplorerStateCopyWithImpl<LeadsListExplorerState>(
          this as LeadsListExplorerState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadsListExplorerState &&
            (identical(other.getExplorerListStatus, getExplorerListStatus) ||
                other.getExplorerListStatus == getExplorerListStatus) &&
            const DeepCollectionEquality()
                .equals(other.explorerList, explorerList) &&
            (identical(other.getExplorerListError, getExplorerListError) ||
                other.getExplorerListError == getExplorerListError) &&
            (identical(other.explorerPaginator, explorerPaginator) ||
                other.explorerPaginator == explorerPaginator) &&
            (identical(other.getCheckedOutExplorerListStatus, getCheckedOutExplorerListStatus) ||
                other.getCheckedOutExplorerListStatus ==
                    getCheckedOutExplorerListStatus) &&
            const DeepCollectionEquality()
                .equals(other.checkedOutExplorerList, checkedOutExplorerList) &&
            (identical(other.getCheckedOutExplorerListError, getCheckedOutExplorerListError) ||
                other.getCheckedOutExplorerListError ==
                    getCheckedOutExplorerListError) &&
            (identical(other.checkedOutPaginator, checkedOutPaginator) ||
                other.checkedOutPaginator == checkedOutPaginator) &&
            (identical(other.checkInLeadStatus, checkInLeadStatus) ||
                other.checkInLeadStatus == checkInLeadStatus) &&
            (identical(other.checkInLeadError, checkInLeadError) ||
                other.checkInLeadError == checkInLeadError) &&
            (identical(other.checkOutLeadStatus, checkOutLeadStatus) ||
                other.checkOutLeadStatus == checkOutLeadStatus) &&
            (identical(other.checkOutLeadError, checkOutLeadError) ||
                other.checkOutLeadError == checkOutLeadError) &&
            (identical(other.randomLeadsAssignmentStatus, randomLeadsAssignmentStatus) ||
                other.randomLeadsAssignmentStatus ==
                    randomLeadsAssignmentStatus) &&
            (identical(other.randomLeadsAssignmentError, randomLeadsAssignmentError) ||
                other.randomLeadsAssignmentError ==
                    randomLeadsAssignmentError) &&
            const DeepCollectionEquality()
                .equals(other.currentTab, currentTab) &&
            (identical(other.explorerSearch, explorerSearch) ||
                other.explorerSearch == explorerSearch) &&
            (identical(other.checkedOutSearch, checkedOutSearch) ||
                other.checkedOutSearch == checkedOutSearch) &&
            const DeepCollectionEquality()
                .equals(other.explorerFilter, explorerFilter) &&
            const DeepCollectionEquality()
                .equals(other.checkedOutFilter, checkedOutFilter) &&
            const DeepCollectionEquality()
                .equals(other.propertyTypeList, propertyTypeList) &&
            (identical(other.getPropertyTypeListStatus, getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus) &&
            const DeepCollectionEquality()
                .equals(other.communityList, communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus) &&
            const DeepCollectionEquality()
                .equals(other.placesList, placesList) &&
            (identical(other.getPlacesListStatus, getPlacesListStatus) || other.getPlacesListStatus == getPlacesListStatus) &&
            const DeepCollectionEquality().equals(other.buildingList, buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) || other.getBuildingListStatus == getBuildingListStatus) &&
            (identical(other.buildingsPaginator, buildingsPaginator) || other.buildingsPaginator == buildingsPaginator) &&
            (identical(other.selectModeEnabled, selectModeEnabled) || other.selectModeEnabled == selectModeEnabled) &&
            const DeepCollectionEquality().equals(other.selectedPropertyCards, selectedPropertyCards) &&
            (identical(other.showOnlyAvailable, showOnlyAvailable) || other.showOnlyAvailable == showOnlyAvailable));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        getExplorerListStatus,
        const DeepCollectionEquality().hash(explorerList),
        getExplorerListError,
        explorerPaginator,
        getCheckedOutExplorerListStatus,
        const DeepCollectionEquality().hash(checkedOutExplorerList),
        getCheckedOutExplorerListError,
        checkedOutPaginator,
        checkInLeadStatus,
        checkInLeadError,
        checkOutLeadStatus,
        checkOutLeadError,
        randomLeadsAssignmentStatus,
        randomLeadsAssignmentError,
        const DeepCollectionEquality().hash(currentTab),
        explorerSearch,
        checkedOutSearch,
        const DeepCollectionEquality().hash(explorerFilter),
        const DeepCollectionEquality().hash(checkedOutFilter),
        const DeepCollectionEquality().hash(propertyTypeList),
        getPropertyTypeListStatus,
        const DeepCollectionEquality().hash(communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(placesList),
        getPlacesListStatus,
        const DeepCollectionEquality().hash(buildingList),
        getBuildingListStatus,
        buildingsPaginator,
        selectModeEnabled,
        const DeepCollectionEquality().hash(selectedPropertyCards),
        showOnlyAvailable
      ]);

  @override
  String toString() {
    return 'LeadsListExplorerState(getExplorerListStatus: $getExplorerListStatus, explorerList: $explorerList, getExplorerListError: $getExplorerListError, explorerPaginator: $explorerPaginator, getCheckedOutExplorerListStatus: $getCheckedOutExplorerListStatus, checkedOutExplorerList: $checkedOutExplorerList, getCheckedOutExplorerListError: $getCheckedOutExplorerListError, checkedOutPaginator: $checkedOutPaginator, checkInLeadStatus: $checkInLeadStatus, checkInLeadError: $checkInLeadError, checkOutLeadStatus: $checkOutLeadStatus, checkOutLeadError: $checkOutLeadError, randomLeadsAssignmentStatus: $randomLeadsAssignmentStatus, randomLeadsAssignmentError: $randomLeadsAssignmentError, currentTab: $currentTab, explorerSearch: $explorerSearch, checkedOutSearch: $checkedOutSearch, explorerFilter: $explorerFilter, checkedOutFilter: $checkedOutFilter, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, placesList: $placesList, getPlacesListStatus: $getPlacesListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, buildingsPaginator: $buildingsPaginator, selectModeEnabled: $selectModeEnabled, selectedPropertyCards: $selectedPropertyCards, showOnlyAvailable: $showOnlyAvailable)';
  }
}

/// @nodoc
abstract mixin class $LeadsListExplorerStateCopyWith<$Res> {
  factory $LeadsListExplorerStateCopyWith(LeadsListExplorerState value,
          $Res Function(LeadsListExplorerState) _then) =
      _$LeadsListExplorerStateCopyWithImpl;
  @useResult
  $Res call(
      {AppStatus getExplorerListStatus,
      List<LeadExplorerItem> explorerList,
      String? getExplorerListError,
      Paginator? explorerPaginator,
      AppStatus getCheckedOutExplorerListStatus,
      List<PropertyCard> checkedOutExplorerList,
      String? getCheckedOutExplorerListError,
      Paginator? checkedOutPaginator,
      AppStatus checkInLeadStatus,
      String? checkInLeadError,
      AppStatus checkOutLeadStatus,
      String? checkOutLeadError,
      AppStatus randomLeadsAssignmentStatus,
      String? randomLeadsAssignmentError,
      dynamic currentTab,
      String? explorerSearch,
      String? checkedOutSearch,
      Map<String, dynamic>? explorerFilter,
      Map<String, dynamic>? checkedOutFilter,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<CommunityTeamModel> communityList,
      AppStatus getCommunityListStatus,
      List<CommunityName> placesList,
      AppStatus getPlacesListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      Paginator? buildingsPaginator,
      bool selectModeEnabled,
      List<LeadExplorerItem> selectedPropertyCards,
      bool showOnlyAvailable});

  $PaginatorCopyWith<$Res>? get explorerPaginator;
  $PaginatorCopyWith<$Res>? get checkedOutPaginator;
  $PaginatorCopyWith<$Res>? get buildingsPaginator;
}

/// @nodoc
class _$LeadsListExplorerStateCopyWithImpl<$Res>
    implements $LeadsListExplorerStateCopyWith<$Res> {
  _$LeadsListExplorerStateCopyWithImpl(this._self, this._then);

  final LeadsListExplorerState _self;
  final $Res Function(LeadsListExplorerState) _then;

  /// Create a copy of LeadsListExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getExplorerListStatus = null,
    Object? explorerList = null,
    Object? getExplorerListError = freezed,
    Object? explorerPaginator = freezed,
    Object? getCheckedOutExplorerListStatus = null,
    Object? checkedOutExplorerList = null,
    Object? getCheckedOutExplorerListError = freezed,
    Object? checkedOutPaginator = freezed,
    Object? checkInLeadStatus = null,
    Object? checkInLeadError = freezed,
    Object? checkOutLeadStatus = null,
    Object? checkOutLeadError = freezed,
    Object? randomLeadsAssignmentStatus = null,
    Object? randomLeadsAssignmentError = freezed,
    Object? currentTab = freezed,
    Object? explorerSearch = freezed,
    Object? checkedOutSearch = freezed,
    Object? explorerFilter = freezed,
    Object? checkedOutFilter = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? placesList = null,
    Object? getPlacesListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? buildingsPaginator = freezed,
    Object? selectModeEnabled = null,
    Object? selectedPropertyCards = null,
    Object? showOnlyAvailable = null,
  }) {
    return _then(_self.copyWith(
      getExplorerListStatus: null == getExplorerListStatus
          ? _self.getExplorerListStatus
          : getExplorerListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      explorerList: null == explorerList
          ? _self.explorerList
          : explorerList // ignore: cast_nullable_to_non_nullable
              as List<LeadExplorerItem>,
      getExplorerListError: freezed == getExplorerListError
          ? _self.getExplorerListError
          : getExplorerListError // ignore: cast_nullable_to_non_nullable
              as String?,
      explorerPaginator: freezed == explorerPaginator
          ? _self.explorerPaginator
          : explorerPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      getCheckedOutExplorerListStatus: null == getCheckedOutExplorerListStatus
          ? _self.getCheckedOutExplorerListStatus
          : getCheckedOutExplorerListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      checkedOutExplorerList: null == checkedOutExplorerList
          ? _self.checkedOutExplorerList
          : checkedOutExplorerList // ignore: cast_nullable_to_non_nullable
              as List<PropertyCard>,
      getCheckedOutExplorerListError: freezed == getCheckedOutExplorerListError
          ? _self.getCheckedOutExplorerListError
          : getCheckedOutExplorerListError // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedOutPaginator: freezed == checkedOutPaginator
          ? _self.checkedOutPaginator
          : checkedOutPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      checkInLeadStatus: null == checkInLeadStatus
          ? _self.checkInLeadStatus
          : checkInLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      checkInLeadError: freezed == checkInLeadError
          ? _self.checkInLeadError
          : checkInLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutLeadStatus: null == checkOutLeadStatus
          ? _self.checkOutLeadStatus
          : checkOutLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      checkOutLeadError: freezed == checkOutLeadError
          ? _self.checkOutLeadError
          : checkOutLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      randomLeadsAssignmentStatus: null == randomLeadsAssignmentStatus
          ? _self.randomLeadsAssignmentStatus
          : randomLeadsAssignmentStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      randomLeadsAssignmentError: freezed == randomLeadsAssignmentError
          ? _self.randomLeadsAssignmentError
          : randomLeadsAssignmentError // ignore: cast_nullable_to_non_nullable
              as String?,
      currentTab: freezed == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as dynamic,
      explorerSearch: freezed == explorerSearch
          ? _self.explorerSearch
          : explorerSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedOutSearch: freezed == checkedOutSearch
          ? _self.checkedOutSearch
          : checkedOutSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      explorerFilter: freezed == explorerFilter
          ? _self.explorerFilter
          : explorerFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      checkedOutFilter: freezed == checkedOutFilter
          ? _self.checkedOutFilter
          : checkedOutFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
      selectModeEnabled: null == selectModeEnabled
          ? _self.selectModeEnabled
          : selectModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPropertyCards: null == selectedPropertyCards
          ? _self.selectedPropertyCards
          : selectedPropertyCards // ignore: cast_nullable_to_non_nullable
              as List<LeadExplorerItem>,
      showOnlyAvailable: null == showOnlyAvailable
          ? _self.showOnlyAvailable
          : showOnlyAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of LeadsListExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get explorerPaginator {
    if (_self.explorerPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.explorerPaginator!, (value) {
      return _then(_self.copyWith(explorerPaginator: value));
    });
  }

  /// Create a copy of LeadsListExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get checkedOutPaginator {
    if (_self.checkedOutPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.checkedOutPaginator!, (value) {
      return _then(_self.copyWith(checkedOutPaginator: value));
    });
  }

  /// Create a copy of LeadsListExplorerState
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

class _LeadsListExplorerState implements LeadsListExplorerState {
  const _LeadsListExplorerState(
      {this.getExplorerListStatus = AppStatus.init,
      final List<LeadExplorerItem> explorerList = const [],
      this.getExplorerListError,
      this.explorerPaginator,
      this.getCheckedOutExplorerListStatus = AppStatus.init,
      final List<PropertyCard> checkedOutExplorerList = const [],
      this.getCheckedOutExplorerListError,
      this.checkedOutPaginator,
      this.checkInLeadStatus = AppStatus.init,
      this.checkInLeadError,
      this.checkOutLeadStatus = AppStatus.init,
      this.checkOutLeadError,
      this.randomLeadsAssignmentStatus = AppStatus.init,
      this.randomLeadsAssignmentError,
      this.currentTab = 0,
      this.explorerSearch,
      this.checkedOutSearch,
      final Map<String, dynamic>? explorerFilter,
      final Map<String, dynamic>? checkedOutFilter,
      final List<PropertyType> propertyTypeList = const [],
      this.getPropertyTypeListStatus = AppStatus.init,
      final List<CommunityTeamModel> communityList = const [],
      this.getCommunityListStatus = AppStatus.init,
      final List<CommunityName> placesList = const [],
      this.getPlacesListStatus = AppStatus.init,
      final List<Building> buildingList = const [],
      this.getBuildingListStatus = AppStatus.init,
      this.buildingsPaginator,
      this.selectModeEnabled = false,
      final List<LeadExplorerItem> selectedPropertyCards = const [],
      this.showOnlyAvailable = true})
      : _explorerList = explorerList,
        _checkedOutExplorerList = checkedOutExplorerList,
        _explorerFilter = explorerFilter,
        _checkedOutFilter = checkedOutFilter,
        _propertyTypeList = propertyTypeList,
        _communityList = communityList,
        _placesList = placesList,
        _buildingList = buildingList,
        _selectedPropertyCards = selectedPropertyCards;

  @override
  @JsonKey()
  final AppStatus getExplorerListStatus;
  final List<LeadExplorerItem> _explorerList;
  @override
  @JsonKey()
  List<LeadExplorerItem> get explorerList {
    if (_explorerList is EqualUnmodifiableListView) return _explorerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_explorerList);
  }

  @override
  final String? getExplorerListError;
  @override
  final Paginator? explorerPaginator;
  @override
  @JsonKey()
  final AppStatus getCheckedOutExplorerListStatus;
  final List<PropertyCard> _checkedOutExplorerList;
  @override
  @JsonKey()
  List<PropertyCard> get checkedOutExplorerList {
    if (_checkedOutExplorerList is EqualUnmodifiableListView)
      return _checkedOutExplorerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkedOutExplorerList);
  }

  @override
  final String? getCheckedOutExplorerListError;
  @override
  final Paginator? checkedOutPaginator;
  @override
  @JsonKey()
  final AppStatus checkInLeadStatus;
  @override
  final String? checkInLeadError;
  @override
  @JsonKey()
  final AppStatus checkOutLeadStatus;
  @override
  final String? checkOutLeadError;
  @override
  @JsonKey()
  final AppStatus randomLeadsAssignmentStatus;
  @override
  final String? randomLeadsAssignmentError;
  @override
  @JsonKey()
  final dynamic currentTab;
  @override
  final String? explorerSearch;
  @override
  final String? checkedOutSearch;
  final Map<String, dynamic>? _explorerFilter;
  @override
  Map<String, dynamic>? get explorerFilter {
    final value = _explorerFilter;
    if (value == null) return null;
    if (_explorerFilter is EqualUnmodifiableMapView) return _explorerFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _checkedOutFilter;
  @override
  Map<String, dynamic>? get checkedOutFilter {
    final value = _checkedOutFilter;
    if (value == null) return null;
    if (_checkedOutFilter is EqualUnmodifiableMapView) return _checkedOutFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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
  final bool selectModeEnabled;
  final List<LeadExplorerItem> _selectedPropertyCards;
  @override
  @JsonKey()
  List<LeadExplorerItem> get selectedPropertyCards {
    if (_selectedPropertyCards is EqualUnmodifiableListView)
      return _selectedPropertyCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPropertyCards);
  }

  @override
  @JsonKey()
  final bool showOnlyAvailable;

  /// Create a copy of LeadsListExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadsListExplorerStateCopyWith<_LeadsListExplorerState> get copyWith =>
      __$LeadsListExplorerStateCopyWithImpl<_LeadsListExplorerState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadsListExplorerState &&
            (identical(other.getExplorerListStatus, getExplorerListStatus) ||
                other.getExplorerListStatus == getExplorerListStatus) &&
            const DeepCollectionEquality()
                .equals(other._explorerList, _explorerList) &&
            (identical(other.getExplorerListError, getExplorerListError) ||
                other.getExplorerListError == getExplorerListError) &&
            (identical(other.explorerPaginator, explorerPaginator) ||
                other.explorerPaginator == explorerPaginator) &&
            (identical(other.getCheckedOutExplorerListStatus, getCheckedOutExplorerListStatus) ||
                other.getCheckedOutExplorerListStatus ==
                    getCheckedOutExplorerListStatus) &&
            const DeepCollectionEquality().equals(
                other._checkedOutExplorerList, _checkedOutExplorerList) &&
            (identical(other.getCheckedOutExplorerListError, getCheckedOutExplorerListError) ||
                other.getCheckedOutExplorerListError ==
                    getCheckedOutExplorerListError) &&
            (identical(other.checkedOutPaginator, checkedOutPaginator) ||
                other.checkedOutPaginator == checkedOutPaginator) &&
            (identical(other.checkInLeadStatus, checkInLeadStatus) ||
                other.checkInLeadStatus == checkInLeadStatus) &&
            (identical(other.checkInLeadError, checkInLeadError) ||
                other.checkInLeadError == checkInLeadError) &&
            (identical(other.checkOutLeadStatus, checkOutLeadStatus) ||
                other.checkOutLeadStatus == checkOutLeadStatus) &&
            (identical(other.checkOutLeadError, checkOutLeadError) ||
                other.checkOutLeadError == checkOutLeadError) &&
            (identical(other.randomLeadsAssignmentStatus, randomLeadsAssignmentStatus) ||
                other.randomLeadsAssignmentStatus ==
                    randomLeadsAssignmentStatus) &&
            (identical(other.randomLeadsAssignmentError, randomLeadsAssignmentError) ||
                other.randomLeadsAssignmentError ==
                    randomLeadsAssignmentError) &&
            const DeepCollectionEquality()
                .equals(other.currentTab, currentTab) &&
            (identical(other.explorerSearch, explorerSearch) ||
                other.explorerSearch == explorerSearch) &&
            (identical(other.checkedOutSearch, checkedOutSearch) ||
                other.checkedOutSearch == checkedOutSearch) &&
            const DeepCollectionEquality()
                .equals(other._explorerFilter, _explorerFilter) &&
            const DeepCollectionEquality()
                .equals(other._checkedOutFilter, _checkedOutFilter) &&
            const DeepCollectionEquality()
                .equals(other._propertyTypeList, _propertyTypeList) &&
            (identical(other.getPropertyTypeListStatus, getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus) &&
            const DeepCollectionEquality()
                .equals(other._communityList, _communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus) &&
            const DeepCollectionEquality()
                .equals(other._placesList, _placesList) &&
            (identical(other.getPlacesListStatus, getPlacesListStatus) || other.getPlacesListStatus == getPlacesListStatus) &&
            const DeepCollectionEquality().equals(other._buildingList, _buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) || other.getBuildingListStatus == getBuildingListStatus) &&
            (identical(other.buildingsPaginator, buildingsPaginator) || other.buildingsPaginator == buildingsPaginator) &&
            (identical(other.selectModeEnabled, selectModeEnabled) || other.selectModeEnabled == selectModeEnabled) &&
            const DeepCollectionEquality().equals(other._selectedPropertyCards, _selectedPropertyCards) &&
            (identical(other.showOnlyAvailable, showOnlyAvailable) || other.showOnlyAvailable == showOnlyAvailable));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        getExplorerListStatus,
        const DeepCollectionEquality().hash(_explorerList),
        getExplorerListError,
        explorerPaginator,
        getCheckedOutExplorerListStatus,
        const DeepCollectionEquality().hash(_checkedOutExplorerList),
        getCheckedOutExplorerListError,
        checkedOutPaginator,
        checkInLeadStatus,
        checkInLeadError,
        checkOutLeadStatus,
        checkOutLeadError,
        randomLeadsAssignmentStatus,
        randomLeadsAssignmentError,
        const DeepCollectionEquality().hash(currentTab),
        explorerSearch,
        checkedOutSearch,
        const DeepCollectionEquality().hash(_explorerFilter),
        const DeepCollectionEquality().hash(_checkedOutFilter),
        const DeepCollectionEquality().hash(_propertyTypeList),
        getPropertyTypeListStatus,
        const DeepCollectionEquality().hash(_communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(_placesList),
        getPlacesListStatus,
        const DeepCollectionEquality().hash(_buildingList),
        getBuildingListStatus,
        buildingsPaginator,
        selectModeEnabled,
        const DeepCollectionEquality().hash(_selectedPropertyCards),
        showOnlyAvailable
      ]);

  @override
  String toString() {
    return 'LeadsListExplorerState(getExplorerListStatus: $getExplorerListStatus, explorerList: $explorerList, getExplorerListError: $getExplorerListError, explorerPaginator: $explorerPaginator, getCheckedOutExplorerListStatus: $getCheckedOutExplorerListStatus, checkedOutExplorerList: $checkedOutExplorerList, getCheckedOutExplorerListError: $getCheckedOutExplorerListError, checkedOutPaginator: $checkedOutPaginator, checkInLeadStatus: $checkInLeadStatus, checkInLeadError: $checkInLeadError, checkOutLeadStatus: $checkOutLeadStatus, checkOutLeadError: $checkOutLeadError, randomLeadsAssignmentStatus: $randomLeadsAssignmentStatus, randomLeadsAssignmentError: $randomLeadsAssignmentError, currentTab: $currentTab, explorerSearch: $explorerSearch, checkedOutSearch: $checkedOutSearch, explorerFilter: $explorerFilter, checkedOutFilter: $checkedOutFilter, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, placesList: $placesList, getPlacesListStatus: $getPlacesListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, buildingsPaginator: $buildingsPaginator, selectModeEnabled: $selectModeEnabled, selectedPropertyCards: $selectedPropertyCards, showOnlyAvailable: $showOnlyAvailable)';
  }
}

/// @nodoc
abstract mixin class _$LeadsListExplorerStateCopyWith<$Res>
    implements $LeadsListExplorerStateCopyWith<$Res> {
  factory _$LeadsListExplorerStateCopyWith(_LeadsListExplorerState value,
          $Res Function(_LeadsListExplorerState) _then) =
      __$LeadsListExplorerStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppStatus getExplorerListStatus,
      List<LeadExplorerItem> explorerList,
      String? getExplorerListError,
      Paginator? explorerPaginator,
      AppStatus getCheckedOutExplorerListStatus,
      List<PropertyCard> checkedOutExplorerList,
      String? getCheckedOutExplorerListError,
      Paginator? checkedOutPaginator,
      AppStatus checkInLeadStatus,
      String? checkInLeadError,
      AppStatus checkOutLeadStatus,
      String? checkOutLeadError,
      AppStatus randomLeadsAssignmentStatus,
      String? randomLeadsAssignmentError,
      dynamic currentTab,
      String? explorerSearch,
      String? checkedOutSearch,
      Map<String, dynamic>? explorerFilter,
      Map<String, dynamic>? checkedOutFilter,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<CommunityTeamModel> communityList,
      AppStatus getCommunityListStatus,
      List<CommunityName> placesList,
      AppStatus getPlacesListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      Paginator? buildingsPaginator,
      bool selectModeEnabled,
      List<LeadExplorerItem> selectedPropertyCards,
      bool showOnlyAvailable});

  @override
  $PaginatorCopyWith<$Res>? get explorerPaginator;
  @override
  $PaginatorCopyWith<$Res>? get checkedOutPaginator;
  @override
  $PaginatorCopyWith<$Res>? get buildingsPaginator;
}

/// @nodoc
class __$LeadsListExplorerStateCopyWithImpl<$Res>
    implements _$LeadsListExplorerStateCopyWith<$Res> {
  __$LeadsListExplorerStateCopyWithImpl(this._self, this._then);

  final _LeadsListExplorerState _self;
  final $Res Function(_LeadsListExplorerState) _then;

  /// Create a copy of LeadsListExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? getExplorerListStatus = null,
    Object? explorerList = null,
    Object? getExplorerListError = freezed,
    Object? explorerPaginator = freezed,
    Object? getCheckedOutExplorerListStatus = null,
    Object? checkedOutExplorerList = null,
    Object? getCheckedOutExplorerListError = freezed,
    Object? checkedOutPaginator = freezed,
    Object? checkInLeadStatus = null,
    Object? checkInLeadError = freezed,
    Object? checkOutLeadStatus = null,
    Object? checkOutLeadError = freezed,
    Object? randomLeadsAssignmentStatus = null,
    Object? randomLeadsAssignmentError = freezed,
    Object? currentTab = freezed,
    Object? explorerSearch = freezed,
    Object? checkedOutSearch = freezed,
    Object? explorerFilter = freezed,
    Object? checkedOutFilter = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? placesList = null,
    Object? getPlacesListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? buildingsPaginator = freezed,
    Object? selectModeEnabled = null,
    Object? selectedPropertyCards = null,
    Object? showOnlyAvailable = null,
  }) {
    return _then(_LeadsListExplorerState(
      getExplorerListStatus: null == getExplorerListStatus
          ? _self.getExplorerListStatus
          : getExplorerListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      explorerList: null == explorerList
          ? _self._explorerList
          : explorerList // ignore: cast_nullable_to_non_nullable
              as List<LeadExplorerItem>,
      getExplorerListError: freezed == getExplorerListError
          ? _self.getExplorerListError
          : getExplorerListError // ignore: cast_nullable_to_non_nullable
              as String?,
      explorerPaginator: freezed == explorerPaginator
          ? _self.explorerPaginator
          : explorerPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      getCheckedOutExplorerListStatus: null == getCheckedOutExplorerListStatus
          ? _self.getCheckedOutExplorerListStatus
          : getCheckedOutExplorerListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      checkedOutExplorerList: null == checkedOutExplorerList
          ? _self._checkedOutExplorerList
          : checkedOutExplorerList // ignore: cast_nullable_to_non_nullable
              as List<PropertyCard>,
      getCheckedOutExplorerListError: freezed == getCheckedOutExplorerListError
          ? _self.getCheckedOutExplorerListError
          : getCheckedOutExplorerListError // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedOutPaginator: freezed == checkedOutPaginator
          ? _self.checkedOutPaginator
          : checkedOutPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      checkInLeadStatus: null == checkInLeadStatus
          ? _self.checkInLeadStatus
          : checkInLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      checkInLeadError: freezed == checkInLeadError
          ? _self.checkInLeadError
          : checkInLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutLeadStatus: null == checkOutLeadStatus
          ? _self.checkOutLeadStatus
          : checkOutLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      checkOutLeadError: freezed == checkOutLeadError
          ? _self.checkOutLeadError
          : checkOutLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      randomLeadsAssignmentStatus: null == randomLeadsAssignmentStatus
          ? _self.randomLeadsAssignmentStatus
          : randomLeadsAssignmentStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      randomLeadsAssignmentError: freezed == randomLeadsAssignmentError
          ? _self.randomLeadsAssignmentError
          : randomLeadsAssignmentError // ignore: cast_nullable_to_non_nullable
              as String?,
      currentTab: freezed == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as dynamic,
      explorerSearch: freezed == explorerSearch
          ? _self.explorerSearch
          : explorerSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedOutSearch: freezed == checkedOutSearch
          ? _self.checkedOutSearch
          : checkedOutSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      explorerFilter: freezed == explorerFilter
          ? _self._explorerFilter
          : explorerFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      checkedOutFilter: freezed == checkedOutFilter
          ? _self._checkedOutFilter
          : checkedOutFilter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
      selectModeEnabled: null == selectModeEnabled
          ? _self.selectModeEnabled
          : selectModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPropertyCards: null == selectedPropertyCards
          ? _self._selectedPropertyCards
          : selectedPropertyCards // ignore: cast_nullable_to_non_nullable
              as List<LeadExplorerItem>,
      showOnlyAvailable: null == showOnlyAvailable
          ? _self.showOnlyAvailable
          : showOnlyAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of LeadsListExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get explorerPaginator {
    if (_self.explorerPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.explorerPaginator!, (value) {
      return _then(_self.copyWith(explorerPaginator: value));
    });
  }

  /// Create a copy of LeadsListExplorerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get checkedOutPaginator {
    if (_self.checkedOutPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.checkedOutPaginator!, (value) {
      return _then(_self.copyWith(checkedOutPaginator: value));
    });
  }

  /// Create a copy of LeadsListExplorerState
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
