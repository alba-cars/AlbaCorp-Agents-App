// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_card_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyCardDetailsModel {
  @JsonKey(readValue: readId)
  String get id;
  @JsonKey(name: 'plCreationDate')
  dynamic get plCreationDate;
  Building? get building;
  @JsonKey(name: 'community')
  Community? get community;
  String? get beds;
  int? get baths;
  double? get size;
  @JsonKey(name: 'propertyType')
  String? get propertyType;
  @JsonKey(readValue: readCreatedBy)
  dynamic get createdBy;
  @JsonKey(name: 'partyType')
  String? get partyType;
  String? get cluster;
  String? get status;
  String? get purpose;
  List<dynamic>? get amenities;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @JsonKey(name: 'checkedOutDate')
  DateTime? get checkedOutDate;
  @JsonKey(name: 'currentAgent')
  dynamic get currentAgent;
  @JsonKey(name: 'currentOwner', readValue: readCreatedBy)
  dynamic get currentOwner;
  @JsonKey(name: 'referenceNumber')
  String? get referenceNumber;
  @JsonKey(name: 'expirationDate')
  DateTime? get expirationDate;
  @JsonKey(name: 'availableForCheckout')
  bool get availableForCheckout;
  List<PropertyCardPhoto> get photos;
  @JsonKey(name: 'leadsCount')
  int? get leadsCount;
  num? get askingPrice;
  num? get agentValutionPrice;

  /// Create a copy of PropertyCardDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyCardDetailsModelCopyWith<PropertyCardDetailsModel> get copyWith =>
      _$PropertyCardDetailsModelCopyWithImpl<PropertyCardDetailsModel>(
          this as PropertyCardDetailsModel, _$identity);

  /// Serializes this PropertyCardDetailsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyCardDetailsModel &&
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
            const DeepCollectionEquality().equals(other.amenities, amenities) &&
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
            const DeepCollectionEquality().equals(other.photos, photos) &&
            (identical(other.leadsCount, leadsCount) ||
                other.leadsCount == leadsCount) &&
            (identical(other.askingPrice, askingPrice) ||
                other.askingPrice == askingPrice) &&
            (identical(other.agentValutionPrice, agentValutionPrice) ||
                other.agentValutionPrice == agentValutionPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(amenities),
        createdAt,
        updatedAt,
        checkedOutDate,
        const DeepCollectionEquality().hash(currentAgent),
        const DeepCollectionEquality().hash(currentOwner),
        referenceNumber,
        expirationDate,
        availableForCheckout,
        const DeepCollectionEquality().hash(photos),
        leadsCount,
        askingPrice,
        agentValutionPrice
      ]);

  @override
  String toString() {
    return 'PropertyCardDetailsModel(id: $id, plCreationDate: $plCreationDate, building: $building, community: $community, beds: $beds, baths: $baths, size: $size, propertyType: $propertyType, createdBy: $createdBy, partyType: $partyType, cluster: $cluster, status: $status, purpose: $purpose, amenities: $amenities, createdAt: $createdAt, updatedAt: $updatedAt, checkedOutDate: $checkedOutDate, currentAgent: $currentAgent, currentOwner: $currentOwner, referenceNumber: $referenceNumber, expirationDate: $expirationDate, availableForCheckout: $availableForCheckout, photos: $photos, leadsCount: $leadsCount, askingPrice: $askingPrice, agentValutionPrice: $agentValutionPrice)';
  }
}

/// @nodoc
abstract mixin class $PropertyCardDetailsModelCopyWith<$Res> {
  factory $PropertyCardDetailsModelCopyWith(PropertyCardDetailsModel value,
          $Res Function(PropertyCardDetailsModel) _then) =
      _$PropertyCardDetailsModelCopyWithImpl;
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
class _$PropertyCardDetailsModelCopyWithImpl<$Res>
    implements $PropertyCardDetailsModelCopyWith<$Res> {
  _$PropertyCardDetailsModelCopyWithImpl(this._self, this._then);

  final PropertyCardDetailsModel _self;
  final $Res Function(PropertyCardDetailsModel) _then;

  /// Create a copy of PropertyCardDetailsModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      plCreationDate: freezed == plCreationDate
          ? _self.plCreationDate
          : plCreationDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      building: freezed == building
          ? _self.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
      community: freezed == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      beds: freezed == beds
          ? _self.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _self.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partyType: freezed == partyType
          ? _self.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as String?,
      cluster: freezed == cluster
          ? _self.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: freezed == amenities
          ? _self.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkedOutDate: freezed == checkedOutDate
          ? _self.checkedOutDate
          : checkedOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentAgent: freezed == currentAgent
          ? _self.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentOwner: freezed == currentOwner
          ? _self.currentOwner
          : currentOwner // ignore: cast_nullable_to_non_nullable
              as dynamic,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _self.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableForCheckout: null == availableForCheckout
          ? _self.availableForCheckout
          : availableForCheckout // ignore: cast_nullable_to_non_nullable
              as bool,
      photos: null == photos
          ? _self.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PropertyCardPhoto>,
      leadsCount: freezed == leadsCount
          ? _self.leadsCount
          : leadsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      askingPrice: freezed == askingPrice
          ? _self.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      agentValutionPrice: freezed == agentValutionPrice
          ? _self.agentValutionPrice
          : agentValutionPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }

  /// Create a copy of PropertyCardDetailsModel
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

  /// Create a copy of PropertyCardDetailsModel
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
}

/// @nodoc
@JsonSerializable()
class _PropertyCardDetailsModel implements PropertyCardDetailsModel {
  const _PropertyCardDetailsModel(
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
  factory _PropertyCardDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardDetailsModelFromJson(json);

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

  /// Create a copy of PropertyCardDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyCardDetailsModelCopyWith<_PropertyCardDetailsModel> get copyWith =>
      __$PropertyCardDetailsModelCopyWithImpl<_PropertyCardDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyCardDetailsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyCardDetailsModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'PropertyCardDetailsModel(id: $id, plCreationDate: $plCreationDate, building: $building, community: $community, beds: $beds, baths: $baths, size: $size, propertyType: $propertyType, createdBy: $createdBy, partyType: $partyType, cluster: $cluster, status: $status, purpose: $purpose, amenities: $amenities, createdAt: $createdAt, updatedAt: $updatedAt, checkedOutDate: $checkedOutDate, currentAgent: $currentAgent, currentOwner: $currentOwner, referenceNumber: $referenceNumber, expirationDate: $expirationDate, availableForCheckout: $availableForCheckout, photos: $photos, leadsCount: $leadsCount, askingPrice: $askingPrice, agentValutionPrice: $agentValutionPrice)';
  }
}

/// @nodoc
abstract mixin class _$PropertyCardDetailsModelCopyWith<$Res>
    implements $PropertyCardDetailsModelCopyWith<$Res> {
  factory _$PropertyCardDetailsModelCopyWith(_PropertyCardDetailsModel value,
          $Res Function(_PropertyCardDetailsModel) _then) =
      __$PropertyCardDetailsModelCopyWithImpl;
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
class __$PropertyCardDetailsModelCopyWithImpl<$Res>
    implements _$PropertyCardDetailsModelCopyWith<$Res> {
  __$PropertyCardDetailsModelCopyWithImpl(this._self, this._then);

  final _PropertyCardDetailsModel _self;
  final $Res Function(_PropertyCardDetailsModel) _then;

  /// Create a copy of PropertyCardDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_PropertyCardDetailsModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      plCreationDate: freezed == plCreationDate
          ? _self.plCreationDate
          : plCreationDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      building: freezed == building
          ? _self.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
      community: freezed == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      beds: freezed == beds
          ? _self.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _self.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partyType: freezed == partyType
          ? _self.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as String?,
      cluster: freezed == cluster
          ? _self.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: freezed == amenities
          ? _self._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkedOutDate: freezed == checkedOutDate
          ? _self.checkedOutDate
          : checkedOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentAgent: freezed == currentAgent
          ? _self.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentOwner: freezed == currentOwner
          ? _self.currentOwner
          : currentOwner // ignore: cast_nullable_to_non_nullable
              as dynamic,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _self.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableForCheckout: null == availableForCheckout
          ? _self.availableForCheckout
          : availableForCheckout // ignore: cast_nullable_to_non_nullable
              as bool,
      photos: null == photos
          ? _self._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PropertyCardPhoto>,
      leadsCount: freezed == leadsCount
          ? _self.leadsCount
          : leadsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      askingPrice: freezed == askingPrice
          ? _self.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      agentValutionPrice: freezed == agentValutionPrice
          ? _self.agentValutionPrice
          : agentValutionPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }

  /// Create a copy of PropertyCardDetailsModel
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

  /// Create a copy of PropertyCardDetailsModel
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
}

/// @nodoc
mixin _$PropertyCardPhoto {
  @JsonKey(readValue: readId)
  String get id;
  String get original;

  /// Create a copy of PropertyCardPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyCardPhotoCopyWith<PropertyCardPhoto> get copyWith =>
      _$PropertyCardPhotoCopyWithImpl<PropertyCardPhoto>(
          this as PropertyCardPhoto, _$identity);

  /// Serializes this PropertyCardPhoto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyCardPhoto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, original);

  @override
  String toString() {
    return 'PropertyCardPhoto(id: $id, original: $original)';
  }
}

/// @nodoc
abstract mixin class $PropertyCardPhotoCopyWith<$Res> {
  factory $PropertyCardPhotoCopyWith(
          PropertyCardPhoto value, $Res Function(PropertyCardPhoto) _then) =
      _$PropertyCardPhotoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(readValue: readId) String id, String original});
}

/// @nodoc
class _$PropertyCardPhotoCopyWithImpl<$Res>
    implements $PropertyCardPhotoCopyWith<$Res> {
  _$PropertyCardPhotoCopyWithImpl(this._self, this._then);

  final PropertyCardPhoto _self;
  final $Res Function(PropertyCardPhoto) _then;

  /// Create a copy of PropertyCardPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? original = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      original: null == original
          ? _self.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PropertyCardPhoto implements PropertyCardPhoto {
  const _PropertyCardPhoto(
      {@JsonKey(readValue: readId) required this.id, required this.original});
  factory _PropertyCardPhoto.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardPhotoFromJson(json);

  @override
  @JsonKey(readValue: readId)
  final String id;
  @override
  final String original;

  /// Create a copy of PropertyCardPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyCardPhotoCopyWith<_PropertyCardPhoto> get copyWith =>
      __$PropertyCardPhotoCopyWithImpl<_PropertyCardPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyCardPhotoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyCardPhoto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, original);

  @override
  String toString() {
    return 'PropertyCardPhoto(id: $id, original: $original)';
  }
}

/// @nodoc
abstract mixin class _$PropertyCardPhotoCopyWith<$Res>
    implements $PropertyCardPhotoCopyWith<$Res> {
  factory _$PropertyCardPhotoCopyWith(
          _PropertyCardPhoto value, $Res Function(_PropertyCardPhoto) _then) =
      __$PropertyCardPhotoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(readValue: readId) String id, String original});
}

/// @nodoc
class __$PropertyCardPhotoCopyWithImpl<$Res>
    implements _$PropertyCardPhotoCopyWith<$Res> {
  __$PropertyCardPhotoCopyWithImpl(this._self, this._then);

  final _PropertyCardPhoto _self;
  final $Res Function(_PropertyCardPhoto) _then;

  /// Create a copy of PropertyCardPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? original = null,
  }) {
    return _then(_PropertyCardPhoto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      original: null == original
          ? _self.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
