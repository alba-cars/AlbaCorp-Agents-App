// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealResponse {
  String get id;
  @JsonKey(name: 'reference_number')
  String get referenceNumber;
  @JsonKey(name: 'creation_date')
  DateTime get creationDate;
  String get category;
  List<String> get roleType;
  @JsonKey(name: 'agreedSalePrice')
  double get agreedSalePrice;
  double? get agreedCommission;
  @JsonKey(name: 'assignedAgent')
  String? get assignedAgent;
  String get status;
  List<String> get rejection;
  @JsonKey(name: 'user_id')
  String? get userId;
  bool get active;
  @JsonKey(name: 'created_by')
  User get createdBy;
  @JsonKey(name: 'user')
  Lead? get client;
  Lead? get sellerInternalUser;
  Lead? get buyerInternalUser;
  Agency? get buyerExternalUser;
  Agency? get sellerExternalUser;

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DealResponseCopyWith<DealResponse> get copyWith =>
      _$DealResponseCopyWithImpl<DealResponse>(
          this as DealResponse, _$identity);

  /// Serializes this DealResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DealResponse &&
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
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.rejection, rejection) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.sellerInternalUser, sellerInternalUser) ||
                other.sellerInternalUser == sellerInternalUser) &&
            (identical(other.buyerInternalUser, buyerInternalUser) ||
                other.buyerInternalUser == buyerInternalUser) &&
            (identical(other.buyerExternalUser, buyerExternalUser) ||
                other.buyerExternalUser == buyerExternalUser) &&
            (identical(other.sellerExternalUser, sellerExternalUser) ||
                other.sellerExternalUser == sellerExternalUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      referenceNumber,
      creationDate,
      category,
      const DeepCollectionEquality().hash(roleType),
      agreedSalePrice,
      agreedCommission,
      assignedAgent,
      status,
      const DeepCollectionEquality().hash(rejection),
      userId,
      active,
      createdBy,
      client,
      sellerInternalUser,
      buyerInternalUser,
      buyerExternalUser,
      sellerExternalUser);

  @override
  String toString() {
    return 'DealResponse(id: $id, referenceNumber: $referenceNumber, creationDate: $creationDate, category: $category, roleType: $roleType, agreedSalePrice: $agreedSalePrice, agreedCommission: $agreedCommission, assignedAgent: $assignedAgent, status: $status, rejection: $rejection, userId: $userId, active: $active, createdBy: $createdBy, client: $client, sellerInternalUser: $sellerInternalUser, buyerInternalUser: $buyerInternalUser, buyerExternalUser: $buyerExternalUser, sellerExternalUser: $sellerExternalUser)';
  }
}

/// @nodoc
abstract mixin class $DealResponseCopyWith<$Res> {
  factory $DealResponseCopyWith(
          DealResponse value, $Res Function(DealResponse) _then) =
      _$DealResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'reference_number') String referenceNumber,
      @JsonKey(name: 'creation_date') DateTime creationDate,
      String category,
      List<String> roleType,
      @JsonKey(name: 'agreedSalePrice') double agreedSalePrice,
      double? agreedCommission,
      @JsonKey(name: 'assignedAgent') String? assignedAgent,
      String status,
      List<String> rejection,
      @JsonKey(name: 'user_id') String? userId,
      bool active,
      @JsonKey(name: 'created_by') User createdBy,
      @JsonKey(name: 'user') Lead? client,
      Lead? sellerInternalUser,
      Lead? buyerInternalUser,
      Agency? buyerExternalUser,
      Agency? sellerExternalUser});

  $UserCopyWith<$Res> get createdBy;
  $LeadCopyWith<$Res>? get client;
  $LeadCopyWith<$Res>? get sellerInternalUser;
  $LeadCopyWith<$Res>? get buyerInternalUser;
  $AgencyCopyWith<$Res>? get buyerExternalUser;
  $AgencyCopyWith<$Res>? get sellerExternalUser;
}

/// @nodoc
class _$DealResponseCopyWithImpl<$Res> implements $DealResponseCopyWith<$Res> {
  _$DealResponseCopyWithImpl(this._self, this._then);

  final DealResponse _self;
  final $Res Function(DealResponse) _then;

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referenceNumber = null,
    Object? creationDate = null,
    Object? category = null,
    Object? roleType = null,
    Object? agreedSalePrice = null,
    Object? agreedCommission = freezed,
    Object? assignedAgent = freezed,
    Object? status = null,
    Object? rejection = null,
    Object? userId = freezed,
    Object? active = null,
    Object? createdBy = null,
    Object? client = freezed,
    Object? sellerInternalUser = freezed,
    Object? buyerInternalUser = freezed,
    Object? buyerExternalUser = freezed,
    Object? sellerExternalUser = freezed,
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
      agreedSalePrice: null == agreedSalePrice
          ? _self.agreedSalePrice
          : agreedSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      agreedCommission: freezed == agreedCommission
          ? _self.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedAgent: freezed == assignedAgent
          ? _self.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejection: null == rejection
          ? _self.rejection
          : rejection // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
      client: freezed == client
          ? _self.client
          : client // ignore: cast_nullable_to_non_nullable
              as Lead?,
      sellerInternalUser: freezed == sellerInternalUser
          ? _self.sellerInternalUser
          : sellerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerInternalUser: freezed == buyerInternalUser
          ? _self.buyerInternalUser
          : buyerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerExternalUser: freezed == buyerExternalUser
          ? _self.buyerExternalUser
          : buyerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      sellerExternalUser: freezed == sellerExternalUser
          ? _self.sellerExternalUser
          : sellerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
    ));
  }

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of DealResponse
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

  /// Create a copy of DealResponse
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

  /// Create a copy of DealResponse
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

  /// Create a copy of DealResponse
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

  /// Create a copy of DealResponse
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
}

/// @nodoc
@JsonSerializable()
class _DealResponse implements DealResponse {
  _DealResponse(
      {required this.id,
      @JsonKey(name: 'reference_number') required this.referenceNumber,
      @JsonKey(name: 'creation_date') required this.creationDate,
      required this.category,
      final List<String> roleType = const [],
      @JsonKey(name: 'agreedSalePrice') required this.agreedSalePrice,
      this.agreedCommission,
      @JsonKey(name: 'assignedAgent') this.assignedAgent,
      required this.status,
      final List<String> rejection = const [],
      @JsonKey(name: 'user_id') this.userId,
      required this.active,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'user') this.client,
      this.sellerInternalUser,
      this.buyerInternalUser,
      this.buyerExternalUser,
      this.sellerExternalUser})
      : _roleType = roleType,
        _rejection = rejection;
  factory _DealResponse.fromJson(Map<String, dynamic> json) =>
      _$DealResponseFromJson(json);

  @override
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
  @JsonKey()
  List<String> get roleType {
    if (_roleType is EqualUnmodifiableListView) return _roleType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roleType);
  }

  @override
  @JsonKey(name: 'agreedSalePrice')
  final double agreedSalePrice;
  @override
  final double? agreedCommission;
  @override
  @JsonKey(name: 'assignedAgent')
  final String? assignedAgent;
  @override
  final String status;
  final List<String> _rejection;
  @override
  @JsonKey()
  List<String> get rejection {
    if (_rejection is EqualUnmodifiableListView) return _rejection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rejection);
  }

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final bool active;
  @override
  @JsonKey(name: 'created_by')
  final User createdBy;
  @override
  @JsonKey(name: 'user')
  final Lead? client;
  @override
  final Lead? sellerInternalUser;
  @override
  final Lead? buyerInternalUser;
  @override
  final Agency? buyerExternalUser;
  @override
  final Agency? sellerExternalUser;

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DealResponseCopyWith<_DealResponse> get copyWith =>
      __$DealResponseCopyWithImpl<_DealResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DealResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealResponse &&
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
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._rejection, _rejection) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.sellerInternalUser, sellerInternalUser) ||
                other.sellerInternalUser == sellerInternalUser) &&
            (identical(other.buyerInternalUser, buyerInternalUser) ||
                other.buyerInternalUser == buyerInternalUser) &&
            (identical(other.buyerExternalUser, buyerExternalUser) ||
                other.buyerExternalUser == buyerExternalUser) &&
            (identical(other.sellerExternalUser, sellerExternalUser) ||
                other.sellerExternalUser == sellerExternalUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      referenceNumber,
      creationDate,
      category,
      const DeepCollectionEquality().hash(_roleType),
      agreedSalePrice,
      agreedCommission,
      assignedAgent,
      status,
      const DeepCollectionEquality().hash(_rejection),
      userId,
      active,
      createdBy,
      client,
      sellerInternalUser,
      buyerInternalUser,
      buyerExternalUser,
      sellerExternalUser);

  @override
  String toString() {
    return 'DealResponse(id: $id, referenceNumber: $referenceNumber, creationDate: $creationDate, category: $category, roleType: $roleType, agreedSalePrice: $agreedSalePrice, agreedCommission: $agreedCommission, assignedAgent: $assignedAgent, status: $status, rejection: $rejection, userId: $userId, active: $active, createdBy: $createdBy, client: $client, sellerInternalUser: $sellerInternalUser, buyerInternalUser: $buyerInternalUser, buyerExternalUser: $buyerExternalUser, sellerExternalUser: $sellerExternalUser)';
  }
}

/// @nodoc
abstract mixin class _$DealResponseCopyWith<$Res>
    implements $DealResponseCopyWith<$Res> {
  factory _$DealResponseCopyWith(
          _DealResponse value, $Res Function(_DealResponse) _then) =
      __$DealResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'reference_number') String referenceNumber,
      @JsonKey(name: 'creation_date') DateTime creationDate,
      String category,
      List<String> roleType,
      @JsonKey(name: 'agreedSalePrice') double agreedSalePrice,
      double? agreedCommission,
      @JsonKey(name: 'assignedAgent') String? assignedAgent,
      String status,
      List<String> rejection,
      @JsonKey(name: 'user_id') String? userId,
      bool active,
      @JsonKey(name: 'created_by') User createdBy,
      @JsonKey(name: 'user') Lead? client,
      Lead? sellerInternalUser,
      Lead? buyerInternalUser,
      Agency? buyerExternalUser,
      Agency? sellerExternalUser});

  @override
  $UserCopyWith<$Res> get createdBy;
  @override
  $LeadCopyWith<$Res>? get client;
  @override
  $LeadCopyWith<$Res>? get sellerInternalUser;
  @override
  $LeadCopyWith<$Res>? get buyerInternalUser;
  @override
  $AgencyCopyWith<$Res>? get buyerExternalUser;
  @override
  $AgencyCopyWith<$Res>? get sellerExternalUser;
}

/// @nodoc
class __$DealResponseCopyWithImpl<$Res>
    implements _$DealResponseCopyWith<$Res> {
  __$DealResponseCopyWithImpl(this._self, this._then);

  final _DealResponse _self;
  final $Res Function(_DealResponse) _then;

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? referenceNumber = null,
    Object? creationDate = null,
    Object? category = null,
    Object? roleType = null,
    Object? agreedSalePrice = null,
    Object? agreedCommission = freezed,
    Object? assignedAgent = freezed,
    Object? status = null,
    Object? rejection = null,
    Object? userId = freezed,
    Object? active = null,
    Object? createdBy = null,
    Object? client = freezed,
    Object? sellerInternalUser = freezed,
    Object? buyerInternalUser = freezed,
    Object? buyerExternalUser = freezed,
    Object? sellerExternalUser = freezed,
  }) {
    return _then(_DealResponse(
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
      agreedSalePrice: null == agreedSalePrice
          ? _self.agreedSalePrice
          : agreedSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      agreedCommission: freezed == agreedCommission
          ? _self.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedAgent: freezed == assignedAgent
          ? _self.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejection: null == rejection
          ? _self._rejection
          : rejection // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
      client: freezed == client
          ? _self.client
          : client // ignore: cast_nullable_to_non_nullable
              as Lead?,
      sellerInternalUser: freezed == sellerInternalUser
          ? _self.sellerInternalUser
          : sellerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerInternalUser: freezed == buyerInternalUser
          ? _self.buyerInternalUser
          : buyerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerExternalUser: freezed == buyerExternalUser
          ? _self.buyerExternalUser
          : buyerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      sellerExternalUser: freezed == sellerExternalUser
          ? _self.sellerExternalUser
          : sellerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
    ));
  }

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of DealResponse
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

  /// Create a copy of DealResponse
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

  /// Create a copy of DealResponse
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

  /// Create a copy of DealResponse
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

  /// Create a copy of DealResponse
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
}

// dart format on
