// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Property implements DiagnosticableTreeMixin {
  String? get id;
  String get listingType;
  String? get categoryId;
  String? get propertyTypeId;
  String get propertyTitle;
  String? get propertyDesc;
  bool get featured;
  bool? get dealOfWeek;
  Agent? get agent;
  bool? get premium;
  bool? get exclusive;
  String? get completionStatus;
  String? get completionDate;
  List<String>? get metaTags;
  String? get metaDesc;
  String get commission;
  String? get securityDeposit;
  String get referNo;
  String? get permitNo;
  String? get permitNoDTCM;
  String? get buildingId;
  String? get buildingName;
  List<dynamic>? get buildingDistances;
  String? get street;
  String? get communityId;
  String? get communityName;
  String? get subCommunity;
  String? get emirate;
  String? get pinlocation;
  double? get size;
  String? get villaSize;
  String? get beds;
  String? get baths;
  String? get lat;
  String? get lng;
  List<dynamic>? get priceHistory;
  String? get zipCode;
  String? get emi;
  List<String> get amenities;
  List<dynamic>? get amenityIds;
  List<dynamic>? get amenityObjs;
  List<dynamic>? get customField;
  String? get rentalPeriod;
  String? get rentFinance;
  double? get askingPrice;
  String? get pricedrop;
  double? get oneCheqPrice;
  double? get twoCheqPrice;
  double? get fourCheqPrice;
  double? get sixCheqPrice;
  double? get twelveCheqPrice;
  List<dynamic>? get fees;
  String? get unitStatus;
  String? get unitReraNo;
  String? get makaniNo;
  String? get dewaNo;
  @JsonKey(name: "property_owner_id")
  String? get propertyOwnerId;
  String? get propertyListId;
  String? get image;
  List<dynamic>? get images;
  List<String>? get floorPlans;
  List<String>? get videos;
  List<String>? get matterportLink;
  String? get agentStatus;
  String? get agentId;
  String? get status;
  bool? get propertyStatus;
  String? get soldOrReserved;
  DateTime? get soldDate;
  DateTime? get reservedDate;
  List<String>? get statusArray;
  String? get createdBy;

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<Property> get copyWith =>
      _$PropertyCopyWithImpl<Property>(this as Property, _$identity);

  /// Serializes this Property to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Property'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('listingType', listingType))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('propertyTypeId', propertyTypeId))
      ..add(DiagnosticsProperty('propertyTitle', propertyTitle))
      ..add(DiagnosticsProperty('propertyDesc', propertyDesc))
      ..add(DiagnosticsProperty('featured', featured))
      ..add(DiagnosticsProperty('dealOfWeek', dealOfWeek))
      ..add(DiagnosticsProperty('agent', agent))
      ..add(DiagnosticsProperty('premium', premium))
      ..add(DiagnosticsProperty('exclusive', exclusive))
      ..add(DiagnosticsProperty('completionStatus', completionStatus))
      ..add(DiagnosticsProperty('completionDate', completionDate))
      ..add(DiagnosticsProperty('metaTags', metaTags))
      ..add(DiagnosticsProperty('metaDesc', metaDesc))
      ..add(DiagnosticsProperty('commission', commission))
      ..add(DiagnosticsProperty('securityDeposit', securityDeposit))
      ..add(DiagnosticsProperty('referNo', referNo))
      ..add(DiagnosticsProperty('permitNo', permitNo))
      ..add(DiagnosticsProperty('permitNoDTCM', permitNoDTCM))
      ..add(DiagnosticsProperty('buildingId', buildingId))
      ..add(DiagnosticsProperty('buildingName', buildingName))
      ..add(DiagnosticsProperty('buildingDistances', buildingDistances))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('communityId', communityId))
      ..add(DiagnosticsProperty('communityName', communityName))
      ..add(DiagnosticsProperty('subCommunity', subCommunity))
      ..add(DiagnosticsProperty('emirate', emirate))
      ..add(DiagnosticsProperty('pinlocation', pinlocation))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('villaSize', villaSize))
      ..add(DiagnosticsProperty('beds', beds))
      ..add(DiagnosticsProperty('baths', baths))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('priceHistory', priceHistory))
      ..add(DiagnosticsProperty('zipCode', zipCode))
      ..add(DiagnosticsProperty('emi', emi))
      ..add(DiagnosticsProperty('amenities', amenities))
      ..add(DiagnosticsProperty('amenityIds', amenityIds))
      ..add(DiagnosticsProperty('amenityObjs', amenityObjs))
      ..add(DiagnosticsProperty('customField', customField))
      ..add(DiagnosticsProperty('rentalPeriod', rentalPeriod))
      ..add(DiagnosticsProperty('rentFinance', rentFinance))
      ..add(DiagnosticsProperty('askingPrice', askingPrice))
      ..add(DiagnosticsProperty('pricedrop', pricedrop))
      ..add(DiagnosticsProperty('oneCheqPrice', oneCheqPrice))
      ..add(DiagnosticsProperty('twoCheqPrice', twoCheqPrice))
      ..add(DiagnosticsProperty('fourCheqPrice', fourCheqPrice))
      ..add(DiagnosticsProperty('sixCheqPrice', sixCheqPrice))
      ..add(DiagnosticsProperty('twelveCheqPrice', twelveCheqPrice))
      ..add(DiagnosticsProperty('fees', fees))
      ..add(DiagnosticsProperty('unitStatus', unitStatus))
      ..add(DiagnosticsProperty('unitReraNo', unitReraNo))
      ..add(DiagnosticsProperty('makaniNo', makaniNo))
      ..add(DiagnosticsProperty('dewaNo', dewaNo))
      ..add(DiagnosticsProperty('propertyOwnerId', propertyOwnerId))
      ..add(DiagnosticsProperty('propertyListId', propertyListId))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('floorPlans', floorPlans))
      ..add(DiagnosticsProperty('videos', videos))
      ..add(DiagnosticsProperty('matterportLink', matterportLink))
      ..add(DiagnosticsProperty('agentStatus', agentStatus))
      ..add(DiagnosticsProperty('agentId', agentId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('propertyStatus', propertyStatus))
      ..add(DiagnosticsProperty('soldOrReserved', soldOrReserved))
      ..add(DiagnosticsProperty('soldDate', soldDate))
      ..add(DiagnosticsProperty('reservedDate', reservedDate))
      ..add(DiagnosticsProperty('statusArray', statusArray))
      ..add(DiagnosticsProperty('createdBy', createdBy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Property &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.propertyTitle, propertyTitle) ||
                other.propertyTitle == propertyTitle) &&
            (identical(other.propertyDesc, propertyDesc) ||
                other.propertyDesc == propertyDesc) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.dealOfWeek, dealOfWeek) ||
                other.dealOfWeek == dealOfWeek) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.exclusive, exclusive) ||
                other.exclusive == exclusive) &&
            (identical(other.completionStatus, completionStatus) ||
                other.completionStatus == completionStatus) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate) &&
            const DeepCollectionEquality().equals(other.metaTags, metaTags) &&
            (identical(other.metaDesc, metaDesc) ||
                other.metaDesc == metaDesc) &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            (identical(other.securityDeposit, securityDeposit) ||
                other.securityDeposit == securityDeposit) &&
            (identical(other.referNo, referNo) || other.referNo == referNo) &&
            (identical(other.permitNo, permitNo) ||
                other.permitNo == permitNo) &&
            (identical(other.permitNoDTCM, permitNoDTCM) ||
                other.permitNoDTCM == permitNoDTCM) &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            const DeepCollectionEquality()
                .equals(other.buildingDistances, buildingDistances) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.communityName, communityName) ||
                other.communityName == communityName) &&
            (identical(other.subCommunity, subCommunity) ||
                other.subCommunity == subCommunity) &&
            (identical(other.emirate, emirate) || other.emirate == emirate) &&
            (identical(other.pinlocation, pinlocation) ||
                other.pinlocation == pinlocation) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.villaSize, villaSize) ||
                other.villaSize == villaSize) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.baths, baths) || other.baths == baths) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality()
                .equals(other.priceHistory, priceHistory) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.emi, emi) || other.emi == emi) &&
            const DeepCollectionEquality().equals(other.amenities, amenities) &&
            const DeepCollectionEquality()
                .equals(other.amenityIds, amenityIds) &&
            const DeepCollectionEquality()
                .equals(other.amenityObjs, amenityObjs) &&
            const DeepCollectionEquality()
                .equals(other.customField, customField) &&
            (identical(other.rentalPeriod, rentalPeriod) ||
                other.rentalPeriod == rentalPeriod) &&
            (identical(other.rentFinance, rentFinance) ||
                other.rentFinance == rentFinance) &&
            (identical(other.askingPrice, askingPrice) ||
                other.askingPrice == askingPrice) &&
            (identical(other.pricedrop, pricedrop) ||
                other.pricedrop == pricedrop) &&
            (identical(other.oneCheqPrice, oneCheqPrice) ||
                other.oneCheqPrice == oneCheqPrice) &&
            (identical(other.twoCheqPrice, twoCheqPrice) ||
                other.twoCheqPrice == twoCheqPrice) &&
            (identical(other.fourCheqPrice, fourCheqPrice) ||
                other.fourCheqPrice == fourCheqPrice) &&
            (identical(other.sixCheqPrice, sixCheqPrice) ||
                other.sixCheqPrice == sixCheqPrice) &&
            (identical(other.twelveCheqPrice, twelveCheqPrice) ||
                other.twelveCheqPrice == twelveCheqPrice) &&
            const DeepCollectionEquality().equals(other.fees, fees) &&
            (identical(other.unitStatus, unitStatus) ||
                other.unitStatus == unitStatus) &&
            (identical(other.unitReraNo, unitReraNo) ||
                other.unitReraNo == unitReraNo) &&
            (identical(other.makaniNo, makaniNo) ||
                other.makaniNo == makaniNo) &&
            (identical(other.dewaNo, dewaNo) || other.dewaNo == dewaNo) &&
            (identical(other.propertyOwnerId, propertyOwnerId) ||
                other.propertyOwnerId == propertyOwnerId) &&
            (identical(other.propertyListId, propertyListId) ||
                other.propertyListId == propertyListId) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality()
                .equals(other.floorPlans, floorPlans) &&
            const DeepCollectionEquality().equals(other.videos, videos) &&
            const DeepCollectionEquality()
                .equals(other.matterportLink, matterportLink) &&
            (identical(other.agentStatus, agentStatus) || other.agentStatus == agentStatus) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.propertyStatus, propertyStatus) || other.propertyStatus == propertyStatus) &&
            (identical(other.soldOrReserved, soldOrReserved) || other.soldOrReserved == soldOrReserved) &&
            (identical(other.soldDate, soldDate) || other.soldDate == soldDate) &&
            (identical(other.reservedDate, reservedDate) || other.reservedDate == reservedDate) &&
            const DeepCollectionEquality().equals(other.statusArray, statusArray) &&
            (identical(other.createdBy, createdBy) || other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        listingType,
        categoryId,
        propertyTypeId,
        propertyTitle,
        propertyDesc,
        featured,
        dealOfWeek,
        agent,
        premium,
        exclusive,
        completionStatus,
        completionDate,
        const DeepCollectionEquality().hash(metaTags),
        metaDesc,
        commission,
        securityDeposit,
        referNo,
        permitNo,
        permitNoDTCM,
        buildingId,
        buildingName,
        const DeepCollectionEquality().hash(buildingDistances),
        street,
        communityId,
        communityName,
        subCommunity,
        emirate,
        pinlocation,
        size,
        villaSize,
        beds,
        baths,
        lat,
        lng,
        const DeepCollectionEquality().hash(priceHistory),
        zipCode,
        emi,
        const DeepCollectionEquality().hash(amenities),
        const DeepCollectionEquality().hash(amenityIds),
        const DeepCollectionEquality().hash(amenityObjs),
        const DeepCollectionEquality().hash(customField),
        rentalPeriod,
        rentFinance,
        askingPrice,
        pricedrop,
        oneCheqPrice,
        twoCheqPrice,
        fourCheqPrice,
        sixCheqPrice,
        twelveCheqPrice,
        const DeepCollectionEquality().hash(fees),
        unitStatus,
        unitReraNo,
        makaniNo,
        dewaNo,
        propertyOwnerId,
        propertyListId,
        image,
        const DeepCollectionEquality().hash(images),
        const DeepCollectionEquality().hash(floorPlans),
        const DeepCollectionEquality().hash(videos),
        const DeepCollectionEquality().hash(matterportLink),
        agentStatus,
        agentId,
        status,
        propertyStatus,
        soldOrReserved,
        soldDate,
        reservedDate,
        const DeepCollectionEquality().hash(statusArray),
        createdBy
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Property(id: $id, listingType: $listingType, categoryId: $categoryId, propertyTypeId: $propertyTypeId, propertyTitle: $propertyTitle, propertyDesc: $propertyDesc, featured: $featured, dealOfWeek: $dealOfWeek, agent: $agent, premium: $premium, exclusive: $exclusive, completionStatus: $completionStatus, completionDate: $completionDate, metaTags: $metaTags, metaDesc: $metaDesc, commission: $commission, securityDeposit: $securityDeposit, referNo: $referNo, permitNo: $permitNo, permitNoDTCM: $permitNoDTCM, buildingId: $buildingId, buildingName: $buildingName, buildingDistances: $buildingDistances, street: $street, communityId: $communityId, communityName: $communityName, subCommunity: $subCommunity, emirate: $emirate, pinlocation: $pinlocation, size: $size, villaSize: $villaSize, beds: $beds, baths: $baths, lat: $lat, lng: $lng, priceHistory: $priceHistory, zipCode: $zipCode, emi: $emi, amenities: $amenities, amenityIds: $amenityIds, amenityObjs: $amenityObjs, customField: $customField, rentalPeriod: $rentalPeriod, rentFinance: $rentFinance, askingPrice: $askingPrice, pricedrop: $pricedrop, oneCheqPrice: $oneCheqPrice, twoCheqPrice: $twoCheqPrice, fourCheqPrice: $fourCheqPrice, sixCheqPrice: $sixCheqPrice, twelveCheqPrice: $twelveCheqPrice, fees: $fees, unitStatus: $unitStatus, unitReraNo: $unitReraNo, makaniNo: $makaniNo, dewaNo: $dewaNo, propertyOwnerId: $propertyOwnerId, propertyListId: $propertyListId, image: $image, images: $images, floorPlans: $floorPlans, videos: $videos, matterportLink: $matterportLink, agentStatus: $agentStatus, agentId: $agentId, status: $status, propertyStatus: $propertyStatus, soldOrReserved: $soldOrReserved, soldDate: $soldDate, reservedDate: $reservedDate, statusArray: $statusArray, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) _then) =
      _$PropertyCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String listingType,
      String? categoryId,
      String? propertyTypeId,
      String propertyTitle,
      String? propertyDesc,
      bool featured,
      bool? dealOfWeek,
      Agent? agent,
      bool? premium,
      bool? exclusive,
      String? completionStatus,
      String? completionDate,
      List<String>? metaTags,
      String? metaDesc,
      String commission,
      String? securityDeposit,
      String referNo,
      String? permitNo,
      String? permitNoDTCM,
      String? buildingId,
      String? buildingName,
      List<dynamic>? buildingDistances,
      String? street,
      String? communityId,
      String? communityName,
      String? subCommunity,
      String? emirate,
      String? pinlocation,
      double? size,
      String? villaSize,
      String? beds,
      String? baths,
      String? lat,
      String? lng,
      List<dynamic>? priceHistory,
      String? zipCode,
      String? emi,
      List<String> amenities,
      List<dynamic>? amenityIds,
      List<dynamic>? amenityObjs,
      List<dynamic>? customField,
      String? rentalPeriod,
      String? rentFinance,
      double? askingPrice,
      String? pricedrop,
      double? oneCheqPrice,
      double? twoCheqPrice,
      double? fourCheqPrice,
      double? sixCheqPrice,
      double? twelveCheqPrice,
      List<dynamic>? fees,
      String? unitStatus,
      String? unitReraNo,
      String? makaniNo,
      String? dewaNo,
      @JsonKey(name: "property_owner_id") String? propertyOwnerId,
      String? propertyListId,
      String? image,
      List<dynamic>? images,
      List<String>? floorPlans,
      List<String>? videos,
      List<String>? matterportLink,
      String? agentStatus,
      String? agentId,
      String? status,
      bool? propertyStatus,
      String? soldOrReserved,
      DateTime? soldDate,
      DateTime? reservedDate,
      List<String>? statusArray,
      String? createdBy});

  $AgentCopyWith<$Res>? get agent;
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res> implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._self, this._then);

  final Property _self;
  final $Res Function(Property) _then;

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? listingType = null,
    Object? categoryId = freezed,
    Object? propertyTypeId = freezed,
    Object? propertyTitle = null,
    Object? propertyDesc = freezed,
    Object? featured = null,
    Object? dealOfWeek = freezed,
    Object? agent = freezed,
    Object? premium = freezed,
    Object? exclusive = freezed,
    Object? completionStatus = freezed,
    Object? completionDate = freezed,
    Object? metaTags = freezed,
    Object? metaDesc = freezed,
    Object? commission = null,
    Object? securityDeposit = freezed,
    Object? referNo = null,
    Object? permitNo = freezed,
    Object? permitNoDTCM = freezed,
    Object? buildingId = freezed,
    Object? buildingName = freezed,
    Object? buildingDistances = freezed,
    Object? street = freezed,
    Object? communityId = freezed,
    Object? communityName = freezed,
    Object? subCommunity = freezed,
    Object? emirate = freezed,
    Object? pinlocation = freezed,
    Object? size = freezed,
    Object? villaSize = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? priceHistory = freezed,
    Object? zipCode = freezed,
    Object? emi = freezed,
    Object? amenities = null,
    Object? amenityIds = freezed,
    Object? amenityObjs = freezed,
    Object? customField = freezed,
    Object? rentalPeriod = freezed,
    Object? rentFinance = freezed,
    Object? askingPrice = freezed,
    Object? pricedrop = freezed,
    Object? oneCheqPrice = freezed,
    Object? twoCheqPrice = freezed,
    Object? fourCheqPrice = freezed,
    Object? sixCheqPrice = freezed,
    Object? twelveCheqPrice = freezed,
    Object? fees = freezed,
    Object? unitStatus = freezed,
    Object? unitReraNo = freezed,
    Object? makaniNo = freezed,
    Object? dewaNo = freezed,
    Object? propertyOwnerId = freezed,
    Object? propertyListId = freezed,
    Object? image = freezed,
    Object? images = freezed,
    Object? floorPlans = freezed,
    Object? videos = freezed,
    Object? matterportLink = freezed,
    Object? agentStatus = freezed,
    Object? agentId = freezed,
    Object? status = freezed,
    Object? propertyStatus = freezed,
    Object? soldOrReserved = freezed,
    Object? soldDate = freezed,
    Object? reservedDate = freezed,
    Object? statusArray = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      listingType: null == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyTypeId: freezed == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyTitle: null == propertyTitle
          ? _self.propertyTitle
          : propertyTitle // ignore: cast_nullable_to_non_nullable
              as String,
      propertyDesc: freezed == propertyDesc
          ? _self.propertyDesc
          : propertyDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: null == featured
          ? _self.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      dealOfWeek: freezed == dealOfWeek
          ? _self.dealOfWeek
          : dealOfWeek // ignore: cast_nullable_to_non_nullable
              as bool?,
      agent: freezed == agent
          ? _self.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      premium: freezed == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      exclusive: freezed == exclusive
          ? _self.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionStatus: freezed == completionStatus
          ? _self.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      completionDate: freezed == completionDate
          ? _self.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTags: freezed == metaTags
          ? _self.metaTags
          : metaTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metaDesc: freezed == metaDesc
          ? _self.metaDesc
          : metaDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      commission: null == commission
          ? _self.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as String,
      securityDeposit: freezed == securityDeposit
          ? _self.securityDeposit
          : securityDeposit // ignore: cast_nullable_to_non_nullable
              as String?,
      referNo: null == referNo
          ? _self.referNo
          : referNo // ignore: cast_nullable_to_non_nullable
              as String,
      permitNo: freezed == permitNo
          ? _self.permitNo
          : permitNo // ignore: cast_nullable_to_non_nullable
              as String?,
      permitNoDTCM: freezed == permitNoDTCM
          ? _self.permitNoDTCM
          : permitNoDTCM // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingId: freezed == buildingId
          ? _self.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingName: freezed == buildingName
          ? _self.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingDistances: freezed == buildingDistances
          ? _self.buildingDistances
          : buildingDistances // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      street: freezed == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _self.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityName: freezed == communityName
          ? _self.communityName
          : communityName // ignore: cast_nullable_to_non_nullable
              as String?,
      subCommunity: freezed == subCommunity
          ? _self.subCommunity
          : subCommunity // ignore: cast_nullable_to_non_nullable
              as String?,
      emirate: freezed == emirate
          ? _self.emirate
          : emirate // ignore: cast_nullable_to_non_nullable
              as String?,
      pinlocation: freezed == pinlocation
          ? _self.pinlocation
          : pinlocation // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      villaSize: freezed == villaSize
          ? _self.villaSize
          : villaSize // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _self.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _self.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHistory: freezed == priceHistory
          ? _self.priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      zipCode: freezed == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      emi: freezed == emi
          ? _self.emi
          : emi // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: null == amenities
          ? _self.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amenityIds: freezed == amenityIds
          ? _self.amenityIds
          : amenityIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      amenityObjs: freezed == amenityObjs
          ? _self.amenityObjs
          : amenityObjs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      customField: freezed == customField
          ? _self.customField
          : customField // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      rentalPeriod: freezed == rentalPeriod
          ? _self.rentalPeriod
          : rentalPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      rentFinance: freezed == rentFinance
          ? _self.rentFinance
          : rentFinance // ignore: cast_nullable_to_non_nullable
              as String?,
      askingPrice: freezed == askingPrice
          ? _self.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pricedrop: freezed == pricedrop
          ? _self.pricedrop
          : pricedrop // ignore: cast_nullable_to_non_nullable
              as String?,
      oneCheqPrice: freezed == oneCheqPrice
          ? _self.oneCheqPrice
          : oneCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      twoCheqPrice: freezed == twoCheqPrice
          ? _self.twoCheqPrice
          : twoCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      fourCheqPrice: freezed == fourCheqPrice
          ? _self.fourCheqPrice
          : fourCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sixCheqPrice: freezed == sixCheqPrice
          ? _self.sixCheqPrice
          : sixCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      twelveCheqPrice: freezed == twelveCheqPrice
          ? _self.twelveCheqPrice
          : twelveCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      fees: freezed == fees
          ? _self.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      unitStatus: freezed == unitStatus
          ? _self.unitStatus
          : unitStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      unitReraNo: freezed == unitReraNo
          ? _self.unitReraNo
          : unitReraNo // ignore: cast_nullable_to_non_nullable
              as String?,
      makaniNo: freezed == makaniNo
          ? _self.makaniNo
          : makaniNo // ignore: cast_nullable_to_non_nullable
              as String?,
      dewaNo: freezed == dewaNo
          ? _self.dewaNo
          : dewaNo // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyOwnerId: freezed == propertyOwnerId
          ? _self.propertyOwnerId
          : propertyOwnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyListId: freezed == propertyListId
          ? _self.propertyListId
          : propertyListId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      floorPlans: freezed == floorPlans
          ? _self.floorPlans
          : floorPlans // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videos: freezed == videos
          ? _self.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      matterportLink: freezed == matterportLink
          ? _self.matterportLink
          : matterportLink // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      agentStatus: freezed == agentStatus
          ? _self.agentStatus
          : agentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      agentId: freezed == agentId
          ? _self.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyStatus: freezed == propertyStatus
          ? _self.propertyStatus
          : propertyStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldOrReserved: freezed == soldOrReserved
          ? _self.soldOrReserved
          : soldOrReserved // ignore: cast_nullable_to_non_nullable
              as String?,
      soldDate: freezed == soldDate
          ? _self.soldDate
          : soldDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reservedDate: freezed == reservedDate
          ? _self.reservedDate
          : reservedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusArray: freezed == statusArray
          ? _self.statusArray
          : statusArray // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get agent {
    if (_self.agent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.agent!, (value) {
      return _then(_self.copyWith(agent: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Property with DiagnosticableTreeMixin implements Property {
  _Property(
      {this.id,
      required this.listingType,
      this.categoryId,
      this.propertyTypeId,
      this.propertyTitle = "",
      this.propertyDesc,
      this.featured = false,
      this.dealOfWeek = false,
      this.agent,
      this.premium,
      this.exclusive,
      this.completionStatus,
      this.completionDate,
      final List<String>? metaTags,
      this.metaDesc,
      this.commission = '0',
      this.securityDeposit,
      required this.referNo,
      this.permitNo,
      this.permitNoDTCM,
      this.buildingId,
      this.buildingName,
      final List<dynamic>? buildingDistances,
      this.street,
      this.communityId,
      this.communityName,
      this.subCommunity,
      this.emirate,
      this.pinlocation,
      this.size,
      this.villaSize,
      this.beds,
      this.baths,
      this.lat,
      this.lng,
      final List<dynamic>? priceHistory,
      this.zipCode,
      this.emi,
      final List<String> amenities = const [],
      final List<dynamic>? amenityIds,
      final List<dynamic>? amenityObjs,
      final List<dynamic>? customField,
      this.rentalPeriod,
      this.rentFinance,
      this.askingPrice,
      this.pricedrop,
      this.oneCheqPrice,
      this.twoCheqPrice,
      this.fourCheqPrice,
      this.sixCheqPrice,
      this.twelveCheqPrice,
      final List<dynamic>? fees,
      this.unitStatus,
      this.unitReraNo,
      this.makaniNo,
      this.dewaNo,
      @JsonKey(name: "property_owner_id") this.propertyOwnerId,
      this.propertyListId,
      this.image,
      final List<dynamic>? images,
      final List<String>? floorPlans,
      final List<String>? videos,
      final List<String>? matterportLink,
      this.agentStatus,
      this.agentId,
      this.status,
      this.propertyStatus,
      this.soldOrReserved,
      this.soldDate,
      this.reservedDate,
      final List<String>? statusArray,
      this.createdBy})
      : _metaTags = metaTags,
        _buildingDistances = buildingDistances,
        _priceHistory = priceHistory,
        _amenities = amenities,
        _amenityIds = amenityIds,
        _amenityObjs = amenityObjs,
        _customField = customField,
        _fees = fees,
        _images = images,
        _floorPlans = floorPlans,
        _videos = videos,
        _matterportLink = matterportLink,
        _statusArray = statusArray;
  factory _Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);

  @override
  final String? id;
  @override
  final String listingType;
  @override
  final String? categoryId;
  @override
  final String? propertyTypeId;
  @override
  @JsonKey()
  final String propertyTitle;
  @override
  final String? propertyDesc;
  @override
  @JsonKey()
  final bool featured;
  @override
  @JsonKey()
  final bool? dealOfWeek;
  @override
  final Agent? agent;
  @override
  final bool? premium;
  @override
  final bool? exclusive;
  @override
  final String? completionStatus;
  @override
  final String? completionDate;
  final List<String>? _metaTags;
  @override
  List<String>? get metaTags {
    final value = _metaTags;
    if (value == null) return null;
    if (_metaTags is EqualUnmodifiableListView) return _metaTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? metaDesc;
  @override
  @JsonKey()
  final String commission;
  @override
  final String? securityDeposit;
  @override
  final String referNo;
  @override
  final String? permitNo;
  @override
  final String? permitNoDTCM;
  @override
  final String? buildingId;
  @override
  final String? buildingName;
  final List<dynamic>? _buildingDistances;
  @override
  List<dynamic>? get buildingDistances {
    final value = _buildingDistances;
    if (value == null) return null;
    if (_buildingDistances is EqualUnmodifiableListView)
      return _buildingDistances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? street;
  @override
  final String? communityId;
  @override
  final String? communityName;
  @override
  final String? subCommunity;
  @override
  final String? emirate;
  @override
  final String? pinlocation;
  @override
  final double? size;
  @override
  final String? villaSize;
  @override
  final String? beds;
  @override
  final String? baths;
  @override
  final String? lat;
  @override
  final String? lng;
  final List<dynamic>? _priceHistory;
  @override
  List<dynamic>? get priceHistory {
    final value = _priceHistory;
    if (value == null) return null;
    if (_priceHistory is EqualUnmodifiableListView) return _priceHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? zipCode;
  @override
  final String? emi;
  final List<String> _amenities;
  @override
  @JsonKey()
  List<String> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  final List<dynamic>? _amenityIds;
  @override
  List<dynamic>? get amenityIds {
    final value = _amenityIds;
    if (value == null) return null;
    if (_amenityIds is EqualUnmodifiableListView) return _amenityIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _amenityObjs;
  @override
  List<dynamic>? get amenityObjs {
    final value = _amenityObjs;
    if (value == null) return null;
    if (_amenityObjs is EqualUnmodifiableListView) return _amenityObjs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _customField;
  @override
  List<dynamic>? get customField {
    final value = _customField;
    if (value == null) return null;
    if (_customField is EqualUnmodifiableListView) return _customField;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? rentalPeriod;
  @override
  final String? rentFinance;
  @override
  final double? askingPrice;
  @override
  final String? pricedrop;
  @override
  final double? oneCheqPrice;
  @override
  final double? twoCheqPrice;
  @override
  final double? fourCheqPrice;
  @override
  final double? sixCheqPrice;
  @override
  final double? twelveCheqPrice;
  final List<dynamic>? _fees;
  @override
  List<dynamic>? get fees {
    final value = _fees;
    if (value == null) return null;
    if (_fees is EqualUnmodifiableListView) return _fees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? unitStatus;
  @override
  final String? unitReraNo;
  @override
  final String? makaniNo;
  @override
  final String? dewaNo;
  @override
  @JsonKey(name: "property_owner_id")
  final String? propertyOwnerId;
  @override
  final String? propertyListId;
  @override
  final String? image;
  final List<dynamic>? _images;
  @override
  List<dynamic>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _floorPlans;
  @override
  List<String>? get floorPlans {
    final value = _floorPlans;
    if (value == null) return null;
    if (_floorPlans is EqualUnmodifiableListView) return _floorPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _videos;
  @override
  List<String>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _matterportLink;
  @override
  List<String>? get matterportLink {
    final value = _matterportLink;
    if (value == null) return null;
    if (_matterportLink is EqualUnmodifiableListView) return _matterportLink;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? agentStatus;
  @override
  final String? agentId;
  @override
  final String? status;
  @override
  final bool? propertyStatus;
  @override
  final String? soldOrReserved;
  @override
  final DateTime? soldDate;
  @override
  final DateTime? reservedDate;
  final List<String>? _statusArray;
  @override
  List<String>? get statusArray {
    final value = _statusArray;
    if (value == null) return null;
    if (_statusArray is EqualUnmodifiableListView) return _statusArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdBy;

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyCopyWith<_Property> get copyWith =>
      __$PropertyCopyWithImpl<_Property>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Property'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('listingType', listingType))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('propertyTypeId', propertyTypeId))
      ..add(DiagnosticsProperty('propertyTitle', propertyTitle))
      ..add(DiagnosticsProperty('propertyDesc', propertyDesc))
      ..add(DiagnosticsProperty('featured', featured))
      ..add(DiagnosticsProperty('dealOfWeek', dealOfWeek))
      ..add(DiagnosticsProperty('agent', agent))
      ..add(DiagnosticsProperty('premium', premium))
      ..add(DiagnosticsProperty('exclusive', exclusive))
      ..add(DiagnosticsProperty('completionStatus', completionStatus))
      ..add(DiagnosticsProperty('completionDate', completionDate))
      ..add(DiagnosticsProperty('metaTags', metaTags))
      ..add(DiagnosticsProperty('metaDesc', metaDesc))
      ..add(DiagnosticsProperty('commission', commission))
      ..add(DiagnosticsProperty('securityDeposit', securityDeposit))
      ..add(DiagnosticsProperty('referNo', referNo))
      ..add(DiagnosticsProperty('permitNo', permitNo))
      ..add(DiagnosticsProperty('permitNoDTCM', permitNoDTCM))
      ..add(DiagnosticsProperty('buildingId', buildingId))
      ..add(DiagnosticsProperty('buildingName', buildingName))
      ..add(DiagnosticsProperty('buildingDistances', buildingDistances))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('communityId', communityId))
      ..add(DiagnosticsProperty('communityName', communityName))
      ..add(DiagnosticsProperty('subCommunity', subCommunity))
      ..add(DiagnosticsProperty('emirate', emirate))
      ..add(DiagnosticsProperty('pinlocation', pinlocation))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('villaSize', villaSize))
      ..add(DiagnosticsProperty('beds', beds))
      ..add(DiagnosticsProperty('baths', baths))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('priceHistory', priceHistory))
      ..add(DiagnosticsProperty('zipCode', zipCode))
      ..add(DiagnosticsProperty('emi', emi))
      ..add(DiagnosticsProperty('amenities', amenities))
      ..add(DiagnosticsProperty('amenityIds', amenityIds))
      ..add(DiagnosticsProperty('amenityObjs', amenityObjs))
      ..add(DiagnosticsProperty('customField', customField))
      ..add(DiagnosticsProperty('rentalPeriod', rentalPeriod))
      ..add(DiagnosticsProperty('rentFinance', rentFinance))
      ..add(DiagnosticsProperty('askingPrice', askingPrice))
      ..add(DiagnosticsProperty('pricedrop', pricedrop))
      ..add(DiagnosticsProperty('oneCheqPrice', oneCheqPrice))
      ..add(DiagnosticsProperty('twoCheqPrice', twoCheqPrice))
      ..add(DiagnosticsProperty('fourCheqPrice', fourCheqPrice))
      ..add(DiagnosticsProperty('sixCheqPrice', sixCheqPrice))
      ..add(DiagnosticsProperty('twelveCheqPrice', twelveCheqPrice))
      ..add(DiagnosticsProperty('fees', fees))
      ..add(DiagnosticsProperty('unitStatus', unitStatus))
      ..add(DiagnosticsProperty('unitReraNo', unitReraNo))
      ..add(DiagnosticsProperty('makaniNo', makaniNo))
      ..add(DiagnosticsProperty('dewaNo', dewaNo))
      ..add(DiagnosticsProperty('propertyOwnerId', propertyOwnerId))
      ..add(DiagnosticsProperty('propertyListId', propertyListId))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('floorPlans', floorPlans))
      ..add(DiagnosticsProperty('videos', videos))
      ..add(DiagnosticsProperty('matterportLink', matterportLink))
      ..add(DiagnosticsProperty('agentStatus', agentStatus))
      ..add(DiagnosticsProperty('agentId', agentId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('propertyStatus', propertyStatus))
      ..add(DiagnosticsProperty('soldOrReserved', soldOrReserved))
      ..add(DiagnosticsProperty('soldDate', soldDate))
      ..add(DiagnosticsProperty('reservedDate', reservedDate))
      ..add(DiagnosticsProperty('statusArray', statusArray))
      ..add(DiagnosticsProperty('createdBy', createdBy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Property &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.propertyTitle, propertyTitle) ||
                other.propertyTitle == propertyTitle) &&
            (identical(other.propertyDesc, propertyDesc) ||
                other.propertyDesc == propertyDesc) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.dealOfWeek, dealOfWeek) ||
                other.dealOfWeek == dealOfWeek) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.exclusive, exclusive) ||
                other.exclusive == exclusive) &&
            (identical(other.completionStatus, completionStatus) ||
                other.completionStatus == completionStatus) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate) &&
            const DeepCollectionEquality().equals(other._metaTags, _metaTags) &&
            (identical(other.metaDesc, metaDesc) ||
                other.metaDesc == metaDesc) &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            (identical(other.securityDeposit, securityDeposit) ||
                other.securityDeposit == securityDeposit) &&
            (identical(other.referNo, referNo) || other.referNo == referNo) &&
            (identical(other.permitNo, permitNo) ||
                other.permitNo == permitNo) &&
            (identical(other.permitNoDTCM, permitNoDTCM) ||
                other.permitNoDTCM == permitNoDTCM) &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            const DeepCollectionEquality()
                .equals(other._buildingDistances, _buildingDistances) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.communityName, communityName) ||
                other.communityName == communityName) &&
            (identical(other.subCommunity, subCommunity) ||
                other.subCommunity == subCommunity) &&
            (identical(other.emirate, emirate) || other.emirate == emirate) &&
            (identical(other.pinlocation, pinlocation) ||
                other.pinlocation == pinlocation) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.villaSize, villaSize) ||
                other.villaSize == villaSize) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.baths, baths) || other.baths == baths) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality()
                .equals(other._priceHistory, _priceHistory) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.emi, emi) || other.emi == emi) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            const DeepCollectionEquality()
                .equals(other._amenityIds, _amenityIds) &&
            const DeepCollectionEquality()
                .equals(other._amenityObjs, _amenityObjs) &&
            const DeepCollectionEquality()
                .equals(other._customField, _customField) &&
            (identical(other.rentalPeriod, rentalPeriod) ||
                other.rentalPeriod == rentalPeriod) &&
            (identical(other.rentFinance, rentFinance) ||
                other.rentFinance == rentFinance) &&
            (identical(other.askingPrice, askingPrice) ||
                other.askingPrice == askingPrice) &&
            (identical(other.pricedrop, pricedrop) ||
                other.pricedrop == pricedrop) &&
            (identical(other.oneCheqPrice, oneCheqPrice) ||
                other.oneCheqPrice == oneCheqPrice) &&
            (identical(other.twoCheqPrice, twoCheqPrice) ||
                other.twoCheqPrice == twoCheqPrice) &&
            (identical(other.fourCheqPrice, fourCheqPrice) ||
                other.fourCheqPrice == fourCheqPrice) &&
            (identical(other.sixCheqPrice, sixCheqPrice) ||
                other.sixCheqPrice == sixCheqPrice) &&
            (identical(other.twelveCheqPrice, twelveCheqPrice) ||
                other.twelveCheqPrice == twelveCheqPrice) &&
            const DeepCollectionEquality().equals(other._fees, _fees) &&
            (identical(other.unitStatus, unitStatus) ||
                other.unitStatus == unitStatus) &&
            (identical(other.unitReraNo, unitReraNo) ||
                other.unitReraNo == unitReraNo) &&
            (identical(other.makaniNo, makaniNo) ||
                other.makaniNo == makaniNo) &&
            (identical(other.dewaNo, dewaNo) || other.dewaNo == dewaNo) &&
            (identical(other.propertyOwnerId, propertyOwnerId) ||
                other.propertyOwnerId == propertyOwnerId) &&
            (identical(other.propertyListId, propertyListId) ||
                other.propertyListId == propertyListId) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._floorPlans, _floorPlans) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality().equals(other._matterportLink, _matterportLink) &&
            (identical(other.agentStatus, agentStatus) || other.agentStatus == agentStatus) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.propertyStatus, propertyStatus) || other.propertyStatus == propertyStatus) &&
            (identical(other.soldOrReserved, soldOrReserved) || other.soldOrReserved == soldOrReserved) &&
            (identical(other.soldDate, soldDate) || other.soldDate == soldDate) &&
            (identical(other.reservedDate, reservedDate) || other.reservedDate == reservedDate) &&
            const DeepCollectionEquality().equals(other._statusArray, _statusArray) &&
            (identical(other.createdBy, createdBy) || other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        listingType,
        categoryId,
        propertyTypeId,
        propertyTitle,
        propertyDesc,
        featured,
        dealOfWeek,
        agent,
        premium,
        exclusive,
        completionStatus,
        completionDate,
        const DeepCollectionEquality().hash(_metaTags),
        metaDesc,
        commission,
        securityDeposit,
        referNo,
        permitNo,
        permitNoDTCM,
        buildingId,
        buildingName,
        const DeepCollectionEquality().hash(_buildingDistances),
        street,
        communityId,
        communityName,
        subCommunity,
        emirate,
        pinlocation,
        size,
        villaSize,
        beds,
        baths,
        lat,
        lng,
        const DeepCollectionEquality().hash(_priceHistory),
        zipCode,
        emi,
        const DeepCollectionEquality().hash(_amenities),
        const DeepCollectionEquality().hash(_amenityIds),
        const DeepCollectionEquality().hash(_amenityObjs),
        const DeepCollectionEquality().hash(_customField),
        rentalPeriod,
        rentFinance,
        askingPrice,
        pricedrop,
        oneCheqPrice,
        twoCheqPrice,
        fourCheqPrice,
        sixCheqPrice,
        twelveCheqPrice,
        const DeepCollectionEquality().hash(_fees),
        unitStatus,
        unitReraNo,
        makaniNo,
        dewaNo,
        propertyOwnerId,
        propertyListId,
        image,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_floorPlans),
        const DeepCollectionEquality().hash(_videos),
        const DeepCollectionEquality().hash(_matterportLink),
        agentStatus,
        agentId,
        status,
        propertyStatus,
        soldOrReserved,
        soldDate,
        reservedDate,
        const DeepCollectionEquality().hash(_statusArray),
        createdBy
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Property(id: $id, listingType: $listingType, categoryId: $categoryId, propertyTypeId: $propertyTypeId, propertyTitle: $propertyTitle, propertyDesc: $propertyDesc, featured: $featured, dealOfWeek: $dealOfWeek, agent: $agent, premium: $premium, exclusive: $exclusive, completionStatus: $completionStatus, completionDate: $completionDate, metaTags: $metaTags, metaDesc: $metaDesc, commission: $commission, securityDeposit: $securityDeposit, referNo: $referNo, permitNo: $permitNo, permitNoDTCM: $permitNoDTCM, buildingId: $buildingId, buildingName: $buildingName, buildingDistances: $buildingDistances, street: $street, communityId: $communityId, communityName: $communityName, subCommunity: $subCommunity, emirate: $emirate, pinlocation: $pinlocation, size: $size, villaSize: $villaSize, beds: $beds, baths: $baths, lat: $lat, lng: $lng, priceHistory: $priceHistory, zipCode: $zipCode, emi: $emi, amenities: $amenities, amenityIds: $amenityIds, amenityObjs: $amenityObjs, customField: $customField, rentalPeriod: $rentalPeriod, rentFinance: $rentFinance, askingPrice: $askingPrice, pricedrop: $pricedrop, oneCheqPrice: $oneCheqPrice, twoCheqPrice: $twoCheqPrice, fourCheqPrice: $fourCheqPrice, sixCheqPrice: $sixCheqPrice, twelveCheqPrice: $twelveCheqPrice, fees: $fees, unitStatus: $unitStatus, unitReraNo: $unitReraNo, makaniNo: $makaniNo, dewaNo: $dewaNo, propertyOwnerId: $propertyOwnerId, propertyListId: $propertyListId, image: $image, images: $images, floorPlans: $floorPlans, videos: $videos, matterportLink: $matterportLink, agentStatus: $agentStatus, agentId: $agentId, status: $status, propertyStatus: $propertyStatus, soldOrReserved: $soldOrReserved, soldDate: $soldDate, reservedDate: $reservedDate, statusArray: $statusArray, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class _$PropertyCopyWith<$Res>
    implements $PropertyCopyWith<$Res> {
  factory _$PropertyCopyWith(_Property value, $Res Function(_Property) _then) =
      __$PropertyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String listingType,
      String? categoryId,
      String? propertyTypeId,
      String propertyTitle,
      String? propertyDesc,
      bool featured,
      bool? dealOfWeek,
      Agent? agent,
      bool? premium,
      bool? exclusive,
      String? completionStatus,
      String? completionDate,
      List<String>? metaTags,
      String? metaDesc,
      String commission,
      String? securityDeposit,
      String referNo,
      String? permitNo,
      String? permitNoDTCM,
      String? buildingId,
      String? buildingName,
      List<dynamic>? buildingDistances,
      String? street,
      String? communityId,
      String? communityName,
      String? subCommunity,
      String? emirate,
      String? pinlocation,
      double? size,
      String? villaSize,
      String? beds,
      String? baths,
      String? lat,
      String? lng,
      List<dynamic>? priceHistory,
      String? zipCode,
      String? emi,
      List<String> amenities,
      List<dynamic>? amenityIds,
      List<dynamic>? amenityObjs,
      List<dynamic>? customField,
      String? rentalPeriod,
      String? rentFinance,
      double? askingPrice,
      String? pricedrop,
      double? oneCheqPrice,
      double? twoCheqPrice,
      double? fourCheqPrice,
      double? sixCheqPrice,
      double? twelveCheqPrice,
      List<dynamic>? fees,
      String? unitStatus,
      String? unitReraNo,
      String? makaniNo,
      String? dewaNo,
      @JsonKey(name: "property_owner_id") String? propertyOwnerId,
      String? propertyListId,
      String? image,
      List<dynamic>? images,
      List<String>? floorPlans,
      List<String>? videos,
      List<String>? matterportLink,
      String? agentStatus,
      String? agentId,
      String? status,
      bool? propertyStatus,
      String? soldOrReserved,
      DateTime? soldDate,
      DateTime? reservedDate,
      List<String>? statusArray,
      String? createdBy});

  @override
  $AgentCopyWith<$Res>? get agent;
}

/// @nodoc
class __$PropertyCopyWithImpl<$Res> implements _$PropertyCopyWith<$Res> {
  __$PropertyCopyWithImpl(this._self, this._then);

  final _Property _self;
  final $Res Function(_Property) _then;

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? listingType = null,
    Object? categoryId = freezed,
    Object? propertyTypeId = freezed,
    Object? propertyTitle = null,
    Object? propertyDesc = freezed,
    Object? featured = null,
    Object? dealOfWeek = freezed,
    Object? agent = freezed,
    Object? premium = freezed,
    Object? exclusive = freezed,
    Object? completionStatus = freezed,
    Object? completionDate = freezed,
    Object? metaTags = freezed,
    Object? metaDesc = freezed,
    Object? commission = null,
    Object? securityDeposit = freezed,
    Object? referNo = null,
    Object? permitNo = freezed,
    Object? permitNoDTCM = freezed,
    Object? buildingId = freezed,
    Object? buildingName = freezed,
    Object? buildingDistances = freezed,
    Object? street = freezed,
    Object? communityId = freezed,
    Object? communityName = freezed,
    Object? subCommunity = freezed,
    Object? emirate = freezed,
    Object? pinlocation = freezed,
    Object? size = freezed,
    Object? villaSize = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? priceHistory = freezed,
    Object? zipCode = freezed,
    Object? emi = freezed,
    Object? amenities = null,
    Object? amenityIds = freezed,
    Object? amenityObjs = freezed,
    Object? customField = freezed,
    Object? rentalPeriod = freezed,
    Object? rentFinance = freezed,
    Object? askingPrice = freezed,
    Object? pricedrop = freezed,
    Object? oneCheqPrice = freezed,
    Object? twoCheqPrice = freezed,
    Object? fourCheqPrice = freezed,
    Object? sixCheqPrice = freezed,
    Object? twelveCheqPrice = freezed,
    Object? fees = freezed,
    Object? unitStatus = freezed,
    Object? unitReraNo = freezed,
    Object? makaniNo = freezed,
    Object? dewaNo = freezed,
    Object? propertyOwnerId = freezed,
    Object? propertyListId = freezed,
    Object? image = freezed,
    Object? images = freezed,
    Object? floorPlans = freezed,
    Object? videos = freezed,
    Object? matterportLink = freezed,
    Object? agentStatus = freezed,
    Object? agentId = freezed,
    Object? status = freezed,
    Object? propertyStatus = freezed,
    Object? soldOrReserved = freezed,
    Object? soldDate = freezed,
    Object? reservedDate = freezed,
    Object? statusArray = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_Property(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      listingType: null == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyTypeId: freezed == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyTitle: null == propertyTitle
          ? _self.propertyTitle
          : propertyTitle // ignore: cast_nullable_to_non_nullable
              as String,
      propertyDesc: freezed == propertyDesc
          ? _self.propertyDesc
          : propertyDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: null == featured
          ? _self.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      dealOfWeek: freezed == dealOfWeek
          ? _self.dealOfWeek
          : dealOfWeek // ignore: cast_nullable_to_non_nullable
              as bool?,
      agent: freezed == agent
          ? _self.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      premium: freezed == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool?,
      exclusive: freezed == exclusive
          ? _self.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as bool?,
      completionStatus: freezed == completionStatus
          ? _self.completionStatus
          : completionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      completionDate: freezed == completionDate
          ? _self.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTags: freezed == metaTags
          ? _self._metaTags
          : metaTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metaDesc: freezed == metaDesc
          ? _self.metaDesc
          : metaDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      commission: null == commission
          ? _self.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as String,
      securityDeposit: freezed == securityDeposit
          ? _self.securityDeposit
          : securityDeposit // ignore: cast_nullable_to_non_nullable
              as String?,
      referNo: null == referNo
          ? _self.referNo
          : referNo // ignore: cast_nullable_to_non_nullable
              as String,
      permitNo: freezed == permitNo
          ? _self.permitNo
          : permitNo // ignore: cast_nullable_to_non_nullable
              as String?,
      permitNoDTCM: freezed == permitNoDTCM
          ? _self.permitNoDTCM
          : permitNoDTCM // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingId: freezed == buildingId
          ? _self.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingName: freezed == buildingName
          ? _self.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingDistances: freezed == buildingDistances
          ? _self._buildingDistances
          : buildingDistances // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      street: freezed == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      communityId: freezed == communityId
          ? _self.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      communityName: freezed == communityName
          ? _self.communityName
          : communityName // ignore: cast_nullable_to_non_nullable
              as String?,
      subCommunity: freezed == subCommunity
          ? _self.subCommunity
          : subCommunity // ignore: cast_nullable_to_non_nullable
              as String?,
      emirate: freezed == emirate
          ? _self.emirate
          : emirate // ignore: cast_nullable_to_non_nullable
              as String?,
      pinlocation: freezed == pinlocation
          ? _self.pinlocation
          : pinlocation // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      villaSize: freezed == villaSize
          ? _self.villaSize
          : villaSize // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _self.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _self.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHistory: freezed == priceHistory
          ? _self._priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      zipCode: freezed == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      emi: freezed == emi
          ? _self.emi
          : emi // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: null == amenities
          ? _self._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amenityIds: freezed == amenityIds
          ? _self._amenityIds
          : amenityIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      amenityObjs: freezed == amenityObjs
          ? _self._amenityObjs
          : amenityObjs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      customField: freezed == customField
          ? _self._customField
          : customField // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      rentalPeriod: freezed == rentalPeriod
          ? _self.rentalPeriod
          : rentalPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      rentFinance: freezed == rentFinance
          ? _self.rentFinance
          : rentFinance // ignore: cast_nullable_to_non_nullable
              as String?,
      askingPrice: freezed == askingPrice
          ? _self.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pricedrop: freezed == pricedrop
          ? _self.pricedrop
          : pricedrop // ignore: cast_nullable_to_non_nullable
              as String?,
      oneCheqPrice: freezed == oneCheqPrice
          ? _self.oneCheqPrice
          : oneCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      twoCheqPrice: freezed == twoCheqPrice
          ? _self.twoCheqPrice
          : twoCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      fourCheqPrice: freezed == fourCheqPrice
          ? _self.fourCheqPrice
          : fourCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sixCheqPrice: freezed == sixCheqPrice
          ? _self.sixCheqPrice
          : sixCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      twelveCheqPrice: freezed == twelveCheqPrice
          ? _self.twelveCheqPrice
          : twelveCheqPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      fees: freezed == fees
          ? _self._fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      unitStatus: freezed == unitStatus
          ? _self.unitStatus
          : unitStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      unitReraNo: freezed == unitReraNo
          ? _self.unitReraNo
          : unitReraNo // ignore: cast_nullable_to_non_nullable
              as String?,
      makaniNo: freezed == makaniNo
          ? _self.makaniNo
          : makaniNo // ignore: cast_nullable_to_non_nullable
              as String?,
      dewaNo: freezed == dewaNo
          ? _self.dewaNo
          : dewaNo // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyOwnerId: freezed == propertyOwnerId
          ? _self.propertyOwnerId
          : propertyOwnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyListId: freezed == propertyListId
          ? _self.propertyListId
          : propertyListId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      floorPlans: freezed == floorPlans
          ? _self._floorPlans
          : floorPlans // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videos: freezed == videos
          ? _self._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      matterportLink: freezed == matterportLink
          ? _self._matterportLink
          : matterportLink // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      agentStatus: freezed == agentStatus
          ? _self.agentStatus
          : agentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      agentId: freezed == agentId
          ? _self.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyStatus: freezed == propertyStatus
          ? _self.propertyStatus
          : propertyStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldOrReserved: freezed == soldOrReserved
          ? _self.soldOrReserved
          : soldOrReserved // ignore: cast_nullable_to_non_nullable
              as String?,
      soldDate: freezed == soldDate
          ? _self.soldDate
          : soldDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reservedDate: freezed == reservedDate
          ? _self.reservedDate
          : reservedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusArray: freezed == statusArray
          ? _self._statusArray
          : statusArray // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Property
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get agent {
    if (_self.agent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_self.agent!, (value) {
      return _then(_self.copyWith(agent: value));
    });
  }
}

/// @nodoc
mixin _$PropertyImage implements DiagnosticableTreeMixin {
  String get thumbnail;
  String get original;

  /// Create a copy of PropertyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyImageCopyWith<PropertyImage> get copyWith =>
      _$PropertyImageCopyWithImpl<PropertyImage>(
          this as PropertyImage, _$identity);

  /// Serializes this PropertyImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PropertyImage'))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('original', original));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyImage &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, thumbnail, original);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PropertyImage(thumbnail: $thumbnail, original: $original)';
  }
}

/// @nodoc
abstract mixin class $PropertyImageCopyWith<$Res> {
  factory $PropertyImageCopyWith(
          PropertyImage value, $Res Function(PropertyImage) _then) =
      _$PropertyImageCopyWithImpl;
  @useResult
  $Res call({String thumbnail, String original});
}

/// @nodoc
class _$PropertyImageCopyWithImpl<$Res>
    implements $PropertyImageCopyWith<$Res> {
  _$PropertyImageCopyWithImpl(this._self, this._then);

  final PropertyImage _self;
  final $Res Function(PropertyImage) _then;

  /// Create a copy of PropertyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
    Object? original = null,
  }) {
    return _then(_self.copyWith(
      thumbnail: null == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
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
class _PropertyImage with DiagnosticableTreeMixin implements PropertyImage {
  const _PropertyImage({required this.thumbnail, required this.original});
  factory _PropertyImage.fromJson(Map<String, dynamic> json) =>
      _$PropertyImageFromJson(json);

  @override
  final String thumbnail;
  @override
  final String original;

  /// Create a copy of PropertyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyImageCopyWith<_PropertyImage> get copyWith =>
      __$PropertyImageCopyWithImpl<_PropertyImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyImageToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PropertyImage'))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('original', original));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyImage &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, thumbnail, original);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PropertyImage(thumbnail: $thumbnail, original: $original)';
  }
}

/// @nodoc
abstract mixin class _$PropertyImageCopyWith<$Res>
    implements $PropertyImageCopyWith<$Res> {
  factory _$PropertyImageCopyWith(
          _PropertyImage value, $Res Function(_PropertyImage) _then) =
      __$PropertyImageCopyWithImpl;
  @override
  @useResult
  $Res call({String thumbnail, String original});
}

/// @nodoc
class __$PropertyImageCopyWithImpl<$Res>
    implements _$PropertyImageCopyWith<$Res> {
  __$PropertyImageCopyWithImpl(this._self, this._then);

  final _PropertyImage _self;
  final $Res Function(_PropertyImage) _then;

  /// Create a copy of PropertyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? thumbnail = null,
    Object? original = null,
  }) {
    return _then(_PropertyImage(
      thumbnail: null == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      original: null == original
          ? _self.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
