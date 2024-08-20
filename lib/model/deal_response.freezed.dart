// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DealResponse _$DealResponseFromJson(Map<String, dynamic> json) {
  return _DealResponse.fromJson(json);
}

/// @nodoc
mixin _$DealResponse {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_number')
  String get referenceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_date')
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get roleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'agreedSalePrice')
  double get agreedSalePrice => throw _privateConstructorUsedError;
  double? get agreedCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'assignedAgent')
  String? get assignedAgent => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<String> get rejection => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  User get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  Lead? get client => throw _privateConstructorUsedError;
  Lead? get sellerInternalUser => throw _privateConstructorUsedError;
  Lead? get buyerInternalUser => throw _privateConstructorUsedError;
  Agency? get buyerExternalUser => throw _privateConstructorUsedError;
  Agency? get sellerExternalUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealResponseCopyWith<DealResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealResponseCopyWith<$Res> {
  factory $DealResponseCopyWith(
          DealResponse value, $Res Function(DealResponse) then) =
      _$DealResponseCopyWithImpl<$Res, DealResponse>;
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
class _$DealResponseCopyWithImpl<$Res, $Val extends DealResponse>
    implements $DealResponseCopyWith<$Res> {
  _$DealResponseCopyWithImpl(this._value, this._then);

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
      agreedSalePrice: null == agreedSalePrice
          ? _value.agreedSalePrice
          : agreedSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      agreedCommission: freezed == agreedCommission
          ? _value.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedAgent: freezed == assignedAgent
          ? _value.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejection: null == rejection
          ? _value.rejection
          : rejection // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Lead?,
      sellerInternalUser: freezed == sellerInternalUser
          ? _value.sellerInternalUser
          : sellerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerInternalUser: freezed == buyerInternalUser
          ? _value.buyerInternalUser
          : buyerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerExternalUser: freezed == buyerExternalUser
          ? _value.buyerExternalUser
          : buyerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      sellerExternalUser: freezed == sellerExternalUser
          ? _value.sellerExternalUser
          : sellerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get createdBy {
    return $UserCopyWith<$Res>(_value.createdBy, (value) {
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
  $AgencyCopyWith<$Res>? get sellerExternalUser {
    if (_value.sellerExternalUser == null) {
      return null;
    }

    return $AgencyCopyWith<$Res>(_value.sellerExternalUser!, (value) {
      return _then(_value.copyWith(sellerExternalUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DealResponseImplCopyWith<$Res>
    implements $DealResponseCopyWith<$Res> {
  factory _$$DealResponseImplCopyWith(
          _$DealResponseImpl value, $Res Function(_$DealResponseImpl) then) =
      __$$DealResponseImplCopyWithImpl<$Res>;
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
class __$$DealResponseImplCopyWithImpl<$Res>
    extends _$DealResponseCopyWithImpl<$Res, _$DealResponseImpl>
    implements _$$DealResponseImplCopyWith<$Res> {
  __$$DealResponseImplCopyWithImpl(
      _$DealResponseImpl _value, $Res Function(_$DealResponseImpl) _then)
      : super(_value, _then);

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
    return _then(_$DealResponseImpl(
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
      agreedSalePrice: null == agreedSalePrice
          ? _value.agreedSalePrice
          : agreedSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      agreedCommission: freezed == agreedCommission
          ? _value.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedAgent: freezed == assignedAgent
          ? _value.assignedAgent
          : assignedAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejection: null == rejection
          ? _value._rejection
          : rejection // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Lead?,
      sellerInternalUser: freezed == sellerInternalUser
          ? _value.sellerInternalUser
          : sellerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerInternalUser: freezed == buyerInternalUser
          ? _value.buyerInternalUser
          : buyerInternalUser // ignore: cast_nullable_to_non_nullable
              as Lead?,
      buyerExternalUser: freezed == buyerExternalUser
          ? _value.buyerExternalUser
          : buyerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
      sellerExternalUser: freezed == sellerExternalUser
          ? _value.sellerExternalUser
          : sellerExternalUser // ignore: cast_nullable_to_non_nullable
              as Agency?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DealResponseImpl implements _DealResponse {
  _$DealResponseImpl(
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

  factory _$DealResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealResponseImplFromJson(json);

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

  @override
  String toString() {
    return 'DealResponse(id: $id, referenceNumber: $referenceNumber, creationDate: $creationDate, category: $category, roleType: $roleType, agreedSalePrice: $agreedSalePrice, agreedCommission: $agreedCommission, assignedAgent: $assignedAgent, status: $status, rejection: $rejection, userId: $userId, active: $active, createdBy: $createdBy, client: $client, sellerInternalUser: $sellerInternalUser, buyerInternalUser: $buyerInternalUser, buyerExternalUser: $buyerExternalUser, sellerExternalUser: $sellerExternalUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealResponseImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DealResponseImplCopyWith<_$DealResponseImpl> get copyWith =>
      __$$DealResponseImplCopyWithImpl<_$DealResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealResponseImplToJson(
      this,
    );
  }
}

abstract class _DealResponse implements DealResponse {
  factory _DealResponse(
      {required final String id,
      @JsonKey(name: 'reference_number') required final String referenceNumber,
      @JsonKey(name: 'creation_date') required final DateTime creationDate,
      required final String category,
      final List<String> roleType,
      @JsonKey(name: 'agreedSalePrice') required final double agreedSalePrice,
      final double? agreedCommission,
      @JsonKey(name: 'assignedAgent') final String? assignedAgent,
      required final String status,
      final List<String> rejection,
      @JsonKey(name: 'user_id') final String? userId,
      required final bool active,
      @JsonKey(name: 'created_by') required final User createdBy,
      @JsonKey(name: 'user') final Lead? client,
      final Lead? sellerInternalUser,
      final Lead? buyerInternalUser,
      final Agency? buyerExternalUser,
      final Agency? sellerExternalUser}) = _$DealResponseImpl;

  factory _DealResponse.fromJson(Map<String, dynamic> json) =
      _$DealResponseImpl.fromJson;

  @override
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
  @JsonKey(name: 'agreedSalePrice')
  double get agreedSalePrice;
  @override
  double? get agreedCommission;
  @override
  @JsonKey(name: 'assignedAgent')
  String? get assignedAgent;
  @override
  String get status;
  @override
  List<String> get rejection;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  bool get active;
  @override
  @JsonKey(name: 'created_by')
  User get createdBy;
  @override
  @JsonKey(name: 'user')
  Lead? get client;
  @override
  Lead? get sellerInternalUser;
  @override
  Lead? get buyerInternalUser;
  @override
  Agency? get buyerExternalUser;
  @override
  Agency? get sellerExternalUser;
  @override
  @JsonKey(ignore: true)
  _$$DealResponseImplCopyWith<_$DealResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
