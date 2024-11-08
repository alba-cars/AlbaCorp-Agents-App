// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarningsModel _$EarningsModelFromJson(Map<String, dynamic> json) {
  return _EarningsModel.fromJson(json);
}

/// @nodoc
mixin _$EarningsModel {
  double get totalEarnings => throw _privateConstructorUsedError;
  double get thisMonthEarning => throw _privateConstructorUsedError;
  Map<String, double> get allMonthlyEarnings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EarningsModelCopyWith<EarningsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsModelCopyWith<$Res> {
  factory $EarningsModelCopyWith(
          EarningsModel value, $Res Function(EarningsModel) then) =
      _$EarningsModelCopyWithImpl<$Res, EarningsModel>;
  @useResult
  $Res call(
      {double totalEarnings,
      double thisMonthEarning,
      Map<String, double> allMonthlyEarnings});
}

/// @nodoc
class _$EarningsModelCopyWithImpl<$Res, $Val extends EarningsModel>
    implements $EarningsModelCopyWith<$Res> {
  _$EarningsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEarnings = null,
    Object? thisMonthEarning = null,
    Object? allMonthlyEarnings = null,
  }) {
    return _then(_value.copyWith(
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      thisMonthEarning: null == thisMonthEarning
          ? _value.thisMonthEarning
          : thisMonthEarning // ignore: cast_nullable_to_non_nullable
              as double,
      allMonthlyEarnings: null == allMonthlyEarnings
          ? _value.allMonthlyEarnings
          : allMonthlyEarnings // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningsModelImplCopyWith<$Res>
    implements $EarningsModelCopyWith<$Res> {
  factory _$$EarningsModelImplCopyWith(
          _$EarningsModelImpl value, $Res Function(_$EarningsModelImpl) then) =
      __$$EarningsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double totalEarnings,
      double thisMonthEarning,
      Map<String, double> allMonthlyEarnings});
}

/// @nodoc
class __$$EarningsModelImplCopyWithImpl<$Res>
    extends _$EarningsModelCopyWithImpl<$Res, _$EarningsModelImpl>
    implements _$$EarningsModelImplCopyWith<$Res> {
  __$$EarningsModelImplCopyWithImpl(
      _$EarningsModelImpl _value, $Res Function(_$EarningsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEarnings = null,
    Object? thisMonthEarning = null,
    Object? allMonthlyEarnings = null,
  }) {
    return _then(_$EarningsModelImpl(
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      thisMonthEarning: null == thisMonthEarning
          ? _value.thisMonthEarning
          : thisMonthEarning // ignore: cast_nullable_to_non_nullable
              as double,
      allMonthlyEarnings: null == allMonthlyEarnings
          ? _value._allMonthlyEarnings
          : allMonthlyEarnings // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningsModelImpl extends _EarningsModel {
  const _$EarningsModelImpl(
      {this.totalEarnings = 0,
      this.thisMonthEarning = 0,
      final Map<String, double> allMonthlyEarnings = const {}})
      : _allMonthlyEarnings = allMonthlyEarnings,
        super._();

  factory _$EarningsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningsModelImplFromJson(json);

  @override
  @JsonKey()
  final double totalEarnings;
  @override
  @JsonKey()
  final double thisMonthEarning;
  final Map<String, double> _allMonthlyEarnings;
  @override
  @JsonKey()
  Map<String, double> get allMonthlyEarnings {
    if (_allMonthlyEarnings is EqualUnmodifiableMapView)
      return _allMonthlyEarnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_allMonthlyEarnings);
  }

  @override
  String toString() {
    return 'EarningsModel(totalEarnings: $totalEarnings, thisMonthEarning: $thisMonthEarning, allMonthlyEarnings: $allMonthlyEarnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsModelImpl &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings) &&
            (identical(other.thisMonthEarning, thisMonthEarning) ||
                other.thisMonthEarning == thisMonthEarning) &&
            const DeepCollectionEquality()
                .equals(other._allMonthlyEarnings, _allMonthlyEarnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalEarnings, thisMonthEarning,
      const DeepCollectionEquality().hash(_allMonthlyEarnings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsModelImplCopyWith<_$EarningsModelImpl> get copyWith =>
      __$$EarningsModelImplCopyWithImpl<_$EarningsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningsModelImplToJson(
      this,
    );
  }
}

abstract class _EarningsModel extends EarningsModel {
  const factory _EarningsModel(
      {final double totalEarnings,
      final double thisMonthEarning,
      final Map<String, double> allMonthlyEarnings}) = _$EarningsModelImpl;
  const _EarningsModel._() : super._();

  factory _EarningsModel.fromJson(Map<String, dynamic> json) =
      _$EarningsModelImpl.fromJson;

  @override
  double get totalEarnings;
  @override
  double get thisMonthEarning;
  @override
  Map<String, double> get allMonthlyEarnings;
  @override
  @JsonKey(ignore: true)
  _$$EarningsModelImplCopyWith<_$EarningsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
