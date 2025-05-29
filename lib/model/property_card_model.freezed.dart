// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyCard {
  @JsonKey(readValue: readId)
  String get id;
  @JsonKey(name: 'plCreationDate')
  dynamic get plCreationDate;
  Building? get building;
  @JsonKey(name: 'community')
  Community? get community;
  @JsonKey(readValue: readBeds)
  String? get beds;
  int? get baths;
  double? get size;
  @JsonKey(name: 'propertyType')
  String? get propertyType;
  @JsonKey(name: 'createdBy')
  dynamic get createdBy;
  @JsonKey(name: 'partyType')
  String? get partyType;
  String? get status;
  String? get cluster;
  String? get purpose;
  List<dynamic>? get amenities;
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @JsonKey(name: 'checkedOutDate')
  String? get checkedOutDate;
  @JsonKey(name: 'currentAgent')
  dynamic get currentAgent;
  @JsonKey(name: 'currentOwner')
  String? get currentOwner;
  @JsonKey(name: 'updatedBy')
  String? get updatedBy;
  @JsonKey(name: 'referenceNumber')
  String? get referenceNumber;
  @JsonKey(name: 'expirationDate')
  String? get expirationDate;
  @JsonKey(name: 'availableForCheckout')
  bool get availableForCheckout;
  List<PropertyCardPhoto> get photos;
  @JsonKey(name: 'leadsCount')
  int? get leadsCount;

  /// Create a copy of PropertyCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyCardCopyWith<PropertyCard> get copyWith =>
      _$PropertyCardCopyWithImpl<PropertyCard>(
          this as PropertyCard, _$identity);

  /// Serializes this PropertyCard to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyCard &&
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cluster, cluster) || other.cluster == cluster) &&
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
            (identical(other.currentOwner, currentOwner) ||
                other.currentOwner == currentOwner) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.availableForCheckout, availableForCheckout) ||
                other.availableForCheckout == availableForCheckout) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            (identical(other.leadsCount, leadsCount) ||
                other.leadsCount == leadsCount));
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
        status,
        cluster,
        purpose,
        const DeepCollectionEquality().hash(amenities),
        createdAt,
        updatedAt,
        checkedOutDate,
        const DeepCollectionEquality().hash(currentAgent),
        currentOwner,
        updatedBy,
        referenceNumber,
        expirationDate,
        availableForCheckout,
        const DeepCollectionEquality().hash(photos),
        leadsCount
      ]);

  @override
  String toString() {
    return 'PropertyCard(id: $id, plCreationDate: $plCreationDate, building: $building, community: $community, beds: $beds, baths: $baths, size: $size, propertyType: $propertyType, createdBy: $createdBy, partyType: $partyType, status: $status, cluster: $cluster, purpose: $purpose, amenities: $amenities, createdAt: $createdAt, updatedAt: $updatedAt, checkedOutDate: $checkedOutDate, currentAgent: $currentAgent, currentOwner: $currentOwner, updatedBy: $updatedBy, referenceNumber: $referenceNumber, expirationDate: $expirationDate, availableForCheckout: $availableForCheckout, photos: $photos, leadsCount: $leadsCount)';
  }
}

/// @nodoc
abstract mixin class $PropertyCardCopyWith<$Res> {
  factory $PropertyCardCopyWith(
          PropertyCard value, $Res Function(PropertyCard) _then) =
      _$PropertyCardCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(name: 'plCreationDate') dynamic plCreationDate,
      Building? building,
      @JsonKey(name: 'community') Community? community,
      @JsonKey(readValue: readBeds) String? beds,
      int? baths,
      double? size,
      @JsonKey(name: 'propertyType') String? propertyType,
      @JsonKey(name: 'createdBy') dynamic createdBy,
      @JsonKey(name: 'partyType') String? partyType,
      String? status,
      String? cluster,
      String? purpose,
      List<dynamic>? amenities,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      @JsonKey(name: 'checkedOutDate') String? checkedOutDate,
      @JsonKey(name: 'currentAgent') dynamic currentAgent,
      @JsonKey(name: 'currentOwner') String? currentOwner,
      @JsonKey(name: 'updatedBy') String? updatedBy,
      @JsonKey(name: 'referenceNumber') String? referenceNumber,
      @JsonKey(name: 'expirationDate') String? expirationDate,
      @JsonKey(name: 'availableForCheckout') bool availableForCheckout,
      List<PropertyCardPhoto> photos,
      @JsonKey(name: 'leadsCount') int? leadsCount});

  $BuildingCopyWith<$Res>? get building;
  $CommunityCopyWith<$Res>? get community;
}

/// @nodoc
class _$PropertyCardCopyWithImpl<$Res> implements $PropertyCardCopyWith<$Res> {
  _$PropertyCardCopyWithImpl(this._self, this._then);

  final PropertyCard _self;
  final $Res Function(PropertyCard) _then;

  /// Create a copy of PropertyCard
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
    Object? status = freezed,
    Object? cluster = freezed,
    Object? purpose = freezed,
    Object? amenities = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? checkedOutDate = freezed,
    Object? currentAgent = freezed,
    Object? currentOwner = freezed,
    Object? updatedBy = freezed,
    Object? referenceNumber = freezed,
    Object? expirationDate = freezed,
    Object? availableForCheckout = null,
    Object? photos = null,
    Object? leadsCount = freezed,
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
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      cluster: freezed == cluster
          ? _self.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
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
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedOutDate: freezed == checkedOutDate
          ? _self.checkedOutDate
          : checkedOutDate // ignore: cast_nullable_to_non_nullable
              as String?,
      currentAgent: freezed == currentAgent
          ? _self.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentOwner: freezed == currentOwner
          ? _self.currentOwner
          : currentOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: freezed == updatedBy
          ? _self.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _self.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }

  /// Create a copy of PropertyCard
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

  /// Create a copy of PropertyCard
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
class _PropertyCard implements PropertyCard {
  const _PropertyCard(
      {@JsonKey(readValue: readId) required this.id,
      @JsonKey(name: 'plCreationDate') this.plCreationDate,
      this.building,
      @JsonKey(name: 'community') this.community,
      @JsonKey(readValue: readBeds) this.beds,
      this.baths,
      this.size,
      @JsonKey(name: 'propertyType') this.propertyType,
      @JsonKey(name: 'createdBy') this.createdBy,
      @JsonKey(name: 'partyType') this.partyType,
      this.status,
      this.cluster,
      this.purpose,
      final List<dynamic>? amenities,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'checkedOutDate') this.checkedOutDate,
      @JsonKey(name: 'currentAgent') this.currentAgent,
      @JsonKey(name: 'currentOwner') this.currentOwner,
      @JsonKey(name: 'updatedBy') this.updatedBy,
      @JsonKey(name: 'referenceNumber') this.referenceNumber,
      @JsonKey(name: 'expirationDate') this.expirationDate,
      @JsonKey(name: 'availableForCheckout') this.availableForCheckout = false,
      final List<PropertyCardPhoto> photos = const [],
      @JsonKey(name: 'leadsCount') this.leadsCount})
      : _amenities = amenities,
        _photos = photos;
  factory _PropertyCard.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardFromJson(json);

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
  @JsonKey(readValue: readBeds)
  final String? beds;
  @override
  final int? baths;
  @override
  final double? size;
  @override
  @JsonKey(name: 'propertyType')
  final String? propertyType;
  @override
  @JsonKey(name: 'createdBy')
  final dynamic createdBy;
  @override
  @JsonKey(name: 'partyType')
  final String? partyType;
  @override
  final String? status;
  @override
  final String? cluster;
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
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @override
  @JsonKey(name: 'checkedOutDate')
  final String? checkedOutDate;
  @override
  @JsonKey(name: 'currentAgent')
  final dynamic currentAgent;
  @override
  @JsonKey(name: 'currentOwner')
  final String? currentOwner;
  @override
  @JsonKey(name: 'updatedBy')
  final String? updatedBy;
  @override
  @JsonKey(name: 'referenceNumber')
  final String? referenceNumber;
  @override
  @JsonKey(name: 'expirationDate')
  final String? expirationDate;
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

  /// Create a copy of PropertyCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyCardCopyWith<_PropertyCard> get copyWith =>
      __$PropertyCardCopyWithImpl<_PropertyCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyCardToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyCard &&
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cluster, cluster) || other.cluster == cluster) &&
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
            (identical(other.currentOwner, currentOwner) ||
                other.currentOwner == currentOwner) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.availableForCheckout, availableForCheckout) ||
                other.availableForCheckout == availableForCheckout) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.leadsCount, leadsCount) ||
                other.leadsCount == leadsCount));
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
        status,
        cluster,
        purpose,
        const DeepCollectionEquality().hash(_amenities),
        createdAt,
        updatedAt,
        checkedOutDate,
        const DeepCollectionEquality().hash(currentAgent),
        currentOwner,
        updatedBy,
        referenceNumber,
        expirationDate,
        availableForCheckout,
        const DeepCollectionEquality().hash(_photos),
        leadsCount
      ]);

  @override
  String toString() {
    return 'PropertyCard(id: $id, plCreationDate: $plCreationDate, building: $building, community: $community, beds: $beds, baths: $baths, size: $size, propertyType: $propertyType, createdBy: $createdBy, partyType: $partyType, status: $status, cluster: $cluster, purpose: $purpose, amenities: $amenities, createdAt: $createdAt, updatedAt: $updatedAt, checkedOutDate: $checkedOutDate, currentAgent: $currentAgent, currentOwner: $currentOwner, updatedBy: $updatedBy, referenceNumber: $referenceNumber, expirationDate: $expirationDate, availableForCheckout: $availableForCheckout, photos: $photos, leadsCount: $leadsCount)';
  }
}

/// @nodoc
abstract mixin class _$PropertyCardCopyWith<$Res>
    implements $PropertyCardCopyWith<$Res> {
  factory _$PropertyCardCopyWith(
          _PropertyCard value, $Res Function(_PropertyCard) _then) =
      __$PropertyCardCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: readId) String id,
      @JsonKey(name: 'plCreationDate') dynamic plCreationDate,
      Building? building,
      @JsonKey(name: 'community') Community? community,
      @JsonKey(readValue: readBeds) String? beds,
      int? baths,
      double? size,
      @JsonKey(name: 'propertyType') String? propertyType,
      @JsonKey(name: 'createdBy') dynamic createdBy,
      @JsonKey(name: 'partyType') String? partyType,
      String? status,
      String? cluster,
      String? purpose,
      List<dynamic>? amenities,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      @JsonKey(name: 'checkedOutDate') String? checkedOutDate,
      @JsonKey(name: 'currentAgent') dynamic currentAgent,
      @JsonKey(name: 'currentOwner') String? currentOwner,
      @JsonKey(name: 'updatedBy') String? updatedBy,
      @JsonKey(name: 'referenceNumber') String? referenceNumber,
      @JsonKey(name: 'expirationDate') String? expirationDate,
      @JsonKey(name: 'availableForCheckout') bool availableForCheckout,
      List<PropertyCardPhoto> photos,
      @JsonKey(name: 'leadsCount') int? leadsCount});

  @override
  $BuildingCopyWith<$Res>? get building;
  @override
  $CommunityCopyWith<$Res>? get community;
}

/// @nodoc
class __$PropertyCardCopyWithImpl<$Res>
    implements _$PropertyCardCopyWith<$Res> {
  __$PropertyCardCopyWithImpl(this._self, this._then);

  final _PropertyCard _self;
  final $Res Function(_PropertyCard) _then;

  /// Create a copy of PropertyCard
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
    Object? status = freezed,
    Object? cluster = freezed,
    Object? purpose = freezed,
    Object? amenities = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? checkedOutDate = freezed,
    Object? currentAgent = freezed,
    Object? currentOwner = freezed,
    Object? updatedBy = freezed,
    Object? referenceNumber = freezed,
    Object? expirationDate = freezed,
    Object? availableForCheckout = null,
    Object? photos = null,
    Object? leadsCount = freezed,
  }) {
    return _then(_PropertyCard(
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
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      cluster: freezed == cluster
          ? _self.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
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
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedOutDate: freezed == checkedOutDate
          ? _self.checkedOutDate
          : checkedOutDate // ignore: cast_nullable_to_non_nullable
              as String?,
      currentAgent: freezed == currentAgent
          ? _self.currentAgent
          : currentAgent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentOwner: freezed == currentOwner
          ? _self.currentOwner
          : currentOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: freezed == updatedBy
          ? _self.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _self.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }

  /// Create a copy of PropertyCard
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

  /// Create a copy of PropertyCard
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
mixin _$CreatedBy {
  @JsonKey(name: '_id')
  String get id;
  @JsonKey(name: 'first_name')
  String get firstName;
  @JsonKey(name: 'last_name')
  String? get lastName;
  dynamic get phone;

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<CreatedBy> get copyWith =>
      _$CreatedByCopyWithImpl<CreatedBy>(this as CreatedBy, _$identity);

  /// Serializes this CreatedBy to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatedBy &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      const DeepCollectionEquality().hash(phone));

  @override
  String toString() {
    return 'CreatedBy(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $CreatedByCopyWith<$Res> {
  factory $CreatedByCopyWith(CreatedBy value, $Res Function(CreatedBy) _then) =
      _$CreatedByCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      dynamic phone});
}

/// @nodoc
class _$CreatedByCopyWithImpl<$Res> implements $CreatedByCopyWith<$Res> {
  _$CreatedByCopyWithImpl(this._self, this._then);

  final CreatedBy _self;
  final $Res Function(CreatedBy) _then;

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreatedBy implements CreatedBy {
  const _CreatedBy(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.phone});
  factory _CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final dynamic phone;

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatedByCopyWith<_CreatedBy> get copyWith =>
      __$CreatedByCopyWithImpl<_CreatedBy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatedByToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatedBy &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      const DeepCollectionEquality().hash(phone));

  @override
  String toString() {
    return 'CreatedBy(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$CreatedByCopyWith<$Res>
    implements $CreatedByCopyWith<$Res> {
  factory _$CreatedByCopyWith(
          _CreatedBy value, $Res Function(_CreatedBy) _then) =
      __$CreatedByCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      dynamic phone});
}

/// @nodoc
class __$CreatedByCopyWithImpl<$Res> implements _$CreatedByCopyWith<$Res> {
  __$CreatedByCopyWithImpl(this._self, this._then);

  final _CreatedBy _self;
  final $Res Function(_CreatedBy) _then;

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_CreatedBy(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
mixin _$PropertyCardAgent {
  String get id;
  User get userId;

  /// Create a copy of PropertyCardAgent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyCardAgentCopyWith<PropertyCardAgent> get copyWith =>
      _$PropertyCardAgentCopyWithImpl<PropertyCardAgent>(
          this as PropertyCardAgent, _$identity);

  /// Serializes this PropertyCardAgent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyCardAgent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  @override
  String toString() {
    return 'PropertyCardAgent(id: $id, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class $PropertyCardAgentCopyWith<$Res> {
  factory $PropertyCardAgentCopyWith(
          PropertyCardAgent value, $Res Function(PropertyCardAgent) _then) =
      _$PropertyCardAgentCopyWithImpl;
  @useResult
  $Res call({String id, User userId});

  $UserCopyWith<$Res> get userId;
}

/// @nodoc
class _$PropertyCardAgentCopyWithImpl<$Res>
    implements $PropertyCardAgentCopyWith<$Res> {
  _$PropertyCardAgentCopyWithImpl(this._self, this._then);

  final PropertyCardAgent _self;
  final $Res Function(PropertyCardAgent) _then;

  /// Create a copy of PropertyCardAgent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of PropertyCardAgent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userId {
    return $UserCopyWith<$Res>(_self.userId, (value) {
      return _then(_self.copyWith(userId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PropertyCardAgent implements PropertyCardAgent {
  const _PropertyCardAgent({required this.id, required this.userId});
  factory _PropertyCardAgent.fromJson(Map<String, dynamic> json) =>
      _$PropertyCardAgentFromJson(json);

  @override
  final String id;
  @override
  final User userId;

  /// Create a copy of PropertyCardAgent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyCardAgentCopyWith<_PropertyCardAgent> get copyWith =>
      __$PropertyCardAgentCopyWithImpl<_PropertyCardAgent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyCardAgentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyCardAgent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  @override
  String toString() {
    return 'PropertyCardAgent(id: $id, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class _$PropertyCardAgentCopyWith<$Res>
    implements $PropertyCardAgentCopyWith<$Res> {
  factory _$PropertyCardAgentCopyWith(
          _PropertyCardAgent value, $Res Function(_PropertyCardAgent) _then) =
      __$PropertyCardAgentCopyWithImpl;
  @override
  @useResult
  $Res call({String id, User userId});

  @override
  $UserCopyWith<$Res> get userId;
}

/// @nodoc
class __$PropertyCardAgentCopyWithImpl<$Res>
    implements _$PropertyCardAgentCopyWith<$Res> {
  __$PropertyCardAgentCopyWithImpl(this._self, this._then);

  final _PropertyCardAgent _self;
  final $Res Function(_PropertyCardAgent) _then;

  /// Create a copy of PropertyCardAgent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_PropertyCardAgent(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of PropertyCardAgent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userId {
    return $UserCopyWith<$Res>(_self.userId, (value) {
      return _then(_self.copyWith(userId: value));
    });
  }
}

// dart format on
