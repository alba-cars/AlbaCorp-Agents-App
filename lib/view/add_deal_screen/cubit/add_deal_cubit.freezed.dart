// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_deal_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddDealState {
  DealResponse? get dealResponse;
  AppStatus get addDealStatus;
  String? get addDealError;
  AppStatus get addDealDocumentsStatus;
  String? get addDealDocumentsError;
  List<PropertyType> get propertyTypeList;
  AppStatus get getPropertyTypeListStatus;
  List<Community> get communityList;
  AppStatus get getCommunityListStatus;
  List<Building> get buildingList;
  AppStatus get getBuildingListStatus;
  List<Lead> get leadList;
  AppStatus get getLeadListStatus;
  List<OffPlanModel> get offPlansList;
  AppStatus get getPffPlansListStatus;
  List<Agent> get agentList;
  AppStatus get getAgentsListStatus;
  List<Property> get agentPropertyList;
  AppStatus get getAgentPropertyListStatus;
  List<Agency> get agencyList;
  AppStatus get getAgencyListStatus;
  Lead? get propertyOwner;
  AppStatus get getPropertyOwnerStatus;
  int get currentTab;
  DealType? get selectedDealType;
  ClientSource? get sellerSource;
  ClientSource? get buyerSource;
  DealPurpose? get dealPurpose;
  PageType get pageType;
  Property? get selectedProperty;
  String? get selectedPropertyOwnerId;

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddDealStateCopyWith<AddDealState> get copyWith =>
      _$AddDealStateCopyWithImpl<AddDealState>(
          this as AddDealState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddDealState &&
            (identical(other.dealResponse, dealResponse) ||
                other.dealResponse == dealResponse) &&
            (identical(other.addDealStatus, addDealStatus) ||
                other.addDealStatus == addDealStatus) &&
            (identical(other.addDealError, addDealError) ||
                other.addDealError == addDealError) &&
            (identical(other.addDealDocumentsStatus, addDealDocumentsStatus) ||
                other.addDealDocumentsStatus == addDealDocumentsStatus) &&
            (identical(other.addDealDocumentsError, addDealDocumentsError) ||
                other.addDealDocumentsError == addDealDocumentsError) &&
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
            const DeepCollectionEquality().equals(other.leadList, leadList) &&
            (identical(other.getLeadListStatus, getLeadListStatus) ||
                other.getLeadListStatus == getLeadListStatus) &&
            const DeepCollectionEquality()
                .equals(other.offPlansList, offPlansList) &&
            (identical(other.getPffPlansListStatus, getPffPlansListStatus) ||
                other.getPffPlansListStatus == getPffPlansListStatus) &&
            const DeepCollectionEquality().equals(other.agentList, agentList) &&
            (identical(other.getAgentsListStatus, getAgentsListStatus) ||
                other.getAgentsListStatus == getAgentsListStatus) &&
            const DeepCollectionEquality()
                .equals(other.agentPropertyList, agentPropertyList) &&
            (identical(other.getAgentPropertyListStatus, getAgentPropertyListStatus) ||
                other.getAgentPropertyListStatus ==
                    getAgentPropertyListStatus) &&
            const DeepCollectionEquality()
                .equals(other.agencyList, agencyList) &&
            (identical(other.getAgencyListStatus, getAgencyListStatus) ||
                other.getAgencyListStatus == getAgencyListStatus) &&
            (identical(other.propertyOwner, propertyOwner) ||
                other.propertyOwner == propertyOwner) &&
            (identical(other.getPropertyOwnerStatus, getPropertyOwnerStatus) ||
                other.getPropertyOwnerStatus == getPropertyOwnerStatus) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.selectedDealType, selectedDealType) ||
                other.selectedDealType == selectedDealType) &&
            (identical(other.sellerSource, sellerSource) ||
                other.sellerSource == sellerSource) &&
            (identical(other.buyerSource, buyerSource) ||
                other.buyerSource == buyerSource) &&
            (identical(other.dealPurpose, dealPurpose) ||
                other.dealPurpose == dealPurpose) &&
            (identical(other.pageType, pageType) ||
                other.pageType == pageType) &&
            (identical(other.selectedProperty, selectedProperty) ||
                other.selectedProperty == selectedProperty) &&
            (identical(
                    other.selectedPropertyOwnerId, selectedPropertyOwnerId) ||
                other.selectedPropertyOwnerId == selectedPropertyOwnerId));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dealResponse,
        addDealStatus,
        addDealError,
        addDealDocumentsStatus,
        addDealDocumentsError,
        const DeepCollectionEquality().hash(propertyTypeList),
        getPropertyTypeListStatus,
        const DeepCollectionEquality().hash(communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(buildingList),
        getBuildingListStatus,
        const DeepCollectionEquality().hash(leadList),
        getLeadListStatus,
        const DeepCollectionEquality().hash(offPlansList),
        getPffPlansListStatus,
        const DeepCollectionEquality().hash(agentList),
        getAgentsListStatus,
        const DeepCollectionEquality().hash(agentPropertyList),
        getAgentPropertyListStatus,
        const DeepCollectionEquality().hash(agencyList),
        getAgencyListStatus,
        propertyOwner,
        getPropertyOwnerStatus,
        currentTab,
        selectedDealType,
        sellerSource,
        buyerSource,
        dealPurpose,
        pageType,
        selectedProperty,
        selectedPropertyOwnerId
      ]);

  @override
  String toString() {
    return 'AddDealState(dealResponse: $dealResponse, addDealStatus: $addDealStatus, addDealError: $addDealError, addDealDocumentsStatus: $addDealDocumentsStatus, addDealDocumentsError: $addDealDocumentsError, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, leadList: $leadList, getLeadListStatus: $getLeadListStatus, offPlansList: $offPlansList, getPffPlansListStatus: $getPffPlansListStatus, agentList: $agentList, getAgentsListStatus: $getAgentsListStatus, agentPropertyList: $agentPropertyList, getAgentPropertyListStatus: $getAgentPropertyListStatus, agencyList: $agencyList, getAgencyListStatus: $getAgencyListStatus, propertyOwner: $propertyOwner, getPropertyOwnerStatus: $getPropertyOwnerStatus, currentTab: $currentTab, selectedDealType: $selectedDealType, sellerSource: $sellerSource, buyerSource: $buyerSource, dealPurpose: $dealPurpose, pageType: $pageType, selectedProperty: $selectedProperty, selectedPropertyOwnerId: $selectedPropertyOwnerId)';
  }
}

/// @nodoc
abstract mixin class $AddDealStateCopyWith<$Res> {
  factory $AddDealStateCopyWith(
          AddDealState value, $Res Function(AddDealState) _then) =
      _$AddDealStateCopyWithImpl;
  @useResult
  $Res call(
      {DealResponse? dealResponse,
      AppStatus addDealStatus,
      String? addDealError,
      AppStatus addDealDocumentsStatus,
      String? addDealDocumentsError,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      List<Lead> leadList,
      AppStatus getLeadListStatus,
      List<OffPlanModel> offPlansList,
      AppStatus getPffPlansListStatus,
      List<Agent> agentList,
      AppStatus getAgentsListStatus,
      List<Property> agentPropertyList,
      AppStatus getAgentPropertyListStatus,
      List<Agency> agencyList,
      AppStatus getAgencyListStatus,
      Lead? propertyOwner,
      AppStatus getPropertyOwnerStatus,
      int currentTab,
      DealType? selectedDealType,
      ClientSource? sellerSource,
      ClientSource? buyerSource,
      DealPurpose? dealPurpose,
      PageType pageType,
      Property? selectedProperty,
      String? selectedPropertyOwnerId});

  $DealResponseCopyWith<$Res>? get dealResponse;
  $LeadCopyWith<$Res>? get propertyOwner;
  $PropertyCopyWith<$Res>? get selectedProperty;
}

/// @nodoc
class _$AddDealStateCopyWithImpl<$Res> implements $AddDealStateCopyWith<$Res> {
  _$AddDealStateCopyWithImpl(this._self, this._then);

  final AddDealState _self;
  final $Res Function(AddDealState) _then;

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dealResponse = freezed,
    Object? addDealStatus = null,
    Object? addDealError = freezed,
    Object? addDealDocumentsStatus = null,
    Object? addDealDocumentsError = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? leadList = null,
    Object? getLeadListStatus = null,
    Object? offPlansList = null,
    Object? getPffPlansListStatus = null,
    Object? agentList = null,
    Object? getAgentsListStatus = null,
    Object? agentPropertyList = null,
    Object? getAgentPropertyListStatus = null,
    Object? agencyList = null,
    Object? getAgencyListStatus = null,
    Object? propertyOwner = freezed,
    Object? getPropertyOwnerStatus = null,
    Object? currentTab = null,
    Object? selectedDealType = freezed,
    Object? sellerSource = freezed,
    Object? buyerSource = freezed,
    Object? dealPurpose = freezed,
    Object? pageType = null,
    Object? selectedProperty = freezed,
    Object? selectedPropertyOwnerId = freezed,
  }) {
    return _then(_self.copyWith(
      dealResponse: freezed == dealResponse
          ? _self.dealResponse
          : dealResponse // ignore: cast_nullable_to_non_nullable
              as DealResponse?,
      addDealStatus: null == addDealStatus
          ? _self.addDealStatus
          : addDealStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addDealError: freezed == addDealError
          ? _self.addDealError
          : addDealError // ignore: cast_nullable_to_non_nullable
              as String?,
      addDealDocumentsStatus: null == addDealDocumentsStatus
          ? _self.addDealDocumentsStatus
          : addDealDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addDealDocumentsError: freezed == addDealDocumentsError
          ? _self.addDealDocumentsError
          : addDealDocumentsError // ignore: cast_nullable_to_non_nullable
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
      leadList: null == leadList
          ? _self.leadList
          : leadList // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadListStatus: null == getLeadListStatus
          ? _self.getLeadListStatus
          : getLeadListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      offPlansList: null == offPlansList
          ? _self.offPlansList
          : offPlansList // ignore: cast_nullable_to_non_nullable
              as List<OffPlanModel>,
      getPffPlansListStatus: null == getPffPlansListStatus
          ? _self.getPffPlansListStatus
          : getPffPlansListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      agentList: null == agentList
          ? _self.agentList
          : agentList // ignore: cast_nullable_to_non_nullable
              as List<Agent>,
      getAgentsListStatus: null == getAgentsListStatus
          ? _self.getAgentsListStatus
          : getAgentsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      agentPropertyList: null == agentPropertyList
          ? _self.agentPropertyList
          : agentPropertyList // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getAgentPropertyListStatus: null == getAgentPropertyListStatus
          ? _self.getAgentPropertyListStatus
          : getAgentPropertyListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      agencyList: null == agencyList
          ? _self.agencyList
          : agencyList // ignore: cast_nullable_to_non_nullable
              as List<Agency>,
      getAgencyListStatus: null == getAgencyListStatus
          ? _self.getAgencyListStatus
          : getAgencyListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyOwner: freezed == propertyOwner
          ? _self.propertyOwner
          : propertyOwner // ignore: cast_nullable_to_non_nullable
              as Lead?,
      getPropertyOwnerStatus: null == getPropertyOwnerStatus
          ? _self.getPropertyOwnerStatus
          : getPropertyOwnerStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDealType: freezed == selectedDealType
          ? _self.selectedDealType
          : selectedDealType // ignore: cast_nullable_to_non_nullable
              as DealType?,
      sellerSource: freezed == sellerSource
          ? _self.sellerSource
          : sellerSource // ignore: cast_nullable_to_non_nullable
              as ClientSource?,
      buyerSource: freezed == buyerSource
          ? _self.buyerSource
          : buyerSource // ignore: cast_nullable_to_non_nullable
              as ClientSource?,
      dealPurpose: freezed == dealPurpose
          ? _self.dealPurpose
          : dealPurpose // ignore: cast_nullable_to_non_nullable
              as DealPurpose?,
      pageType: null == pageType
          ? _self.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as PageType,
      selectedProperty: freezed == selectedProperty
          ? _self.selectedProperty
          : selectedProperty // ignore: cast_nullable_to_non_nullable
              as Property?,
      selectedPropertyOwnerId: freezed == selectedPropertyOwnerId
          ? _self.selectedPropertyOwnerId
          : selectedPropertyOwnerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealResponseCopyWith<$Res>? get dealResponse {
    if (_self.dealResponse == null) {
      return null;
    }

    return $DealResponseCopyWith<$Res>(_self.dealResponse!, (value) {
      return _then(_self.copyWith(dealResponse: value));
    });
  }

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get propertyOwner {
    if (_self.propertyOwner == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.propertyOwner!, (value) {
      return _then(_self.copyWith(propertyOwner: value));
    });
  }

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get selectedProperty {
    if (_self.selectedProperty == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_self.selectedProperty!, (value) {
      return _then(_self.copyWith(selectedProperty: value));
    });
  }
}

/// @nodoc

class _AddDealState implements AddDealState {
  const _AddDealState(
      {this.dealResponse,
      this.addDealStatus = AppStatus.init,
      this.addDealError,
      this.addDealDocumentsStatus = AppStatus.init,
      this.addDealDocumentsError,
      final List<PropertyType> propertyTypeList = const [],
      this.getPropertyTypeListStatus = AppStatus.init,
      final List<Community> communityList = const [],
      this.getCommunityListStatus = AppStatus.init,
      final List<Building> buildingList = const [],
      this.getBuildingListStatus = AppStatus.init,
      final List<Lead> leadList = const [],
      this.getLeadListStatus = AppStatus.init,
      final List<OffPlanModel> offPlansList = const [],
      this.getPffPlansListStatus = AppStatus.init,
      final List<Agent> agentList = const [],
      this.getAgentsListStatus = AppStatus.init,
      final List<Property> agentPropertyList = const [],
      this.getAgentPropertyListStatus = AppStatus.init,
      final List<Agency> agencyList = const [],
      this.getAgencyListStatus = AppStatus.init,
      this.propertyOwner,
      this.getPropertyOwnerStatus = AppStatus.init,
      this.currentTab = 0,
      this.selectedDealType,
      this.sellerSource,
      this.buyerSource,
      this.dealPurpose,
      this.pageType = PageType.selection,
      this.selectedProperty,
      this.selectedPropertyOwnerId})
      : _propertyTypeList = propertyTypeList,
        _communityList = communityList,
        _buildingList = buildingList,
        _leadList = leadList,
        _offPlansList = offPlansList,
        _agentList = agentList,
        _agentPropertyList = agentPropertyList,
        _agencyList = agencyList;

  @override
  final DealResponse? dealResponse;
  @override
  @JsonKey()
  final AppStatus addDealStatus;
  @override
  final String? addDealError;
  @override
  @JsonKey()
  final AppStatus addDealDocumentsStatus;
  @override
  final String? addDealDocumentsError;
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
  final List<Lead> _leadList;
  @override
  @JsonKey()
  List<Lead> get leadList {
    if (_leadList is EqualUnmodifiableListView) return _leadList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leadList);
  }

  @override
  @JsonKey()
  final AppStatus getLeadListStatus;
  final List<OffPlanModel> _offPlansList;
  @override
  @JsonKey()
  List<OffPlanModel> get offPlansList {
    if (_offPlansList is EqualUnmodifiableListView) return _offPlansList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offPlansList);
  }

  @override
  @JsonKey()
  final AppStatus getPffPlansListStatus;
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
  final AppStatus getAgentsListStatus;
  final List<Property> _agentPropertyList;
  @override
  @JsonKey()
  List<Property> get agentPropertyList {
    if (_agentPropertyList is EqualUnmodifiableListView)
      return _agentPropertyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agentPropertyList);
  }

  @override
  @JsonKey()
  final AppStatus getAgentPropertyListStatus;
  final List<Agency> _agencyList;
  @override
  @JsonKey()
  List<Agency> get agencyList {
    if (_agencyList is EqualUnmodifiableListView) return _agencyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agencyList);
  }

  @override
  @JsonKey()
  final AppStatus getAgencyListStatus;
  @override
  final Lead? propertyOwner;
  @override
  @JsonKey()
  final AppStatus getPropertyOwnerStatus;
  @override
  @JsonKey()
  final int currentTab;
  @override
  final DealType? selectedDealType;
  @override
  final ClientSource? sellerSource;
  @override
  final ClientSource? buyerSource;
  @override
  final DealPurpose? dealPurpose;
  @override
  @JsonKey()
  final PageType pageType;
  @override
  final Property? selectedProperty;
  @override
  final String? selectedPropertyOwnerId;

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddDealStateCopyWith<_AddDealState> get copyWith =>
      __$AddDealStateCopyWithImpl<_AddDealState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddDealState &&
            (identical(other.dealResponse, dealResponse) ||
                other.dealResponse == dealResponse) &&
            (identical(other.addDealStatus, addDealStatus) ||
                other.addDealStatus == addDealStatus) &&
            (identical(other.addDealError, addDealError) ||
                other.addDealError == addDealError) &&
            (identical(other.addDealDocumentsStatus, addDealDocumentsStatus) ||
                other.addDealDocumentsStatus == addDealDocumentsStatus) &&
            (identical(other.addDealDocumentsError, addDealDocumentsError) ||
                other.addDealDocumentsError == addDealDocumentsError) &&
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
            const DeepCollectionEquality().equals(other._leadList, _leadList) &&
            (identical(other.getLeadListStatus, getLeadListStatus) ||
                other.getLeadListStatus == getLeadListStatus) &&
            const DeepCollectionEquality()
                .equals(other._offPlansList, _offPlansList) &&
            (identical(other.getPffPlansListStatus, getPffPlansListStatus) ||
                other.getPffPlansListStatus == getPffPlansListStatus) &&
            const DeepCollectionEquality()
                .equals(other._agentList, _agentList) &&
            (identical(other.getAgentsListStatus, getAgentsListStatus) ||
                other.getAgentsListStatus == getAgentsListStatus) &&
            const DeepCollectionEquality()
                .equals(other._agentPropertyList, _agentPropertyList) &&
            (identical(other.getAgentPropertyListStatus, getAgentPropertyListStatus) ||
                other.getAgentPropertyListStatus ==
                    getAgentPropertyListStatus) &&
            const DeepCollectionEquality()
                .equals(other._agencyList, _agencyList) &&
            (identical(other.getAgencyListStatus, getAgencyListStatus) ||
                other.getAgencyListStatus == getAgencyListStatus) &&
            (identical(other.propertyOwner, propertyOwner) ||
                other.propertyOwner == propertyOwner) &&
            (identical(other.getPropertyOwnerStatus, getPropertyOwnerStatus) ||
                other.getPropertyOwnerStatus == getPropertyOwnerStatus) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.selectedDealType, selectedDealType) ||
                other.selectedDealType == selectedDealType) &&
            (identical(other.sellerSource, sellerSource) ||
                other.sellerSource == sellerSource) &&
            (identical(other.buyerSource, buyerSource) ||
                other.buyerSource == buyerSource) &&
            (identical(other.dealPurpose, dealPurpose) ||
                other.dealPurpose == dealPurpose) &&
            (identical(other.pageType, pageType) ||
                other.pageType == pageType) &&
            (identical(other.selectedProperty, selectedProperty) ||
                other.selectedProperty == selectedProperty) &&
            (identical(
                    other.selectedPropertyOwnerId, selectedPropertyOwnerId) ||
                other.selectedPropertyOwnerId == selectedPropertyOwnerId));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dealResponse,
        addDealStatus,
        addDealError,
        addDealDocumentsStatus,
        addDealDocumentsError,
        const DeepCollectionEquality().hash(_propertyTypeList),
        getPropertyTypeListStatus,
        const DeepCollectionEquality().hash(_communityList),
        getCommunityListStatus,
        const DeepCollectionEquality().hash(_buildingList),
        getBuildingListStatus,
        const DeepCollectionEquality().hash(_leadList),
        getLeadListStatus,
        const DeepCollectionEquality().hash(_offPlansList),
        getPffPlansListStatus,
        const DeepCollectionEquality().hash(_agentList),
        getAgentsListStatus,
        const DeepCollectionEquality().hash(_agentPropertyList),
        getAgentPropertyListStatus,
        const DeepCollectionEquality().hash(_agencyList),
        getAgencyListStatus,
        propertyOwner,
        getPropertyOwnerStatus,
        currentTab,
        selectedDealType,
        sellerSource,
        buyerSource,
        dealPurpose,
        pageType,
        selectedProperty,
        selectedPropertyOwnerId
      ]);

  @override
  String toString() {
    return 'AddDealState(dealResponse: $dealResponse, addDealStatus: $addDealStatus, addDealError: $addDealError, addDealDocumentsStatus: $addDealDocumentsStatus, addDealDocumentsError: $addDealDocumentsError, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, leadList: $leadList, getLeadListStatus: $getLeadListStatus, offPlansList: $offPlansList, getPffPlansListStatus: $getPffPlansListStatus, agentList: $agentList, getAgentsListStatus: $getAgentsListStatus, agentPropertyList: $agentPropertyList, getAgentPropertyListStatus: $getAgentPropertyListStatus, agencyList: $agencyList, getAgencyListStatus: $getAgencyListStatus, propertyOwner: $propertyOwner, getPropertyOwnerStatus: $getPropertyOwnerStatus, currentTab: $currentTab, selectedDealType: $selectedDealType, sellerSource: $sellerSource, buyerSource: $buyerSource, dealPurpose: $dealPurpose, pageType: $pageType, selectedProperty: $selectedProperty, selectedPropertyOwnerId: $selectedPropertyOwnerId)';
  }
}

/// @nodoc
abstract mixin class _$AddDealStateCopyWith<$Res>
    implements $AddDealStateCopyWith<$Res> {
  factory _$AddDealStateCopyWith(
          _AddDealState value, $Res Function(_AddDealState) _then) =
      __$AddDealStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DealResponse? dealResponse,
      AppStatus addDealStatus,
      String? addDealError,
      AppStatus addDealDocumentsStatus,
      String? addDealDocumentsError,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      List<Lead> leadList,
      AppStatus getLeadListStatus,
      List<OffPlanModel> offPlansList,
      AppStatus getPffPlansListStatus,
      List<Agent> agentList,
      AppStatus getAgentsListStatus,
      List<Property> agentPropertyList,
      AppStatus getAgentPropertyListStatus,
      List<Agency> agencyList,
      AppStatus getAgencyListStatus,
      Lead? propertyOwner,
      AppStatus getPropertyOwnerStatus,
      int currentTab,
      DealType? selectedDealType,
      ClientSource? sellerSource,
      ClientSource? buyerSource,
      DealPurpose? dealPurpose,
      PageType pageType,
      Property? selectedProperty,
      String? selectedPropertyOwnerId});

  @override
  $DealResponseCopyWith<$Res>? get dealResponse;
  @override
  $LeadCopyWith<$Res>? get propertyOwner;
  @override
  $PropertyCopyWith<$Res>? get selectedProperty;
}

/// @nodoc
class __$AddDealStateCopyWithImpl<$Res>
    implements _$AddDealStateCopyWith<$Res> {
  __$AddDealStateCopyWithImpl(this._self, this._then);

  final _AddDealState _self;
  final $Res Function(_AddDealState) _then;

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dealResponse = freezed,
    Object? addDealStatus = null,
    Object? addDealError = freezed,
    Object? addDealDocumentsStatus = null,
    Object? addDealDocumentsError = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? leadList = null,
    Object? getLeadListStatus = null,
    Object? offPlansList = null,
    Object? getPffPlansListStatus = null,
    Object? agentList = null,
    Object? getAgentsListStatus = null,
    Object? agentPropertyList = null,
    Object? getAgentPropertyListStatus = null,
    Object? agencyList = null,
    Object? getAgencyListStatus = null,
    Object? propertyOwner = freezed,
    Object? getPropertyOwnerStatus = null,
    Object? currentTab = null,
    Object? selectedDealType = freezed,
    Object? sellerSource = freezed,
    Object? buyerSource = freezed,
    Object? dealPurpose = freezed,
    Object? pageType = null,
    Object? selectedProperty = freezed,
    Object? selectedPropertyOwnerId = freezed,
  }) {
    return _then(_AddDealState(
      dealResponse: freezed == dealResponse
          ? _self.dealResponse
          : dealResponse // ignore: cast_nullable_to_non_nullable
              as DealResponse?,
      addDealStatus: null == addDealStatus
          ? _self.addDealStatus
          : addDealStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addDealError: freezed == addDealError
          ? _self.addDealError
          : addDealError // ignore: cast_nullable_to_non_nullable
              as String?,
      addDealDocumentsStatus: null == addDealDocumentsStatus
          ? _self.addDealDocumentsStatus
          : addDealDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addDealDocumentsError: freezed == addDealDocumentsError
          ? _self.addDealDocumentsError
          : addDealDocumentsError // ignore: cast_nullable_to_non_nullable
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
      leadList: null == leadList
          ? _self._leadList
          : leadList // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadListStatus: null == getLeadListStatus
          ? _self.getLeadListStatus
          : getLeadListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      offPlansList: null == offPlansList
          ? _self._offPlansList
          : offPlansList // ignore: cast_nullable_to_non_nullable
              as List<OffPlanModel>,
      getPffPlansListStatus: null == getPffPlansListStatus
          ? _self.getPffPlansListStatus
          : getPffPlansListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      agentList: null == agentList
          ? _self._agentList
          : agentList // ignore: cast_nullable_to_non_nullable
              as List<Agent>,
      getAgentsListStatus: null == getAgentsListStatus
          ? _self.getAgentsListStatus
          : getAgentsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      agentPropertyList: null == agentPropertyList
          ? _self._agentPropertyList
          : agentPropertyList // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getAgentPropertyListStatus: null == getAgentPropertyListStatus
          ? _self.getAgentPropertyListStatus
          : getAgentPropertyListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      agencyList: null == agencyList
          ? _self._agencyList
          : agencyList // ignore: cast_nullable_to_non_nullable
              as List<Agency>,
      getAgencyListStatus: null == getAgencyListStatus
          ? _self.getAgencyListStatus
          : getAgencyListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyOwner: freezed == propertyOwner
          ? _self.propertyOwner
          : propertyOwner // ignore: cast_nullable_to_non_nullable
              as Lead?,
      getPropertyOwnerStatus: null == getPropertyOwnerStatus
          ? _self.getPropertyOwnerStatus
          : getPropertyOwnerStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDealType: freezed == selectedDealType
          ? _self.selectedDealType
          : selectedDealType // ignore: cast_nullable_to_non_nullable
              as DealType?,
      sellerSource: freezed == sellerSource
          ? _self.sellerSource
          : sellerSource // ignore: cast_nullable_to_non_nullable
              as ClientSource?,
      buyerSource: freezed == buyerSource
          ? _self.buyerSource
          : buyerSource // ignore: cast_nullable_to_non_nullable
              as ClientSource?,
      dealPurpose: freezed == dealPurpose
          ? _self.dealPurpose
          : dealPurpose // ignore: cast_nullable_to_non_nullable
              as DealPurpose?,
      pageType: null == pageType
          ? _self.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as PageType,
      selectedProperty: freezed == selectedProperty
          ? _self.selectedProperty
          : selectedProperty // ignore: cast_nullable_to_non_nullable
              as Property?,
      selectedPropertyOwnerId: freezed == selectedPropertyOwnerId
          ? _self.selectedPropertyOwnerId
          : selectedPropertyOwnerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealResponseCopyWith<$Res>? get dealResponse {
    if (_self.dealResponse == null) {
      return null;
    }

    return $DealResponseCopyWith<$Res>(_self.dealResponse!, (value) {
      return _then(_self.copyWith(dealResponse: value));
    });
  }

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get propertyOwner {
    if (_self.propertyOwner == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.propertyOwner!, (value) {
      return _then(_self.copyWith(propertyOwner: value));
    });
  }

  /// Create a copy of AddDealState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get selectedProperty {
    if (_self.selectedProperty == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_self.selectedProperty!, (value) {
      return _then(_self.copyWith(selectedProperty: value));
    });
  }
}

// dart format on
