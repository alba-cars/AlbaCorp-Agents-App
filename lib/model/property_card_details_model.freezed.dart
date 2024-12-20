// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_card_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyCardDetailsModel _$PropertyCardDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _PropertyCardDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyCardDetailsModel {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'plCreationDate')
  dynamic get plCreationDate => throw _privateConstructorUsedError;
  Building? get building => throw _privateConstructorUsedError;
  @JsonKey(name: 'community')
  Community? get community => throw _privateConstructorUsedError;
  String? get beds => throw _privateConstructorUsedError;
  int? get baths => throw _privateConstructorUsedError;
  double? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'propertyType')
  String? get propertyType => throw _privateConstructorUsedError;
  @JsonKey(readValue: readCreatedBy)
  dynamic get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'partyType')
  String? get partyType => throw _privateConstructorUsedError;
  String? get cluster => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  List<dynamic>? get amenities => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkedOutDate')
  DateTime? get checkedOutDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentAgent')
  dynamic get currentAgent => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentOwner', readValue: readCreatedBy)
  dynamic get currentOwner => throw _privateConstructorUsedError;
  @JsonKey(name: 'referenceNumber')
  String? get referenceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'expirationDate')
  DateTime? get expirationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'availableForCheckout')
  bool get availableForCheckout => throw _privateConstructorUsedError;
  List<PropertyCardPhoto> get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'leadsCount')
  int? get leadsCount => throw _privateConstructorUsedError;
  num? get askingPrice => throw _privateConstructorUsedError;
  num? get agentValutionPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCardDetailsModelCopyWith<PropertyCardDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCardDetailsModelCopyWith<$Res> {
  factory $PropertyCardDetailsModelCopyWith(PropertyCardDetailsModel value,
          $Res Function(PropertyCardDetailsModel) then) =
      _$PropertyCardDetailsModelCopyWithImpl<$Res, PropertyCardDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(name: 'plCreationDate') dynamic plCreationDate,
      Building? building,
      @JsonKey(name: 'community') Community? community,
      String? beds,
      int? baths,
      double? size,
      @JsonKey(name: 'propertyType') String? propertyType,
      @JsonKey(readValue: readCreatedBy) dynamic createdBy,
      @JsonKey(name: 'partyType') String? partyType,
      String? cluster,
      String? status,
      String? purpose,
      List<dynamic>? amenities,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'checkedOutDate') DateTime? checkedOutDate,
      @JsonKey(name: 'currentAgent') dynamic currentAgent,
      @JsonKey(name: 'currentOwner', readValue: readCreatedBy)
      dynamic currentOwner,
      @JsonKey(name: 'referenceNumber') String? referenceNumber,
      @JsonKey(name: 'expirationDate') DateTime? expirationDate,
      @JsonKey(name: 'availableForCheckout') bool availableForCheckout,
      List<PropertyCardPhoto> photos,
      @JsonKey(name: 'leadsCount') int? leadsCount,
      num? askingPrice,
      num? agentValutionPrice});

  $BuildingCopyWith<$Res>? get building;
  $CommunityCopyWith<$Res>? get community;
}

/// @nodoc
class _$PropertyCardDetailsModelCopyWithImpl<$Res,
        $Val extends PropertyCardDetailsModel>
    implements $PropertyCardDetailsModelCopyWith<$Res> {
  _$PropertyCardDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plCreationDate = freezed,
    Object? building = freezed,
    Object? community = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? size = freezed,
    Object? propertyType = freezed,
    Object? createdBy = freezed,
    Object? partyType = freezed,
    Object? cluster = freezed,
    Object? status = freezed,
    Object? purpose = freezed,
    Object? amenities = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? checkedOutDate = freezed,
    Object? currentAgent = freezed,
    Object? currentOwner = freezed,
    Object? referenceNumber = freezed,
    Object? expirationDate = freezed,
    Object? availableForCheckout = null,
    Object? photos = null,
    Object? leadsCount = freezed,
    Object? askingPrice = freezed,
    Object? agentValutionPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      plCreationDate: freezed == plCreationDate
          ? _value.plCreationDate
          : plCreationDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
      community: freezed == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      beds: freezed == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _value.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partyType: freezed == partyType
          ? _value.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as String?,
      cluster: freezed == cluster
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkedOutDate: freezed == checkedOutDate
          ? _value.checkedOutDate
          : checkedOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentAgent: freezed == currentAgent
          ? _value.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentOwner: freezed == currentOwner
          ? _value.currentOwner
          : currentOwner // ignore: cast_nullable_to_non_nullable
              as dynamic,
      referenceNumber: freezed == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableForCheckout: null == availableForCheckout
          ? _value.availableForCheckout
          : availableForCheckout // ignore: cast_nullable_to_non_nullable
              as bool,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PropertyCardPhoto>,
      leadsCount: freezed == leadsCount
          ? _value.leadsCount
          : leadsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      askingPrice: freezed == askingPrice
          ? _value.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      agentValutionPrice: freezed == agentValutionPrice
          ? _value.agentValutionPrice
          : agentValutionPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$PropertyCardDetailsModelImplCopyWith<$Res>
    implements $PropertyCardDetailsModelCopyWith<$Res> {
  factory _$$PropertyCardDetailsModelImplCopyWith(
          _$PropertyCardDetailsModelImpl value,
          $Res Function(_$PropertyCardDetailsModelImpl) then) =
      __$$PropertyCardDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(name: 'plCreationDate') dynamic plCreationDate,
      Building? building,
      @JsonKey(name: 'community') Community? community,
      String? beds,
      int? baths,
      double? size,
      @JsonKey(name: 'propertyType') String? propertyType,
      @JsonKey(readValue: readCreatedBy) dynamic createdBy,
      @JsonKey(name: 'partyType') String? partyType,
      String? cluster,
      String? status,
      String? purpose,
      List<dynamic>? amenities,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'checkedOutDate') DateTime? checkedOutDate,
      @JsonKey(name: 'currentAgent') dynamic currentAgent,
      @JsonKey(name: 'currentOwner', readValue: readCreatedBy)
      dynamic currentOwner,
      @JsonKey(name: 'referenceNumber') String? referenceNumber,
      @JsonKey(name: 'expirationDate') DateTime? expirationDate,
      @JsonKey(name: 'availableForCheckout') bool availableForCheckout,
      List<PropertyCardPhoto> photos,
      @JsonKey(name: 'leadsCount') int? leadsCount,
      num? askingPrice,
      num? agentValutionPrice});

  @override
  $BuildingCopyWith<$Res>? get building;
  @override
  $CommunityCopyWith<$Res>? get community;
}

/// @nodoc
class __$$PropertyCardDetailsModelImplCopyWithImpl<$Res>
    extends _$PropertyCardDetailsModelCopyWithImpl<$Res,
        _$PropertyCardDetailsModelImpl>
    implements _$$PropertyCardDetailsModelImplCopyWith<$Res> {
  __$$PropertyCardDetailsModelImplCopyWithImpl(
      _$PropertyCardDetailsModelImpl _value,
      $Res Function(_$PropertyCardDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plCreationDate = freezed,
    Object? building = freezed,
    Object? community = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? size = freezed,
    Object? propertyType = freezed,
    Object? createdBy = freezed,
    Object? partyType = freezed,
    Object? cluster = freezed,
    Object? status = freezed,
    Object? purpose = freezed,
    Object? amenities = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? checkedOutDate = freezed,
    Object? currentAgent = freezed,
    Object? currentOwner = freezed,
    Object? referenceNumber = freezed,
    Object? expirationDate = freezed,
    Object? availableForCheckout = null,
    Object? photos = null,
    Object? leadsCount = freezed,
    Object? askingPrice = freezed,
    Object? agentValutionPrice = freezed,
  }) {
    return _then(_$PropertyCardDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      plCreationDate: freezed == plCreationDate
          ? _value.plCreationDate
          : plCreationDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
      community: freezed == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      beds: freezed == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _value.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partyType: freezed == partyType
          ? _value.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as String?,
      cluster: freezed == cluster
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkedOutDate: freezed == checkedOutDate
          ? _value.checkedOutDate
          : checkedOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentAgent: freezed == currentAgent
          ? _value.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentOwner: freezed == currentOwner
          ? _value.currentOwner
          : currentOwner // ignore: cast_nullable_to_non_nullable
              as dynamic,
      referenceNumber: freezed == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableForCheckout: null == availableForCheckout
          ? _value.availableForCheckout
          : availableForCheckout // ignore: cast_nullable_to_non_nullable
              as bool,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PropertyCardPhoto>,
      leadsCount: freezed == leadsCount
          ? _value.leadsCount
          : leadsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      askingPrice: freezed == askingPrice
          ? _value.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      agentValutionPrice: freezed == agentValutionPrice
          ? _value.agentValutionPrice
          : agentValutionPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyCardDetailsModelImpl implements _PropertyCardDetailsModel {
  const _$PropertyCardDetailsModelImpl(
      {@JsonKey(readValue: readId) required this.id,
      @JsonKey(name: 'plCreationDate') this.plCreationDate,
      this.building,
      @JsonKey(name: 'community') this.community,
      this.beds,
      this.baths,
      this.size,
      @JsonKey(name: 'propertyType') this.propertyType,
      @JsonKey(readValue: readCreatedBy) this.createdBy,
      @JsonKey(name: 'partyType') this.partyType,
      this.cluster,
      this.status,
      this.purpose,
      final List<dynamic>? amenities,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'checkedOutDate') this.checkedOutDate,
      @JsonKey(name: 'currentAgent') this.currentAgent,
      @JsonKey(name: 'currentOwner', readValue: readCreatedBy)
      this.currentOwner,
      @JsonKey(name: 'referenceNumber') this.referenceNumber,
      @JsonKey(name: 'expirationDate') this.expirationDate,
      @JsonKey(name: 'availableForCheckout') this.availableForCheckout = false,
      final List<PropertyCardPhoto> photos = const [],
      @JsonKey(name: 'leadsCount') this.leadsCount,
      this.askingPrice,
      this.agentValutionPrice})
      : _amenities = amenities,
        _photos = photos;

  factory _$PropertyCardDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyCardDetailsModelImplFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  @JsonKey(name: 'plCreationDate')
  final dynamic plCreationDate;
  @override
  final Building? building;
  @override
  @JsonKey(name: 'community')
  final Community? community;
  @override
  final String? beds;
  @override
  final int? baths;
  @override
  final double? size;
  @override
  @JsonKey(name: 'propertyType')
  final String? propertyType;
  @override
  @JsonKey(readValue: readCreatedBy)
  final dynamic createdBy;
  @override
  @JsonKey(name: 'partyType')
  final String? partyType;
  @override
  final String? cluster;
  @override
  final String? status;
  @override
  final String? purpose;
  final List<dynamic>? _amenities;
  @override
  List<dynamic>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'checkedOutDate')
  final DateTime? checkedOutDate;
  @override
  @JsonKey(name: 'currentAgent')
  final dynamic currentAgent;
  @override
  @JsonKey(name: 'currentOwner', readValue: readCreatedBy)
  final dynamic currentOwner;
  @override
  @JsonKey(name: 'referenceNumber')
  final String? referenceNumber;
  @override
  @JsonKey(name: 'expirationDate')
  final DateTime? expirationDate;
  @override
  @JsonKey(name: 'availableForCheckout')
  final bool availableForCheckout;
  final List<PropertyCardPhoto> _photos;
  @override
  @JsonKey()
  List<PropertyCardPhoto> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @JsonKey(name: 'leadsCount')
  final int? leadsCount;
  @override
  final num? askingPrice;
  @override
  final num? agentValutionPrice;

  @override
  String toString() {
    return 'PropertyCardDetailsModel(id: $id, plCreationDate: $plCreationDate, building: $building, community: $community, beds: $beds, baths: $baths, size: $size, propertyType: $propertyType, createdBy: $createdBy, partyType: $partyType, cluster: $cluster, status: $status, purpose: $purpose, amenities: $amenities, createdAt: $createdAt, updatedAt: $updatedAt, checkedOutDate: $checkedOutDate, currentAgent: $currentAgent, currentOwner: $currentOwner, referenceNumber: $referenceNumber, expirationDate: $expirationDate, availableForCheckout: $availableForCheckout, photos: $photos, leadsCount: $leadsCount, askingPrice: $askingPrice, agentValutionPrice: $agentValutionPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyCardDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.plCreationDate, plCreationDate) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.baths, baths) || other.baths == baths) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            (identical(other.partyType, partyType) ||
                other.partyType == partyType) &&
            (identical(other.cluster, cluster) || other.cluster == cluster) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.checkedOutDate, checkedOutDate) ||
                other.checkedOutDate == checkedOutDate) &&
            const DeepCollectionEquality()
                .equals(other.currentAgent, currentAgent) &&
            const DeepCollectionEquality()
                .equals(other.currentOwner, currentOwner) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.availableForCheckout, availableForCheckout) ||
                other.availableForCheckout == availableForCheckout) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.leadsCount, leadsCount) ||
                other.leadsCount == leadsCount) &&
            (identical(other.askingPrice, askingPrice) ||
                other.askingPrice == askingPrice) &&
            (identical(other.agentValutionPrice, agentValutionPrice) ||
                other.agentValutionPrice == agentValutionPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(plCreationDate),
        building,
        community,
        beds,
        baths,
        size,
        propertyType,
        const DeepCollectionEquality().hash(createdBy),
        partyType,
        cluster,
        status,
        purpose,
        const DeepCollectionEquality().hash(_amenities),
        createdAt,
        updatedAt,
        checkedOutDate,
        const DeepCollectionEquality().hash(currentAgent),
        const DeepCollectionEquality().hash(currentOwner),
        referenceNumber,
        expirationDate,
        availableForCheckout,
        const DeepCollectionEquality().hash(_photos),
        leadsCount,
        askingPrice,
        agentValutionPrice
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyCardDetailsModelImplCopyWith<_$PropertyCardDetailsModelImpl>
      get copyWith => __$$PropertyCardDetailsModelImplCopyWithImpl<
          _$PropertyCardDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyCardDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyCardDetailsModel implements PropertyCardDetailsModel {
  const factory _PropertyCardDetailsModel(
      {@JsonKey(readValue: readId) required final String id,
      @JsonKey(name: 'plCreationDate') final dynamic plCreationDate,
      final Building? building,
      @JsonKey(name: 'community') final Community? community,
      final String? beds,
      final int? baths,
      final double? size,
      @JsonKey(name: 'propertyType') final String? propertyType,
      @JsonKey(readValue: readCreatedBy) final dynamic createdBy,
      @JsonKey(name: 'partyType') final String? partyType,
      final String? cluster,
      final String? status,
      final String? purpose,
      final List<dynamic>? amenities,
      @JsonKey(name: 'createdAt') final DateTime? createdAt,
      @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
      @JsonKey(name: 'checkedOutDate') final DateTime? checkedOutDate,
      @JsonKey(name: 'currentAgent') final dynamic currentAgent,
      @JsonKey(name: 'currentOwner', readValue: readCreatedBy)
      final dynamic currentOwner,
      @JsonKey(name: 'referenceNumber') final String? referenceNumber,
      @JsonKey(name: 'expirationDate') final DateTime? expirationDate,
      @JsonKey(name: 'availableForCheckout') final bool availableForCheckout,
      final List<PropertyCardPhoto> photos,
      @JsonKey(name: 'leadsCount') final int? leadsCount,
      final num? askingPrice,
      final num? agentValutionPrice}) = _$PropertyCardDetailsModelImpl;

  factory _PropertyCardDetailsModel.fromJson(Map<String, dynamic> json) =
      _$PropertyCardDetailsModelImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  @JsonKey(name: 'plCreationDate')
  dynamic get plCreationDate;
  @override
  Building? get building;
  @override
  @JsonKey(name: 'community')
  Community? get community;
  @override
  String? get beds;
  @override
  int? get baths;
  @override
  double? get size;
  @override
  @JsonKey(name: 'propertyType')
  String? get propertyType;
  @override
  @JsonKey(readValue: readCreatedBy)
  dynamic get createdBy;
  @override
  @JsonKey(name: 'partyType')
  String? get partyType;
  @override
  String? get cluster;
  @override
  String? get status;
  @override
  String? get purpose;
  @override
  List<dynamic>? get amenities;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'checkedOutDate')
  DateTime? get checkedOutDate;
  @override
  @JsonKey(name: 'currentAgent')
  dynamic get currentAgent;
  @override
  @JsonKey(name: 'currentOwner', readValue: readCreatedBy)
  dynamic get currentOwner;
  @override
  @JsonKey(name: 'referenceNumber')
  String? get referenceNumber;
  @override
  @JsonKey(name: 'expirationDate')
  DateTime? get expirationDate;
  @override
  @JsonKey(name: 'availableForCheckout')
  bool get availableForCheckout;
  @override
  List<PropertyCardPhoto> get photos;
  @override
  @JsonKey(name: 'leadsCount')
  int? get leadsCount;
  @override
  num? get askingPrice;
  @override
  num? get agentValutionPrice;
  @override
  @JsonKey(ignore: true)
  _$$PropertyCardDetailsModelImplCopyWith<_$PropertyCardDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PropertyCardPhoto _$PropertyCardPhotoFromJson(Map<String, dynamic> json) {
  return _PropertyCardPhoto.fromJson(json);
}

/// @nodoc
mixin _$PropertyCardPhoto {
  @JsonKey(readValue: readId)
  String get id => throw _privateConstructorUsedError;
  String get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCardPhotoCopyWith<PropertyCardPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCardPhotoCopyWith<$Res> {
  factory $PropertyCardPhotoCopyWith(
          PropertyCardPhoto value, $Res Function(PropertyCardPhoto) then) =
      _$PropertyCardPhotoCopyWithImpl<$Res, PropertyCardPhoto>;
  @useResult
  $Res call({@JsonKey(readValue: readId) String id, String original});
}

/// @nodoc
class _$PropertyCardPhotoCopyWithImpl<$Res, $Val extends PropertyCardPhoto>
    implements $PropertyCardPhotoCopyWith<$Res> {
  _$PropertyCardPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? original = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyCardPhotoImplCopyWith<$Res>
    implements $PropertyCardPhotoCopyWith<$Res> {
  factory _$$PropertyCardPhotoImplCopyWith(_$PropertyCardPhotoImpl value,
          $Res Function(_$PropertyCardPhotoImpl) then) =
      __$$PropertyCardPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(readValue: readId) String id, String original});
}

/// @nodoc
class __$$PropertyCardPhotoImplCopyWithImpl<$Res>
    extends _$PropertyCardPhotoCopyWithImpl<$Res, _$PropertyCardPhotoImpl>
    implements _$$PropertyCardPhotoImplCopyWith<$Res> {
  __$$PropertyCardPhotoImplCopyWithImpl(_$PropertyCardPhotoImpl _value,
      $Res Function(_$PropertyCardPhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? original = null,
  }) {
    return _then(_$PropertyCardPhotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyCardPhotoImpl implements _PropertyCardPhoto {
  const _$PropertyCardPhotoImpl(
      {@JsonKey(readValue: readId) required this.id, required this.original});

  factory _$PropertyCardPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyCardPhotoImplFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final String original;

  @override
  String toString() {
    return 'PropertyCardPhoto(id: $id, original: $original)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyCardPhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, original);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyCardPhotoImplCopyWith<_$PropertyCardPhotoImpl> get copyWith =>
      __$$PropertyCardPhotoImplCopyWithImpl<_$PropertyCardPhotoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyCardPhotoImplToJson(
      this,
    );
  }
}

abstract class _PropertyCardPhoto implements PropertyCardPhoto {
  const factory _PropertyCardPhoto(
      {@JsonKey(readValue: readId) required final String id,
      required final String original}) = _$PropertyCardPhotoImpl;

  factory _PropertyCardPhoto.fromJson(Map<String, dynamic> json) =
      _$PropertyCardPhotoImpl.fromJson;

  @override
  @JsonKey(readValue: readId)
  String get id;
  @override
  String get original;
  @override
  @JsonKey(ignore: true)
  _$$PropertyCardPhotoImplCopyWith<_$PropertyCardPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
