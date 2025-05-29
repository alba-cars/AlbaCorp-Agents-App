// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_pocket_listing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddPocketListingState {
  AppStatus get addPocketListingStatus;
  String? get addPocketListingError;
  List<PropertyType> get propertyTypeList;
  AppStatus get getPropertyTypeListStatus;
  List<Community> get communityList;
  AppStatus get getCommunityListStatus;
  List<Building> get buildingList;
  AppStatus get getBuildingListStatus;
  List<Lead> get leadList;
  AppStatus get getLeadListStatus;
  int get currentTab;
  Map<String, dynamic> get rawValues;
  Map<String, dynamic> get values;

  /// Create a copy of AddPocketListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddPocketListingStateCopyWith<AddPocketListingState> get copyWith =>
      _$AddPocketListingStateCopyWithImpl<AddPocketListingState>(
          this as AddPocketListingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddPocketListingState &&
            (identical(other.addPocketListingStatus, addPocketListingStatus) ||
                other.addPocketListingStatus == addPocketListingStatus) &&
            (identical(other.addPocketListingError, addPocketListingError) ||
                other.addPocketListingError == addPocketListingError) &&
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
            const DeepCollectionEquality().equals(other.leadList, leadList) &&
            (identical(other.getLeadListStatus, getLeadListStatus) ||
                other.getLeadListStatus == getLeadListStatus) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            const DeepCollectionEquality().equals(other.rawValues, rawValues) &&
            const DeepCollectionEquality().equals(other.values, values));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addPocketListingStatus,
      addPocketListingError,
      const DeepCollectionEquality().hash(propertyTypeList),
      getPropertyTypeListStatus,
      const DeepCollectionEquality().hash(communityList),
      getCommunityListStatus,
      const DeepCollectionEquality().hash(buildingList),
      getBuildingListStatus,
      const DeepCollectionEquality().hash(leadList),
      getLeadListStatus,
      currentTab,
      const DeepCollectionEquality().hash(rawValues),
      const DeepCollectionEquality().hash(values));

  @override
  String toString() {
    return 'AddPocketListingState(addPocketListingStatus: $addPocketListingStatus, addPocketListingError: $addPocketListingError, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, leadList: $leadList, getLeadListStatus: $getLeadListStatus, currentTab: $currentTab, rawValues: $rawValues, values: $values)';
  }
}

/// @nodoc
abstract mixin class $AddPocketListingStateCopyWith<$Res> {
  factory $AddPocketListingStateCopyWith(AddPocketListingState value,
          $Res Function(AddPocketListingState) _then) =
      _$AddPocketListingStateCopyWithImpl;
  @useResult
  $Res call(
      {AppStatus addPocketListingStatus,
      String? addPocketListingError,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      List<Lead> leadList,
      AppStatus getLeadListStatus,
      int currentTab,
      Map<String, dynamic> rawValues,
      Map<String, dynamic> values});
}

/// @nodoc
class _$AddPocketListingStateCopyWithImpl<$Res>
    implements $AddPocketListingStateCopyWith<$Res> {
  _$AddPocketListingStateCopyWithImpl(this._self, this._then);

  final AddPocketListingState _self;
  final $Res Function(AddPocketListingState) _then;

  /// Create a copy of AddPocketListingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addPocketListingStatus = null,
    Object? addPocketListingError = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? leadList = null,
    Object? getLeadListStatus = null,
    Object? currentTab = null,
    Object? rawValues = null,
    Object? values = null,
  }) {
    return _then(_self.copyWith(
      addPocketListingStatus: null == addPocketListingStatus
          ? _self.addPocketListingStatus
          : addPocketListingStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addPocketListingError: freezed == addPocketListingError
          ? _self.addPocketListingError
          : addPocketListingError // ignore: cast_nullable_to_non_nullable
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
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      rawValues: null == rawValues
          ? _self.rawValues
          : rawValues // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      values: null == values
          ? _self.values
          : values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _AddPocketListingState implements AddPocketListingState {
  const _AddPocketListingState(
      {this.addPocketListingStatus = AppStatus.init,
      this.addPocketListingError,
      final List<PropertyType> propertyTypeList = const [],
      this.getPropertyTypeListStatus = AppStatus.init,
      final List<Community> communityList = const [],
      this.getCommunityListStatus = AppStatus.init,
      final List<Building> buildingList = const [],
      this.getBuildingListStatus = AppStatus.init,
      final List<Lead> leadList = const [],
      this.getLeadListStatus = AppStatus.init,
      this.currentTab = 0,
      final Map<String, dynamic> rawValues = const {},
      final Map<String, dynamic> values = const {}})
      : _propertyTypeList = propertyTypeList,
        _communityList = communityList,
        _buildingList = buildingList,
        _leadList = leadList,
        _rawValues = rawValues,
        _values = values;

  @override
  @JsonKey()
  final AppStatus addPocketListingStatus;
  @override
  final String? addPocketListingError;
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
  @override
  @JsonKey()
  final int currentTab;
  final Map<String, dynamic> _rawValues;
  @override
  @JsonKey()
  Map<String, dynamic> get rawValues {
    if (_rawValues is EqualUnmodifiableMapView) return _rawValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rawValues);
  }

  final Map<String, dynamic> _values;
  @override
  @JsonKey()
  Map<String, dynamic> get values {
    if (_values is EqualUnmodifiableMapView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_values);
  }

  /// Create a copy of AddPocketListingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddPocketListingStateCopyWith<_AddPocketListingState> get copyWith =>
      __$AddPocketListingStateCopyWithImpl<_AddPocketListingState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddPocketListingState &&
            (identical(other.addPocketListingStatus, addPocketListingStatus) ||
                other.addPocketListingStatus == addPocketListingStatus) &&
            (identical(other.addPocketListingError, addPocketListingError) ||
                other.addPocketListingError == addPocketListingError) &&
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
            const DeepCollectionEquality().equals(other._leadList, _leadList) &&
            (identical(other.getLeadListStatus, getLeadListStatus) ||
                other.getLeadListStatus == getLeadListStatus) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            const DeepCollectionEquality()
                .equals(other._rawValues, _rawValues) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addPocketListingStatus,
      addPocketListingError,
      const DeepCollectionEquality().hash(_propertyTypeList),
      getPropertyTypeListStatus,
      const DeepCollectionEquality().hash(_communityList),
      getCommunityListStatus,
      const DeepCollectionEquality().hash(_buildingList),
      getBuildingListStatus,
      const DeepCollectionEquality().hash(_leadList),
      getLeadListStatus,
      currentTab,
      const DeepCollectionEquality().hash(_rawValues),
      const DeepCollectionEquality().hash(_values));

  @override
  String toString() {
    return 'AddPocketListingState(addPocketListingStatus: $addPocketListingStatus, addPocketListingError: $addPocketListingError, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus, buildingList: $buildingList, getBuildingListStatus: $getBuildingListStatus, leadList: $leadList, getLeadListStatus: $getLeadListStatus, currentTab: $currentTab, rawValues: $rawValues, values: $values)';
  }
}

/// @nodoc
abstract mixin class _$AddPocketListingStateCopyWith<$Res>
    implements $AddPocketListingStateCopyWith<$Res> {
  factory _$AddPocketListingStateCopyWith(_AddPocketListingState value,
          $Res Function(_AddPocketListingState) _then) =
      __$AddPocketListingStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppStatus addPocketListingStatus,
      String? addPocketListingError,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus,
      List<Building> buildingList,
      AppStatus getBuildingListStatus,
      List<Lead> leadList,
      AppStatus getLeadListStatus,
      int currentTab,
      Map<String, dynamic> rawValues,
      Map<String, dynamic> values});
}

/// @nodoc
class __$AddPocketListingStateCopyWithImpl<$Res>
    implements _$AddPocketListingStateCopyWith<$Res> {
  __$AddPocketListingStateCopyWithImpl(this._self, this._then);

  final _AddPocketListingState _self;
  final $Res Function(_AddPocketListingState) _then;

  /// Create a copy of AddPocketListingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addPocketListingStatus = null,
    Object? addPocketListingError = freezed,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
    Object? buildingList = null,
    Object? getBuildingListStatus = null,
    Object? leadList = null,
    Object? getLeadListStatus = null,
    Object? currentTab = null,
    Object? rawValues = null,
    Object? values = null,
  }) {
    return _then(_AddPocketListingState(
      addPocketListingStatus: null == addPocketListingStatus
          ? _self.addPocketListingStatus
          : addPocketListingStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addPocketListingError: freezed == addPocketListingError
          ? _self.addPocketListingError
          : addPocketListingError // ignore: cast_nullable_to_non_nullable
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
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      rawValues: null == rawValues
          ? _self._rawValues
          : rawValues // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      values: null == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
