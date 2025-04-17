// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckInState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isInOffice => throw _privateConstructorUsedError;
  String get currentAddress => throw _privateConstructorUsedError;
  Position? get currentPosition => throw _privateConstructorUsedError;
  bool get hasLocationPermission => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isCheckedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckInStateCopyWith<CheckInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInStateCopyWith<$Res> {
  factory $CheckInStateCopyWith(
          CheckInState value, $Res Function(CheckInState) then) =
      _$CheckInStateCopyWithImpl<$Res, CheckInState>;
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
class _$CheckInStateCopyWithImpl<$Res, $Val extends CheckInState>
    implements $CheckInStateCopyWith<$Res> {
  _$CheckInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInOffice: null == isInOffice
          ? _value.isInOffice
          : isInOffice // ignore: cast_nullable_to_non_nullable
              as bool,
      currentAddress: null == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      hasLocationPermission: null == hasLocationPermission
          ? _value.hasLocationPermission
          : hasLocationPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isCheckedIn: null == isCheckedIn
          ? _value.isCheckedIn
          : isCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckInStateImplCopyWith<$Res>
    implements $CheckInStateCopyWith<$Res> {
  factory _$$CheckInStateImplCopyWith(
          _$CheckInStateImpl value, $Res Function(_$CheckInStateImpl) then) =
      __$$CheckInStateImplCopyWithImpl<$Res>;
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
class __$$CheckInStateImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$CheckInStateImpl>
    implements _$$CheckInStateImplCopyWith<$Res> {
  __$$CheckInStateImplCopyWithImpl(
      _$CheckInStateImpl _value, $Res Function(_$CheckInStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$CheckInStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInOffice: null == isInOffice
          ? _value.isInOffice
          : isInOffice // ignore: cast_nullable_to_non_nullable
              as bool,
      currentAddress: null == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      hasLocationPermission: null == hasLocationPermission
          ? _value.hasLocationPermission
          : hasLocationPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isCheckedIn: null == isCheckedIn
          ? _value.isCheckedIn
          : isCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckInStateImpl implements _CheckInState {
  const _$CheckInStateImpl(
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

  @override
  String toString() {
    return 'CheckInState(isLoading: $isLoading, isInOffice: $isInOffice, currentAddress: $currentAddress, currentPosition: $currentPosition, hasLocationPermission: $hasLocationPermission, errorMessage: $errorMessage, isCheckedIn: $isCheckedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInStateImplCopyWith<_$CheckInStateImpl> get copyWith =>
      __$$CheckInStateImplCopyWithImpl<_$CheckInStateImpl>(this, _$identity);
}

abstract class _CheckInState implements CheckInState {
  const factory _CheckInState(
      {final bool isLoading,
      final bool isInOffice,
      final String currentAddress,
      final Position? currentPosition,
      final bool hasLocationPermission,
      final String? errorMessage,
      final bool isCheckedIn}) = _$CheckInStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isInOffice;
  @override
  String get currentAddress;
  @override
  Position? get currentPosition;
  @override
  bool get hasLocationPermission;
  @override
  String? get errorMessage;
  @override
  bool get isCheckedIn;
  @override
  @JsonKey(ignore: true)
  _$$CheckInStateImplCopyWith<_$CheckInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
