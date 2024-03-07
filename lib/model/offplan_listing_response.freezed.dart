// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offplan_listing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DealListingResponse _$DealListingResponseFromJson(Map<String, dynamic> json) {
  return _DealListingResponse.fromJson(json);
}

/// @nodoc
mixin _$DealListingResponse {
  String get id => throw _privateConstructorUsedError;
  String get propertyType => throw _privateConstructorUsedError;
  String get beds => throw _privateConstructorUsedError;
  String get baths => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  double get agreedSalesPrice => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
  double get agreedCommission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealListingResponseCopyWith<DealListingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealListingResponseCopyWith<$Res> {
  factory $DealListingResponseCopyWith(
          DealListingResponse value, $Res Function(DealListingResponse) then) =
      _$DealListingResponseCopyWithImpl<$Res, DealListingResponse>;
  @useResult
  $Res call(
      {String id,
      String propertyType,
      String beds,
      String baths,
      int size,
      double agreedSalesPrice,
      @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
      double agreedCommission});
}

/// @nodoc
class _$DealListingResponseCopyWithImpl<$Res, $Val extends DealListingResponse>
    implements $DealListingResponseCopyWith<$Res> {
  _$DealListingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyType = null,
    Object? beds = null,
    Object? baths = null,
    Object? size = null,
    Object? agreedSalesPrice = null,
    Object? agreedCommission = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      beds: null == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String,
      baths: null == baths
          ? _value.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      agreedSalesPrice: null == agreedSalesPrice
          ? _value.agreedSalesPrice
          : agreedSalesPrice // ignore: cast_nullable_to_non_nullable
              as double,
      agreedCommission: null == agreedCommission
          ? _value.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DealListingResponseImplCopyWith<$Res>
    implements $DealListingResponseCopyWith<$Res> {
  factory _$$DealListingResponseImplCopyWith(_$DealListingResponseImpl value,
          $Res Function(_$DealListingResponseImpl) then) =
      __$$DealListingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String propertyType,
      String beds,
      String baths,
      int size,
      double agreedSalesPrice,
      @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
      double agreedCommission});
}

/// @nodoc
class __$$DealListingResponseImplCopyWithImpl<$Res>
    extends _$DealListingResponseCopyWithImpl<$Res, _$DealListingResponseImpl>
    implements _$$DealListingResponseImplCopyWith<$Res> {
  __$$DealListingResponseImplCopyWithImpl(_$DealListingResponseImpl _value,
      $Res Function(_$DealListingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyType = null,
    Object? beds = null,
    Object? baths = null,
    Object? size = null,
    Object? agreedSalesPrice = null,
    Object? agreedCommission = null,
  }) {
    return _then(_$DealListingResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      beds: null == beds
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as String,
      baths: null == baths
          ? _value.baths
          : baths // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      agreedSalesPrice: null == agreedSalesPrice
          ? _value.agreedSalesPrice
          : agreedSalesPrice // ignore: cast_nullable_to_non_nullable
              as double,
      agreedCommission: null == agreedCommission
          ? _value.agreedCommission
          : agreedCommission // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DealListingResponseImpl implements _DealListingResponse {
  _$DealListingResponseImpl(
      {required this.id,
      required this.propertyType,
      required this.beds,
      required this.baths,
      required this.size,
      required this.agreedSalesPrice,
      @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
      required this.agreedCommission});

  factory _$DealListingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealListingResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String propertyType;
  @override
  final String beds;
  @override
  final String baths;
  @override
  final int size;
  @override
  final double agreedSalesPrice;
  @override
  @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
  final double agreedCommission;

  @override
  String toString() {
    return 'DealListingResponse(id: $id, propertyType: $propertyType, beds: $beds, baths: $baths, size: $size, agreedSalesPrice: $agreedSalesPrice, agreedCommission: $agreedCommission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealListingResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.beds, beds) || other.beds == beds) &&
            (identical(other.baths, baths) || other.baths == baths) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.agreedSalesPrice, agreedSalesPrice) ||
                other.agreedSalesPrice == agreedSalesPrice) &&
            (identical(other.agreedCommission, agreedCommission) ||
                other.agreedCommission == agreedCommission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, propertyType, beds, baths,
      size, agreedSalesPrice, agreedCommission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DealListingResponseImplCopyWith<_$DealListingResponseImpl> get copyWith =>
      __$$DealListingResponseImplCopyWithImpl<_$DealListingResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealListingResponseImplToJson(
      this,
    );
  }
}

abstract class _DealListingResponse implements DealListingResponse {
  factory _DealListingResponse(
      {required final String id,
      required final String propertyType,
      required final String beds,
      required final String baths,
      required final int size,
      required final double agreedSalesPrice,
      @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
      required final double agreedCommission}) = _$DealListingResponseImpl;

  factory _DealListingResponse.fromJson(Map<String, dynamic> json) =
      _$DealListingResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get propertyType;
  @override
  String get beds;
  @override
  String get baths;
  @override
  int get size;
  @override
  double get agreedSalesPrice;
  @override
  @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
  double get agreedCommission;
  @override
  @JsonKey(ignore: true)
  _$$DealListingResponseImplCopyWith<_$DealListingResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
