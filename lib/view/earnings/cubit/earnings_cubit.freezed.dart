// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EarningsState {
  AppStatus get fetchStatus => throw _privateConstructorUsedError;
  EarningsModel get earnings => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EarningsStateCopyWith<EarningsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsStateCopyWith<$Res> {
  factory $EarningsStateCopyWith(
          EarningsState value, $Res Function(EarningsState) then) =
      _$EarningsStateCopyWithImpl<$Res, EarningsState>;
  @useResult
  $Res call({AppStatus fetchStatus, EarningsModel earnings, String error});

  $EarningsModelCopyWith<$Res> get earnings;
}

/// @nodoc
class _$EarningsStateCopyWithImpl<$Res, $Val extends EarningsState>
    implements $EarningsStateCopyWith<$Res> {
  _$EarningsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? earnings = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as EarningsModel,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EarningsModelCopyWith<$Res> get earnings {
    return $EarningsModelCopyWith<$Res>(_value.earnings, (value) {
      return _then(_value.copyWith(earnings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarningsStateImplCopyWith<$Res>
    implements $EarningsStateCopyWith<$Res> {
  factory _$$EarningsStateImplCopyWith(
          _$EarningsStateImpl value, $Res Function(_$EarningsStateImpl) then) =
      __$$EarningsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppStatus fetchStatus, EarningsModel earnings, String error});

  @override
  $EarningsModelCopyWith<$Res> get earnings;
}

/// @nodoc
class __$$EarningsStateImplCopyWithImpl<$Res>
    extends _$EarningsStateCopyWithImpl<$Res, _$EarningsStateImpl>
    implements _$$EarningsStateImplCopyWith<$Res> {
  __$$EarningsStateImplCopyWithImpl(
      _$EarningsStateImpl _value, $Res Function(_$EarningsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? earnings = null,
    Object? error = null,
  }) {
    return _then(_$EarningsStateImpl(
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as EarningsModel,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EarningsStateImpl implements _EarningsState {
  const _$EarningsStateImpl(
      {this.fetchStatus = AppStatus.initial,
      this.earnings = const EarningsModel(),
      this.error = ""});

  @override
  @JsonKey()
  final AppStatus fetchStatus;
  @override
  @JsonKey()
  final EarningsModel earnings;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'EarningsState(fetchStatus: $fetchStatus, earnings: $earnings, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsStateImpl &&
            (identical(other.fetchStatus, fetchStatus) ||
                other.fetchStatus == fetchStatus) &&
            (identical(other.earnings, earnings) ||
                other.earnings == earnings) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchStatus, earnings, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsStateImplCopyWith<_$EarningsStateImpl> get copyWith =>
      __$$EarningsStateImplCopyWithImpl<_$EarningsStateImpl>(this, _$identity);
}

abstract class _EarningsState implements EarningsState {
  const factory _EarningsState(
      {final AppStatus fetchStatus,
      final EarningsModel earnings,
      final String error}) = _$EarningsStateImpl;

  @override
  AppStatus get fetchStatus;
  @override
  EarningsModel get earnings;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$EarningsStateImplCopyWith<_$EarningsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
