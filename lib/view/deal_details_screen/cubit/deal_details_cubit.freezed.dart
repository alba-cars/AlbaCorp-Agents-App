// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealDetailsState {
  String get dealId;
  Deal? get deal;
  AppStatus get getDealStatus;
  String? get getDealError;
  List<DealDocument> get dealDocuments;
  AppStatus get getDealDocumentsStatus;
  List<DealDocument> get userDocuments;
  AppStatus get getUserDocumentsStatus;
  List<DealDocument> get sellerDocuments;
  AppStatus get getSellerDocumentsStatus;
  List<DealDocument> get buyerDocuments;
  AppStatus get getBuyerDocumentsStatus;
  List<DealDocument> get buyerExternalDocuments;
  List<DealDocument> get sellerExternalDocuments;
  List<Deal> get buyerDeals;
  AppStatus get buyerDealsStatus;
  List<Deal> get sellerDeals;
  AppStatus get sellerDealsStatus;
  List<Activity> get buyerActivities;
  AppStatus get buyerActivitiesStatus;
  List<Activity> get sellerActivities;
  AppStatus get sellerActivitiesStatus;
  List<Activity> get propertyActivities;
  AppStatus get propertyActivitiesStatus;
  List<PropertyType> get propertyTypeList;
  AppStatus get getPropertyTypeListStatus;

  /// Create a copy of DealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DealDetailsStateCopyWith<DealDetailsState> get copyWith =>
      _$DealDetailsStateCopyWithImpl<DealDetailsState>(
          this as DealDetailsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DealDetailsState &&
            (identical(other.dealId, dealId) || other.dealId == dealId) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.getDealStatus, getDealStatus) ||
                other.getDealStatus == getDealStatus) &&
            (identical(other.getDealError, getDealError) ||
                other.getDealError == getDealError) &&
            const DeepCollectionEquality()
                .equals(other.dealDocuments, dealDocuments) &&
            (identical(other.getDealDocumentsStatus, getDealDocumentsStatus) ||
                other.getDealDocumentsStatus == getDealDocumentsStatus) &&
            const DeepCollectionEquality()
                .equals(other.userDocuments, userDocuments) &&
            (identical(other.getUserDocumentsStatus, getUserDocumentsStatus) ||
                other.getUserDocumentsStatus == getUserDocumentsStatus) &&
            const DeepCollectionEquality()
                .equals(other.sellerDocuments, sellerDocuments) &&
            (identical(other.getSellerDocumentsStatus, getSellerDocumentsStatus) ||
                other.getSellerDocumentsStatus == getSellerDocumentsStatus) &&
            const DeepCollectionEquality()
                .equals(other.buyerDocuments, buyerDocuments) &&
            (identical(other.getBuyerDocumentsStatus, getBuyerDocumentsStatus) ||
                other.getBuyerDocumentsStatus == getBuyerDocumentsStatus) &&
            const DeepCollectionEquality()
                .equals(other.buyerExternalDocuments, buyerExternalDocuments) &&
            const DeepCollectionEquality().equals(
                other.sellerExternalDocuments, sellerExternalDocuments) &&
            const DeepCollectionEquality()
                .equals(other.buyerDeals, buyerDeals) &&
            (identical(other.buyerDealsStatus, buyerDealsStatus) ||
                other.buyerDealsStatus == buyerDealsStatus) &&
            const DeepCollectionEquality()
                .equals(other.sellerDeals, sellerDeals) &&
            (identical(other.sellerDealsStatus, sellerDealsStatus) ||
                other.sellerDealsStatus == sellerDealsStatus) &&
            const DeepCollectionEquality()
                .equals(other.buyerActivities, buyerActivities) &&
            (identical(other.buyerActivitiesStatus, buyerActivitiesStatus) ||
                other.buyerActivitiesStatus == buyerActivitiesStatus) &&
            const DeepCollectionEquality()
                .equals(other.sellerActivities, sellerActivities) &&
            (identical(other.sellerActivitiesStatus, sellerActivitiesStatus) ||
                other.sellerActivitiesStatus == sellerActivitiesStatus) &&
            const DeepCollectionEquality()
                .equals(other.propertyActivities, propertyActivities) &&
            (identical(
                    other.propertyActivitiesStatus, propertyActivitiesStatus) ||
                other.propertyActivitiesStatus == propertyActivitiesStatus) &&
            const DeepCollectionEquality()
                .equals(other.propertyTypeList, propertyTypeList) &&
            (identical(other.getPropertyTypeListStatus,
                    getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dealId,
        deal,
        getDealStatus,
        getDealError,
        const DeepCollectionEquality().hash(dealDocuments),
        getDealDocumentsStatus,
        const DeepCollectionEquality().hash(userDocuments),
        getUserDocumentsStatus,
        const DeepCollectionEquality().hash(sellerDocuments),
        getSellerDocumentsStatus,
        const DeepCollectionEquality().hash(buyerDocuments),
        getBuyerDocumentsStatus,
        const DeepCollectionEquality().hash(buyerExternalDocuments),
        const DeepCollectionEquality().hash(sellerExternalDocuments),
        const DeepCollectionEquality().hash(buyerDeals),
        buyerDealsStatus,
        const DeepCollectionEquality().hash(sellerDeals),
        sellerDealsStatus,
        const DeepCollectionEquality().hash(buyerActivities),
        buyerActivitiesStatus,
        const DeepCollectionEquality().hash(sellerActivities),
        sellerActivitiesStatus,
        const DeepCollectionEquality().hash(propertyActivities),
        propertyActivitiesStatus,
        const DeepCollectionEquality().hash(propertyTypeList),
        getPropertyTypeListStatus
      ]);

  @override
  String toString() {
    return 'DealDetailsState(dealId: $dealId, deal: $deal, getDealStatus: $getDealStatus, getDealError: $getDealError, dealDocuments: $dealDocuments, getDealDocumentsStatus: $getDealDocumentsStatus, userDocuments: $userDocuments, getUserDocumentsStatus: $getUserDocumentsStatus, sellerDocuments: $sellerDocuments, getSellerDocumentsStatus: $getSellerDocumentsStatus, buyerDocuments: $buyerDocuments, getBuyerDocumentsStatus: $getBuyerDocumentsStatus, buyerExternalDocuments: $buyerExternalDocuments, sellerExternalDocuments: $sellerExternalDocuments, buyerDeals: $buyerDeals, buyerDealsStatus: $buyerDealsStatus, sellerDeals: $sellerDeals, sellerDealsStatus: $sellerDealsStatus, buyerActivities: $buyerActivities, buyerActivitiesStatus: $buyerActivitiesStatus, sellerActivities: $sellerActivities, sellerActivitiesStatus: $sellerActivitiesStatus, propertyActivities: $propertyActivities, propertyActivitiesStatus: $propertyActivitiesStatus, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus)';
  }
}

/// @nodoc
abstract mixin class $DealDetailsStateCopyWith<$Res> {
  factory $DealDetailsStateCopyWith(
          DealDetailsState value, $Res Function(DealDetailsState) _then) =
      _$DealDetailsStateCopyWithImpl;
  @useResult
  $Res call(
      {String dealId,
      Deal? deal,
      AppStatus getDealStatus,
      String? getDealError,
      List<DealDocument> dealDocuments,
      AppStatus getDealDocumentsStatus,
      List<DealDocument> userDocuments,
      AppStatus getUserDocumentsStatus,
      List<DealDocument> sellerDocuments,
      AppStatus getSellerDocumentsStatus,
      List<DealDocument> buyerDocuments,
      AppStatus getBuyerDocumentsStatus,
      List<DealDocument> buyerExternalDocuments,
      List<DealDocument> sellerExternalDocuments,
      List<Deal> buyerDeals,
      AppStatus buyerDealsStatus,
      List<Deal> sellerDeals,
      AppStatus sellerDealsStatus,
      List<Activity> buyerActivities,
      AppStatus buyerActivitiesStatus,
      List<Activity> sellerActivities,
      AppStatus sellerActivitiesStatus,
      List<Activity> propertyActivities,
      AppStatus propertyActivitiesStatus,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus});

  $DealCopyWith<$Res>? get deal;
}

/// @nodoc
class _$DealDetailsStateCopyWithImpl<$Res>
    implements $DealDetailsStateCopyWith<$Res> {
  _$DealDetailsStateCopyWithImpl(this._self, this._then);

  final DealDetailsState _self;
  final $Res Function(DealDetailsState) _then;

  /// Create a copy of DealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dealId = null,
    Object? deal = freezed,
    Object? getDealStatus = null,
    Object? getDealError = freezed,
    Object? dealDocuments = null,
    Object? getDealDocumentsStatus = null,
    Object? userDocuments = null,
    Object? getUserDocumentsStatus = null,
    Object? sellerDocuments = null,
    Object? getSellerDocumentsStatus = null,
    Object? buyerDocuments = null,
    Object? getBuyerDocumentsStatus = null,
    Object? buyerExternalDocuments = null,
    Object? sellerExternalDocuments = null,
    Object? buyerDeals = null,
    Object? buyerDealsStatus = null,
    Object? sellerDeals = null,
    Object? sellerDealsStatus = null,
    Object? buyerActivities = null,
    Object? buyerActivitiesStatus = null,
    Object? sellerActivities = null,
    Object? sellerActivitiesStatus = null,
    Object? propertyActivities = null,
    Object? propertyActivitiesStatus = null,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
  }) {
    return _then(_self.copyWith(
      dealId: null == dealId
          ? _self.dealId
          : dealId // ignore: cast_nullable_to_non_nullable
              as String,
      deal: freezed == deal
          ? _self.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      getDealStatus: null == getDealStatus
          ? _self.getDealStatus
          : getDealStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealError: freezed == getDealError
          ? _self.getDealError
          : getDealError // ignore: cast_nullable_to_non_nullable
              as String?,
      dealDocuments: null == dealDocuments
          ? _self.dealDocuments
          : dealDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      getDealDocumentsStatus: null == getDealDocumentsStatus
          ? _self.getDealDocumentsStatus
          : getDealDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      userDocuments: null == userDocuments
          ? _self.userDocuments
          : userDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      getUserDocumentsStatus: null == getUserDocumentsStatus
          ? _self.getUserDocumentsStatus
          : getUserDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      sellerDocuments: null == sellerDocuments
          ? _self.sellerDocuments
          : sellerDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      getSellerDocumentsStatus: null == getSellerDocumentsStatus
          ? _self.getSellerDocumentsStatus
          : getSellerDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buyerDocuments: null == buyerDocuments
          ? _self.buyerDocuments
          : buyerDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      getBuyerDocumentsStatus: null == getBuyerDocumentsStatus
          ? _self.getBuyerDocumentsStatus
          : getBuyerDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buyerExternalDocuments: null == buyerExternalDocuments
          ? _self.buyerExternalDocuments
          : buyerExternalDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      sellerExternalDocuments: null == sellerExternalDocuments
          ? _self.sellerExternalDocuments
          : sellerExternalDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      buyerDeals: null == buyerDeals
          ? _self.buyerDeals
          : buyerDeals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      buyerDealsStatus: null == buyerDealsStatus
          ? _self.buyerDealsStatus
          : buyerDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      sellerDeals: null == sellerDeals
          ? _self.sellerDeals
          : sellerDeals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      sellerDealsStatus: null == sellerDealsStatus
          ? _self.sellerDealsStatus
          : sellerDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buyerActivities: null == buyerActivities
          ? _self.buyerActivities
          : buyerActivities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      buyerActivitiesStatus: null == buyerActivitiesStatus
          ? _self.buyerActivitiesStatus
          : buyerActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      sellerActivities: null == sellerActivities
          ? _self.sellerActivities
          : sellerActivities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      sellerActivitiesStatus: null == sellerActivitiesStatus
          ? _self.sellerActivitiesStatus
          : sellerActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyActivities: null == propertyActivities
          ? _self.propertyActivities
          : propertyActivities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      propertyActivitiesStatus: null == propertyActivitiesStatus
          ? _self.propertyActivitiesStatus
          : propertyActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyTypeList: null == propertyTypeList
          ? _self.propertyTypeList
          : propertyTypeList // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>,
      getPropertyTypeListStatus: null == getPropertyTypeListStatus
          ? _self.getPropertyTypeListStatus
          : getPropertyTypeListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of DealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get deal {
    if (_self.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_self.deal!, (value) {
      return _then(_self.copyWith(deal: value));
    });
  }
}

/// @nodoc

class _DealDetailsState implements DealDetailsState {
  const _DealDetailsState(
      {required this.dealId,
      this.deal,
      this.getDealStatus = AppStatus.init,
      this.getDealError,
      final List<DealDocument> dealDocuments = const [],
      this.getDealDocumentsStatus = AppStatus.init,
      final List<DealDocument> userDocuments = const [],
      this.getUserDocumentsStatus = AppStatus.init,
      final List<DealDocument> sellerDocuments = const [],
      this.getSellerDocumentsStatus = AppStatus.init,
      final List<DealDocument> buyerDocuments = const [],
      this.getBuyerDocumentsStatus = AppStatus.init,
      final List<DealDocument> buyerExternalDocuments = const [],
      final List<DealDocument> sellerExternalDocuments = const [],
      final List<Deal> buyerDeals = const [],
      this.buyerDealsStatus = AppStatus.init,
      final List<Deal> sellerDeals = const [],
      this.sellerDealsStatus = AppStatus.init,
      final List<Activity> buyerActivities = const [],
      this.buyerActivitiesStatus = AppStatus.init,
      final List<Activity> sellerActivities = const [],
      this.sellerActivitiesStatus = AppStatus.init,
      final List<Activity> propertyActivities = const [],
      this.propertyActivitiesStatus = AppStatus.init,
      final List<PropertyType> propertyTypeList = const [],
      this.getPropertyTypeListStatus = AppStatus.init})
      : _dealDocuments = dealDocuments,
        _userDocuments = userDocuments,
        _sellerDocuments = sellerDocuments,
        _buyerDocuments = buyerDocuments,
        _buyerExternalDocuments = buyerExternalDocuments,
        _sellerExternalDocuments = sellerExternalDocuments,
        _buyerDeals = buyerDeals,
        _sellerDeals = sellerDeals,
        _buyerActivities = buyerActivities,
        _sellerActivities = sellerActivities,
        _propertyActivities = propertyActivities,
        _propertyTypeList = propertyTypeList;

  @override
  final String dealId;
  @override
  final Deal? deal;
  @override
  @JsonKey()
  final AppStatus getDealStatus;
  @override
  final String? getDealError;
  final List<DealDocument> _dealDocuments;
  @override
  @JsonKey()
  List<DealDocument> get dealDocuments {
    if (_dealDocuments is EqualUnmodifiableListView) return _dealDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dealDocuments);
  }

  @override
  @JsonKey()
  final AppStatus getDealDocumentsStatus;
  final List<DealDocument> _userDocuments;
  @override
  @JsonKey()
  List<DealDocument> get userDocuments {
    if (_userDocuments is EqualUnmodifiableListView) return _userDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userDocuments);
  }

  @override
  @JsonKey()
  final AppStatus getUserDocumentsStatus;
  final List<DealDocument> _sellerDocuments;
  @override
  @JsonKey()
  List<DealDocument> get sellerDocuments {
    if (_sellerDocuments is EqualUnmodifiableListView) return _sellerDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sellerDocuments);
  }

  @override
  @JsonKey()
  final AppStatus getSellerDocumentsStatus;
  final List<DealDocument> _buyerDocuments;
  @override
  @JsonKey()
  List<DealDocument> get buyerDocuments {
    if (_buyerDocuments is EqualUnmodifiableListView) return _buyerDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buyerDocuments);
  }

  @override
  @JsonKey()
  final AppStatus getBuyerDocumentsStatus;
  final List<DealDocument> _buyerExternalDocuments;
  @override
  @JsonKey()
  List<DealDocument> get buyerExternalDocuments {
    if (_buyerExternalDocuments is EqualUnmodifiableListView)
      return _buyerExternalDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buyerExternalDocuments);
  }

  final List<DealDocument> _sellerExternalDocuments;
  @override
  @JsonKey()
  List<DealDocument> get sellerExternalDocuments {
    if (_sellerExternalDocuments is EqualUnmodifiableListView)
      return _sellerExternalDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sellerExternalDocuments);
  }

  final List<Deal> _buyerDeals;
  @override
  @JsonKey()
  List<Deal> get buyerDeals {
    if (_buyerDeals is EqualUnmodifiableListView) return _buyerDeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buyerDeals);
  }

  @override
  @JsonKey()
  final AppStatus buyerDealsStatus;
  final List<Deal> _sellerDeals;
  @override
  @JsonKey()
  List<Deal> get sellerDeals {
    if (_sellerDeals is EqualUnmodifiableListView) return _sellerDeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sellerDeals);
  }

  @override
  @JsonKey()
  final AppStatus sellerDealsStatus;
  final List<Activity> _buyerActivities;
  @override
  @JsonKey()
  List<Activity> get buyerActivities {
    if (_buyerActivities is EqualUnmodifiableListView) return _buyerActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buyerActivities);
  }

  @override
  @JsonKey()
  final AppStatus buyerActivitiesStatus;
  final List<Activity> _sellerActivities;
  @override
  @JsonKey()
  List<Activity> get sellerActivities {
    if (_sellerActivities is EqualUnmodifiableListView)
      return _sellerActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sellerActivities);
  }

  @override
  @JsonKey()
  final AppStatus sellerActivitiesStatus;
  final List<Activity> _propertyActivities;
  @override
  @JsonKey()
  List<Activity> get propertyActivities {
    if (_propertyActivities is EqualUnmodifiableListView)
      return _propertyActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_propertyActivities);
  }

  @override
  @JsonKey()
  final AppStatus propertyActivitiesStatus;
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

  /// Create a copy of DealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DealDetailsStateCopyWith<_DealDetailsState> get copyWith =>
      __$DealDetailsStateCopyWithImpl<_DealDetailsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealDetailsState &&
            (identical(other.dealId, dealId) || other.dealId == dealId) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.getDealStatus, getDealStatus) ||
                other.getDealStatus == getDealStatus) &&
            (identical(other.getDealError, getDealError) ||
                other.getDealError == getDealError) &&
            const DeepCollectionEquality()
                .equals(other._dealDocuments, _dealDocuments) &&
            (identical(other.getDealDocumentsStatus, getDealDocumentsStatus) ||
                other.getDealDocumentsStatus == getDealDocumentsStatus) &&
            const DeepCollectionEquality()
                .equals(other._userDocuments, _userDocuments) &&
            (identical(other.getUserDocumentsStatus, getUserDocumentsStatus) ||
                other.getUserDocumentsStatus == getUserDocumentsStatus) &&
            const DeepCollectionEquality()
                .equals(other._sellerDocuments, _sellerDocuments) &&
            (identical(other.getSellerDocumentsStatus, getSellerDocumentsStatus) ||
                other.getSellerDocumentsStatus == getSellerDocumentsStatus) &&
            const DeepCollectionEquality()
                .equals(other._buyerDocuments, _buyerDocuments) &&
            (identical(other.getBuyerDocumentsStatus, getBuyerDocumentsStatus) ||
                other.getBuyerDocumentsStatus == getBuyerDocumentsStatus) &&
            const DeepCollectionEquality().equals(
                other._buyerExternalDocuments, _buyerExternalDocuments) &&
            const DeepCollectionEquality().equals(
                other._sellerExternalDocuments, _sellerExternalDocuments) &&
            const DeepCollectionEquality()
                .equals(other._buyerDeals, _buyerDeals) &&
            (identical(other.buyerDealsStatus, buyerDealsStatus) ||
                other.buyerDealsStatus == buyerDealsStatus) &&
            const DeepCollectionEquality()
                .equals(other._sellerDeals, _sellerDeals) &&
            (identical(other.sellerDealsStatus, sellerDealsStatus) ||
                other.sellerDealsStatus == sellerDealsStatus) &&
            const DeepCollectionEquality()
                .equals(other._buyerActivities, _buyerActivities) &&
            (identical(other.buyerActivitiesStatus, buyerActivitiesStatus) ||
                other.buyerActivitiesStatus == buyerActivitiesStatus) &&
            const DeepCollectionEquality()
                .equals(other._sellerActivities, _sellerActivities) &&
            (identical(other.sellerActivitiesStatus, sellerActivitiesStatus) ||
                other.sellerActivitiesStatus == sellerActivitiesStatus) &&
            const DeepCollectionEquality()
                .equals(other._propertyActivities, _propertyActivities) &&
            (identical(
                    other.propertyActivitiesStatus, propertyActivitiesStatus) ||
                other.propertyActivitiesStatus == propertyActivitiesStatus) &&
            const DeepCollectionEquality()
                .equals(other._propertyTypeList, _propertyTypeList) &&
            (identical(
                    other.getPropertyTypeListStatus, getPropertyTypeListStatus) ||
                other.getPropertyTypeListStatus == getPropertyTypeListStatus));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dealId,
        deal,
        getDealStatus,
        getDealError,
        const DeepCollectionEquality().hash(_dealDocuments),
        getDealDocumentsStatus,
        const DeepCollectionEquality().hash(_userDocuments),
        getUserDocumentsStatus,
        const DeepCollectionEquality().hash(_sellerDocuments),
        getSellerDocumentsStatus,
        const DeepCollectionEquality().hash(_buyerDocuments),
        getBuyerDocumentsStatus,
        const DeepCollectionEquality().hash(_buyerExternalDocuments),
        const DeepCollectionEquality().hash(_sellerExternalDocuments),
        const DeepCollectionEquality().hash(_buyerDeals),
        buyerDealsStatus,
        const DeepCollectionEquality().hash(_sellerDeals),
        sellerDealsStatus,
        const DeepCollectionEquality().hash(_buyerActivities),
        buyerActivitiesStatus,
        const DeepCollectionEquality().hash(_sellerActivities),
        sellerActivitiesStatus,
        const DeepCollectionEquality().hash(_propertyActivities),
        propertyActivitiesStatus,
        const DeepCollectionEquality().hash(_propertyTypeList),
        getPropertyTypeListStatus
      ]);

  @override
  String toString() {
    return 'DealDetailsState(dealId: $dealId, deal: $deal, getDealStatus: $getDealStatus, getDealError: $getDealError, dealDocuments: $dealDocuments, getDealDocumentsStatus: $getDealDocumentsStatus, userDocuments: $userDocuments, getUserDocumentsStatus: $getUserDocumentsStatus, sellerDocuments: $sellerDocuments, getSellerDocumentsStatus: $getSellerDocumentsStatus, buyerDocuments: $buyerDocuments, getBuyerDocumentsStatus: $getBuyerDocumentsStatus, buyerExternalDocuments: $buyerExternalDocuments, sellerExternalDocuments: $sellerExternalDocuments, buyerDeals: $buyerDeals, buyerDealsStatus: $buyerDealsStatus, sellerDeals: $sellerDeals, sellerDealsStatus: $sellerDealsStatus, buyerActivities: $buyerActivities, buyerActivitiesStatus: $buyerActivitiesStatus, sellerActivities: $sellerActivities, sellerActivitiesStatus: $sellerActivitiesStatus, propertyActivities: $propertyActivities, propertyActivitiesStatus: $propertyActivitiesStatus, propertyTypeList: $propertyTypeList, getPropertyTypeListStatus: $getPropertyTypeListStatus)';
  }
}

/// @nodoc
abstract mixin class _$DealDetailsStateCopyWith<$Res>
    implements $DealDetailsStateCopyWith<$Res> {
  factory _$DealDetailsStateCopyWith(
          _DealDetailsState value, $Res Function(_DealDetailsState) _then) =
      __$DealDetailsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String dealId,
      Deal? deal,
      AppStatus getDealStatus,
      String? getDealError,
      List<DealDocument> dealDocuments,
      AppStatus getDealDocumentsStatus,
      List<DealDocument> userDocuments,
      AppStatus getUserDocumentsStatus,
      List<DealDocument> sellerDocuments,
      AppStatus getSellerDocumentsStatus,
      List<DealDocument> buyerDocuments,
      AppStatus getBuyerDocumentsStatus,
      List<DealDocument> buyerExternalDocuments,
      List<DealDocument> sellerExternalDocuments,
      List<Deal> buyerDeals,
      AppStatus buyerDealsStatus,
      List<Deal> sellerDeals,
      AppStatus sellerDealsStatus,
      List<Activity> buyerActivities,
      AppStatus buyerActivitiesStatus,
      List<Activity> sellerActivities,
      AppStatus sellerActivitiesStatus,
      List<Activity> propertyActivities,
      AppStatus propertyActivitiesStatus,
      List<PropertyType> propertyTypeList,
      AppStatus getPropertyTypeListStatus});

  @override
  $DealCopyWith<$Res>? get deal;
}

/// @nodoc
class __$DealDetailsStateCopyWithImpl<$Res>
    implements _$DealDetailsStateCopyWith<$Res> {
  __$DealDetailsStateCopyWithImpl(this._self, this._then);

  final _DealDetailsState _self;
  final $Res Function(_DealDetailsState) _then;

  /// Create a copy of DealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dealId = null,
    Object? deal = freezed,
    Object? getDealStatus = null,
    Object? getDealError = freezed,
    Object? dealDocuments = null,
    Object? getDealDocumentsStatus = null,
    Object? userDocuments = null,
    Object? getUserDocumentsStatus = null,
    Object? sellerDocuments = null,
    Object? getSellerDocumentsStatus = null,
    Object? buyerDocuments = null,
    Object? getBuyerDocumentsStatus = null,
    Object? buyerExternalDocuments = null,
    Object? sellerExternalDocuments = null,
    Object? buyerDeals = null,
    Object? buyerDealsStatus = null,
    Object? sellerDeals = null,
    Object? sellerDealsStatus = null,
    Object? buyerActivities = null,
    Object? buyerActivitiesStatus = null,
    Object? sellerActivities = null,
    Object? sellerActivitiesStatus = null,
    Object? propertyActivities = null,
    Object? propertyActivitiesStatus = null,
    Object? propertyTypeList = null,
    Object? getPropertyTypeListStatus = null,
  }) {
    return _then(_DealDetailsState(
      dealId: null == dealId
          ? _self.dealId
          : dealId // ignore: cast_nullable_to_non_nullable
              as String,
      deal: freezed == deal
          ? _self.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      getDealStatus: null == getDealStatus
          ? _self.getDealStatus
          : getDealStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealError: freezed == getDealError
          ? _self.getDealError
          : getDealError // ignore: cast_nullable_to_non_nullable
              as String?,
      dealDocuments: null == dealDocuments
          ? _self._dealDocuments
          : dealDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      getDealDocumentsStatus: null == getDealDocumentsStatus
          ? _self.getDealDocumentsStatus
          : getDealDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      userDocuments: null == userDocuments
          ? _self._userDocuments
          : userDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      getUserDocumentsStatus: null == getUserDocumentsStatus
          ? _self.getUserDocumentsStatus
          : getUserDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      sellerDocuments: null == sellerDocuments
          ? _self._sellerDocuments
          : sellerDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      getSellerDocumentsStatus: null == getSellerDocumentsStatus
          ? _self.getSellerDocumentsStatus
          : getSellerDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buyerDocuments: null == buyerDocuments
          ? _self._buyerDocuments
          : buyerDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      getBuyerDocumentsStatus: null == getBuyerDocumentsStatus
          ? _self.getBuyerDocumentsStatus
          : getBuyerDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buyerExternalDocuments: null == buyerExternalDocuments
          ? _self._buyerExternalDocuments
          : buyerExternalDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      sellerExternalDocuments: null == sellerExternalDocuments
          ? _self._sellerExternalDocuments
          : sellerExternalDocuments // ignore: cast_nullable_to_non_nullable
              as List<DealDocument>,
      buyerDeals: null == buyerDeals
          ? _self._buyerDeals
          : buyerDeals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      buyerDealsStatus: null == buyerDealsStatus
          ? _self.buyerDealsStatus
          : buyerDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      sellerDeals: null == sellerDeals
          ? _self._sellerDeals
          : sellerDeals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      sellerDealsStatus: null == sellerDealsStatus
          ? _self.sellerDealsStatus
          : sellerDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      buyerActivities: null == buyerActivities
          ? _self._buyerActivities
          : buyerActivities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      buyerActivitiesStatus: null == buyerActivitiesStatus
          ? _self.buyerActivitiesStatus
          : buyerActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      sellerActivities: null == sellerActivities
          ? _self._sellerActivities
          : sellerActivities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      sellerActivitiesStatus: null == sellerActivitiesStatus
          ? _self.sellerActivitiesStatus
          : sellerActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyActivities: null == propertyActivities
          ? _self._propertyActivities
          : propertyActivities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      propertyActivitiesStatus: null == propertyActivitiesStatus
          ? _self.propertyActivitiesStatus
          : propertyActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyTypeList: null == propertyTypeList
          ? _self._propertyTypeList
          : propertyTypeList // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>,
      getPropertyTypeListStatus: null == getPropertyTypeListStatus
          ? _self.getPropertyTypeListStatus
          : getPropertyTypeListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of DealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get deal {
    if (_self.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_self.deal!, (value) {
      return _then(_self.copyWith(deal: value));
    });
  }
}

// dart format on
