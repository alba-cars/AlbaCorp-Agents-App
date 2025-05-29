// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Deal implements DiagnosticableTreeMixin {
  @JsonKey(readValue: readId)
  String get id;
  @JsonKey(name: 'reference_number')
  String get referenceNumber;
  @JsonKey(name: 'creation_date')
  DateTime get creationDate;
  String get category;
  List<String> get roleType;
  double? get agreedSalePrice;
  double? get agreedCommission;
  Agent? get assignedAgent;
  String? get type;
  String get status;
  List<dynamic> get rejection;
  @JsonKey(name: 'user_id')
  String? get userId;
  @JsonKey(name: 'new_listing_request_id')
  String? get newListingRequestId;
  bool get active;
  @JsonKey(name: 'created_by')
  User? get createdBy;
  @JsonKey(name: 'user')
  Lead? get client;
  String? get purpose;
  String? get buyerClientType;
  String? get sellerclientType;
  String? get buyerInternalUserId;
  String? get buyerAssignedAgentId;
  double? get buyerAgreedCommission;
  String? get sellerInternalUserId;
  String? get sellerAssignedAgentId;
  double? get sellerAgreedCommission; //external seller
  String? get sellerExternalUserId;
  String? get sellerExternalAgentName;
  String? get sellerExternalAgentPhone;
  String? get sellerExternalClientName;
  String? get sellerExternalClientPhone;
  Agency? get sellerExternalUser;
  DealListingResponse? get external_listing_property; //
//external buyer
  String? get buyerExternalUserId;
  String? get buyerExternalAgentName;
  String? get buyerExternalAgentPhone;
  String? get buyerExternalClientName;
  String? get buyerExternalClientPhone;
  Agency? get buyerExternalUser; //
  @JsonKey(name: 'property_list_id')
  String? get propertyListId;
  Lead? get buyerInternalUser;
  Agent? get buyerAssignedAgent;
  Lead? get sellerInternalUser;
  Agent? get sellerAssignedAgent;
  @JsonKey(name: 'property_list')
  Property? get propertyList;
  @JsonKey(name: 'new_listing_request')
  NewListingRequest? get newListingRequest;
  @JsonKey(name: 'new_listing_offplan')
  DealListingResponse? get offPlanProperty;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DealCopyWith<Deal> get copyWith =>
      _$DealCopyWithImpl<Deal>(this as Deal, _$identity);

  /// Serializes this Deal to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Deal'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('referenceNumber', referenceNumber))
      ..add(DiagnosticsProperty('creationDate', creationDate))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('roleType', roleType))
      ..add(DiagnosticsProperty('agreedSalePrice', agreedSalePrice))
      ..add(DiagnosticsProperty('agreedCommission', agreedCommission))
      ..add(DiagnosticsProperty('assignedAgent', assignedAgent))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('rejection', rejection))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('newListingRequestId', newListingRequestId))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('client', client))
      ..add(DiagnosticsProperty('purpose', purpose))
      ..add(DiagnosticsProperty('buyerClientType', buyerClientType))
      ..add(DiagnosticsProperty('sellerclientType', sellerclientType))
      ..add(DiagnosticsProperty('buyerInternalUserId', buyerInternalUserId))
      ..add(DiagnosticsProperty('buyerAssignedAgentId', buyerAssignedAgentId))
      ..add(DiagnosticsProperty('buyerAgreedCommission', buyerAgreedCommission))
      ..add(DiagnosticsProperty('sellerInternalUserId', sellerInternalUserId))
      ..add(DiagnosticsProperty('sellerAssignedAgentId', sellerAssignedAgentId))
      ..add(
          DiagnosticsProperty('sellerAgreedCommission', sellerAgreedCommission))
      ..add(DiagnosticsProperty('sellerExternalUserId', sellerExternalUserId))
      ..add(DiagnosticsProperty(
          'sellerExternalAgentName', sellerExternalAgentName))
      ..add(DiagnosticsProperty(
          'sellerExternalAgentPhone', sellerExternalAgentPhone))
      ..add(DiagnosticsProperty(
          'sellerExternalClientName', sellerExternalClientName))
      ..add(DiagnosticsProperty(
          'sellerExternalClientPhone', sellerExternalClientPhone))
      ..add(DiagnosticsProperty('sellerExternalUser', sellerExternalUser))
      ..add(DiagnosticsProperty(
          'external_listing_property', external_listing_property))
      ..add(DiagnosticsProperty('buyerExternalUserId', buyerExternalUserId))
      ..add(
          DiagnosticsProperty('buyerExternalAgentName', buyerExternalAgentName))
      ..add(DiagnosticsProperty(
          'buyerExternalAgentPhone', buyerExternalAgentPhone))
      ..add(DiagnosticsProperty(
          'buyerExternalClientName', buyerExternalClientName))
      ..add(DiagnosticsProperty(
          'buyerExternalClientPhone', buyerExternalClientPhone))
      ..add(DiagnosticsProperty('buyerExternalUser', buyerExternalUser))
      ..add(DiagnosticsProperty('propertyListId', propertyListId))
      ..add(DiagnosticsProperty('buyerInternalUser', buyerInternalUser))
      ..add(DiagnosticsProperty('buyerAssignedAgent', buyerAssignedAgent))
      ..add(DiagnosticsProperty('sellerInternalUser', sellerInternalUser))
      ..add(DiagnosticsProperty('sellerAssignedAgent', sellerAssignedAgent))
      ..add(DiagnosticsProperty('propertyList', propertyList))
      ..add(DiagnosticsProperty('newListingRequest', newListingRequest))
      ..add(DiagnosticsProperty('offPlanProperty', offPlanProperty));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Deal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.roleType, roleType) &&
            (identical(other.agreedSalePrice, agreedSalePrice) ||
                other.agreedSalePrice == agreedSalePrice) &&
            (identical(other.agreedCommission, agreedCommission) ||
                other.agreedCommission == agreedCommission) &&
            (identical(other.assignedAgent, assignedAgent) ||
                other.assignedAgent == assignedAgent) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.rejection, rejection) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.newListingRequestId, newListingRequestId) ||
                other.newListingRequestId == newListingRequestId) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.buyerClientType, buyerClientType) ||
                other.buyerClientType == buyerClientType) &&
            (identical(other.sellerclientType, sellerclientType) ||
                other.sellerclientType == sellerclientType) &&
            (identical(other.buyerInternalUserId, buyerInternalUserId) ||
                other.buyerInternalUserId == buyerInternalUserId) &&
            (identical(other.buyerAssignedAgentId, buyerAssignedAgentId) ||
                other.buyerAssignedAgentId == buyerAssignedAgentId) &&
            (identical(other.buyerAgreedCommission, buyerAgreedCommission) ||
                other.buyerAgreedCommission == buyerAgreedCommission) &&
            (identical(other.sellerInternalUserId, sellerInternalUserId) ||
                other.sellerInternalUserId == sellerInternalUserId) &&
            (identical(other.sellerAssignedAgentId, sellerAssignedAgentId) ||
                other.sellerAssignedAgentId == sellerAssignedAgentId) &&
            (identical(other.sellerAgreedCommission, sellerAgreedCommission) ||
                other.sellerAgreedCommission == sellerAgreedCommission) &&
            (identical(other.sellerExternalUserId, sellerExternalUserId) ||
                other.sellerExternalUserId == sellerExternalUserId) &&
            (identical(other.sellerExternalAgentName, sellerExternalAgentName) ||
                other.sellerExternalAgentName == sellerExternalAgentName) &&
            (identical(other.sellerExternalAgentPhone, sellerExternalAgentPhone) ||
                other.sellerExternalAgentPhone == sellerExternalAgentPhone) &&
            (identical(other.sellerExternalClientName, sellerExternalClientName) ||
                other.sellerExternalClientName == sellerExternalClientName) &&
            (identical(other.sellerExternalClientPhone, sellerExternalClientPhone) ||
                other.sellerExternalClientPhone == sellerExternalClientPhone) &&
            (identical(other.sellerExternalUser, sellerExternalUser) ||
                other.sellerExternalUser == sellerExternalUser) &&
            (identical(other.external_listing_property, external_listing_property) ||
                other.external_listing_property == external_listing_property) &&
            (identical(other.buyerExternalUserId, buyerExternalUserId) ||
                other.buyerExternalUserId == buyerExternalUserId) &&
            (identical(other.buyerExternalAgentName, buyerExternalAgentName) ||
                other.buyerExternalAgentName == buyerExternalAgentName) &&
            (identical(other.buyerExternalAgentPhone, buyerExternalAgentPhone) ||
                other.buyerExternalAgentPhone == buyerExternalAgentPhone) &&
            (identical(other.buyerExternalClientName, buyerExternalClientName) ||
                other.buyerExternalClientName == buyerExternalClientName) &&
            (identical(other.buyerExternalClientPhone, buyerExternalClientPhone) ||
                other.buyerExternalClientPhone == buyerExternalClientPhone) &&
            (identical(other.buyerExternalUser, buyerExternalUser) ||
                other.buyerExternalUser == buyerExternalUser) &&
            (identical(other.propertyListId, propertyListId) ||
                other.propertyListId == propertyListId) &&
            (identical(other.buyerInternalUser, buyerInternalUser) ||
                other.buyerInternalUser == buyerInternalUser) &&
            (identical(other.buyerAssignedAgent, buyerAssignedAgent) ||
                other.buyerAssignedAgent == buyerAssignedAgent) &&
            (identical(other.sellerInternalUser, sellerInternalUser) ||
                other.sellerInternalUser == sellerInternalUser) &&
            (identical(other.sellerAssignedAgent, sellerAssignedAgent) || other.sellerAssignedAgent == sellerAssignedAgent) &&
            (identical(other.propertyList, propertyList) || other.propertyList == propertyList) &&
            (identical(other.newListingRequest, newListingRequest) || other.newListingRequest == newListingRequest) &&
            (identical(other.offPlanProperty, offPlanProperty) || other.offPlanProperty == offPlanProperty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        referenceNumber,
        creationDate,
        category,
        const DeepCollectionEquality().hash(roleType),
        agreedSalePrice,
        agreedCommission,
        assignedAgent,
        type,
        status,
        const DeepCollectionEquality().hash(rejection),
        userId,
        newListingRequestId,
        active,
        createdBy,
        client,
        purpose,
        buyerClientType,
        sellerclientType,
        buyerInternalUserId,
        buyerAssignedAgentId,
        buyerAgreedCommission,
        sellerInternalUserId,
        sellerAssignedAgentId,
        sellerAgreedCommission,
        sellerExternalUserId,
        sellerExternalAgentName,
        sellerExternalAgentPhone,
        sellerExternalClientName,
        sellerExternalClientPhone,
        sellerExternalUser,
        external_listing_property,
        buyerExternalUserId,
        buyerExternalAgentName,
        buyerExternalAgentPhone,
        buyerExternalClientName,
        buyerExternalClientPhone,
        buyerExternalUser,
        propertyListId,
        buyerInternalUser,
        buyerAssignedAgent,
        sellerInternalUser,
        sellerAssignedAgent,
        propertyList,
        newListingRequest,
        offPlanProperty
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Deal(id: $id, referenceNumber: $referenceNumber, creationDate: $creationDate, category: $category, roleType: $roleType, agreedSalePrice: $agreedSalePrice, agreedCommission: $agreedCommission, assignedAgent: $assignedAgent, type: $type, status: $status, rejection: $rejection, userId: $userId, newListingRequestId: $newListingRequestId, active: $active, createdBy: $createdBy, client: $client, purpose: $purpose, buyerClientType: $buyerClientType, sellerclientType: $sellerclientType, buyerInternalUserId: $buyerInternalUserId, buyerAssignedAgentId: $buyerAssignedAgentId, buyerAgreedCommission: $buyerAgreedCommission, sellerInternalUserId: $sellerInternalUserId, sellerAssignedAgentId: $sellerAssignedAgentId, sellerAgreedCommission: $sellerAgreedCommission, sellerExternalUserId: $sellerExternalUserId, sellerExternalAgentName: $sellerExternalAgentName, sellerExternalAgentPhone: $sellerExternalAgentPhone, sellerExternalClientName: $sellerExternalClientName, sellerExternalClientPhone: $sellerExternalClientPhone, sellerExternalUser: $sellerExternalUser, external_listing_property: $external_listing_property, buyerExternalUserId: $buyerExternalUserId, buyerExternalAgentName: $buyerExternalAgentName, buyerExternalAgentPhone: $buyerExternalAgentPhone, buyerExternalClientName: $buyerExternalClientName, buyerExternalClientPhone: $buyerExternalClientPhone, buyerExternalUser: $buyerExternalUser, propertyListId: $propertyListId, buyerInternalUser: $buyerInternalUser, buyerAssignedAgent: $buyerAssignedAgent, sellerInternalUser: $sellerInternalUser, sellerAssignedAgent: $sellerAssignedAgent, propertyList: $propertyList, newListingRequest: $newListingRequest, offPlanProperty: $offPlanProperty)';
  }
}

/// @nodoc
abstract mixin class $DealCopyWith<$Res> {
  factory $DealCopyWith(Deal value, $Res Function(Deal) _then) =
      _$DealCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(name: 'reference_number') String referenceNumber,
      @JsonKey(name: 'creation_date') DateTime creationDate,
      String category,
      List<String> roleType,
      double? agreedSalePrice,
      double? agreedCommission,
      Agent? assignedAgent,
      String? type,
      String status,
      List<dynamic> rejection,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'new_listing_request_id') String? newListingRequestId,
      bool active,
      @JsonKey(name: 'created_by') User? createdBy,
      @JsonKey(name: 'user') Lead? client,
      String? purpose,
      String? buyerClientType,
      String? sellerclientType,
      String? buyerInternalUserId,
      String? buyerAssignedAgentId,
      double? buyerAgreedCommission,
      String? sellerInternalUserId,
      String? sellerAssignedAgentId,
      double? sellerAgreedCommission,
      String? sellerExternalUserId,
      String? sellerExternalAgentName,
      String? sellerExternalAgentPhone,
      String? sellerExternalClientName,
      String? sellerExternalClientPhone,
      Agency? sellerExternalUser,
      DealListingResponse? external_listing_property,
      String? buyerExternalUserId,
      String? buyerExternalAgentName,
      String? buyerExternalAgentPhone,
      String? buyerExternalClientName,
      String? buyerExternalClientPhone,
      Agency? buyerExternalUser,
      @JsonKey(name: 'property_list_id') String? propertyListId,
      Lead? buyerInternalUser,
      Agent? buyerAssignedAgent,
      Lead? sellerInternalUser,
      Agent? sellerAssignedAgent,
      @JsonKey(name: 'property_list') Property? propertyList,
      @JsonKey(name: 'new_listing_request')
      NewListingRequest? newListingRequest,
      @JsonKey(name: 'new_listing_offplan')
      DealListingResponse? offPlanProperty});

  $AgentCopyWith<$Res>? get assignedAgent;
  $UserCopyWith<$Res>? get createdBy;
  $LeadCopyWith<$Res>? get client;
  $AgencyCopyWith<$Res>? get sellerExternalUser;
  $DealListingResponseCopyWith<$Res>? get external_listing_property;
  $AgencyCopyWith<$Res>? get buyerExternalUser;
  $LeadCopyWith<$Res>? get buyerInternalUser;
  $AgentCopyWith<$Res>? get buyerAssignedAgent;
  $LeadCopyWith<$Res>? get sellerInternalUser;
  $AgentCopyWith<$Res>? get sellerAssignedAgent;
  $PropertyCopyWith<$Res>? get propertyList;
  $NewListingRequestCopyWith<$Res>? get newListingRequest;
  $DealListingResponseCopyWith<$Res>? get offPlanProperty;
}

/// @nodoc
class _$DealCopyWithImpl<$Res> implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._self, this._then);

  final Deal _self;
  final $Res Function(Deal) _then;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referenceNumber = null,
    Object? creationDate = null,
    Object? category = null,
    Object? roleType = null,
    Object? agreedSalePrice = freezed,
    Object? agreedCommission = freezed,
    Object? assignedAgent = freezed,
    Object? type = freezed,
    Object? status = null,
    Object? rejection = null,
    Object? userId = freezed,
    Object? newListingRequestId = freezed,
    Object? active = null,
    Object? createdBy = freezed,
    Object? client = freezed,
    Object? purpose = freezed,
    Object? buyerClientType = freezed,
    Object? sellerclientType = freezed,
    Object? buyerInternalUserId = freezed,
    Object? buyerAssignedAgentId = freezed,
    Object? buyerAgreedCommission = freezed,
    Object? sellerInternalUserId = freezed,
    Object? sellerAssignedAgentId = freezed,
    Object? sellerAgreedCommission = freezed,
    Object? sellerExternalUserId = freezed,
    Object? sellerExternalAgentName = freezed,
    Object? sellerExternalAgentPhone = freezed,
    Object? sellerExternalClientName = freezed,
    Object? sellerExternalClientPhone = freezed,
    Object? sellerExternalUser = freezed,
    Object? external_listing_property = freezed,
    Object? buyerExternalUserId = freezed,
    Object? buyerExternalAgentName = freezed,
    Object? buyerExternalAgentPhone = freezed,
    Object? buyerExternalClientName = freezed,
    Object? buyerExternalClientPhone = freezed,
    Object? buyerExternalUser = freezed,
    Object? propertyListId = freezed,
    Object? buyerInternalUser = freezed,
    Object? buyerAssignedAgent = freezed,
    Object? sellerInternalUser = freezed,
    Object? sellerAssignedAgent = freezed,
    Object? propertyList = freezed,
    Object? newListingRequest = freezed,
    Object? offPlanProperty = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _self.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      roleType: null == roleType
          ? _self.roleType
          : roleType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      agreedSalePrice: freezed == agreedSalePrice
          ? _self.agreedSalePrice
          : agreedSalePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      agreedCommission: freezed == agreedCommission
          ? _self.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedAgent: freezed == assignedAgent
          ? _self.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejection: null == rejection
          ? _self.rejection
          : rejection // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      newListingRequestId: freezed == newListingRequestId
          ? _self.newListingRequestId
          : newListingRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      client: freezed == client
          ? _self.client
          : client // ignore: cast_nullable_to_non_nullable
              as Lead?,
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerClientType: freezed == buyerClientType
          ? _self.buyerClientType
          : buyerClientType // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerclientType: freezed == sellerclientType
          ? _self.sellerclientType
          : sellerclientType // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerInternalUserId: freezed == buyerInternalUserId
          ? _self.buyerInternalUserId
          : buyerInternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAssignedAgentId: freezed == buyerAssignedAgentId
          ? _self.buyerAssignedAgentId
          : buyerAssignedAgentId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAgreedCommission: freezed == buyerAgreedCommission
          ? _self.buyerAgreedCommission
          : buyerAgreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      sellerInternalUserId: freezed == sellerInternalUserId
          ? _self.sellerInternalUserId
          : sellerInternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerAssignedAgentId: freezed == sellerAssignedAgentId
          ? _self.sellerAssignedAgentId
          : sellerAssignedAgentId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerAgreedCommission: freezed == sellerAgreedCommission
          ? _self.sellerAgreedCommission
          : sellerAgreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      sellerExternalUserId: freezed == sellerExternalUserId
          ? _self.sellerExternalUserId
          : sellerExternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalAgentName: freezed == sellerExternalAgentName
          ? _self.sellerExternalAgentName
          : sellerExternalAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalAgentPhone: freezed == sellerExternalAgentPhone
          ? _self.sellerExternalAgentPhone
          : sellerExternalAgentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalClientName: freezed == sellerExternalClientName
          ? _self.sellerExternalClientName
          : sellerExternalClientName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalClientPhone: freezed == sellerExternalClientPhone
          ? _self.sellerExternalClientPhone
          : sellerExternalClientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalUser: freezed == sellerExternalUser
          ? _self.sellerExternalUser
          : sellerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      external_listing_property: freezed == external_listing_property
          ? _self.external_listing_property
          : external_listing_property // ignore: cast_nullable_to_non_nullable
              as DealListingResponse?,
      buyerExternalUserId: freezed == buyerExternalUserId
          ? _self.buyerExternalUserId
          : buyerExternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalAgentName: freezed == buyerExternalAgentName
          ? _self.buyerExternalAgentName
          : buyerExternalAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalAgentPhone: freezed == buyerExternalAgentPhone
          ? _self.buyerExternalAgentPhone
          : buyerExternalAgentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalClientName: freezed == buyerExternalClientName
          ? _self.buyerExternalClientName
          : buyerExternalClientName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalClientPhone: freezed == buyerExternalClientPhone
          ? _self.buyerExternalClientPhone
          : buyerExternalClientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalUser: freezed == buyerExternalUser
          ? _self.buyerExternalUser
          : buyerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      propertyListId: freezed == propertyListId
          ? _self.propertyListId
          : propertyListId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerInternalUser: freezed == buyerInternalUser
          ? _self.buyerInternalUser
          : buyerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerAssignedAgent: freezed == buyerAssignedAgent
          ? _self.buyerAssignedAgent
          : buyerAssignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      sellerInternalUser: freezed == sellerInternalUser
          ? _self.sellerInternalUser
          : sellerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      sellerAssignedAgent: freezed == sellerAssignedAgent
          ? _self.sellerAssignedAgent
          : sellerAssignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      propertyList: freezed == propertyList
          ? _self.propertyList
          : propertyList // ignore: cast_nullable_to_non_nullable
              as Property?,
      newListingRequest: freezed == newListingRequest
          ? _self.newListingRequest
          : newListingRequest // ignore: cast_nullable_to_non_nullable
              as NewListingRequest?,
      offPlanProperty: freezed == offPlanProperty
          ? _self.offPlanProperty
          : offPlanProperty // ignore: cast_nullable_to_non_nullable
              as DealListingResponse?,
    ));
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get assignedAgent {
    if (_self.assignedAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.assignedAgent!, (value) {
      return _then(_self.copyWith(assignedAgent: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get client {
    if (_self.client == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.client!, (value) {
      return _then(_self.copyWith(client: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgencyCopyWith<$Res>? get sellerExternalUser {
    if (_self.sellerExternalUser == null) {
      return null;
    }

    return $AgencyCopyWith<$Res>(_self.sellerExternalUser!, (value) {
      return _then(_self.copyWith(sellerExternalUser: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealListingResponseCopyWith<$Res>? get external_listing_property {
    if (_self.external_listing_property == null) {
      return null;
    }

    return $DealListingResponseCopyWith<$Res>(_self.external_listing_property!,
        (value) {
      return _then(_self.copyWith(external_listing_property: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgencyCopyWith<$Res>? get buyerExternalUser {
    if (_self.buyerExternalUser == null) {
      return null;
    }

    return $AgencyCopyWith<$Res>(_self.buyerExternalUser!, (value) {
      return _then(_self.copyWith(buyerExternalUser: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get buyerInternalUser {
    if (_self.buyerInternalUser == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.buyerInternalUser!, (value) {
      return _then(_self.copyWith(buyerInternalUser: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get buyerAssignedAgent {
    if (_self.buyerAssignedAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.buyerAssignedAgent!, (value) {
      return _then(_self.copyWith(buyerAssignedAgent: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get sellerInternalUser {
    if (_self.sellerInternalUser == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.sellerInternalUser!, (value) {
      return _then(_self.copyWith(sellerInternalUser: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get sellerAssignedAgent {
    if (_self.sellerAssignedAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.sellerAssignedAgent!, (value) {
      return _then(_self.copyWith(sellerAssignedAgent: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get propertyList {
    if (_self.propertyList == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_self.propertyList!, (value) {
      return _then(_self.copyWith(propertyList: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewListingRequestCopyWith<$Res>? get newListingRequest {
    if (_self.newListingRequest == null) {
      return null;
    }

    return $NewListingRequestCopyWith<$Res>(_self.newListingRequest!, (value) {
      return _then(_self.copyWith(newListingRequest: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealListingResponseCopyWith<$Res>? get offPlanProperty {
    if (_self.offPlanProperty == null) {
      return null;
    }

    return $DealListingResponseCopyWith<$Res>(_self.offPlanProperty!, (value) {
      return _then(_self.copyWith(offPlanProperty: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Deal with DiagnosticableTreeMixin implements Deal {
  const _Deal(
      {@JsonKey(readValue: readId) required this.id,
      @JsonKey(name: 'reference_number') required this.referenceNumber,
      @JsonKey(name: 'creation_date') required this.creationDate,
      required this.category,
      required final List<String> roleType,
      this.agreedSalePrice,
      this.agreedCommission,
      this.assignedAgent,
      this.type,
      required this.status,
      required final List<dynamic> rejection,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'new_listing_request_id') this.newListingRequestId,
      required this.active,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'user') this.client,
      this.purpose,
      this.buyerClientType,
      this.sellerclientType,
      this.buyerInternalUserId,
      this.buyerAssignedAgentId,
      this.buyerAgreedCommission,
      this.sellerInternalUserId,
      this.sellerAssignedAgentId,
      this.sellerAgreedCommission,
      this.sellerExternalUserId,
      this.sellerExternalAgentName,
      this.sellerExternalAgentPhone,
      this.sellerExternalClientName,
      this.sellerExternalClientPhone,
      this.sellerExternalUser,
      this.external_listing_property,
      this.buyerExternalUserId,
      this.buyerExternalAgentName,
      this.buyerExternalAgentPhone,
      this.buyerExternalClientName,
      this.buyerExternalClientPhone,
      this.buyerExternalUser,
      @JsonKey(name: 'property_list_id') this.propertyListId,
      this.buyerInternalUser,
      this.buyerAssignedAgent,
      this.sellerInternalUser,
      this.sellerAssignedAgent,
      @JsonKey(name: 'property_list') this.propertyList,
      @JsonKey(name: 'new_listing_request') this.newListingRequest,
      @JsonKey(name: 'new_listing_offplan') this.offPlanProperty})
      : _roleType = roleType,
        _rejection = rejection;
  factory _Deal.fromJson(Map<String, dynamic> json) => _$DealFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  @JsonKey(name: 'reference_number')
  final String referenceNumber;
  @override
  @JsonKey(name: 'creation_date')
  final DateTime creationDate;
  @override
  final String category;
  final List<String> _roleType;
  @override
  List<String> get roleType {
    if (_roleType is EqualUnmodifiableListView) return _roleType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roleType);
  }

  @override
  final double? agreedSalePrice;
  @override
  final double? agreedCommission;
  @override
  final Agent? assignedAgent;
  @override
  final String? type;
  @override
  final String status;
  final List<dynamic> _rejection;
  @override
  List<dynamic> get rejection {
    if (_rejection is EqualUnmodifiableListView) return _rejection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rejection);
  }

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'new_listing_request_id')
  final String? newListingRequestId;
  @override
  final bool active;
  @override
  @JsonKey(name: 'created_by')
  final User? createdBy;
  @override
  @JsonKey(name: 'user')
  final Lead? client;
  @override
  final String? purpose;
  @override
  final String? buyerClientType;
  @override
  final String? sellerclientType;
  @override
  final String? buyerInternalUserId;
  @override
  final String? buyerAssignedAgentId;
  @override
  final double? buyerAgreedCommission;
  @override
  final String? sellerInternalUserId;
  @override
  final String? sellerAssignedAgentId;
  @override
  final double? sellerAgreedCommission;
//external seller
  @override
  final String? sellerExternalUserId;
  @override
  final String? sellerExternalAgentName;
  @override
  final String? sellerExternalAgentPhone;
  @override
  final String? sellerExternalClientName;
  @override
  final String? sellerExternalClientPhone;
  @override
  final Agency? sellerExternalUser;
  @override
  final DealListingResponse? external_listing_property;
//
//external buyer
  @override
  final String? buyerExternalUserId;
  @override
  final String? buyerExternalAgentName;
  @override
  final String? buyerExternalAgentPhone;
  @override
  final String? buyerExternalClientName;
  @override
  final String? buyerExternalClientPhone;
  @override
  final Agency? buyerExternalUser;
//
  @override
  @JsonKey(name: 'property_list_id')
  final String? propertyListId;
  @override
  final Lead? buyerInternalUser;
  @override
  final Agent? buyerAssignedAgent;
  @override
  final Lead? sellerInternalUser;
  @override
  final Agent? sellerAssignedAgent;
  @override
  @JsonKey(name: 'property_list')
  final Property? propertyList;
  @override
  @JsonKey(name: 'new_listing_request')
  final NewListingRequest? newListingRequest;
  @override
  @JsonKey(name: 'new_listing_offplan')
  final DealListingResponse? offPlanProperty;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DealCopyWith<_Deal> get copyWith =>
      __$DealCopyWithImpl<_Deal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DealToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Deal'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('referenceNumber', referenceNumber))
      ..add(DiagnosticsProperty('creationDate', creationDate))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('roleType', roleType))
      ..add(DiagnosticsProperty('agreedSalePrice', agreedSalePrice))
      ..add(DiagnosticsProperty('agreedCommission', agreedCommission))
      ..add(DiagnosticsProperty('assignedAgent', assignedAgent))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('rejection', rejection))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('newListingRequestId', newListingRequestId))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('client', client))
      ..add(DiagnosticsProperty('purpose', purpose))
      ..add(DiagnosticsProperty('buyerClientType', buyerClientType))
      ..add(DiagnosticsProperty('sellerclientType', sellerclientType))
      ..add(DiagnosticsProperty('buyerInternalUserId', buyerInternalUserId))
      ..add(DiagnosticsProperty('buyerAssignedAgentId', buyerAssignedAgentId))
      ..add(DiagnosticsProperty('buyerAgreedCommission', buyerAgreedCommission))
      ..add(DiagnosticsProperty('sellerInternalUserId', sellerInternalUserId))
      ..add(DiagnosticsProperty('sellerAssignedAgentId', sellerAssignedAgentId))
      ..add(
          DiagnosticsProperty('sellerAgreedCommission', sellerAgreedCommission))
      ..add(DiagnosticsProperty('sellerExternalUserId', sellerExternalUserId))
      ..add(DiagnosticsProperty(
          'sellerExternalAgentName', sellerExternalAgentName))
      ..add(DiagnosticsProperty(
          'sellerExternalAgentPhone', sellerExternalAgentPhone))
      ..add(DiagnosticsProperty(
          'sellerExternalClientName', sellerExternalClientName))
      ..add(DiagnosticsProperty(
          'sellerExternalClientPhone', sellerExternalClientPhone))
      ..add(DiagnosticsProperty('sellerExternalUser', sellerExternalUser))
      ..add(DiagnosticsProperty(
          'external_listing_property', external_listing_property))
      ..add(DiagnosticsProperty('buyerExternalUserId', buyerExternalUserId))
      ..add(
          DiagnosticsProperty('buyerExternalAgentName', buyerExternalAgentName))
      ..add(DiagnosticsProperty(
          'buyerExternalAgentPhone', buyerExternalAgentPhone))
      ..add(DiagnosticsProperty(
          'buyerExternalClientName', buyerExternalClientName))
      ..add(DiagnosticsProperty(
          'buyerExternalClientPhone', buyerExternalClientPhone))
      ..add(DiagnosticsProperty('buyerExternalUser', buyerExternalUser))
      ..add(DiagnosticsProperty('propertyListId', propertyListId))
      ..add(DiagnosticsProperty('buyerInternalUser', buyerInternalUser))
      ..add(DiagnosticsProperty('buyerAssignedAgent', buyerAssignedAgent))
      ..add(DiagnosticsProperty('sellerInternalUser', sellerInternalUser))
      ..add(DiagnosticsProperty('sellerAssignedAgent', sellerAssignedAgent))
      ..add(DiagnosticsProperty('propertyList', propertyList))
      ..add(DiagnosticsProperty('newListingRequest', newListingRequest))
      ..add(DiagnosticsProperty('offPlanProperty', offPlanProperty));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Deal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._roleType, _roleType) &&
            (identical(other.agreedSalePrice, agreedSalePrice) ||
                other.agreedSalePrice == agreedSalePrice) &&
            (identical(other.agreedCommission, agreedCommission) ||
                other.agreedCommission == agreedCommission) &&
            (identical(other.assignedAgent, assignedAgent) ||
                other.assignedAgent == assignedAgent) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._rejection, _rejection) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.newListingRequestId, newListingRequestId) ||
                other.newListingRequestId == newListingRequestId) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.buyerClientType, buyerClientType) ||
                other.buyerClientType == buyerClientType) &&
            (identical(other.sellerclientType, sellerclientType) ||
                other.sellerclientType == sellerclientType) &&
            (identical(other.buyerInternalUserId, buyerInternalUserId) ||
                other.buyerInternalUserId == buyerInternalUserId) &&
            (identical(other.buyerAssignedAgentId, buyerAssignedAgentId) ||
                other.buyerAssignedAgentId == buyerAssignedAgentId) &&
            (identical(other.buyerAgreedCommission, buyerAgreedCommission) ||
                other.buyerAgreedCommission == buyerAgreedCommission) &&
            (identical(other.sellerInternalUserId, sellerInternalUserId) ||
                other.sellerInternalUserId == sellerInternalUserId) &&
            (identical(other.sellerAssignedAgentId, sellerAssignedAgentId) ||
                other.sellerAssignedAgentId == sellerAssignedAgentId) &&
            (identical(other.sellerAgreedCommission, sellerAgreedCommission) ||
                other.sellerAgreedCommission == sellerAgreedCommission) &&
            (identical(other.sellerExternalUserId, sellerExternalUserId) ||
                other.sellerExternalUserId == sellerExternalUserId) &&
            (identical(other.sellerExternalAgentName, sellerExternalAgentName) ||
                other.sellerExternalAgentName == sellerExternalAgentName) &&
            (identical(other.sellerExternalAgentPhone, sellerExternalAgentPhone) ||
                other.sellerExternalAgentPhone == sellerExternalAgentPhone) &&
            (identical(other.sellerExternalClientName, sellerExternalClientName) ||
                other.sellerExternalClientName == sellerExternalClientName) &&
            (identical(other.sellerExternalClientPhone, sellerExternalClientPhone) ||
                other.sellerExternalClientPhone == sellerExternalClientPhone) &&
            (identical(other.sellerExternalUser, sellerExternalUser) ||
                other.sellerExternalUser == sellerExternalUser) &&
            (identical(other.external_listing_property, external_listing_property) ||
                other.external_listing_property == external_listing_property) &&
            (identical(other.buyerExternalUserId, buyerExternalUserId) ||
                other.buyerExternalUserId == buyerExternalUserId) &&
            (identical(other.buyerExternalAgentName, buyerExternalAgentName) ||
                other.buyerExternalAgentName == buyerExternalAgentName) &&
            (identical(other.buyerExternalAgentPhone, buyerExternalAgentPhone) ||
                other.buyerExternalAgentPhone == buyerExternalAgentPhone) &&
            (identical(other.buyerExternalClientName, buyerExternalClientName) ||
                other.buyerExternalClientName == buyerExternalClientName) &&
            (identical(other.buyerExternalClientPhone, buyerExternalClientPhone) ||
                other.buyerExternalClientPhone == buyerExternalClientPhone) &&
            (identical(other.buyerExternalUser, buyerExternalUser) ||
                other.buyerExternalUser == buyerExternalUser) &&
            (identical(other.propertyListId, propertyListId) ||
                other.propertyListId == propertyListId) &&
            (identical(other.buyerInternalUser, buyerInternalUser) ||
                other.buyerInternalUser == buyerInternalUser) &&
            (identical(other.buyerAssignedAgent, buyerAssignedAgent) ||
                other.buyerAssignedAgent == buyerAssignedAgent) &&
            (identical(other.sellerInternalUser, sellerInternalUser) || other.sellerInternalUser == sellerInternalUser) &&
            (identical(other.sellerAssignedAgent, sellerAssignedAgent) || other.sellerAssignedAgent == sellerAssignedAgent) &&
            (identical(other.propertyList, propertyList) || other.propertyList == propertyList) &&
            (identical(other.newListingRequest, newListingRequest) || other.newListingRequest == newListingRequest) &&
            (identical(other.offPlanProperty, offPlanProperty) || other.offPlanProperty == offPlanProperty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        referenceNumber,
        creationDate,
        category,
        const DeepCollectionEquality().hash(_roleType),
        agreedSalePrice,
        agreedCommission,
        assignedAgent,
        type,
        status,
        const DeepCollectionEquality().hash(_rejection),
        userId,
        newListingRequestId,
        active,
        createdBy,
        client,
        purpose,
        buyerClientType,
        sellerclientType,
        buyerInternalUserId,
        buyerAssignedAgentId,
        buyerAgreedCommission,
        sellerInternalUserId,
        sellerAssignedAgentId,
        sellerAgreedCommission,
        sellerExternalUserId,
        sellerExternalAgentName,
        sellerExternalAgentPhone,
        sellerExternalClientName,
        sellerExternalClientPhone,
        sellerExternalUser,
        external_listing_property,
        buyerExternalUserId,
        buyerExternalAgentName,
        buyerExternalAgentPhone,
        buyerExternalClientName,
        buyerExternalClientPhone,
        buyerExternalUser,
        propertyListId,
        buyerInternalUser,
        buyerAssignedAgent,
        sellerInternalUser,
        sellerAssignedAgent,
        propertyList,
        newListingRequest,
        offPlanProperty
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Deal(id: $id, referenceNumber: $referenceNumber, creationDate: $creationDate, category: $category, roleType: $roleType, agreedSalePrice: $agreedSalePrice, agreedCommission: $agreedCommission, assignedAgent: $assignedAgent, type: $type, status: $status, rejection: $rejection, userId: $userId, newListingRequestId: $newListingRequestId, active: $active, createdBy: $createdBy, client: $client, purpose: $purpose, buyerClientType: $buyerClientType, sellerclientType: $sellerclientType, buyerInternalUserId: $buyerInternalUserId, buyerAssignedAgentId: $buyerAssignedAgentId, buyerAgreedCommission: $buyerAgreedCommission, sellerInternalUserId: $sellerInternalUserId, sellerAssignedAgentId: $sellerAssignedAgentId, sellerAgreedCommission: $sellerAgreedCommission, sellerExternalUserId: $sellerExternalUserId, sellerExternalAgentName: $sellerExternalAgentName, sellerExternalAgentPhone: $sellerExternalAgentPhone, sellerExternalClientName: $sellerExternalClientName, sellerExternalClientPhone: $sellerExternalClientPhone, sellerExternalUser: $sellerExternalUser, external_listing_property: $external_listing_property, buyerExternalUserId: $buyerExternalUserId, buyerExternalAgentName: $buyerExternalAgentName, buyerExternalAgentPhone: $buyerExternalAgentPhone, buyerExternalClientName: $buyerExternalClientName, buyerExternalClientPhone: $buyerExternalClientPhone, buyerExternalUser: $buyerExternalUser, propertyListId: $propertyListId, buyerInternalUser: $buyerInternalUser, buyerAssignedAgent: $buyerAssignedAgent, sellerInternalUser: $sellerInternalUser, sellerAssignedAgent: $sellerAssignedAgent, propertyList: $propertyList, newListingRequest: $newListingRequest, offPlanProperty: $offPlanProperty)';
  }
}

/// @nodoc
abstract mixin class _$DealCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$DealCopyWith(_Deal value, $Res Function(_Deal) _then) =
      __$DealCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(name: 'reference_number') String referenceNumber,
      @JsonKey(name: 'creation_date') DateTime creationDate,
      String category,
      List<String> roleType,
      double? agreedSalePrice,
      double? agreedCommission,
      Agent? assignedAgent,
      String? type,
      String status,
      List<dynamic> rejection,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'new_listing_request_id') String? newListingRequestId,
      bool active,
      @JsonKey(name: 'created_by') User? createdBy,
      @JsonKey(name: 'user') Lead? client,
      String? purpose,
      String? buyerClientType,
      String? sellerclientType,
      String? buyerInternalUserId,
      String? buyerAssignedAgentId,
      double? buyerAgreedCommission,
      String? sellerInternalUserId,
      String? sellerAssignedAgentId,
      double? sellerAgreedCommission,
      String? sellerExternalUserId,
      String? sellerExternalAgentName,
      String? sellerExternalAgentPhone,
      String? sellerExternalClientName,
      String? sellerExternalClientPhone,
      Agency? sellerExternalUser,
      DealListingResponse? external_listing_property,
      String? buyerExternalUserId,
      String? buyerExternalAgentName,
      String? buyerExternalAgentPhone,
      String? buyerExternalClientName,
      String? buyerExternalClientPhone,
      Agency? buyerExternalUser,
      @JsonKey(name: 'property_list_id') String? propertyListId,
      Lead? buyerInternalUser,
      Agent? buyerAssignedAgent,
      Lead? sellerInternalUser,
      Agent? sellerAssignedAgent,
      @JsonKey(name: 'property_list') Property? propertyList,
      @JsonKey(name: 'new_listing_request')
      NewListingRequest? newListingRequest,
      @JsonKey(name: 'new_listing_offplan')
      DealListingResponse? offPlanProperty});

  @override
  $AgentCopyWith<$Res>? get assignedAgent;
  @override
  $UserCopyWith<$Res>? get createdBy;
  @override
  $LeadCopyWith<$Res>? get client;
  @override
  $AgencyCopyWith<$Res>? get sellerExternalUser;
  @override
  $DealListingResponseCopyWith<$Res>? get external_listing_property;
  @override
  $AgencyCopyWith<$Res>? get buyerExternalUser;
  @override
  $LeadCopyWith<$Res>? get buyerInternalUser;
  @override
  $AgentCopyWith<$Res>? get buyerAssignedAgent;
  @override
  $LeadCopyWith<$Res>? get sellerInternalUser;
  @override
  $AgentCopyWith<$Res>? get sellerAssignedAgent;
  @override
  $PropertyCopyWith<$Res>? get propertyList;
  @override
  $NewListingRequestCopyWith<$Res>? get newListingRequest;
  @override
  $DealListingResponseCopyWith<$Res>? get offPlanProperty;
}

/// @nodoc
class __$DealCopyWithImpl<$Res> implements _$DealCopyWith<$Res> {
  __$DealCopyWithImpl(this._self, this._then);

  final _Deal _self;
  final $Res Function(_Deal) _then;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? referenceNumber = null,
    Object? creationDate = null,
    Object? category = null,
    Object? roleType = null,
    Object? agreedSalePrice = freezed,
    Object? agreedCommission = freezed,
    Object? assignedAgent = freezed,
    Object? type = freezed,
    Object? status = null,
    Object? rejection = null,
    Object? userId = freezed,
    Object? newListingRequestId = freezed,
    Object? active = null,
    Object? createdBy = freezed,
    Object? client = freezed,
    Object? purpose = freezed,
    Object? buyerClientType = freezed,
    Object? sellerclientType = freezed,
    Object? buyerInternalUserId = freezed,
    Object? buyerAssignedAgentId = freezed,
    Object? buyerAgreedCommission = freezed,
    Object? sellerInternalUserId = freezed,
    Object? sellerAssignedAgentId = freezed,
    Object? sellerAgreedCommission = freezed,
    Object? sellerExternalUserId = freezed,
    Object? sellerExternalAgentName = freezed,
    Object? sellerExternalAgentPhone = freezed,
    Object? sellerExternalClientName = freezed,
    Object? sellerExternalClientPhone = freezed,
    Object? sellerExternalUser = freezed,
    Object? external_listing_property = freezed,
    Object? buyerExternalUserId = freezed,
    Object? buyerExternalAgentName = freezed,
    Object? buyerExternalAgentPhone = freezed,
    Object? buyerExternalClientName = freezed,
    Object? buyerExternalClientPhone = freezed,
    Object? buyerExternalUser = freezed,
    Object? propertyListId = freezed,
    Object? buyerInternalUser = freezed,
    Object? buyerAssignedAgent = freezed,
    Object? sellerInternalUser = freezed,
    Object? sellerAssignedAgent = freezed,
    Object? propertyList = freezed,
    Object? newListingRequest = freezed,
    Object? offPlanProperty = freezed,
  }) {
    return _then(_Deal(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _self.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      roleType: null == roleType
          ? _self._roleType
          : roleType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      agreedSalePrice: freezed == agreedSalePrice
          ? _self.agreedSalePrice
          : agreedSalePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      agreedCommission: freezed == agreedCommission
          ? _self.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedAgent: freezed == assignedAgent
          ? _self.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejection: null == rejection
          ? _self._rejection
          : rejection // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      newListingRequestId: freezed == newListingRequestId
          ? _self.newListingRequestId
          : newListingRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      client: freezed == client
          ? _self.client
          : client // ignore: cast_nullable_to_non_nullable
              as Lead?,
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerClientType: freezed == buyerClientType
          ? _self.buyerClientType
          : buyerClientType // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerclientType: freezed == sellerclientType
          ? _self.sellerclientType
          : sellerclientType // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerInternalUserId: freezed == buyerInternalUserId
          ? _self.buyerInternalUserId
          : buyerInternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAssignedAgentId: freezed == buyerAssignedAgentId
          ? _self.buyerAssignedAgentId
          : buyerAssignedAgentId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAgreedCommission: freezed == buyerAgreedCommission
          ? _self.buyerAgreedCommission
          : buyerAgreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      sellerInternalUserId: freezed == sellerInternalUserId
          ? _self.sellerInternalUserId
          : sellerInternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerAssignedAgentId: freezed == sellerAssignedAgentId
          ? _self.sellerAssignedAgentId
          : sellerAssignedAgentId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerAgreedCommission: freezed == sellerAgreedCommission
          ? _self.sellerAgreedCommission
          : sellerAgreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      sellerExternalUserId: freezed == sellerExternalUserId
          ? _self.sellerExternalUserId
          : sellerExternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalAgentName: freezed == sellerExternalAgentName
          ? _self.sellerExternalAgentName
          : sellerExternalAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalAgentPhone: freezed == sellerExternalAgentPhone
          ? _self.sellerExternalAgentPhone
          : sellerExternalAgentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalClientName: freezed == sellerExternalClientName
          ? _self.sellerExternalClientName
          : sellerExternalClientName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalClientPhone: freezed == sellerExternalClientPhone
          ? _self.sellerExternalClientPhone
          : sellerExternalClientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalUser: freezed == sellerExternalUser
          ? _self.sellerExternalUser
          : sellerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      external_listing_property: freezed == external_listing_property
          ? _self.external_listing_property
          : external_listing_property // ignore: cast_nullable_to_non_nullable
              as DealListingResponse?,
      buyerExternalUserId: freezed == buyerExternalUserId
          ? _self.buyerExternalUserId
          : buyerExternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalAgentName: freezed == buyerExternalAgentName
          ? _self.buyerExternalAgentName
          : buyerExternalAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalAgentPhone: freezed == buyerExternalAgentPhone
          ? _self.buyerExternalAgentPhone
          : buyerExternalAgentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalClientName: freezed == buyerExternalClientName
          ? _self.buyerExternalClientName
          : buyerExternalClientName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalClientPhone: freezed == buyerExternalClientPhone
          ? _self.buyerExternalClientPhone
          : buyerExternalClientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalUser: freezed == buyerExternalUser
          ? _self.buyerExternalUser
          : buyerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      propertyListId: freezed == propertyListId
          ? _self.propertyListId
          : propertyListId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerInternalUser: freezed == buyerInternalUser
          ? _self.buyerInternalUser
          : buyerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerAssignedAgent: freezed == buyerAssignedAgent
          ? _self.buyerAssignedAgent
          : buyerAssignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      sellerInternalUser: freezed == sellerInternalUser
          ? _self.sellerInternalUser
          : sellerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      sellerAssignedAgent: freezed == sellerAssignedAgent
          ? _self.sellerAssignedAgent
          : sellerAssignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      propertyList: freezed == propertyList
          ? _self.propertyList
          : propertyList // ignore: cast_nullable_to_non_nullable
              as Property?,
      newListingRequest: freezed == newListingRequest
          ? _self.newListingRequest
          : newListingRequest // ignore: cast_nullable_to_non_nullable
              as NewListingRequest?,
      offPlanProperty: freezed == offPlanProperty
          ? _self.offPlanProperty
          : offPlanProperty // ignore: cast_nullable_to_non_nullable
              as DealListingResponse?,
    ));
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get assignedAgent {
    if (_self.assignedAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.assignedAgent!, (value) {
      return _then(_self.copyWith(assignedAgent: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get client {
    if (_self.client == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.client!, (value) {
      return _then(_self.copyWith(client: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgencyCopyWith<$Res>? get sellerExternalUser {
    if (_self.sellerExternalUser == null) {
      return null;
    }

    return $AgencyCopyWith<$Res>(_self.sellerExternalUser!, (value) {
      return _then(_self.copyWith(sellerExternalUser: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealListingResponseCopyWith<$Res>? get external_listing_property {
    if (_self.external_listing_property == null) {
      return null;
    }

    return $DealListingResponseCopyWith<$Res>(_self.external_listing_property!,
        (value) {
      return _then(_self.copyWith(external_listing_property: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgencyCopyWith<$Res>? get buyerExternalUser {
    if (_self.buyerExternalUser == null) {
      return null;
    }

    return $AgencyCopyWith<$Res>(_self.buyerExternalUser!, (value) {
      return _then(_self.copyWith(buyerExternalUser: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get buyerInternalUser {
    if (_self.buyerInternalUser == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.buyerInternalUser!, (value) {
      return _then(_self.copyWith(buyerInternalUser: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get buyerAssignedAgent {
    if (_self.buyerAssignedAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.buyerAssignedAgent!, (value) {
      return _then(_self.copyWith(buyerAssignedAgent: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get sellerInternalUser {
    if (_self.sellerInternalUser == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.sellerInternalUser!, (value) {
      return _then(_self.copyWith(sellerInternalUser: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get sellerAssignedAgent {
    if (_self.sellerAssignedAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.sellerAssignedAgent!, (value) {
      return _then(_self.copyWith(sellerAssignedAgent: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get propertyList {
    if (_self.propertyList == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_self.propertyList!, (value) {
      return _then(_self.copyWith(propertyList: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewListingRequestCopyWith<$Res>? get newListingRequest {
    if (_self.newListingRequest == null) {
      return null;
    }

    return $NewListingRequestCopyWith<$Res>(_self.newListingRequest!, (value) {
      return _then(_self.copyWith(newListingRequest: value));
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealListingResponseCopyWith<$Res>? get offPlanProperty {
    if (_self.offPlanProperty == null) {
      return null;
    }

    return $DealListingResponseCopyWith<$Res>(_self.offPlanProperty!, (value) {
      return _then(_self.copyWith(offPlanProperty: value));
    });
  }
}

// dart format on
