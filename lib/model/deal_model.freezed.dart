// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Deal _$DealFromJson(Map<String, dynamic> json) {
  return _Deal.fromJson(json);
}

/// @nodoc
mixin _$Deal {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_number')
  String get referenceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_date')
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get roleType => throw _privateConstructorUsedError;
  double? get agreedSalePrice => throw _privateConstructorUsedError;
  double? get agreedCommission => throw _privateConstructorUsedError;
  Agent? get assignedAgent => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<dynamic> get rejection => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_listing_request_id')
  String? get newListingRequestId => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  User? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  Lead? get client => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  String? get buyerClientType => throw _privateConstructorUsedError;
  String? get sellerclientType => throw _privateConstructorUsedError;
  String? get buyerInternalUserId => throw _privateConstructorUsedError;
  String? get buyerAssignedAgentId => throw _privateConstructorUsedError;
  double? get buyerAgreedCommission => throw _privateConstructorUsedError;
  String? get sellerInternalUserId => throw _privateConstructorUsedError;
  String? get sellerAssignedAgentId => throw _privateConstructorUsedError;
  double? get sellerAgreedCommission =>
      throw _privateConstructorUsedError; //external seller
  String? get sellerExternalUserId => throw _privateConstructorUsedError;
  String? get sellerExternalAgentName => throw _privateConstructorUsedError;
  String? get sellerExternalAgentPhone => throw _privateConstructorUsedError;
  String? get sellerExternalClientName => throw _privateConstructorUsedError;
  String? get sellerExternalClientPhone => throw _privateConstructorUsedError;
  Agency? get sellerExternalUser => throw _privateConstructorUsedError;
  DealListingResponse? get external_listing_property =>
      throw _privateConstructorUsedError; //
//external buyer
  String? get buyerExternalUserId => throw _privateConstructorUsedError;
  String? get buyerExternalAgentName => throw _privateConstructorUsedError;
  String? get buyerExternalAgentPhone => throw _privateConstructorUsedError;
  String? get buyerExternalClientName => throw _privateConstructorUsedError;
  String? get buyerExternalClientPhone => throw _privateConstructorUsedError;
  Agency? get buyerExternalUser => throw _privateConstructorUsedError; //
  @JsonKey(name: 'property_list_id')
  String? get propertyListId => throw _privateConstructorUsedError;
  Lead? get buyerInternalUser => throw _privateConstructorUsedError;
  Agent? get buyerAssignedAgent => throw _privateConstructorUsedError;
  Lead? get sellerInternalUser => throw _privateConstructorUsedError;
  Agent? get sellerAssignedAgent => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_list')
  Property? get propertyList => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_listing_request')
  NewListingRequest? get newListingRequest =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'new_listing_offplan')
  DealListingResponse? get offPlanProperty =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealCopyWith<Deal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealCopyWith<$Res> {
  factory $DealCopyWith(Deal value, $Res Function(Deal) then) =
      _$DealCopyWithImpl<$Res, Deal>;
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
class _$DealCopyWithImpl<$Res, $Val extends Deal>
    implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      roleType: null == roleType
          ? _value.roleType
          : roleType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      agreedSalePrice: freezed == agreedSalePrice
          ? _value.agreedSalePrice
          : agreedSalePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      agreedCommission: freezed == agreedCommission
          ? _value.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedAgent: freezed == assignedAgent
          ? _value.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejection: null == rejection
          ? _value.rejection
          : rejection // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      newListingRequestId: freezed == newListingRequestId
          ? _value.newListingRequestId
          : newListingRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Lead?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerClientType: freezed == buyerClientType
          ? _value.buyerClientType
          : buyerClientType // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerclientType: freezed == sellerclientType
          ? _value.sellerclientType
          : sellerclientType // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerInternalUserId: freezed == buyerInternalUserId
          ? _value.buyerInternalUserId
          : buyerInternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAssignedAgentId: freezed == buyerAssignedAgentId
          ? _value.buyerAssignedAgentId
          : buyerAssignedAgentId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAgreedCommission: freezed == buyerAgreedCommission
          ? _value.buyerAgreedCommission
          : buyerAgreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      sellerInternalUserId: freezed == sellerInternalUserId
          ? _value.sellerInternalUserId
          : sellerInternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerAssignedAgentId: freezed == sellerAssignedAgentId
          ? _value.sellerAssignedAgentId
          : sellerAssignedAgentId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerAgreedCommission: freezed == sellerAgreedCommission
          ? _value.sellerAgreedCommission
          : sellerAgreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      sellerExternalUserId: freezed == sellerExternalUserId
          ? _value.sellerExternalUserId
          : sellerExternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalAgentName: freezed == sellerExternalAgentName
          ? _value.sellerExternalAgentName
          : sellerExternalAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalAgentPhone: freezed == sellerExternalAgentPhone
          ? _value.sellerExternalAgentPhone
          : sellerExternalAgentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalClientName: freezed == sellerExternalClientName
          ? _value.sellerExternalClientName
          : sellerExternalClientName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalClientPhone: freezed == sellerExternalClientPhone
          ? _value.sellerExternalClientPhone
          : sellerExternalClientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalUser: freezed == sellerExternalUser
          ? _value.sellerExternalUser
          : sellerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      external_listing_property: freezed == external_listing_property
          ? _value.external_listing_property
          : external_listing_property // ignore: cast_nullable_to_non_nullable
              as DealListingResponse?,
      buyerExternalUserId: freezed == buyerExternalUserId
          ? _value.buyerExternalUserId
          : buyerExternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalAgentName: freezed == buyerExternalAgentName
          ? _value.buyerExternalAgentName
          : buyerExternalAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalAgentPhone: freezed == buyerExternalAgentPhone
          ? _value.buyerExternalAgentPhone
          : buyerExternalAgentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalClientName: freezed == buyerExternalClientName
          ? _value.buyerExternalClientName
          : buyerExternalClientName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalClientPhone: freezed == buyerExternalClientPhone
          ? _value.buyerExternalClientPhone
          : buyerExternalClientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalUser: freezed == buyerExternalUser
          ? _value.buyerExternalUser
          : buyerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      propertyListId: freezed == propertyListId
          ? _value.propertyListId
          : propertyListId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerInternalUser: freezed == buyerInternalUser
          ? _value.buyerInternalUser
          : buyerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerAssignedAgent: freezed == buyerAssignedAgent
          ? _value.buyerAssignedAgent
          : buyerAssignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      sellerInternalUser: freezed == sellerInternalUser
          ? _value.sellerInternalUser
          : sellerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      sellerAssignedAgent: freezed == sellerAssignedAgent
          ? _value.sellerAssignedAgent
          : sellerAssignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      propertyList: freezed == propertyList
          ? _value.propertyList
          : propertyList // ignore: cast_nullable_to_non_nullable
              as Property?,
      newListingRequest: freezed == newListingRequest
          ? _value.newListingRequest
          : newListingRequest // ignore: cast_nullable_to_non_nullable
              as NewListingRequest?,
      offPlanProperty: freezed == offPlanProperty
          ? _value.offPlanProperty
          : offPlanProperty // ignore: cast_nullable_to_non_nullable
              as DealListingResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get assignedAgent {
    if (_value.assignedAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_value.assignedAgent!, (value) {
      return _then(_value.copyWith(assignedAgent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgencyCopyWith<$Res>? get sellerExternalUser {
    if (_value.sellerExternalUser == null) {
      return null;
    }

    return $AgencyCopyWith<$Res>(_value.sellerExternalUser!, (value) {
      return _then(_value.copyWith(sellerExternalUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealListingResponseCopyWith<$Res>? get external_listing_property {
    if (_value.external_listing_property == null) {
      return null;
    }

    return $DealListingResponseCopyWith<$Res>(_value.external_listing_property!,
        (value) {
      return _then(_value.copyWith(external_listing_property: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgencyCopyWith<$Res>? get buyerExternalUser {
    if (_value.buyerExternalUser == null) {
      return null;
    }

    return $AgencyCopyWith<$Res>(_value.buyerExternalUser!, (value) {
      return _then(_value.copyWith(buyerExternalUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get buyerInternalUser {
    if (_value.buyerInternalUser == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_value.buyerInternalUser!, (value) {
      return _then(_value.copyWith(buyerInternalUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get buyerAssignedAgent {
    if (_value.buyerAssignedAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_value.buyerAssignedAgent!, (value) {
      return _then(_value.copyWith(buyerAssignedAgent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get sellerInternalUser {
    if (_value.sellerInternalUser == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_value.sellerInternalUser!, (value) {
      return _then(_value.copyWith(sellerInternalUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get sellerAssignedAgent {
    if (_value.sellerAssignedAgent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_value.sellerAssignedAgent!, (value) {
      return _then(_value.copyWith(sellerAssignedAgent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get propertyList {
    if (_value.propertyList == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_value.propertyList!, (value) {
      return _then(_value.copyWith(propertyList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NewListingRequestCopyWith<$Res>? get newListingRequest {
    if (_value.newListingRequest == null) {
      return null;
    }

    return $NewListingRequestCopyWith<$Res>(_value.newListingRequest!, (value) {
      return _then(_value.copyWith(newListingRequest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealListingResponseCopyWith<$Res>? get offPlanProperty {
    if (_value.offPlanProperty == null) {
      return null;
    }

    return $DealListingResponseCopyWith<$Res>(_value.offPlanProperty!, (value) {
      return _then(_value.copyWith(offPlanProperty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DealImplCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$$DealImplCopyWith(
          _$DealImpl value, $Res Function(_$DealImpl) then) =
      __$$DealImplCopyWithImpl<$Res>;
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
class __$$DealImplCopyWithImpl<$Res>
    extends _$DealCopyWithImpl<$Res, _$DealImpl>
    implements _$$DealImplCopyWith<$Res> {
  __$$DealImplCopyWithImpl(_$DealImpl _value, $Res Function(_$DealImpl) _then)
      : super(_value, _then);

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
    return _then(_$DealImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      roleType: null == roleType
          ? _value._roleType
          : roleType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      agreedSalePrice: freezed == agreedSalePrice
          ? _value.agreedSalePrice
          : agreedSalePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      agreedCommission: freezed == agreedCommission
          ? _value.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedAgent: freezed == assignedAgent
          ? _value.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejection: null == rejection
          ? _value._rejection
          : rejection // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      newListingRequestId: freezed == newListingRequestId
          ? _value.newListingRequestId
          : newListingRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Lead?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerClientType: freezed == buyerClientType
          ? _value.buyerClientType
          : buyerClientType // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerclientType: freezed == sellerclientType
          ? _value.sellerclientType
          : sellerclientType // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerInternalUserId: freezed == buyerInternalUserId
          ? _value.buyerInternalUserId
          : buyerInternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAssignedAgentId: freezed == buyerAssignedAgentId
          ? _value.buyerAssignedAgentId
          : buyerAssignedAgentId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAgreedCommission: freezed == buyerAgreedCommission
          ? _value.buyerAgreedCommission
          : buyerAgreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      sellerInternalUserId: freezed == sellerInternalUserId
          ? _value.sellerInternalUserId
          : sellerInternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerAssignedAgentId: freezed == sellerAssignedAgentId
          ? _value.sellerAssignedAgentId
          : sellerAssignedAgentId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerAgreedCommission: freezed == sellerAgreedCommission
          ? _value.sellerAgreedCommission
          : sellerAgreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      sellerExternalUserId: freezed == sellerExternalUserId
          ? _value.sellerExternalUserId
          : sellerExternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalAgentName: freezed == sellerExternalAgentName
          ? _value.sellerExternalAgentName
          : sellerExternalAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalAgentPhone: freezed == sellerExternalAgentPhone
          ? _value.sellerExternalAgentPhone
          : sellerExternalAgentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalClientName: freezed == sellerExternalClientName
          ? _value.sellerExternalClientName
          : sellerExternalClientName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalClientPhone: freezed == sellerExternalClientPhone
          ? _value.sellerExternalClientPhone
          : sellerExternalClientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerExternalUser: freezed == sellerExternalUser
          ? _value.sellerExternalUser
          : sellerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      external_listing_property: freezed == external_listing_property
          ? _value.external_listing_property
          : external_listing_property // ignore: cast_nullable_to_non_nullable
              as DealListingResponse?,
      buyerExternalUserId: freezed == buyerExternalUserId
          ? _value.buyerExternalUserId
          : buyerExternalUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalAgentName: freezed == buyerExternalAgentName
          ? _value.buyerExternalAgentName
          : buyerExternalAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalAgentPhone: freezed == buyerExternalAgentPhone
          ? _value.buyerExternalAgentPhone
          : buyerExternalAgentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalClientName: freezed == buyerExternalClientName
          ? _value.buyerExternalClientName
          : buyerExternalClientName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalClientPhone: freezed == buyerExternalClientPhone
          ? _value.buyerExternalClientPhone
          : buyerExternalClientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerExternalUser: freezed == buyerExternalUser
          ? _value.buyerExternalUser
          : buyerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      propertyListId: freezed == propertyListId
          ? _value.propertyListId
          : propertyListId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerInternalUser: freezed == buyerInternalUser
          ? _value.buyerInternalUser
          : buyerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerAssignedAgent: freezed == buyerAssignedAgent
          ? _value.buyerAssignedAgent
          : buyerAssignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      sellerInternalUser: freezed == sellerInternalUser
          ? _value.sellerInternalUser
          : sellerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      sellerAssignedAgent: freezed == sellerAssignedAgent
          ? _value.sellerAssignedAgent
          : sellerAssignedAgent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      propertyList: freezed == propertyList
          ? _value.propertyList
          : propertyList // ignore: cast_nullable_to_non_nullable
              as Property?,
      newListingRequest: freezed == newListingRequest
          ? _value.newListingRequest
          : newListingRequest // ignore: cast_nullable_to_non_nullable
              as NewListingRequest?,
      offPlanProperty: freezed == offPlanProperty
          ? _value.offPlanProperty
          : offPlanProperty // ignore: cast_nullable_to_non_nullable
              as DealListingResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DealImpl with DiagnosticableTreeMixin implements _Deal {
  const _$DealImpl(
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

  factory _$DealImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealImplFromJson(json);

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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Deal(id: $id, referenceNumber: $referenceNumber, creationDate: $creationDate, category: $category, roleType: $roleType, agreedSalePrice: $agreedSalePrice, agreedCommission: $agreedCommission, assignedAgent: $assignedAgent, type: $type, status: $status, rejection: $rejection, userId: $userId, newListingRequestId: $newListingRequestId, active: $active, createdBy: $createdBy, client: $client, purpose: $purpose, buyerClientType: $buyerClientType, sellerclientType: $sellerclientType, buyerInternalUserId: $buyerInternalUserId, buyerAssignedAgentId: $buyerAssignedAgentId, buyerAgreedCommission: $buyerAgreedCommission, sellerInternalUserId: $sellerInternalUserId, sellerAssignedAgentId: $sellerAssignedAgentId, sellerAgreedCommission: $sellerAgreedCommission, sellerExternalUserId: $sellerExternalUserId, sellerExternalAgentName: $sellerExternalAgentName, sellerExternalAgentPhone: $sellerExternalAgentPhone, sellerExternalClientName: $sellerExternalClientName, sellerExternalClientPhone: $sellerExternalClientPhone, sellerExternalUser: $sellerExternalUser, external_listing_property: $external_listing_property, buyerExternalUserId: $buyerExternalUserId, buyerExternalAgentName: $buyerExternalAgentName, buyerExternalAgentPhone: $buyerExternalAgentPhone, buyerExternalClientName: $buyerExternalClientName, buyerExternalClientPhone: $buyerExternalClientPhone, buyerExternalUser: $buyerExternalUser, propertyListId: $propertyListId, buyerInternalUser: $buyerInternalUser, buyerAssignedAgent: $buyerAssignedAgent, sellerInternalUser: $sellerInternalUser, sellerAssignedAgent: $sellerAssignedAgent, propertyList: $propertyList, newListingRequest: $newListingRequest, offPlanProperty: $offPlanProperty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
            other is _$DealImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DealImplCopyWith<_$DealImpl> get copyWith =>
      __$$DealImplCopyWithImpl<_$DealImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealImplToJson(
      this,
    );
  }
}

abstract class _Deal implements Deal {
  const factory _Deal(
      {@JsonKey(readValue: readId) required final String id,
      @JsonKey(name: 'reference_number') required final String referenceNumber,
      @JsonKey(name: 'creation_date') required final DateTime creationDate,
      required final String category,
      required final List<String> roleType,
      final double? agreedSalePrice,
      final double? agreedCommission,
      final Agent? assignedAgent,
      final String? type,
      required final String status,
      required final List<dynamic> rejection,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'new_listing_request_id')
      final String? newListingRequestId,
      required final bool active,
      @JsonKey(name: 'created_by') final User? createdBy,
      @JsonKey(name: 'user') final Lead? client,
      final String? purpose,
      final String? buyerClientType,
      final String? sellerclientType,
      final String? buyerInternalUserId,
      final String? buyerAssignedAgentId,
      final double? buyerAgreedCommission,
      final String? sellerInternalUserId,
      final String? sellerAssignedAgentId,
      final double? sellerAgreedCommission,
      final String? sellerExternalUserId,
      final String? sellerExternalAgentName,
      final String? sellerExternalAgentPhone,
      final String? sellerExternalClientName,
      final String? sellerExternalClientPhone,
      final Agency? sellerExternalUser,
      final DealListingResponse? external_listing_property,
      final String? buyerExternalUserId,
      final String? buyerExternalAgentName,
      final String? buyerExternalAgentPhone,
      final String? buyerExternalClientName,
      final String? buyerExternalClientPhone,
      final Agency? buyerExternalUser,
      @JsonKey(name: 'property_list_id') final String? propertyListId,
      final Lead? buyerInternalUser,
      final Agent? buyerAssignedAgent,
      final Lead? sellerInternalUser,
      final Agent? sellerAssignedAgent,
      @JsonKey(name: 'property_list') final Property? propertyList,
      @JsonKey(name: 'new_listing_request')
      final NewListingRequest? newListingRequest,
      @JsonKey(name: 'new_listing_offplan')
      final DealListingResponse? offPlanProperty}) = _$DealImpl;

  factory _Deal.fromJson(Map<String, dynamic> json) = _$DealImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  @JsonKey(name: 'reference_number')
  String get referenceNumber;
  @override
  @JsonKey(name: 'creation_date')
  DateTime get creationDate;
  @override
  String get category;
  @override
  List<String> get roleType;
  @override
  double? get agreedSalePrice;
  @override
  double? get agreedCommission;
  @override
  Agent? get assignedAgent;
  @override
  String? get type;
  @override
  String get status;
  @override
  List<dynamic> get rejection;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'new_listing_request_id')
  String? get newListingRequestId;
  @override
  bool get active;
  @override
  @JsonKey(name: 'created_by')
  User? get createdBy;
  @override
  @JsonKey(name: 'user')
  Lead? get client;
  @override
  String? get purpose;
  @override
  String? get buyerClientType;
  @override
  String? get sellerclientType;
  @override
  String? get buyerInternalUserId;
  @override
  String? get buyerAssignedAgentId;
  @override
  double? get buyerAgreedCommission;
  @override
  String? get sellerInternalUserId;
  @override
  String? get sellerAssignedAgentId;
  @override
  double? get sellerAgreedCommission;
  @override //external seller
  String? get sellerExternalUserId;
  @override
  String? get sellerExternalAgentName;
  @override
  String? get sellerExternalAgentPhone;
  @override
  String? get sellerExternalClientName;
  @override
  String? get sellerExternalClientPhone;
  @override
  Agency? get sellerExternalUser;
  @override
  DealListingResponse? get external_listing_property;
  @override //
//external buyer
  String? get buyerExternalUserId;
  @override
  String? get buyerExternalAgentName;
  @override
  String? get buyerExternalAgentPhone;
  @override
  String? get buyerExternalClientName;
  @override
  String? get buyerExternalClientPhone;
  @override
  Agency? get buyerExternalUser;
  @override //
  @JsonKey(name: 'property_list_id')
  String? get propertyListId;
  @override
  Lead? get buyerInternalUser;
  @override
  Agent? get buyerAssignedAgent;
  @override
  Lead? get sellerInternalUser;
  @override
  Agent? get sellerAssignedAgent;
  @override
  @JsonKey(name: 'property_list')
  Property? get propertyList;
  @override
  @JsonKey(name: 'new_listing_request')
  NewListingRequest? get newListingRequest;
  @override
  @JsonKey(name: 'new_listing_offplan')
  DealListingResponse? get offPlanProperty;
  @override
  @JsonKey(ignore: true)
  _$$DealImplCopyWith<_$DealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
