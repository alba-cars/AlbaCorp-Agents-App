// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewListingRequest _$NewListingRequestFromJson(Map<String, dynamic> json) {
  return _NewListingRequest.fromJson(json);
}

/// @nodoc
mixin _$NewListingRequest {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_type_id')
  String? get propertyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'community_id')
  String? get communityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_id')
  String? get buildingId => throw _privateConstructorUsedError;
  bool get multiple => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get beds => throw _privateConstructorUsedError;
  String? get baths => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  num? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_type')
  PropertyType? get propertyType => throw _privateConstructorUsedError;
  Community? get community => throw _privateConstructorUsedError;
  Building? get building =>
      throw _privateConstructorUsedError; // @Default([]) List<Amenity> amenities,
  String? get furnishing => throw _privateConstructorUsedError;
  String? get contractValidity => throw _privateConstructorUsedError;
  String? get vacancy => throw _privateConstructorUsedError;
  int? get numberOfCheques => throw _privateConstructorUsedError;
  bool get exclusive => throw _privateConstructorUsedError;
  bool get isOffPlanResale => throw _privateConstructorUsedError;
  bool get vacantOnTransfer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewListingRequestCopyWith<NewListingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewListingRequestCopyWith<$Res> {
  factory $NewListingRequestCopyWith(
          NewListingRequest value, $Res Function(NewListingRequest) then) =
      _$NewListingRequestCopyWithImpl<$Res, NewListingRequest>;
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
      bool vacantOnTransfer});

  $PropertyTypeCopyWith<$Res>? get propertyType;
  $CommunityCopyWith<$Res>? get community;
  $BuildingCopyWith<$Res>? get building;
}

/// @nodoc
class _$NewListingRequestCopyWithImpl<$Res, $Val extends NewListingRequest>
    implements $NewListingRequestCopyWith<$Res> {
  _$NewListingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: freezed == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingId: freezed == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: null == multiple
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _value.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as num?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyType?,
      community: freezed == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
      furnishing: freezed == furnishing
          ? _value.furnishing
          : furnishing // ignore: cast_nullable_to_non_nullable
              as String?,
      contractValidity: freezed == contractValidity
          ? _value.contractValidity
          : contractValidity // ignore: cast_nullable_to_non_nullable
              as String?,
      vacancy: freezed == vacancy
          ? _value.vacancy
          : vacancy // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfCheques: freezed == numberOfCheques
          ? _value.numberOfCheques
          : numberOfCheques // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusive: null == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as bool,
      isOffPlanResale: null == isOffPlanResale
          ? _value.isOffPlanResale
          : isOffPlanResale // ignore: cast_nullable_to_non_nullable
              as bool,
      vacantOnTransfer: null == vacantOnTransfer
          ? _value.vacantOnTransfer
          : vacantOnTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeCopyWith<$Res>? get propertyType {
    if (_value.propertyType == null) {
      return null;
    }

    return $PropertyTypeCopyWith<$Res>(_value.propertyType!, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommunityCopyWith<$Res>? get community {
    if (_value.community == null) {
      return null;
    }

    return $CommunityCopyWith<$Res>(_value.community!, (value) {
      return _then(_value.copyWith(community: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BuildingCopyWith<$Res>? get building {
    if (_value.building == null) {
      return null;
    }

    return $BuildingCopyWith<$Res>(_value.building!, (value) {
      return _then(_value.copyWith(building: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewListingRequestImplCopyWith<$Res>
    implements $NewListingRequestCopyWith<$Res> {
  factory _$$NewListingRequestImplCopyWith(_$NewListingRequestImpl value,
          $Res Function(_$NewListingRequestImpl) then) =
      __$$NewListingRequestImplCopyWithImpl<$Res>;
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
      bool vacantOnTransfer});

  @override
  $PropertyTypeCopyWith<$Res>? get propertyType;
  @override
  $CommunityCopyWith<$Res>? get community;
  @override
  $BuildingCopyWith<$Res>? get building;
}

/// @nodoc
class __$$NewListingRequestImplCopyWithImpl<$Res>
    extends _$NewListingRequestCopyWithImpl<$Res, _$NewListingRequestImpl>
    implements _$$NewListingRequestImplCopyWith<$Res> {
  __$$NewListingRequestImplCopyWithImpl(_$NewListingRequestImpl _value,
      $Res Function(_$NewListingRequestImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$NewListingRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: freezed == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingId: freezed == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: null == multiple
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _value.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as num?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyType?,
      community: freezed == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
      furnishing: freezed == furnishing
          ? _value.furnishing
          : furnishing // ignore: cast_nullable_to_non_nullable
              as String?,
      contractValidity: freezed == contractValidity
          ? _value.contractValidity
          : contractValidity // ignore: cast_nullable_to_non_nullable
              as String?,
      vacancy: freezed == vacancy
          ? _value.vacancy
          : vacancy // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfCheques: freezed == numberOfCheques
          ? _value.numberOfCheques
          : numberOfCheques // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusive: null == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as bool,
      isOffPlanResale: null == isOffPlanResale
          ? _value.isOffPlanResale
          : isOffPlanResale // ignore: cast_nullable_to_non_nullable
              as bool,
      vacantOnTransfer: null == vacantOnTransfer
          ? _value.vacantOnTransfer
          : vacantOnTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewListingRequestImpl
    with DiagnosticableTreeMixin
    implements _NewListingRequest {
  const _$NewListingRequestImpl(
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
      this.vacantOnTransfer = false});

  factory _$NewListingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewListingRequestImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewListingRequest(id: $id, userId: $userId, propertyTypeId: $propertyTypeId, communityId: $communityId, buildingId: $buildingId, multiple: $multiple, type: $type, beds: $beds, baths: $baths, price: $price, size: $size, propertyType: $propertyType, community: $community, building: $building, furnishing: $furnishing, contractValidity: $contractValidity, vacancy: $vacancy, numberOfCheques: $numberOfCheques, exclusive: $exclusive, isOffPlanResale: $isOffPlanResale, vacantOnTransfer: $vacantOnTransfer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
      ..add(DiagnosticsProperty('vacantOnTransfer', vacantOnTransfer));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewListingRequestImpl &&
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
                other.vacantOnTransfer == vacantOnTransfer));
  }

  @JsonKey(ignore: true)
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
        vacantOnTransfer
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewListingRequestImplCopyWith<_$NewListingRequestImpl> get copyWith =>
      __$$NewListingRequestImplCopyWithImpl<_$NewListingRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewListingRequestImplToJson(
      this,
    );
  }
}

abstract class _NewListingRequest implements NewListingRequest {
  const factory _NewListingRequest(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'property_type_id') final String? propertyTypeId,
      @JsonKey(name: 'community_id') final String? communityId,
      @JsonKey(name: 'building_id') final String? buildingId,
      required final bool multiple,
      required final String? type,
      required final String? beds,
      required final String? baths,
      required final num? price,
      required final num? size,
      @JsonKey(name: 'property_type') required final PropertyType? propertyType,
      required final Community? community,
      final Building? building,
      final String? furnishing,
      final String? contractValidity,
      final String? vacancy,
      final int? numberOfCheques,
      final bool exclusive,
      final bool isOffPlanResale,
      final bool vacantOnTransfer}) = _$NewListingRequestImpl;

  factory _NewListingRequest.fromJson(Map<String, dynamic> json) =
      _$NewListingRequestImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'property_type_id')
  String? get propertyTypeId;
  @override
  @JsonKey(name: 'community_id')
  String? get communityId;
  @override
  @JsonKey(name: 'building_id')
  String? get buildingId;
  @override
  bool get multiple;
  @override
  String? get type;
  @override
  String? get beds;
  @override
  String? get baths;
  @override
  num? get price;
  @override
  num? get size;
  @override
  @JsonKey(name: 'property_type')
  PropertyType? get propertyType;
  @override
  Community? get community;
  @override
  Building? get building;
  @override // @Default([]) List<Amenity> amenities,
  String? get furnishing;
  @override
  String? get contractValidity;
  @override
  String? get vacancy;
  @override
  int? get numberOfCheques;
  @override
  bool get exclusive;
  @override
  bool get isOffPlanResale;
  @override
  bool get vacantOnTransfer;
  @override
  @JsonKey(ignore: true)
  _$$NewListingRequestImplCopyWith<_$NewListingRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
