// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expected_earnings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpectedEarningsModel {
  double get expectedCommission;

  /// Create a copy of ExpectedEarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpectedEarningsModelCopyWith<ExpectedEarningsModel> get copyWith =>
      _$ExpectedEarningsModelCopyWithImpl<ExpectedEarningsModel>(
          this as ExpectedEarningsModel, _$identity);

  /// Serializes this ExpectedEarningsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpectedEarningsModel &&
            (identical(other.expectedCommission, expectedCommission) ||
                other.expectedCommission == expectedCommission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expectedCommission);

  @override
  String toString() {
    return 'ExpectedEarningsModel(expectedCommission: $expectedCommission)';
  }
}

/// @nodoc
abstract mixin class $ExpectedEarningsModelCopyWith<$Res> {
  factory $ExpectedEarningsModelCopyWith(ExpectedEarningsModel value,
          $Res Function(ExpectedEarningsModel) _then) =
      _$ExpectedEarningsModelCopyWithImpl;
  @useResult
  $Res call({double expectedCommission});
}

/// @nodoc
class _$ExpectedEarningsModelCopyWithImpl<$Res>
    implements $ExpectedEarningsModelCopyWith<$Res> {
  _$ExpectedEarningsModelCopyWithImpl(this._self, this._then);

  final ExpectedEarningsModel _self;
  final $Res Function(ExpectedEarningsModel) _then;

  /// Create a copy of ExpectedEarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedCommission = null,
  }) {
    return _then(_self.copyWith(
      expectedCommission: null == expectedCommission
          ? _self.expectedCommission
          : expectedCommission // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ExpectedEarningsModel extends ExpectedEarningsModel {
  const _ExpectedEarningsModel({this.expectedCommission = 0}) : super._();
  factory _ExpectedEarningsModel.fromJson(Map<String, dynamic> json) =>
      _$ExpectedEarningsModelFromJson(json);

  @override
  @JsonKey()
  final double expectedCommission;

  /// Create a copy of ExpectedEarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpectedEarningsModelCopyWith<_ExpectedEarningsModel> get copyWith =>
      __$ExpectedEarningsModelCopyWithImpl<_ExpectedEarningsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpectedEarningsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpectedEarningsModel &&
            (identical(other.expectedCommission, expectedCommission) ||
                other.expectedCommission == expectedCommission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expectedCommission);

  @override
  String toString() {
    return 'ExpectedEarningsModel(expectedCommission: $expectedCommission)';
  }
}

/// @nodoc
abstract mixin class _$ExpectedEarningsModelCopyWith<$Res>
    implements $ExpectedEarningsModelCopyWith<$Res> {
  factory _$ExpectedEarningsModelCopyWith(_ExpectedEarningsModel value,
          $Res Function(_ExpectedEarningsModel) _then) =
      __$ExpectedEarningsModelCopyWithImpl;
  @override
  @useResult
  $Res call({double expectedCommission});
}

/// @nodoc
class __$ExpectedEarningsModelCopyWithImpl<$Res>
    implements _$ExpectedEarningsModelCopyWith<$Res> {
  __$ExpectedEarningsModelCopyWithImpl(this._self, this._then);

  final _ExpectedEarningsModel _self;
  final $Res Function(_ExpectedEarningsModel) _then;

  /// Create a copy of ExpectedEarningsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? expectedCommission = null,
  }) {
    return _then(_ExpectedEarningsModel(
      expectedCommission: null == expectedCommission
          ? _self.expectedCommission
          : expectedCommission // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
