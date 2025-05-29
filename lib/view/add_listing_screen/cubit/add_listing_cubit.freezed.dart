// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_listing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddListingState {
  AppStatus get addListingStatus;
  String? get addListingError;
  NewListingRequest? get dealListingResponse;
  DealResponse? get dealResponse;
  AppStatus get addListingDocumentsStatus;
  String? get addListingDocumentsError;
  List<PropertyType> get propertyTypeList;
  AppStatus get getPropertyTypeListStatus;
  List<Community> get communityList;
  AppStatus get getCommunityListStatus;
  List<Building> get buildingList;
  AppStatus get getBuildingListStatus;
  List<Amenity> get amenityList;
  AppStatus get getAmenityListStatus;
  List<Lead> get leadList;
  AppStatus get getLeadListStatus;
  int get currentTab;
  Map<String, dynamic>? get initialValues;

  /// Create a copy of AddListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddListingStateCopyWith<AddListingState> get copyWith =>
      _$AddListingStateCopyWithImpl<AddListingState>(
          this as AddListingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddListingState &&
            (identical(other.addListingStatus, addListingStatus) ||
                other.addListingStatus == addListingStatus) &&
            (identical(other.addListingError, addListingError) ||
                other.addListingError == addListingError) &&
            (identical(other.dealListingResponse, dealListingResponse) ||
                other.dealListingResponse == dealListingResponse) &&
            (identical(other.dealResponse, dealResponse) ||
                other.dealResponse == dealResponse) &&
            (identical(other.addListingDocumentsStatus,
                    addListingDocumentsStatus) ||
                other.addListingDocumentsStatus == addListingDocumentsStatus) &&
            (identical(
                    other.addListingDocumentsError, addListingDocumentsError) ||
                other.addListingDocumentsError == addListingDocumentsError) &&
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
                .equals(other.buildingList, buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) ||
                other.getBuildingListStatus == getBuildingListStatus) &&
            const DeepCollectionEquality()
                .equals(other.amenityList, amenityList) &&
            (identical(other.getAmenityListStatus, getAmenityListStatus) ||
                other.getAmenityListStatus == getAmenityListStatus) &&
            const DeepCollectionEquality().equals(other.leadList, leadList) &&
            (identical(other.getLeadListStatus, getLeadListStatus) ||
                other.getLeadListStatus == getLeadListStatus) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            const DeepCollectionEquality()
                .equals(other.initialValues, initialValues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addListingStatus,
      addListingError,
      dealListingResponse,
      dealResponse,
      addListingDocumentsStatus,
      addListingDocumentsError,
      const DeepCollectionEquality().hash(propertyTypeList),
      getPropertyTypeListStatus,
      const DeepCollectionEquality().hash(communityList),
      getCommunityListStatus,
      const DeepCollectionEquality().hash(buildingList),
      getBuildingListStatus,
      const DeepCollectionEquality().hash(amenityList),
      getAmenityListStatus,
      const DeepCollectionEquality().hash(leadList),
      getLeadListStatus,
      currentTab,
      const DeepCollectionEquality().hash(initialValues));

  @override
  String toString() {
    return 'AddListingState(addListingStatus: $addListingStatus, addListingError: $addListingError, dealListingResponse: $dealListingResponse, dealResponse: $dealResponse, addListingDocumentsStatus: $addListingDocumentsStatus, addListingDocumentsError: $addListingDocumentsError, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, amenityList: $amenityList, getAmenityListStatus: $getAmenityListStatus, leadList: $leadList, getLeadListStatus: $getLeadListStatus, currentTab: $currentTab, initialValues: $initialValues)';
  }
}

/// @nodoc
abstract mixin class $AddListingStateCopyWith<$Res> {
  factory $AddListingStateCopyWith(
          AddListingState value, $Res Function(AddListingState) _then) =
      _$AddListingStateCopyWithImpl;
  @useResult
  $Res call(
      {AppStatus addListingStatus,
      String? addListingError,
      NewListingRequest? dealListingResponse,
      DealResponse? dealResponse,
      AppStatus addListingDocumentsStatus,
      String? addListingDocumentsError,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      List<Amenity> amenityList,
      AppStatus getAmenityListStatus,
      List<Lead> leadList,
      AppStatus getLeadListStatus,
      int currentTab,
      Map<String, dynamic>? initialValues});

  $NewListingRequestCopyWith<$Res>? get dealListingResponse;
  $DealResponseCopyWith<$Res>? get dealResponse;
}

/// @nodoc
class _$AddListingStateCopyWithImpl<$Res>
    implements $AddListingStateCopyWith<$Res> {
  _$AddListingStateCopyWithImpl(this._self, this._then);

  final AddListingState _self;
  final $Res Function(AddListingState) _then;

  /// Create a copy of AddListingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addListingStatus = null,
    Object? addListingError = freezed,
    Object? dealListingResponse = freezed,
    Object? dealResponse = freezed,
    Object? addListingDocumentsStatus = null,
    Object? addListingDocumentsError = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? amenityList = null,
    Object? getAmenityListStatus = null,
    Object? leadList = null,
    Object? getLeadListStatus = null,
    Object? currentTab = null,
    Object? initialValues = freezed,
  }) {
    return _then(_self.copyWith(
      addListingStatus: null == addListingStatus
          ? _self.addListingStatus
          : addListingStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addListingError: freezed == addListingError
          ? _self.addListingError
          : addListingError // ignore: cast_nullable_to_non_nullable
              as String?,
      dealListingResponse: freezed == dealListingResponse
          ? _self.dealListingResponse
          : dealListingResponse // ignore: cast_nullable_to_non_nullable
              as NewListingRequest?,
      dealResponse: freezed == dealResponse
          ? _self.dealResponse
          : dealResponse // ignore: cast_nullable_to_non_nullable
              as DealResponse?,
      addListingDocumentsStatus: null == addListingDocumentsStatus
          ? _self.addListingDocumentsStatus
          : addListingDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addListingDocumentsError: freezed == addListingDocumentsError
          ? _self.addListingDocumentsError
          : addListingDocumentsError // ignore: cast_nullable_to_non_nullable
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
      amenityList: null == amenityList
          ? _self.amenityList
          : amenityList // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      getAmenityListStatus: null == getAmenityListStatus
          ? _self.getAmenityListStatus
          : getAmenityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leadList: null == leadList
          ? _self.leadList
          : leadList // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadListStatus: null == getLeadListStatus
          ? _self.getLeadListStatus
          : getLeadListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      initialValues: freezed == initialValues
          ? _self.initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of AddListingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewListingRequestCopyWith<$Res>? get dealListingResponse {
    if (_self.dealListingResponse == null) {
      return null;
    }

    return $NewListingRequestCopyWith<$Res>(_self.dealListingResponse!,
        (value) {
      return _then(_self.copyWith(dealListingResponse: value));
    });
  }

  /// Create a copy of AddListingState
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
}

/// @nodoc

class _AddListingState implements AddListingState {
  const _AddListingState(
      {this.addListingStatus = AppStatus.init,
      this.addListingError,
      this.dealListingResponse,
      this.dealResponse,
      this.addListingDocumentsStatus = AppStatus.init,
      this.addListingDocumentsError,
      final List<PropertyType> propertyTypeList = const [],
      this.getPropertyTypeListStatus = AppStatus.init,
      final List<Community> communityList = const [],
      this.getCommunityListStatus = AppStatus.init,
      final List<Building> buildingList = const [],
      this.getBuildingListStatus = AppStatus.init,
      final List<Amenity> amenityList = const [],
      this.getAmenityListStatus = AppStatus.init,
      final List<Lead> leadList = const [],
      this.getLeadListStatus = AppStatus.init,
      this.currentTab = 0,
      final Map<String, dynamic>? initialValues})
      : _propertyTypeList = propertyTypeList,
        _communityList = communityList,
        _buildingList = buildingList,
        _amenityList = amenityList,
        _leadList = leadList,
        _initialValues = initialValues;

  @override
  @JsonKey()
  final AppStatus addListingStatus;
  @override
  final String? addListingError;
  @override
  final NewListingRequest? dealListingResponse;
  @override
  final DealResponse? dealResponse;
  @override
  @JsonKey()
  final AppStatus addListingDocumentsStatus;
  @override
  final String? addListingDocumentsError;
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
  @override
  @JsonKey()
  final int currentTab;
  final Map<String, dynamic>? _initialValues;
  @override
  Map<String, dynamic>? get initialValues {
    final value = _initialValues;
    if (value == null) return null;
    if (_initialValues is EqualUnmodifiableMapView) return _initialValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of AddListingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddListingStateCopyWith<_AddListingState> get copyWith =>
      __$AddListingStateCopyWithImpl<_AddListingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddListingState &&
            (identical(other.addListingStatus, addListingStatus) ||
                other.addListingStatus == addListingStatus) &&
            (identical(other.addListingError, addListingError) ||
                other.addListingError == addListingError) &&
            (identical(other.dealListingResponse, dealListingResponse) ||
                other.dealListingResponse == dealListingResponse) &&
            (identical(other.dealResponse, dealResponse) ||
                other.dealResponse == dealResponse) &&
            (identical(other.addListingDocumentsStatus,
                    addListingDocumentsStatus) ||
                other.addListingDocumentsStatus == addListingDocumentsStatus) &&
            (identical(
                    other.addListingDocumentsError, addListingDocumentsError) ||
                other.addListingDocumentsError == addListingDocumentsError) &&
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
                .equals(other._buildingList, _buildingList) &&
            (identical(other.getBuildingListStatus, getBuildingListStatus) ||
                other.getBuildingListStatus == getBuildingListStatus) &&
            const DeepCollectionEquality()
                .equals(other._amenityList, _amenityList) &&
            (identical(other.getAmenityListStatus, getAmenityListStatus) ||
                other.getAmenityListStatus == getAmenityListStatus) &&
            const DeepCollectionEquality().equals(other._leadList, _leadList) &&
            (identical(other.getLeadListStatus, getLeadListStatus) ||
                other.getLeadListStatus == getLeadListStatus) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            const DeepCollectionEquality()
                .equals(other._initialValues, _initialValues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addListingStatus,
      addListingError,
      dealListingResponse,
      dealResponse,
      addListingDocumentsStatus,
      addListingDocumentsError,
      const DeepCollectionEquality().hash(_propertyTypeList),
      getPropertyTypeListStatus,
      const DeepCollectionEquality().hash(_communityList),
      getCommunityListStatus,
      const DeepCollectionEquality().hash(_buildingList),
      getBuildingListStatus,
      const DeepCollectionEquality().hash(_amenityList),
      getAmenityListStatus,
      const DeepCollectionEquality().hash(_leadList),
      getLeadListStatus,
      currentTab,
      const DeepCollectionEquality().hash(_initialValues));

  @override
  String toString() {
    return 'AddListingState(addListingStatus: $addListingStatus, addListingError: $addListingError, dealListingResponse: $dealListingResponse, dealResponse: $dealResponse, addListingDocumentsStatus: $addListingDocumentsStatus, addListingDocumentsError: $addListingDocumentsError, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, amenityList: $amenityList, getAmenityListStatus: $getAmenityListStatus, leadList: $leadList, getLeadListStatus: $getLeadListStatus, currentTab: $currentTab, initialValues: $initialValues)';
  }
}

/// @nodoc
abstract mixin class _$AddListingStateCopyWith<$Res>
    implements $AddListingStateCopyWith<$Res> {
  factory _$AddListingStateCopyWith(
          _AddListingState value, $Res Function(_AddListingState) _then) =
      __$AddListingStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppStatus addListingStatus,
      String? addListingError,
      NewListingRequest? dealListingResponse,
      DealResponse? dealResponse,
      AppStatus addListingDocumentsStatus,
      String? addListingDocumentsError,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      List<Amenity> amenityList,
      AppStatus getAmenityListStatus,
      List<Lead> leadList,
      AppStatus getLeadListStatus,
      int currentTab,
      Map<String, dynamic>? initialValues});

  @override
  $NewListingRequestCopyWith<$Res>? get dealListingResponse;
  @override
  $DealResponseCopyWith<$Res>? get dealResponse;
}

/// @nodoc
class __$AddListingStateCopyWithImpl<$Res>
    implements _$AddListingStateCopyWith<$Res> {
  __$AddListingStateCopyWithImpl(this._self, this._then);

  final _AddListingState _self;
  final $Res Function(_AddListingState) _then;

  /// Create a copy of AddListingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addListingStatus = null,
    Object? addListingError = freezed,
    Object? dealListingResponse = freezed,
    Object? dealResponse = freezed,
    Object? addListingDocumentsStatus = null,
    Object? addListingDocumentsError = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? amenityList = null,
    Object? getAmenityListStatus = null,
    Object? leadList = null,
    Object? getLeadListStatus = null,
    Object? currentTab = null,
    Object? initialValues = freezed,
  }) {
    return _then(_AddListingState(
      addListingStatus: null == addListingStatus
          ? _self.addListingStatus
          : addListingStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addListingError: freezed == addListingError
          ? _self.addListingError
          : addListingError // ignore: cast_nullable_to_non_nullable
              as String?,
      dealListingResponse: freezed == dealListingResponse
          ? _self.dealListingResponse
          : dealListingResponse // ignore: cast_nullable_to_non_nullable
              as NewListingRequest?,
      dealResponse: freezed == dealResponse
          ? _self.dealResponse
          : dealResponse // ignore: cast_nullable_to_non_nullable
              as DealResponse?,
      addListingDocumentsStatus: null == addListingDocumentsStatus
          ? _self.addListingDocumentsStatus
          : addListingDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addListingDocumentsError: freezed == addListingDocumentsError
          ? _self.addListingDocumentsError
          : addListingDocumentsError // ignore: cast_nullable_to_non_nullable
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
      amenityList: null == amenityList
          ? _self._amenityList
          : amenityList // ignore: cast_nullable_to_non_nullable
              as List<Amenity>,
      getAmenityListStatus: null == getAmenityListStatus
          ? _self.getAmenityListStatus
          : getAmenityListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leadList: null == leadList
          ? _self._leadList
          : leadList // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadListStatus: null == getLeadListStatus
          ? _self.getLeadListStatus
          : getLeadListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      initialValues: freezed == initialValues
          ? _self._initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of AddListingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewListingRequestCopyWith<$Res>? get dealListingResponse {
    if (_self.dealListingResponse == null) {
      return null;
    }

    return $NewListingRequestCopyWith<$Res>(_self.dealListingResponse!,
        (value) {
      return _then(_self.copyWith(dealListingResponse: value));
    });
  }

  /// Create a copy of AddListingState
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
}

// dart format on
