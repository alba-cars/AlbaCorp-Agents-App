// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewListingRequest implements DiagnosticableTreeMixin {
  String get id;
  @JsonKey(name: 'user_id')
  String get userId;
  @JsonKey(name: 'property_type_id')
  String? get propertyTypeId;
  @JsonKey(name: 'community_id')
  String? get communityId;
  @JsonKey(name: 'building_id')
  String? get buildingId;
  bool get multiple;
  String? get type;
  String? get beds;
  String? get baths;
  num? get price;
  num? get size;
  @JsonKey(name: 'property_type')
  PropertyType? get propertyType;
  Community? get community;
  Building? get building; // @Default([]) List<Amenity> amenities,
  String? get furnishing;
  String? get contractValidity;
  String? get vacancy;
  int? get numberOfCheques;
  bool get exclusive;
  bool get isOffPlanResale;
  bool get vacantOnTransfer;
  String? get relatedInfo;

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewListingRequestCopyWith<NewListingRequest> get copyWith =>
      _$NewListingRequestCopyWithImpl<NewListingRequest>(
          this as NewListingRequest, _$identity);

  /// Serializes this NewListingRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NewListingRequest'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('propertyTypeId', propertyTypeId))
      ..add(DiagnosticsProperty('communityId', communityId))
      ..add(DiagnosticsProperty('buildingId', buildingId))
      ..add(DiagnosticsProperty('multiple', multiple))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('beds', beds))
      ..add(DiagnosticsProperty('baths', baths))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('propertyType', propertyType))
      ..add(DiagnosticsProperty('community', community))
      ..add(DiagnosticsProperty('building', building))
      ..add(DiagnosticsProperty('furnishing', furnishing))
      ..add(DiagnosticsProperty('contractValidity', contractValidity))
      ..add(DiagnosticsProperty('vacancy', vacancy))
      ..add(DiagnosticsProperty('numberOfCheques', numberOfCheques))
      ..add(DiagnosticsProperty('exclusive', exclusive))
      ..add(DiagnosticsProperty('isOffPlanResale', isOffPlanResale))
      ..add(DiagnosticsProperty('vacantOnTransfer', vacantOnTransfer))
      ..add(DiagnosticsProperty('relatedInfo', relatedInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewListingRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.multiple, multiple) ||
                other.multiple == multiple) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.baths, baths) || other.baths == baths) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.furnishing, furnishing) ||
                other.furnishing == furnishing) &&
            (identical(other.contractValidity, contractValidity) ||
                other.contractValidity == contractValidity) &&
            (identical(other.vacancy, vacancy) || other.vacancy == vacancy) &&
            (identical(other.numberOfCheques, numberOfCheques) ||
                other.numberOfCheques == numberOfCheques) &&
            (identical(other.exclusive, exclusive) ||
                other.exclusive == exclusive) &&
            (identical(other.isOffPlanResale, isOffPlanResale) ||
                other.isOffPlanResale == isOffPlanResale) &&
            (identical(other.vacantOnTransfer, vacantOnTransfer) ||
                other.vacantOnTransfer == vacantOnTransfer) &&
            (identical(other.relatedInfo, relatedInfo) ||
                other.relatedInfo == relatedInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        propertyTypeId,
        communityId,
        buildingId,
        multiple,
        type,
        beds,
        baths,
        price,
        size,
        propertyType,
        community,
        building,
        furnishing,
        contractValidity,
        vacancy,
        numberOfCheques,
        exclusive,
        isOffPlanResale,
        vacantOnTransfer,
        relatedInfo
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewListingRequest(id: $id, userId: $userId, propertyTypeId: $propertyTypeId, communityId: $communityId, buildingId: $buildingId, multiple: $multiple, type: $type, beds: $beds, baths: $baths, price: $price, size: $size, propertyType: $propertyType, community: $community, building: $building, furnishing: $furnishing, contractValidity: $contractValidity, vacancy: $vacancy, numberOfCheques: $numberOfCheques, exclusive: $exclusive, isOffPlanResale: $isOffPlanResale, vacantOnTransfer: $vacantOnTransfer, relatedInfo: $relatedInfo)';
  }
}

/// @nodoc
abstract mixin class $NewListingRequestCopyWith<$Res> {
  factory $NewListingRequestCopyWith(
          NewListingRequest value, $Res Function(NewListingRequest) _then) =
      _$NewListingRequestCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'property_type_id') String? propertyTypeId,
      @JsonKey(name: 'community_id') String? communityId,
      @JsonKey(name: 'building_id') String? buildingId,
      bool multiple,
      String? type,
      String? beds,
      String? baths,
      num? price,
      num? size,
      @JsonKey(name: 'property_type') PropertyType? propertyType,
      Community? community,
      Building? building,
      String? furnishing,
      String? contractValidity,
      String? vacancy,
      int? numberOfCheques,
      bool exclusive,
      bool isOffPlanResale,
      bool vacantOnTransfer,
      String? relatedInfo});

  $PropertyTypeCopyWith<$Res>? get propertyType;
  $CommunityCopyWith<$Res>? get community;
  $BuildingCopyWith<$Res>? get building;
}

/// @nodoc
class _$NewListingRequestCopyWithImpl<$Res>
    implements $NewListingRequestCopyWith<$Res> {
  _$NewListingRequestCopyWithImpl(this._self, this._then);

  final NewListingRequest _self;
  final $Res Function(NewListingRequest) _then;

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? propertyTypeId = freezed,
    Object? communityId = freezed,
    Object? buildingId = freezed,
    Object? multiple = null,
    Object? type = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? price = freezed,
    Object? size = freezed,
    Object? propertyType = freezed,
    Object? community = freezed,
    Object? building = freezed,
    Object? furnishing = freezed,
    Object? contractValidity = freezed,
    Object? vacancy = freezed,
    Object? numberOfCheques = freezed,
    Object? exclusive = null,
    Object? isOffPlanResale = null,
    Object? vacantOnTransfer = null,
    Object? relatedInfo = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: freezed == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _self.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingId: freezed == buildingId
          ? _self.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: null == multiple
          ? _self.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _self.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _self.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as num?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyType?,
      community: freezed == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      building: freezed == building
          ? _self.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
      furnishing: freezed == furnishing
          ? _self.furnishing
          : furnishing // ignore: cast_nullable_to_non_nullable
              as String?,
      contractValidity: freezed == contractValidity
          ? _self.contractValidity
          : contractValidity // ignore: cast_nullable_to_non_nullable
              as String?,
      vacancy: freezed == vacancy
          ? _self.vacancy
          : vacancy // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfCheques: freezed == numberOfCheques
          ? _self.numberOfCheques
          : numberOfCheques // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusive: null == exclusive
          ? _self.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as bool,
      isOffPlanResale: null == isOffPlanResale
          ? _self.isOffPlanResale
          : isOffPlanResale // ignore: cast_nullable_to_non_nullable
              as bool,
      vacantOnTransfer: null == vacantOnTransfer
          ? _self.vacantOnTransfer
          : vacantOnTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedInfo: freezed == relatedInfo
          ? _self.relatedInfo
          : relatedInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeCopyWith<$Res>? get propertyType {
    if (_self.propertyType == null) {
      return null;
    }

    return $PropertyTypeCopyWith<$Res>(_self.propertyType!, (value) {
      return _then(_self.copyWith(propertyType: value));
    });
  }

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<$Res>? get community {
    if (_self.community == null) {
      return null;
    }

    return $CommunityCopyWith<$Res>(_self.community!, (value) {
      return _then(_self.copyWith(community: value));
    });
  }

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BuildingCopyWith<$Res>? get building {
    if (_self.building == null) {
      return null;
    }

    return $BuildingCopyWith<$Res>(_self.building!, (value) {
      return _then(_self.copyWith(building: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _NewListingRequest
    with DiagnosticableTreeMixin
    implements NewListingRequest {
  const _NewListingRequest(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'property_type_id') this.propertyTypeId,
      @JsonKey(name: 'community_id') this.communityId,
      @JsonKey(name: 'building_id') this.buildingId,
      required this.multiple,
      required this.type,
      required this.beds,
      required this.baths,
      required this.price,
      required this.size,
      @JsonKey(name: 'property_type') required this.propertyType,
      required this.community,
      this.building,
      this.furnishing,
      this.contractValidity,
      this.vacancy,
      this.numberOfCheques,
      this.exclusive = false,
      this.isOffPlanResale = false,
      this.vacantOnTransfer = false,
      this.relatedInfo});
  factory _NewListingRequest.fromJson(Map<String, dynamic> json) =>
      _$NewListingRequestFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'property_type_id')
  final String? propertyTypeId;
  @override
  @JsonKey(name: 'community_id')
  final String? communityId;
  @override
  @JsonKey(name: 'building_id')
  final String? buildingId;
  @override
  final bool multiple;
  @override
  final String? type;
  @override
  final String? beds;
  @override
  final String? baths;
  @override
  final num? price;
  @override
  final num? size;
  @override
  @JsonKey(name: 'property_type')
  final PropertyType? propertyType;
  @override
  final Community? community;
  @override
  final Building? building;
// @Default([]) List<Amenity> amenities,
  @override
  final String? furnishing;
  @override
  final String? contractValidity;
  @override
  final String? vacancy;
  @override
  final int? numberOfCheques;
  @override
  @JsonKey()
  final bool exclusive;
  @override
  @JsonKey()
  final bool isOffPlanResale;
  @override
  @JsonKey()
  final bool vacantOnTransfer;
  @override
  final String? relatedInfo;

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewListingRequestCopyWith<_NewListingRequest> get copyWith =>
      __$NewListingRequestCopyWithImpl<_NewListingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NewListingRequestToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NewListingRequest'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('propertyTypeId', propertyTypeId))
      ..add(DiagnosticsProperty('communityId', communityId))
      ..add(DiagnosticsProperty('buildingId', buildingId))
      ..add(DiagnosticsProperty('multiple', multiple))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('beds', beds))
      ..add(DiagnosticsProperty('baths', baths))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('propertyType', propertyType))
      ..add(DiagnosticsProperty('community', community))
      ..add(DiagnosticsProperty('building', building))
      ..add(DiagnosticsProperty('furnishing', furnishing))
      ..add(DiagnosticsProperty('contractValidity', contractValidity))
      ..add(DiagnosticsProperty('vacancy', vacancy))
      ..add(DiagnosticsProperty('numberOfCheques', numberOfCheques))
      ..add(DiagnosticsProperty('exclusive', exclusive))
      ..add(DiagnosticsProperty('isOffPlanResale', isOffPlanResale))
      ..add(DiagnosticsProperty('vacantOnTransfer', vacantOnTransfer))
      ..add(DiagnosticsProperty('relatedInfo', relatedInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewListingRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.multiple, multiple) ||
                other.multiple == multiple) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.baths, baths) || other.baths == baths) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.furnishing, furnishing) ||
                other.furnishing == furnishing) &&
            (identical(other.contractValidity, contractValidity) ||
                other.contractValidity == contractValidity) &&
            (identical(other.vacancy, vacancy) || other.vacancy == vacancy) &&
            (identical(other.numberOfCheques, numberOfCheques) ||
                other.numberOfCheques == numberOfCheques) &&
            (identical(other.exclusive, exclusive) ||
                other.exclusive == exclusive) &&
            (identical(other.isOffPlanResale, isOffPlanResale) ||
                other.isOffPlanResale == isOffPlanResale) &&
            (identical(other.vacantOnTransfer, vacantOnTransfer) ||
                other.vacantOnTransfer == vacantOnTransfer) &&
            (identical(other.relatedInfo, relatedInfo) ||
                other.relatedInfo == relatedInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        propertyTypeId,
        communityId,
        buildingId,
        multiple,
        type,
        beds,
        baths,
        price,
        size,
        propertyType,
        community,
        building,
        furnishing,
        contractValidity,
        vacancy,
        numberOfCheques,
        exclusive,
        isOffPlanResale,
        vacantOnTransfer,
        relatedInfo
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewListingRequest(id: $id, userId: $userId, propertyTypeId: $propertyTypeId, communityId: $communityId, buildingId: $buildingId, multiple: $multiple, type: $type, beds: $beds, baths: $baths, price: $price, size: $size, propertyType: $propertyType, community: $community, building: $building, furnishing: $furnishing, contractValidity: $contractValidity, vacancy: $vacancy, numberOfCheques: $numberOfCheques, exclusive: $exclusive, isOffPlanResale: $isOffPlanResale, vacantOnTransfer: $vacantOnTransfer, relatedInfo: $relatedInfo)';
  }
}

/// @nodoc
abstract mixin class _$NewListingRequestCopyWith<$Res>
    implements $NewListingRequestCopyWith<$Res> {
  factory _$NewListingRequestCopyWith(
          _NewListingRequest value, $Res Function(_NewListingRequest) _then) =
      __$NewListingRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'property_type_id') String? propertyTypeId,
      @JsonKey(name: 'community_id') String? communityId,
      @JsonKey(name: 'building_id') String? buildingId,
      bool multiple,
      String? type,
      String? beds,
      String? baths,
      num? price,
      num? size,
      @JsonKey(name: 'property_type') PropertyType? propertyType,
      Community? community,
      Building? building,
      String? furnishing,
      String? contractValidity,
      String? vacancy,
      int? numberOfCheques,
      bool exclusive,
      bool isOffPlanResale,
      bool vacantOnTransfer,
      String? relatedInfo});

  @override
  $PropertyTypeCopyWith<$Res>? get propertyType;
  @override
  $CommunityCopyWith<$Res>? get community;
  @override
  $BuildingCopyWith<$Res>? get building;
}

/// @nodoc
class __$NewListingRequestCopyWithImpl<$Res>
    implements _$NewListingRequestCopyWith<$Res> {
  __$NewListingRequestCopyWithImpl(this._self, this._then);

  final _NewListingRequest _self;
  final $Res Function(_NewListingRequest) _then;

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? propertyTypeId = freezed,
    Object? communityId = freezed,
    Object? buildingId = freezed,
    Object? multiple = null,
    Object? type = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? price = freezed,
    Object? size = freezed,
    Object? propertyType = freezed,
    Object? community = freezed,
    Object? building = freezed,
    Object? furnishing = freezed,
    Object? contractValidity = freezed,
    Object? vacancy = freezed,
    Object? numberOfCheques = freezed,
    Object? exclusive = null,
    Object? isOffPlanResale = null,
    Object? vacantOnTransfer = null,
    Object? relatedInfo = freezed,
  }) {
    return _then(_NewListingRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: freezed == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _self.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingId: freezed == buildingId
          ? _self.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: null == multiple
          ? _self.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _self.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _self.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as num?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyType?,
      community: freezed == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      building: freezed == building
          ? _self.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
      furnishing: freezed == furnishing
          ? _self.furnishing
          : furnishing // ignore: cast_nullable_to_non_nullable
              as String?,
      contractValidity: freezed == contractValidity
          ? _self.contractValidity
          : contractValidity // ignore: cast_nullable_to_non_nullable
              as String?,
      vacancy: freezed == vacancy
          ? _self.vacancy
          : vacancy // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfCheques: freezed == numberOfCheques
          ? _self.numberOfCheques
          : numberOfCheques // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusive: null == exclusive
          ? _self.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as bool,
      isOffPlanResale: null == isOffPlanResale
          ? _self.isOffPlanResale
          : isOffPlanResale // ignore: cast_nullable_to_non_nullable
              as bool,
      vacantOnTransfer: null == vacantOnTransfer
          ? _self.vacantOnTransfer
          : vacantOnTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedInfo: freezed == relatedInfo
          ? _self.relatedInfo
          : relatedInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeCopyWith<$Res>? get propertyType {
    if (_self.propertyType == null) {
      return null;
    }

    return $PropertyTypeCopyWith<$Res>(_self.propertyType!, (value) {
      return _then(_self.copyWith(propertyType: value));
    });
  }

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<$Res>? get community {
    if (_self.community == null) {
      return null;
    }

    return $CommunityCopyWith<$Res>(_self.community!, (value) {
      return _then(_self.copyWith(community: value));
    });
  }

  /// Create a copy of NewListingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BuildingCopyWith<$Res>? get building {
    if (_self.building == null) {
      return null;
    }

    return $BuildingCopyWith<$Res>(_self.building!, (value) {
      return _then(_self.copyWith(building: value));
    });
  }
}

// dart format on
