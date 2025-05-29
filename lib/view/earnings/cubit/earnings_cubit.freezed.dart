// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EarningsState {
  AppStatus get fetchStatus;
  EarningsModel get earnings;
  String get error;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EarningsStateCopyWith<EarningsState> get copyWith =>
      _$EarningsStateCopyWithImpl<EarningsState>(
          this as EarningsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EarningsState &&
            (identical(other.fetchStatus, fetchStatus) ||
                other.fetchStatus == fetchStatus) &&
            (identical(other.earnings, earnings) ||
                other.earnings == earnings) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchStatus, earnings, error);

  @override
  String toString() {
    return 'EarningsState(fetchStatus: $fetchStatus, earnings: $earnings, error: $error)';
  }
}

/// @nodoc
abstract mixin class $EarningsStateCopyWith<$Res> {
  factory $EarningsStateCopyWith(
          EarningsState value, $Res Function(EarningsState) _then) =
      _$EarningsStateCopyWithImpl;
  @useResult
  $Res call({AppStatus fetchStatus, EarningsModel earnings, String error});

  $EarningsModelCopyWith<$Res> get earnings;
}

/// @nodoc
class _$EarningsStateCopyWithImpl<$Res>
    implements $EarningsStateCopyWith<$Res> {
  _$EarningsStateCopyWithImpl(this._self, this._then);

  final EarningsState _self;
  final $Res Function(EarningsState) _then;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? earnings = null,
    Object? error = null,
  }) {
    return _then(_self.copyWith(
      fetchStatus: null == fetchStatus
          ? _self.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      earnings: null == earnings
          ? _self.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as EarningsModel,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningsModelCopyWith<$Res> get earnings {
    return $EarningsModelCopyWith<$Res>(_self.earnings, (value) {
      return _then(_self.copyWith(earnings: value));
    });
  }
}

/// @nodoc

class _EarningsState implements EarningsState {
  const _EarningsState(
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

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EarningsStateCopyWith<_EarningsState> get copyWith =>
      __$EarningsStateCopyWithImpl<_EarningsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EarningsState &&
            (identical(other.fetchStatus, fetchStatus) ||
                other.fetchStatus == fetchStatus) &&
            (identical(other.earnings, earnings) ||
                other.earnings == earnings) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchStatus, earnings, error);

  @override
  String toString() {
    return 'EarningsState(fetchStatus: $fetchStatus, earnings: $earnings, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$EarningsStateCopyWith<$Res>
    implements $EarningsStateCopyWith<$Res> {
  factory _$EarningsStateCopyWith(
          _EarningsState value, $Res Function(_EarningsState) _then) =
      __$EarningsStateCopyWithImpl;
  @override
  @useResult
  $Res call({AppStatus fetchStatus, EarningsModel earnings, String error});

  @override
  $EarningsModelCopyWith<$Res> get earnings;
}

/// @nodoc
class __$EarningsStateCopyWithImpl<$Res>
    implements _$EarningsStateCopyWith<$Res> {
  __$EarningsStateCopyWithImpl(this._self, this._then);

  final _EarningsState _self;
  final $Res Function(_EarningsState) _then;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fetchStatus = null,
    Object? earnings = null,
    Object? error = null,
  }) {
    return _then(_EarningsState(
      fetchStatus: null == fetchStatus
          ? _self.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      earnings: null == earnings
          ? _self.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as EarningsModel,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarningsModelCopyWith<$Res> get earnings {
    return $EarningsModelCopyWith<$Res>(_self.earnings, (value) {
      return _then(_self.copyWith(earnings: value));
    });
  }
}

// dart format on
