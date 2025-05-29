// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckInState {
  bool get isLoading;
  bool get isInOffice;
  String get currentAddress;
  Position? get currentPosition;
  bool get hasLocationPermission;
  String? get errorMessage;
  bool get isCheckedIn;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckInStateCopyWith<CheckInState> get copyWith =>
      _$CheckInStateCopyWithImpl<CheckInState>(
          this as CheckInState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckInState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isInOffice, isInOffice) ||
                other.isInOffice == isInOffice) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.hasLocationPermission, hasLocationPermission) ||
                other.hasLocationPermission == hasLocationPermission) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isCheckedIn, isCheckedIn) ||
                other.isCheckedIn == isCheckedIn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isInOffice,
      currentAddress,
      currentPosition,
      hasLocationPermission,
      errorMessage,
      isCheckedIn);

  @override
  String toString() {
    return 'CheckInState(isLoading: $isLoading, isInOffice: $isInOffice, currentAddress: $currentAddress, currentPosition: $currentPosition, hasLocationPermission: $hasLocationPermission, errorMessage: $errorMessage, isCheckedIn: $isCheckedIn)';
  }
}

/// @nodoc
abstract mixin class $CheckInStateCopyWith<$Res> {
  factory $CheckInStateCopyWith(
          CheckInState value, $Res Function(CheckInState) _then) =
      _$CheckInStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool isInOffice,
      String currentAddress,
      Position? currentPosition,
      bool hasLocationPermission,
      String? errorMessage,
      bool isCheckedIn});
}

/// @nodoc
class _$CheckInStateCopyWithImpl<$Res> implements $CheckInStateCopyWith<$Res> {
  _$CheckInStateCopyWithImpl(this._self, this._then);

  final CheckInState _self;
  final $Res Function(CheckInState) _then;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isInOffice = null,
    Object? currentAddress = null,
    Object? currentPosition = freezed,
    Object? hasLocationPermission = null,
    Object? errorMessage = freezed,
    Object? isCheckedIn = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInOffice: null == isInOffice
          ? _self.isInOffice
          : isInOffice // ignore: cast_nullable_to_non_nullable
              as bool,
      currentAddress: null == currentAddress
          ? _self.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentPosition: freezed == currentPosition
          ? _self.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      hasLocationPermission: null == hasLocationPermission
          ? _self.hasLocationPermission
          : hasLocationPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isCheckedIn: null == isCheckedIn
          ? _self.isCheckedIn
          : isCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _CheckInState implements CheckInState {
  const _CheckInState(
      {this.isLoading = false,
      this.isInOffice = false,
      this.currentAddress = "Loading location...",
      this.currentPosition,
      this.hasLocationPermission = false,
      this.errorMessage,
      this.isCheckedIn = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isInOffice;
  @override
  @JsonKey()
  final String currentAddress;
  @override
  final Position? currentPosition;
  @override
  @JsonKey()
  final bool hasLocationPermission;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isCheckedIn;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckInStateCopyWith<_CheckInState> get copyWith =>
      __$CheckInStateCopyWithImpl<_CheckInState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckInState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isInOffice, isInOffice) ||
                other.isInOffice == isInOffice) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.hasLocationPermission, hasLocationPermission) ||
                other.hasLocationPermission == hasLocationPermission) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isCheckedIn, isCheckedIn) ||
                other.isCheckedIn == isCheckedIn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isInOffice,
      currentAddress,
      currentPosition,
      hasLocationPermission,
      errorMessage,
      isCheckedIn);

  @override
  String toString() {
    return 'CheckInState(isLoading: $isLoading, isInOffice: $isInOffice, currentAddress: $currentAddress, currentPosition: $currentPosition, hasLocationPermission: $hasLocationPermission, errorMessage: $errorMessage, isCheckedIn: $isCheckedIn)';
  }
}

/// @nodoc
abstract mixin class _$CheckInStateCopyWith<$Res>
    implements $CheckInStateCopyWith<$Res> {
  factory _$CheckInStateCopyWith(
          _CheckInState value, $Res Function(_CheckInState) _then) =
      __$CheckInStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isInOffice,
      String currentAddress,
      Position? currentPosition,
      bool hasLocationPermission,
      String? errorMessage,
      bool isCheckedIn});
}

/// @nodoc
class __$CheckInStateCopyWithImpl<$Res>
    implements _$CheckInStateCopyWith<$Res> {
  __$CheckInStateCopyWithImpl(this._self, this._then);

  final _CheckInState _self;
  final $Res Function(_CheckInState) _then;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? isInOffice = null,
    Object? currentAddress = null,
    Object? currentPosition = freezed,
    Object? hasLocationPermission = null,
    Object? errorMessage = freezed,
    Object? isCheckedIn = null,
  }) {
    return _then(_CheckInState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInOffice: null == isInOffice
          ? _self.isInOffice
          : isInOffice // ignore: cast_nullable_to_non_nullable
              as bool,
      currentAddress: null == currentAddress
          ? _self.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentPosition: freezed == currentPosition
          ? _self.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      hasLocationPermission: null == hasLocationPermission
          ? _self.hasLocationPermission
          : hasLocationPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isCheckedIn: null == isCheckedIn
          ? _self.isCheckedIn
          : isCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
