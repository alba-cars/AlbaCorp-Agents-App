// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'off_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OffPlanModel {
  @JsonKey(name: '_id')
  String get id;
  String get templateVersion;
  String get developmentName;
  String get emirate;
  OffPlanCommunity get community;
  String get slug;
  int get downpayment;
  DateTime get completionDate;
  String get developmentDescription;
  String get developmentLogo;
  List<PropertyType> get propertyTypes;
  int get startingPrice;
  List<OffPlanAmenity> get amenities;
  Developer get developer;
  Footer get footer;
  List<DevelopmentPhoto> get developmentPhotos;
  String get video;
  String get brochure;
  String get headerImage;
  String get priceImage;
  List<String>? get keywords;
  String get metaDescription;
  String get metaTitle;
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get status;

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OffPlanModelCopyWith<OffPlanModel> get copyWith =>
      _$OffPlanModelCopyWithImpl<OffPlanModel>(
          this as OffPlanModel, _$identity);

  /// Serializes this OffPlanModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OffPlanModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templateVersion, templateVersion) ||
                other.templateVersion == templateVersion) &&
            (identical(other.developmentName, developmentName) ||
                other.developmentName == developmentName) &&
            (identical(other.emirate, emirate) || other.emirate == emirate) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.downpayment, downpayment) ||
                other.downpayment == downpayment) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate) &&
            (identical(other.developmentDescription, developmentDescription) ||
                other.developmentDescription == developmentDescription) &&
            (identical(other.developmentLogo, developmentLogo) ||
                other.developmentLogo == developmentLogo) &&
            const DeepCollectionEquality()
                .equals(other.propertyTypes, propertyTypes) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            const DeepCollectionEquality().equals(other.amenities, amenities) &&
            (identical(other.developer, developer) ||
                other.developer == developer) &&
            (identical(other.footer, footer) || other.footer == footer) &&
            const DeepCollectionEquality()
                .equals(other.developmentPhotos, developmentPhotos) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.brochure, brochure) ||
                other.brochure == brochure) &&
            (identical(other.headerImage, headerImage) ||
                other.headerImage == headerImage) &&
            (identical(other.priceImage, priceImage) ||
                other.priceImage == priceImage) &&
            const DeepCollectionEquality().equals(other.keywords, keywords) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        templateVersion,
        developmentName,
        emirate,
        community,
        slug,
        downpayment,
        completionDate,
        developmentDescription,
        developmentLogo,
        const DeepCollectionEquality().hash(propertyTypes),
        startingPrice,
        const DeepCollectionEquality().hash(amenities),
        developer,
        footer,
        const DeepCollectionEquality().hash(developmentPhotos),
        video,
        brochure,
        headerImage,
        priceImage,
        const DeepCollectionEquality().hash(keywords),
        metaDescription,
        metaTitle,
        createdAt,
        updatedAt,
        status
      ]);

  @override
  String toString() {
    return 'OffPlanModel(id: $id, templateVersion: $templateVersion, developmentName: $developmentName, emirate: $emirate, community: $community, slug: $slug, downpayment: $downpayment, completionDate: $completionDate, developmentDescription: $developmentDescription, developmentLogo: $developmentLogo, propertyTypes: $propertyTypes, startingPrice: $startingPrice, amenities: $amenities, developer: $developer, footer: $footer, developmentPhotos: $developmentPhotos, video: $video, brochure: $brochure, headerImage: $headerImage, priceImage: $priceImage, keywords: $keywords, metaDescription: $metaDescription, metaTitle: $metaTitle, createdAt: $createdAt, updatedAt: $updatedAt, status: $status)';
  }
}

/// @nodoc
abstract mixin class $OffPlanModelCopyWith<$Res> {
  factory $OffPlanModelCopyWith(
          OffPlanModel value, $Res Function(OffPlanModel) _then) =
      _$OffPlanModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String templateVersion,
      String developmentName,
      String emirate,
      OffPlanCommunity community,
      String slug,
      int downpayment,
      DateTime completionDate,
      String developmentDescription,
      String developmentLogo,
      List<PropertyType> propertyTypes,
      int startingPrice,
      List<OffPlanAmenity> amenities,
      Developer developer,
      Footer footer,
      List<DevelopmentPhoto> developmentPhotos,
      String video,
      String brochure,
      String headerImage,
      String priceImage,
      List<String>? keywords,
      String metaDescription,
      String metaTitle,
      DateTime createdAt,
      DateTime updatedAt,
      String? status});

  $OffPlanCommunityCopyWith<$Res> get community;
  $DeveloperCopyWith<$Res> get developer;
  $FooterCopyWith<$Res> get footer;
}

/// @nodoc
class _$OffPlanModelCopyWithImpl<$Res> implements $OffPlanModelCopyWith<$Res> {
  _$OffPlanModelCopyWithImpl(this._self, this._then);

  final OffPlanModel _self;
  final $Res Function(OffPlanModel) _then;

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templateVersion = null,
    Object? developmentName = null,
    Object? emirate = null,
    Object? community = null,
    Object? slug = null,
    Object? downpayment = null,
    Object? completionDate = null,
    Object? developmentDescription = null,
    Object? developmentLogo = null,
    Object? propertyTypes = null,
    Object? startingPrice = null,
    Object? amenities = null,
    Object? developer = null,
    Object? footer = null,
    Object? developmentPhotos = null,
    Object? video = null,
    Object? brochure = null,
    Object? headerImage = null,
    Object? priceImage = null,
    Object? keywords = freezed,
    Object? metaDescription = null,
    Object? metaTitle = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      templateVersion: null == templateVersion
          ? _self.templateVersion
          : templateVersion // ignore: cast_nullable_to_non_nullable
              as String,
      developmentName: null == developmentName
          ? _self.developmentName
          : developmentName // ignore: cast_nullable_to_non_nullable
              as String,
      emirate: null == emirate
          ? _self.emirate
          : emirate // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as OffPlanCommunity,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      downpayment: null == downpayment
          ? _self.downpayment
          : downpayment // ignore: cast_nullable_to_non_nullable
              as int,
      completionDate: null == completionDate
          ? _self.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      developmentDescription: null == developmentDescription
          ? _self.developmentDescription
          : developmentDescription // ignore: cast_nullable_to_non_nullable
              as String,
      developmentLogo: null == developmentLogo
          ? _self.developmentLogo
          : developmentLogo // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypes: null == propertyTypes
          ? _self.propertyTypes
          : propertyTypes // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>,
      startingPrice: null == startingPrice
          ? _self.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      amenities: null == amenities
          ? _self.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<OffPlanAmenity>,
      developer: null == developer
          ? _self.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as Developer,
      footer: null == footer
          ? _self.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as Footer,
      developmentPhotos: null == developmentPhotos
          ? _self.developmentPhotos
          : developmentPhotos // ignore: cast_nullable_to_non_nullable
              as List<DevelopmentPhoto>,
      video: null == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      brochure: null == brochure
          ? _self.brochure
          : brochure // ignore: cast_nullable_to_non_nullable
              as String,
      headerImage: null == headerImage
          ? _self.headerImage
          : headerImage // ignore: cast_nullable_to_non_nullable
              as String,
      priceImage: null == priceImage
          ? _self.priceImage
          : priceImage // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: freezed == keywords
          ? _self.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metaDescription: null == metaDescription
          ? _self.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String,
      metaTitle: null == metaTitle
          ? _self.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OffPlanCommunityCopyWith<$Res> get community {
    return $OffPlanCommunityCopyWith<$Res>(_self.community, (value) {
      return _then(_self.copyWith(community: value));
    });
  }

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeveloperCopyWith<$Res> get developer {
    return $DeveloperCopyWith<$Res>(_self.developer, (value) {
      return _then(_self.copyWith(developer: value));
    });
  }

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FooterCopyWith<$Res> get footer {
    return $FooterCopyWith<$Res>(_self.footer, (value) {
      return _then(_self.copyWith(footer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OffPlanModel implements OffPlanModel {
  _OffPlanModel(
      {@JsonKey(name: '_id') required this.id,
      required this.templateVersion,
      required this.developmentName,
      required this.emirate,
      required this.community,
      required this.slug,
      required this.downpayment,
      required this.completionDate,
      required this.developmentDescription,
      required this.developmentLogo,
      required final List<PropertyType> propertyTypes,
      required this.startingPrice,
      required final List<OffPlanAmenity> amenities,
      required this.developer,
      required this.footer,
      required final List<DevelopmentPhoto> developmentPhotos,
      required this.video,
      required this.brochure,
      required this.headerImage,
      required this.priceImage,
      final List<String>? keywords,
      required this.metaDescription,
      required this.metaTitle,
      required this.createdAt,
      required this.updatedAt,
      this.status})
      : _propertyTypes = propertyTypes,
        _amenities = amenities,
        _developmentPhotos = developmentPhotos,
        _keywords = keywords;
  factory _OffPlanModel.fromJson(Map<String, dynamic> json) =>
      _$OffPlanModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String templateVersion;
  @override
  final String developmentName;
  @override
  final String emirate;
  @override
  final OffPlanCommunity community;
  @override
  final String slug;
  @override
  final int downpayment;
  @override
  final DateTime completionDate;
  @override
  final String developmentDescription;
  @override
  final String developmentLogo;
  final List<PropertyType> _propertyTypes;
  @override
  List<PropertyType> get propertyTypes {
    if (_propertyTypes is EqualUnmodifiableListView) return _propertyTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_propertyTypes);
  }

  @override
  final int startingPrice;
  final List<OffPlanAmenity> _amenities;
  @override
  List<OffPlanAmenity> get amenities {
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amenities);
  }

  @override
  final Developer developer;
  @override
  final Footer footer;
  final List<DevelopmentPhoto> _developmentPhotos;
  @override
  List<DevelopmentPhoto> get developmentPhotos {
    if (_developmentPhotos is EqualUnmodifiableListView)
      return _developmentPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_developmentPhotos);
  }

  @override
  final String video;
  @override
  final String brochure;
  @override
  final String headerImage;
  @override
  final String priceImage;
  final List<String>? _keywords;
  @override
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String metaDescription;
  @override
  final String metaTitle;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? status;

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OffPlanModelCopyWith<_OffPlanModel> get copyWith =>
      __$OffPlanModelCopyWithImpl<_OffPlanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OffPlanModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OffPlanModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templateVersion, templateVersion) ||
                other.templateVersion == templateVersion) &&
            (identical(other.developmentName, developmentName) ||
                other.developmentName == developmentName) &&
            (identical(other.emirate, emirate) || other.emirate == emirate) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.downpayment, downpayment) ||
                other.downpayment == downpayment) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate) &&
            (identical(other.developmentDescription, developmentDescription) ||
                other.developmentDescription == developmentDescription) &&
            (identical(other.developmentLogo, developmentLogo) ||
                other.developmentLogo == developmentLogo) &&
            const DeepCollectionEquality()
                .equals(other._propertyTypes, _propertyTypes) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            (identical(other.developer, developer) ||
                other.developer == developer) &&
            (identical(other.footer, footer) || other.footer == footer) &&
            const DeepCollectionEquality()
                .equals(other._developmentPhotos, _developmentPhotos) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.brochure, brochure) ||
                other.brochure == brochure) &&
            (identical(other.headerImage, headerImage) ||
                other.headerImage == headerImage) &&
            (identical(other.priceImage, priceImage) ||
                other.priceImage == priceImage) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        templateVersion,
        developmentName,
        emirate,
        community,
        slug,
        downpayment,
        completionDate,
        developmentDescription,
        developmentLogo,
        const DeepCollectionEquality().hash(_propertyTypes),
        startingPrice,
        const DeepCollectionEquality().hash(_amenities),
        developer,
        footer,
        const DeepCollectionEquality().hash(_developmentPhotos),
        video,
        brochure,
        headerImage,
        priceImage,
        const DeepCollectionEquality().hash(_keywords),
        metaDescription,
        metaTitle,
        createdAt,
        updatedAt,
        status
      ]);

  @override
  String toString() {
    return 'OffPlanModel(id: $id, templateVersion: $templateVersion, developmentName: $developmentName, emirate: $emirate, community: $community, slug: $slug, downpayment: $downpayment, completionDate: $completionDate, developmentDescription: $developmentDescription, developmentLogo: $developmentLogo, propertyTypes: $propertyTypes, startingPrice: $startingPrice, amenities: $amenities, developer: $developer, footer: $footer, developmentPhotos: $developmentPhotos, video: $video, brochure: $brochure, headerImage: $headerImage, priceImage: $priceImage, keywords: $keywords, metaDescription: $metaDescription, metaTitle: $metaTitle, createdAt: $createdAt, updatedAt: $updatedAt, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$OffPlanModelCopyWith<$Res>
    implements $OffPlanModelCopyWith<$Res> {
  factory _$OffPlanModelCopyWith(
          _OffPlanModel value, $Res Function(_OffPlanModel) _then) =
      __$OffPlanModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String templateVersion,
      String developmentName,
      String emirate,
      OffPlanCommunity community,
      String slug,
      int downpayment,
      DateTime completionDate,
      String developmentDescription,
      String developmentLogo,
      List<PropertyType> propertyTypes,
      int startingPrice,
      List<OffPlanAmenity> amenities,
      Developer developer,
      Footer footer,
      List<DevelopmentPhoto> developmentPhotos,
      String video,
      String brochure,
      String headerImage,
      String priceImage,
      List<String>? keywords,
      String metaDescription,
      String metaTitle,
      DateTime createdAt,
      DateTime updatedAt,
      String? status});

  @override
  $OffPlanCommunityCopyWith<$Res> get community;
  @override
  $DeveloperCopyWith<$Res> get developer;
  @override
  $FooterCopyWith<$Res> get footer;
}

/// @nodoc
class __$OffPlanModelCopyWithImpl<$Res>
    implements _$OffPlanModelCopyWith<$Res> {
  __$OffPlanModelCopyWithImpl(this._self, this._then);

  final _OffPlanModel _self;
  final $Res Function(_OffPlanModel) _then;

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? templateVersion = null,
    Object? developmentName = null,
    Object? emirate = null,
    Object? community = null,
    Object? slug = null,
    Object? downpayment = null,
    Object? completionDate = null,
    Object? developmentDescription = null,
    Object? developmentLogo = null,
    Object? propertyTypes = null,
    Object? startingPrice = null,
    Object? amenities = null,
    Object? developer = null,
    Object? footer = null,
    Object? developmentPhotos = null,
    Object? video = null,
    Object? brochure = null,
    Object? headerImage = null,
    Object? priceImage = null,
    Object? keywords = freezed,
    Object? metaDescription = null,
    Object? metaTitle = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? status = freezed,
  }) {
    return _then(_OffPlanModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      templateVersion: null == templateVersion
          ? _self.templateVersion
          : templateVersion // ignore: cast_nullable_to_non_nullable
              as String,
      developmentName: null == developmentName
          ? _self.developmentName
          : developmentName // ignore: cast_nullable_to_non_nullable
              as String,
      emirate: null == emirate
          ? _self.emirate
          : emirate // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as OffPlanCommunity,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      downpayment: null == downpayment
          ? _self.downpayment
          : downpayment // ignore: cast_nullable_to_non_nullable
              as int,
      completionDate: null == completionDate
          ? _self.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      developmentDescription: null == developmentDescription
          ? _self.developmentDescription
          : developmentDescription // ignore: cast_nullable_to_non_nullable
              as String,
      developmentLogo: null == developmentLogo
          ? _self.developmentLogo
          : developmentLogo // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypes: null == propertyTypes
          ? _self._propertyTypes
          : propertyTypes // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>,
      startingPrice: null == startingPrice
          ? _self.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      amenities: null == amenities
          ? _self._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<OffPlanAmenity>,
      developer: null == developer
          ? _self.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as Developer,
      footer: null == footer
          ? _self.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as Footer,
      developmentPhotos: null == developmentPhotos
          ? _self._developmentPhotos
          : developmentPhotos // ignore: cast_nullable_to_non_nullable
              as List<DevelopmentPhoto>,
      video: null == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      brochure: null == brochure
          ? _self.brochure
          : brochure // ignore: cast_nullable_to_non_nullable
              as String,
      headerImage: null == headerImage
          ? _self.headerImage
          : headerImage // ignore: cast_nullable_to_non_nullable
              as String,
      priceImage: null == priceImage
          ? _self.priceImage
          : priceImage // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: freezed == keywords
          ? _self._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metaDescription: null == metaDescription
          ? _self.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String,
      metaTitle: null == metaTitle
          ? _self.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OffPlanCommunityCopyWith<$Res> get community {
    return $OffPlanCommunityCopyWith<$Res>(_self.community, (value) {
      return _then(_self.copyWith(community: value));
    });
  }

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeveloperCopyWith<$Res> get developer {
    return $DeveloperCopyWith<$Res>(_self.developer, (value) {
      return _then(_self.copyWith(developer: value));
    });
  }

  /// Create a copy of OffPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FooterCopyWith<$Res> get footer {
    return $FooterCopyWith<$Res>(_self.footer, (value) {
      return _then(_self.copyWith(footer: value));
    });
  }
}

/// @nodoc
mixin _$OffPlanCommunity {
  String get name;
  Position get position;
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of OffPlanCommunity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OffPlanCommunityCopyWith<OffPlanCommunity> get copyWith =>
      _$OffPlanCommunityCopyWithImpl<OffPlanCommunity>(
          this as OffPlanCommunity, _$identity);

  /// Serializes this OffPlanCommunity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OffPlanCommunity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, position, id);

  @override
  String toString() {
    return 'OffPlanCommunity(name: $name, position: $position, id: $id)';
  }
}

/// @nodoc
abstract mixin class $OffPlanCommunityCopyWith<$Res> {
  factory $OffPlanCommunityCopyWith(
          OffPlanCommunity value, $Res Function(OffPlanCommunity) _then) =
      _$OffPlanCommunityCopyWithImpl;
  @useResult
  $Res call({String name, Position position, @JsonKey(name: '_id') String id});

  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$OffPlanCommunityCopyWithImpl<$Res>
    implements $OffPlanCommunityCopyWith<$Res> {
  _$OffPlanCommunityCopyWithImpl(this._self, this._then);

  final OffPlanCommunity _self;
  final $Res Function(OffPlanCommunity) _then;

  /// Create a copy of OffPlanCommunity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? position = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of OffPlanCommunity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_self.position, (value) {
      return _then(_self.copyWith(position: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OffPlanCommunity implements OffPlanCommunity {
  _OffPlanCommunity(
      {required this.name,
      required this.position,
      @JsonKey(name: '_id') required this.id});
  factory _OffPlanCommunity.fromJson(Map<String, dynamic> json) =>
      _$OffPlanCommunityFromJson(json);

  @override
  final String name;
  @override
  final Position position;
  @override
  @JsonKey(name: '_id')
  final String id;

  /// Create a copy of OffPlanCommunity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OffPlanCommunityCopyWith<_OffPlanCommunity> get copyWith =>
      __$OffPlanCommunityCopyWithImpl<_OffPlanCommunity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OffPlanCommunityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OffPlanCommunity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, position, id);

  @override
  String toString() {
    return 'OffPlanCommunity(name: $name, position: $position, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$OffPlanCommunityCopyWith<$Res>
    implements $OffPlanCommunityCopyWith<$Res> {
  factory _$OffPlanCommunityCopyWith(
          _OffPlanCommunity value, $Res Function(_OffPlanCommunity) _then) =
      __$OffPlanCommunityCopyWithImpl;
  @override
  @useResult
  $Res call({String name, Position position, @JsonKey(name: '_id') String id});

  @override
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$OffPlanCommunityCopyWithImpl<$Res>
    implements _$OffPlanCommunityCopyWith<$Res> {
  __$OffPlanCommunityCopyWithImpl(this._self, this._then);

  final _OffPlanCommunity _self;
  final $Res Function(_OffPlanCommunity) _then;

  /// Create a copy of OffPlanCommunity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? position = null,
    Object? id = null,
  }) {
    return _then(_OffPlanCommunity(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of OffPlanCommunity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_self.position, (value) {
      return _then(_self.copyWith(position: value));
    });
  }
}

/// @nodoc
mixin _$Position {
  double get lat;
  double get lng;
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PositionCopyWith<Position> get copyWith =>
      _$PositionCopyWithImpl<Position>(this as Position, _$identity);

  /// Serializes this Position to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Position &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, id);

  @override
  String toString() {
    return 'Position(lat: $lat, lng: $lng, id: $id)';
  }
}

/// @nodoc
abstract mixin class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) _then) =
      _$PositionCopyWithImpl;
  @useResult
  $Res call({double lat, double lng, @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._self, this._then);

  final Position _self;
  final $Res Function(Position) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Position implements Position {
  _Position(
      {required this.lat,
      required this.lng,
      @JsonKey(name: '_id') required this.id});
  factory _Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  @JsonKey(name: '_id')
  final String id;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PositionCopyWith<_Position> get copyWith =>
      __$PositionCopyWithImpl<_Position>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PositionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Position &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, id);

  @override
  String toString() {
    return 'Position(lat: $lat, lng: $lng, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$PositionCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) _then) =
      __$PositionCopyWithImpl;
  @override
  @useResult
  $Res call({double lat, double lng, @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$PositionCopyWithImpl<$Res> implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(this._self, this._then);

  final _Position _self;
  final $Res Function(_Position) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? id = null,
  }) {
    return _then(_Position(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

OffPlanAmenity _$OffPlanAmenityFromJson(Map<String, dynamic> json) {
  return _Amenity.fromJson(json);
}

/// @nodoc
mixin _$OffPlanAmenity {
  String get title;
  String get photo;
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of OffPlanAmenity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OffPlanAmenityCopyWith<OffPlanAmenity> get copyWith =>
      _$OffPlanAmenityCopyWithImpl<OffPlanAmenity>(
          this as OffPlanAmenity, _$identity);

  /// Serializes this OffPlanAmenity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OffPlanAmenity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, photo, id);

  @override
  String toString() {
    return 'OffPlanAmenity(title: $title, photo: $photo, id: $id)';
  }
}

/// @nodoc
abstract mixin class $OffPlanAmenityCopyWith<$Res> {
  factory $OffPlanAmenityCopyWith(
          OffPlanAmenity value, $Res Function(OffPlanAmenity) _then) =
      _$OffPlanAmenityCopyWithImpl;
  @useResult
  $Res call({String title, String photo, @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$OffPlanAmenityCopyWithImpl<$Res>
    implements $OffPlanAmenityCopyWith<$Res> {
  _$OffPlanAmenityCopyWithImpl(this._self, this._then);

  final OffPlanAmenity _self;
  final $Res Function(OffPlanAmenity) _then;

  /// Create a copy of OffPlanAmenity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? photo = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Amenity implements OffPlanAmenity {
  _Amenity(
      {required this.title,
      required this.photo,
      @JsonKey(name: '_id') required this.id});
  factory _Amenity.fromJson(Map<String, dynamic> json) =>
      _$AmenityFromJson(json);

  @override
  final String title;
  @override
  final String photo;
  @override
  @JsonKey(name: '_id')
  final String id;

  /// Create a copy of OffPlanAmenity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AmenityCopyWith<_Amenity> get copyWith =>
      __$AmenityCopyWithImpl<_Amenity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AmenityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Amenity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, photo, id);

  @override
  String toString() {
    return 'OffPlanAmenity(title: $title, photo: $photo, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$AmenityCopyWith<$Res>
    implements $OffPlanAmenityCopyWith<$Res> {
  factory _$AmenityCopyWith(_Amenity value, $Res Function(_Amenity) _then) =
      __$AmenityCopyWithImpl;
  @override
  @useResult
  $Res call({String title, String photo, @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$AmenityCopyWithImpl<$Res> implements _$AmenityCopyWith<$Res> {
  __$AmenityCopyWithImpl(this._self, this._then);

  final _Amenity _self;
  final $Res Function(_Amenity) _then;

  /// Create a copy of OffPlanAmenity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? photo = null,
    Object? id = null,
  }) {
    return _then(_Amenity(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Developer {
  @JsonKey(name: '_id')
  String get id;
  String get name;
  String? get description;
  String get logo;
  String get backgroundImage;
  String get headerTitle;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of Developer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeveloperCopyWith<Developer> get copyWith =>
      _$DeveloperCopyWithImpl<Developer>(this as Developer, _$identity);

  /// Serializes this Developer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Developer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.headerTitle, headerTitle) ||
                other.headerTitle == headerTitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, logo,
      backgroundImage, headerTitle, createdAt, updatedAt);

  @override
  String toString() {
    return 'Developer(id: $id, name: $name, description: $description, logo: $logo, backgroundImage: $backgroundImage, headerTitle: $headerTitle, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $DeveloperCopyWith<$Res> {
  factory $DeveloperCopyWith(Developer value, $Res Function(Developer) _then) =
      _$DeveloperCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String? description,
      String logo,
      String backgroundImage,
      String headerTitle,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$DeveloperCopyWithImpl<$Res> implements $DeveloperCopyWith<$Res> {
  _$DeveloperCopyWithImpl(this._self, this._then);

  final Developer _self;
  final $Res Function(Developer) _then;

  /// Create a copy of Developer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? logo = null,
    Object? backgroundImage = null,
    Object? headerTitle = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: null == backgroundImage
          ? _self.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      headerTitle: null == headerTitle
          ? _self.headerTitle
          : headerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Developer implements Developer {
  _Developer(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.description,
      required this.logo,
      required this.backgroundImage,
      required this.headerTitle,
      required this.createdAt,
      required this.updatedAt});
  factory _Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String logo;
  @override
  final String backgroundImage;
  @override
  final String headerTitle;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of Developer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeveloperCopyWith<_Developer> get copyWith =>
      __$DeveloperCopyWithImpl<_Developer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeveloperToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Developer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.headerTitle, headerTitle) ||
                other.headerTitle == headerTitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, logo,
      backgroundImage, headerTitle, createdAt, updatedAt);

  @override
  String toString() {
    return 'Developer(id: $id, name: $name, description: $description, logo: $logo, backgroundImage: $backgroundImage, headerTitle: $headerTitle, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$DeveloperCopyWith<$Res>
    implements $DeveloperCopyWith<$Res> {
  factory _$DeveloperCopyWith(
          _Developer value, $Res Function(_Developer) _then) =
      __$DeveloperCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String? description,
      String logo,
      String backgroundImage,
      String headerTitle,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$DeveloperCopyWithImpl<$Res> implements _$DeveloperCopyWith<$Res> {
  __$DeveloperCopyWithImpl(this._self, this._then);

  final _Developer _self;
  final $Res Function(_Developer) _then;

  /// Create a copy of Developer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? logo = null,
    Object? backgroundImage = null,
    Object? headerTitle = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Developer(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: null == backgroundImage
          ? _self.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      headerTitle: null == headerTitle
          ? _self.headerTitle
          : headerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$Footer {
  @JsonKey(name: '_id')
  String get id;
  String get name;
  String get description;
  String get logo;
  String get type;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of Footer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FooterCopyWith<Footer> get copyWith =>
      _$FooterCopyWithImpl<Footer>(this as Footer, _$identity);

  /// Serializes this Footer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Footer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, logo, type, createdAt, updatedAt);

  @override
  String toString() {
    return 'Footer(id: $id, name: $name, description: $description, logo: $logo, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FooterCopyWith<$Res> {
  factory $FooterCopyWith(Footer value, $Res Function(Footer) _then) =
      _$FooterCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String description,
      String logo,
      String type,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$FooterCopyWithImpl<$Res> implements $FooterCopyWith<$Res> {
  _$FooterCopyWithImpl(this._self, this._then);

  final Footer _self;
  final $Res Function(Footer) _then;

  /// Create a copy of Footer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? logo = null,
    Object? type = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Footer implements Footer {
  _Footer(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.description,
      required this.logo,
      required this.type,
      required this.createdAt,
      required this.updatedAt});
  factory _Footer.fromJson(Map<String, dynamic> json) => _$FooterFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String logo;
  @override
  final String type;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of Footer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FooterCopyWith<_Footer> get copyWith =>
      __$FooterCopyWithImpl<_Footer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FooterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Footer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, logo, type, createdAt, updatedAt);

  @override
  String toString() {
    return 'Footer(id: $id, name: $name, description: $description, logo: $logo, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FooterCopyWith<$Res> implements $FooterCopyWith<$Res> {
  factory _$FooterCopyWith(_Footer value, $Res Function(_Footer) _then) =
      __$FooterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String description,
      String logo,
      String type,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$FooterCopyWithImpl<$Res> implements _$FooterCopyWith<$Res> {
  __$FooterCopyWithImpl(this._self, this._then);

  final _Footer _self;
  final $Res Function(_Footer) _then;

  /// Create a copy of Footer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? logo = null,
    Object? type = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Footer(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$DevelopmentPhoto {
  String get file;
  String get label;
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of DevelopmentPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DevelopmentPhotoCopyWith<DevelopmentPhoto> get copyWith =>
      _$DevelopmentPhotoCopyWithImpl<DevelopmentPhoto>(
          this as DevelopmentPhoto, _$identity);

  /// Serializes this DevelopmentPhoto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DevelopmentPhoto &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, label, id);

  @override
  String toString() {
    return 'DevelopmentPhoto(file: $file, label: $label, id: $id)';
  }
}

/// @nodoc
abstract mixin class $DevelopmentPhotoCopyWith<$Res> {
  factory $DevelopmentPhotoCopyWith(
          DevelopmentPhoto value, $Res Function(DevelopmentPhoto) _then) =
      _$DevelopmentPhotoCopyWithImpl;
  @useResult
  $Res call({String file, String label, @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$DevelopmentPhotoCopyWithImpl<$Res>
    implements $DevelopmentPhotoCopyWith<$Res> {
  _$DevelopmentPhotoCopyWithImpl(this._self, this._then);

  final DevelopmentPhoto _self;
  final $Res Function(DevelopmentPhoto) _then;

  /// Create a copy of DevelopmentPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? label = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DevelopmentPhoto implements DevelopmentPhoto {
  _DevelopmentPhoto(
      {required this.file,
      required this.label,
      @JsonKey(name: '_id') required this.id});
  factory _DevelopmentPhoto.fromJson(Map<String, dynamic> json) =>
      _$DevelopmentPhotoFromJson(json);

  @override
  final String file;
  @override
  final String label;
  @override
  @JsonKey(name: '_id')
  final String id;

  /// Create a copy of DevelopmentPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DevelopmentPhotoCopyWith<_DevelopmentPhoto> get copyWith =>
      __$DevelopmentPhotoCopyWithImpl<_DevelopmentPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DevelopmentPhotoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DevelopmentPhoto &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, label, id);

  @override
  String toString() {
    return 'DevelopmentPhoto(file: $file, label: $label, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$DevelopmentPhotoCopyWith<$Res>
    implements $DevelopmentPhotoCopyWith<$Res> {
  factory _$DevelopmentPhotoCopyWith(
          _DevelopmentPhoto value, $Res Function(_DevelopmentPhoto) _then) =
      __$DevelopmentPhotoCopyWithImpl;
  @override
  @useResult
  $Res call({String file, String label, @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$DevelopmentPhotoCopyWithImpl<$Res>
    implements _$DevelopmentPhotoCopyWith<$Res> {
  __$DevelopmentPhotoCopyWithImpl(this._self, this._then);

  final _DevelopmentPhoto _self;
  final $Res Function(_DevelopmentPhoto) _then;

  /// Create a copy of DevelopmentPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = null,
    Object? label = null,
    Object? id = null,
  }) {
    return _then(_DevelopmentPhoto(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
