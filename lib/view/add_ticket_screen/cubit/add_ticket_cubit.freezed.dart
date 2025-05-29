// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_ticket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddTicketState {
  AppStatus get addTicketStatus;
  String? get addTicketError;
  List<Deal> get deals;
  AppStatus get getDealsStatus;
  List<Lead> get leads;
  AppStatus get getLeadsStatus;
  List<Property> get properties;
  AppStatus get getPropertiesStatus;
  List<Department> get departments;
  AppStatus get getDepartmentsStatus;
  List<PropertyType> get propertyTypeList;
  AppStatus get getPropertyTypeListStatus;
  List<Community> get communityList;
  AppStatus get getCommunityListStatus;

  /// Create a copy of AddTicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddTicketStateCopyWith<AddTicketState> get copyWith =>
      _$AddTicketStateCopyWithImpl<AddTicketState>(
          this as AddTicketState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddTicketState &&
            (identical(other.addTicketStatus, addTicketStatus) ||
                other.addTicketStatus == addTicketStatus) &&
            (identical(other.addTicketError, addTicketError) ||
                other.addTicketError == addTicketError) &&
            const DeepCollectionEquality().equals(other.deals, deals) &&
            (identical(other.getDealsStatus, getDealsStatus) ||
                other.getDealsStatus == getDealsStatus) &&
            const DeepCollectionEquality().equals(other.leads, leads) &&
            (identical(other.getLeadsStatus, getLeadsStatus) ||
                other.getLeadsStatus == getLeadsStatus) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties) &&
            (identical(other.getPropertiesStatus, getPropertiesStatus) ||
                other.getPropertiesStatus == getPropertiesStatus) &&
            const DeepCollectionEquality()
                .equals(other.departments, departments) &&
            (identical(other.getDepartmentsStatus, getDepartmentsStatus) ||
                other.getDepartmentsStatus == getDepartmentsStatus) &&
            const DeepCollectionEquality()
                .equals(other.propertyTypeList, propertyTypeList) &&
            (identical(other.getPropertyTypeListStatus,
                    getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus) &&
            const DeepCollectionEquality()
                .equals(other.communityList, communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addTicketStatus,
      addTicketError,
      const DeepCollectionEquality().hash(deals),
      getDealsStatus,
      const DeepCollectionEquality().hash(leads),
      getLeadsStatus,
      const DeepCollectionEquality().hash(properties),
      getPropertiesStatus,
      const DeepCollectionEquality().hash(departments),
      getDepartmentsStatus,
      const DeepCollectionEquality().hash(propertyTypeList),
      getPropertyTypeListStatus,
      const DeepCollectionEquality().hash(communityList),
      getCommunityListStatus);

  @override
  String toString() {
    return 'AddTicketState(addTicketStatus: $addTicketStatus, addTicketError: $addTicketError, deals: $deals, getDealsStatus: $getDealsStatus, leads: $leads, getLeadsStatus: $getLeadsStatus, properties: $properties, getPropertiesStatus: $getPropertiesStatus, departments: $departments, getDepartmentsStatus: $getDepartmentsStatus, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus)';
  }
}

/// @nodoc
abstract mixin class $AddTicketStateCopyWith<$Res> {
  factory $AddTicketStateCopyWith(
          AddTicketState value, $Res Function(AddTicketState) _then) =
      _$AddTicketStateCopyWithImpl;
  @useResult
  $Res call(
      {AppStatus addTicketStatus,
      String? addTicketError,
      List<Deal> deals,
      AppStatus getDealsStatus,
      List<Lead> leads,
      AppStatus getLeadsStatus,
      List<Property> properties,
      AppStatus getPropertiesStatus,
      List<Department> departments,
      AppStatus getDepartmentsStatus,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus});
}

/// @nodoc
class _$AddTicketStateCopyWithImpl<$Res>
    implements $AddTicketStateCopyWith<$Res> {
  _$AddTicketStateCopyWithImpl(this._self, this._then);

  final AddTicketState _self;
  final $Res Function(AddTicketState) _then;

  /// Create a copy of AddTicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addTicketStatus = null,
    Object? addTicketError = freezed,
    Object? deals = null,
    Object? getDealsStatus = null,
    Object? leads = null,
    Object? getLeadsStatus = null,
    Object? properties = null,
    Object? getPropertiesStatus = null,
    Object? departments = null,
    Object? getDepartmentsStatus = null,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
  }) {
    return _then(_self.copyWith(
      addTicketStatus: null == addTicketStatus
          ? _self.addTicketStatus
          : addTicketStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addTicketError: freezed == addTicketError
          ? _self.addTicketError
          : addTicketError // ignore: cast_nullable_to_non_nullable
              as String?,
      deals: null == deals
          ? _self.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _self.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leads: null == leads
          ? _self.leads
          : leads // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadsStatus: null == getLeadsStatus
          ? _self.getLeadsStatus
          : getLeadsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      properties: null == properties
          ? _self.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getPropertiesStatus: null == getPropertiesStatus
          ? _self.getPropertiesStatus
          : getPropertiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      departments: null == departments
          ? _self.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
      getDepartmentsStatus: null == getDepartmentsStatus
          ? _self.getDepartmentsStatus
          : getDepartmentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
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
    ));
  }
}

/// @nodoc

class _AddTicketState implements AddTicketState {
  const _AddTicketState(
      {this.addTicketStatus = AppStatus.init,
      this.addTicketError,
      final List<Deal> deals = const [],
      this.getDealsStatus = AppStatus.init,
      final List<Lead> leads = const [],
      this.getLeadsStatus = AppStatus.init,
      final List<Property> properties = const [],
      this.getPropertiesStatus = AppStatus.init,
      final List<Department> departments = const [],
      this.getDepartmentsStatus = AppStatus.init,
      final List<PropertyType> propertyTypeList = const [],
      this.getPropertyTypeListStatus = AppStatus.init,
      final List<Community> communityList = const [],
      this.getCommunityListStatus = AppStatus.init})
      : _deals = deals,
        _leads = leads,
        _properties = properties,
        _departments = departments,
        _propertyTypeList = propertyTypeList,
        _communityList = communityList;

  @override
  @JsonKey()
  final AppStatus addTicketStatus;
  @override
  final String? addTicketError;
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
  final List<Lead> _leads;
  @override
  @JsonKey()
  List<Lead> get leads {
    if (_leads is EqualUnmodifiableListView) return _leads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leads);
  }

  @override
  @JsonKey()
  final AppStatus getLeadsStatus;
  final List<Property> _properties;
  @override
  @JsonKey()
  List<Property> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  @JsonKey()
  final AppStatus getPropertiesStatus;
  final List<Department> _departments;
  @override
  @JsonKey()
  List<Department> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  @JsonKey()
  final AppStatus getDepartmentsStatus;
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

  /// Create a copy of AddTicketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddTicketStateCopyWith<_AddTicketState> get copyWith =>
      __$AddTicketStateCopyWithImpl<_AddTicketState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTicketState &&
            (identical(other.addTicketStatus, addTicketStatus) ||
                other.addTicketStatus == addTicketStatus) &&
            (identical(other.addTicketError, addTicketError) ||
                other.addTicketError == addTicketError) &&
            const DeepCollectionEquality().equals(other._deals, _deals) &&
            (identical(other.getDealsStatus, getDealsStatus) ||
                other.getDealsStatus == getDealsStatus) &&
            const DeepCollectionEquality().equals(other._leads, _leads) &&
            (identical(other.getLeadsStatus, getLeadsStatus) ||
                other.getLeadsStatus == getLeadsStatus) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.getPropertiesStatus, getPropertiesStatus) ||
                other.getPropertiesStatus == getPropertiesStatus) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments) &&
            (identical(other.getDepartmentsStatus, getDepartmentsStatus) ||
                other.getDepartmentsStatus == getDepartmentsStatus) &&
            const DeepCollectionEquality()
                .equals(other._propertyTypeList, _propertyTypeList) &&
            (identical(other.getPropertyTypeListStatus,
                    getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus) &&
            const DeepCollectionEquality()
                .equals(other._communityList, _communityList) &&
            (identical(other.getCommunityListStatus, getCommunityListStatus) ||
                other.getCommunityListStatus == getCommunityListStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addTicketStatus,
      addTicketError,
      const DeepCollectionEquality().hash(_deals),
      getDealsStatus,
      const DeepCollectionEquality().hash(_leads),
      getLeadsStatus,
      const DeepCollectionEquality().hash(_properties),
      getPropertiesStatus,
      const DeepCollectionEquality().hash(_departments),
      getDepartmentsStatus,
      const DeepCollectionEquality().hash(_propertyTypeList),
      getPropertyTypeListStatus,
      const DeepCollectionEquality().hash(_communityList),
      getCommunityListStatus);

  @override
  String toString() {
    return 'AddTicketState(addTicketStatus: $addTicketStatus, addTicketError: $addTicketError, deals: $deals, getDealsStatus: $getDealsStatus, leads: $leads, getLeadsStatus: $getLeadsStatus, properties: $properties, getPropertiesStatus: $getPropertiesStatus, departments: $departments, getDepartmentsStatus: $getDepartmentsStatus, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus, communityList: $communityList, getCommunityListStatus: $getCommunityListStatus)';
  }
}

/// @nodoc
abstract mixin class _$AddTicketStateCopyWith<$Res>
    implements $AddTicketStateCopyWith<$Res> {
  factory _$AddTicketStateCopyWith(
          _AddTicketState value, $Res Function(_AddTicketState) _then) =
      __$AddTicketStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AppStatus addTicketStatus,
      String? addTicketError,
      List<Deal> deals,
      AppStatus getDealsStatus,
      List<Lead> leads,
      AppStatus getLeadsStatus,
      List<Property> properties,
      AppStatus getPropertiesStatus,
      List<Department> departments,
      AppStatus getDepartmentsStatus,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus,
      List<Community> communityList,
      AppStatus getCommunityListStatus});
}

/// @nodoc
class __$AddTicketStateCopyWithImpl<$Res>
    implements _$AddTicketStateCopyWith<$Res> {
  __$AddTicketStateCopyWithImpl(this._self, this._then);

  final _AddTicketState _self;
  final $Res Function(_AddTicketState) _then;

  /// Create a copy of AddTicketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addTicketStatus = null,
    Object? addTicketError = freezed,
    Object? deals = null,
    Object? getDealsStatus = null,
    Object? leads = null,
    Object? getLeadsStatus = null,
    Object? properties = null,
    Object? getPropertiesStatus = null,
    Object? departments = null,
    Object? getDepartmentsStatus = null,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
    Object? communityList = null,
    Object? getCommunityListStatus = null,
  }) {
    return _then(_AddTicketState(
      addTicketStatus: null == addTicketStatus
          ? _self.addTicketStatus
          : addTicketStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addTicketError: freezed == addTicketError
          ? _self.addTicketError
          : addTicketError // ignore: cast_nullable_to_non_nullable
              as String?,
      deals: null == deals
          ? _self._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _self.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      leads: null == leads
          ? _self._leads
          : leads // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
      getLeadsStatus: null == getLeadsStatus
          ? _self.getLeadsStatus
          : getLeadsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      properties: null == properties
          ? _self._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      getPropertiesStatus: null == getPropertiesStatus
          ? _self.getPropertiesStatus
          : getPropertiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      departments: null == departments
          ? _self._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
      getDepartmentsStatus: null == getDepartmentsStatus
          ? _self.getDepartmentsStatus
          : getDepartmentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
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
    ));
  }
}

// dart format on
