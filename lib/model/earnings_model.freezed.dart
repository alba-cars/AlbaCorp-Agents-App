// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EarningsModel {
  double get totalEarnings;
  double get thisMonthEarning;
  Map<String, double> get allMonthlyEarnings;

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EarningsModelCopyWith<EarningsModel> get copyWith =>
      _$EarningsModelCopyWithImpl<EarningsModel>(
          this as EarningsModel, _$identity);

  /// Serializes this EarningsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EarningsModel &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings) &&
            (identical(other.thisMonthEarning, thisMonthEarning) ||
                other.thisMonthEarning == thisMonthEarning) &&
            const DeepCollectionEquality()
                .equals(other.allMonthlyEarnings, allMonthlyEarnings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalEarnings, thisMonthEarning,
      const DeepCollectionEquality().hash(allMonthlyEarnings));

  @override
  String toString() {
    return 'EarningsModel(totalEarnings: $totalEarnings, thisMonthEarning: $thisMonthEarning, allMonthlyEarnings: $allMonthlyEarnings)';
  }
}

/// @nodoc
abstract mixin class $EarningsModelCopyWith<$Res> {
  factory $EarningsModelCopyWith(
          EarningsModel value, $Res Function(EarningsModel) _then) =
      _$EarningsModelCopyWithImpl;
  @useResult
  $Res call(
      {double totalEarnings,
      double thisMonthEarning,
      Map<String, double> allMonthlyEarnings});
}

/// @nodoc
class _$EarningsModelCopyWithImpl<$Res>
    implements $EarningsModelCopyWith<$Res> {
  _$EarningsModelCopyWithImpl(this._self, this._then);

  final EarningsModel _self;
  final $Res Function(EarningsModel) _then;

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEarnings = null,
    Object? thisMonthEarning = null,
    Object? allMonthlyEarnings = null,
  }) {
    return _then(_self.copyWith(
      totalEarnings: null == totalEarnings
          ? _self.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      thisMonthEarning: null == thisMonthEarning
          ? _self.thisMonthEarning
          : thisMonthEarning // ignore: cast_nullable_to_non_nullable
              as double,
      allMonthlyEarnings: null == allMonthlyEarnings
          ? _self.allMonthlyEarnings
          : allMonthlyEarnings // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EarningsModel extends EarningsModel {
  const _EarningsModel(
      {this.totalEarnings = 0,
      this.thisMonthEarning = 0,
      final Map<String, double> allMonthlyEarnings = const {}})
      : _allMonthlyEarnings = allMonthlyEarnings,
        super._();
  factory _EarningsModel.fromJson(Map<String, dynamic> json) =>
      _$EarningsModelFromJson(json);

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

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EarningsModelCopyWith<_EarningsModel> get copyWith =>
      __$EarningsModelCopyWithImpl<_EarningsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EarningsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EarningsModel &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings) &&
            (identical(other.thisMonthEarning, thisMonthEarning) ||
                other.thisMonthEarning == thisMonthEarning) &&
            const DeepCollectionEquality()
                .equals(other._allMonthlyEarnings, _allMonthlyEarnings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalEarnings, thisMonthEarning,
      const DeepCollectionEquality().hash(_allMonthlyEarnings));

  @override
  String toString() {
    return 'EarningsModel(totalEarnings: $totalEarnings, thisMonthEarning: $thisMonthEarning, allMonthlyEarnings: $allMonthlyEarnings)';
  }
}

/// @nodoc
abstract mixin class _$EarningsModelCopyWith<$Res>
    implements $EarningsModelCopyWith<$Res> {
  factory _$EarningsModelCopyWith(
          _EarningsModel value, $Res Function(_EarningsModel) _then) =
      __$EarningsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double totalEarnings,
      double thisMonthEarning,
      Map<String, double> allMonthlyEarnings});
}

/// @nodoc
class __$EarningsModelCopyWithImpl<$Res>
    implements _$EarningsModelCopyWith<$Res> {
  __$EarningsModelCopyWithImpl(this._self, this._then);

  final _EarningsModel _self;
  final $Res Function(_EarningsModel) _then;

  /// Create a copy of EarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalEarnings = null,
    Object? thisMonthEarning = null,
    Object? allMonthlyEarnings = null,
  }) {
    return _then(_EarningsModel(
      totalEarnings: null == totalEarnings
          ? _self.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      thisMonthEarning: null == thisMonthEarning
          ? _self.thisMonthEarning
          : thisMonthEarning // ignore: cast_nullable_to_non_nullable
              as double,
      allMonthlyEarnings: null == allMonthlyEarnings
          ? _self._allMonthlyEarnings
          : allMonthlyEarnings // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

// dart format on
