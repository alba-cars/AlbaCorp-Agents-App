// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offplan_listing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealListingResponse {
  String get id;
  String? get propertyType;
  String? get beds;
  String? get baths;
  int? get size;
  Community? get community;
  double get agreedSalesPrice;
  @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
  double get agreedCommission;

  /// Create a copy of DealListingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DealListingResponseCopyWith<DealListingResponse> get copyWith =>
      _$DealListingResponseCopyWithImpl<DealListingResponse>(
          this as DealListingResponse, _$identity);

  /// Serializes this DealListingResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DealListingResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.baths, baths) || other.baths == baths) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.agreedSalesPrice, agreedSalesPrice) ||
                other.agreedSalesPrice == agreedSalesPrice) &&
            (identical(other.agreedCommission, agreedCommission) ||
                other.agreedCommission == agreedCommission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, propertyType, beds, baths,
      size, community, agreedSalesPrice, agreedCommission);

  @override
  String toString() {
    return 'DealListingResponse(id: $id, propertyType: $propertyType, beds: $beds, baths: $baths, size: $size, community: $community, agreedSalesPrice: $agreedSalesPrice, agreedCommission: $agreedCommission)';
  }
}

/// @nodoc
abstract mixin class $DealListingResponseCopyWith<$Res> {
  factory $DealListingResponseCopyWith(
          DealListingResponse value, $Res Function(DealListingResponse) _then) =
      _$DealListingResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String? propertyType,
      String? beds,
      String? baths,
      int? size,
      Community? community,
      double agreedSalesPrice,
      @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
      double agreedCommission});

  $CommunityCopyWith<$Res>? get community;
}

/// @nodoc
class _$DealListingResponseCopyWithImpl<$Res>
    implements $DealListingResponseCopyWith<$Res> {
  _$DealListingResponseCopyWithImpl(this._self, this._then);

  final DealListingResponse _self;
  final $Res Function(DealListingResponse) _then;

  /// Create a copy of DealListingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyType = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? size = freezed,
    Object? community = freezed,
    Object? agreedSalesPrice = null,
    Object? agreedCommission = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _self.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _self.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      community: freezed == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      agreedSalesPrice: null == agreedSalesPrice
          ? _self.agreedSalesPrice
          : agreedSalesPrice // ignore: cast_nullable_to_non_nullable
              as double,
      agreedCommission: null == agreedCommission
          ? _self.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of DealListingResponse
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
class _DealListingResponse implements DealListingResponse {
  _DealListingResponse(
      {required this.id,
      required this.propertyType,
      required this.beds,
      required this.baths,
      required this.size,
      this.community,
      required this.agreedSalesPrice,
      @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
      required this.agreedCommission});
  factory _DealListingResponse.fromJson(Map<String, dynamic> json) =>
      _$DealListingResponseFromJson(json);

  @override
  final String id;
  @override
  final String? propertyType;
  @override
  final String? beds;
  @override
  final String? baths;
  @override
  final int? size;
  @override
  final Community? community;
  @override
  final double agreedSalesPrice;
  @override
  @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
  final double agreedCommission;

  /// Create a copy of DealListingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DealListingResponseCopyWith<_DealListingResponse> get copyWith =>
      __$DealListingResponseCopyWithImpl<_DealListingResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DealListingResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealListingResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.baths, baths) || other.baths == baths) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.agreedSalesPrice, agreedSalesPrice) ||
                other.agreedSalesPrice == agreedSalesPrice) &&
            (identical(other.agreedCommission, agreedCommission) ||
                other.agreedCommission == agreedCommission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, propertyType, beds, baths,
      size, community, agreedSalesPrice, agreedCommission);

  @override
  String toString() {
    return 'DealListingResponse(id: $id, propertyType: $propertyType, beds: $beds, baths: $baths, size: $size, community: $community, agreedSalesPrice: $agreedSalesPrice, agreedCommission: $agreedCommission)';
  }
}

/// @nodoc
abstract mixin class _$DealListingResponseCopyWith<$Res>
    implements $DealListingResponseCopyWith<$Res> {
  factory _$DealListingResponseCopyWith(_DealListingResponse value,
          $Res Function(_DealListingResponse) _then) =
      __$DealListingResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String? propertyType,
      String? beds,
      String? baths,
      int? size,
      Community? community,
      double agreedSalesPrice,
      @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
      double agreedCommission});

  @override
  $CommunityCopyWith<$Res>? get community;
}

/// @nodoc
class __$DealListingResponseCopyWithImpl<$Res>
    implements _$DealListingResponseCopyWith<$Res> {
  __$DealListingResponseCopyWithImpl(this._self, this._then);

  final _DealListingResponse _self;
  final $Res Function(_DealListingResponse) _then;

  /// Create a copy of DealListingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? propertyType = freezed,
    Object? beds = freezed,
    Object? baths = freezed,
    Object? size = freezed,
    Object? community = freezed,
    Object? agreedSalesPrice = null,
    Object? agreedCommission = null,
  }) {
    return _then(_DealListingResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: freezed == beds
          ? _self.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String?,
      baths: freezed == baths
          ? _self.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      community: freezed == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      agreedSalesPrice: null == agreedSalesPrice
          ? _self.agreedSalesPrice
          : agreedSalesPrice // ignore: cast_nullable_to_non_nullable
              as double,
      agreedCommission: null == agreedCommission
          ? _self.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of DealListingResponse
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

// dart format on
