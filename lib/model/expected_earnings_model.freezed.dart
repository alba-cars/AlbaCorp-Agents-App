// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expected_earnings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpectedEarningsModel _$ExpectedEarningsModelFromJson(
    Map<String, dynamic> json) {
  return _ExpectedEarningsModel.fromJson(json);
}

/// @nodoc
mixin _$ExpectedEarningsModel {
  double get expectedCommission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpectedEarningsModelCopyWith<ExpectedEarningsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpectedEarningsModelCopyWith<$Res> {
  factory $ExpectedEarningsModelCopyWith(ExpectedEarningsModel value,
          $Res Function(ExpectedEarningsModel) then) =
      _$ExpectedEarningsModelCopyWithImpl<$Res, ExpectedEarningsModel>;
  @useResult
  $Res call({double expectedCommission});
}

/// @nodoc
class _$ExpectedEarningsModelCopyWithImpl<$Res,
        $Val extends ExpectedEarningsModel>
    implements $ExpectedEarningsModelCopyWith<$Res> {
  _$ExpectedEarningsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedCommission = null,
  }) {
    return _then(_value.copyWith(
      expectedCommission: null == expectedCommission
          ? _value.expectedCommission
          : expectedCommission // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpectedEarningsModelImplCopyWith<$Res>
    implements $ExpectedEarningsModelCopyWith<$Res> {
  factory _$$ExpectedEarningsModelImplCopyWith(
          _$ExpectedEarningsModelImpl value,
          $Res Function(_$ExpectedEarningsModelImpl) then) =
      __$$ExpectedEarningsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double expectedCommission});
}

/// @nodoc
class __$$ExpectedEarningsModelImplCopyWithImpl<$Res>
    extends _$ExpectedEarningsModelCopyWithImpl<$Res,
        _$ExpectedEarningsModelImpl>
    implements _$$ExpectedEarningsModelImplCopyWith<$Res> {
  __$$ExpectedEarningsModelImplCopyWithImpl(_$ExpectedEarningsModelImpl _value,
      $Res Function(_$ExpectedEarningsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedCommission = null,
  }) {
    return _then(_$ExpectedEarningsModelImpl(
      expectedCommission: null == expectedCommission
          ? _value.expectedCommission
          : expectedCommission // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpectedEarningsModelImpl extends _ExpectedEarningsModel {
  const _$ExpectedEarningsModelImpl({this.expectedCommission = 0}) : super._();

  factory _$ExpectedEarningsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpectedEarningsModelImplFromJson(json);

  @override
  @JsonKey()
  final double expectedCommission;

  @override
  String toString() {
    return 'ExpectedEarningsModel(expectedCommission: $expectedCommission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpectedEarningsModelImpl &&
            (identical(other.expectedCommission, expectedCommission) ||
                other.expectedCommission == expectedCommission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expectedCommission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpectedEarningsModelImplCopyWith<_$ExpectedEarningsModelImpl>
      get copyWith => __$$ExpectedEarningsModelImplCopyWithImpl<
          _$ExpectedEarningsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpectedEarningsModelImplToJson(
      this,
    );
  }
}

abstract class _ExpectedEarningsModel extends ExpectedEarningsModel {
  const factory _ExpectedEarningsModel({final double expectedCommission}) =
      _$ExpectedEarningsModelImpl;
  const _ExpectedEarningsModel._() : super._();

  factory _ExpectedEarningsModel.fromJson(Map<String, dynamic> json) =
      _$ExpectedEarningsModelImpl.fromJson;

  @override
  double get expectedCommission;
  @override
  @JsonKey(ignore: true)
  _$$ExpectedEarningsModelImplCopyWith<_$ExpectedEarningsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
