// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_add_document_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DealAddDocumentState {
  AppStatus get addDealDocumentsStatus => throw _privateConstructorUsedError;
  String? get addDealDocumentsError => throw _privateConstructorUsedError;
  Deal? get deal => throw _privateConstructorUsedError;
  AppStatus get getDealStatus => throw _privateConstructorUsedError;
  String? get getDealError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealAddDocumentStateCopyWith<DealAddDocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealAddDocumentStateCopyWith<$Res> {
  factory $DealAddDocumentStateCopyWith(DealAddDocumentState value,
          $Res Function(DealAddDocumentState) then) =
      _$DealAddDocumentStateCopyWithImpl<$Res, DealAddDocumentState>;
  @useResult
  $Res call(
      {AppStatus addDealDocumentsStatus,
      String? addDealDocumentsError,
      Deal? deal,
      AppStatus getDealStatus,
      String? getDealError});

  $DealCopyWith<$Res>? get deal;
}

/// @nodoc
class _$DealAddDocumentStateCopyWithImpl<$Res,
        $Val extends DealAddDocumentState>
    implements $DealAddDocumentStateCopyWith<$Res> {
  _$DealAddDocumentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addDealDocumentsStatus = null,
    Object? addDealDocumentsError = freezed,
    Object? deal = freezed,
    Object? getDealStatus = null,
    Object? getDealError = freezed,
  }) {
    return _then(_value.copyWith(
      addDealDocumentsStatus: null == addDealDocumentsStatus
          ? _value.addDealDocumentsStatus
          : addDealDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addDealDocumentsError: freezed == addDealDocumentsError
          ? _value.addDealDocumentsError
          : addDealDocumentsError // ignore: cast_nullable_to_non_nullable
              as String?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      getDealStatus: null == getDealStatus
          ? _value.getDealStatus
          : getDealStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealError: freezed == getDealError
          ? _value.getDealError
          : getDealError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get deal {
    if (_value.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_value.deal!, (value) {
      return _then(_value.copyWith(deal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DealAddDocumentStateImplCopyWith<$Res>
    implements $DealAddDocumentStateCopyWith<$Res> {
  factory _$$DealAddDocumentStateImplCopyWith(_$DealAddDocumentStateImpl value,
          $Res Function(_$DealAddDocumentStateImpl) then) =
      __$$DealAddDocumentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppStatus addDealDocumentsStatus,
      String? addDealDocumentsError,
      Deal? deal,
      AppStatus getDealStatus,
      String? getDealError});

  @override
  $DealCopyWith<$Res>? get deal;
}

/// @nodoc
class __$$DealAddDocumentStateImplCopyWithImpl<$Res>
    extends _$DealAddDocumentStateCopyWithImpl<$Res, _$DealAddDocumentStateImpl>
    implements _$$DealAddDocumentStateImplCopyWith<$Res> {
  __$$DealAddDocumentStateImplCopyWithImpl(_$DealAddDocumentStateImpl _value,
      $Res Function(_$DealAddDocumentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addDealDocumentsStatus = null,
    Object? addDealDocumentsError = freezed,
    Object? deal = freezed,
    Object? getDealStatus = null,
    Object? getDealError = freezed,
  }) {
    return _then(_$DealAddDocumentStateImpl(
      addDealDocumentsStatus: null == addDealDocumentsStatus
          ? _value.addDealDocumentsStatus
          : addDealDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addDealDocumentsError: freezed == addDealDocumentsError
          ? _value.addDealDocumentsError
          : addDealDocumentsError // ignore: cast_nullable_to_non_nullable
              as String?,
      deal: freezed == deal
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      getDealStatus: null == getDealStatus
          ? _value.getDealStatus
          : getDealStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealError: freezed == getDealError
          ? _value.getDealError
          : getDealError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DealAddDocumentStateImpl implements _DealAddDocumentState {
  const _$DealAddDocumentStateImpl(
      {this.addDealDocumentsStatus = AppStatus.init,
      this.addDealDocumentsError,
      this.deal,
      this.getDealStatus = AppStatus.init,
      this.getDealError});

  @override
  @JsonKey()
  final AppStatus addDealDocumentsStatus;
  @override
  final String? addDealDocumentsError;
  @override
  final Deal? deal;
  @override
  @JsonKey()
  final AppStatus getDealStatus;
  @override
  final String? getDealError;

  @override
  String toString() {
    return 'DealAddDocumentState(addDealDocumentsStatus: $addDealDocumentsStatus, addDealDocumentsError: $addDealDocumentsError, deal: $deal, getDealStatus: $getDealStatus, getDealError: $getDealError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealAddDocumentStateImpl &&
            (identical(other.addDealDocumentsStatus, addDealDocumentsStatus) ||
                other.addDealDocumentsStatus == addDealDocumentsStatus) &&
            (identical(other.addDealDocumentsError, addDealDocumentsError) ||
                other.addDealDocumentsError == addDealDocumentsError) &&
            (identical(other.deal, deal) || other.deal == deal) &&
            (identical(other.getDealStatus, getDealStatus) ||
                other.getDealStatus == getDealStatus) &&
            (identical(other.getDealError, getDealError) ||
                other.getDealError == getDealError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addDealDocumentsStatus,
      addDealDocumentsError, deal, getDealStatus, getDealError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DealAddDocumentStateImplCopyWith<_$DealAddDocumentStateImpl>
      get copyWith =>
          __$$DealAddDocumentStateImplCopyWithImpl<_$DealAddDocumentStateImpl>(
              this, _$identity);
}

abstract class _DealAddDocumentState implements DealAddDocumentState {
  const factory _DealAddDocumentState(
      {final AppStatus addDealDocumentsStatus,
      final String? addDealDocumentsError,
      final Deal? deal,
      final AppStatus getDealStatus,
      final String? getDealError}) = _$DealAddDocumentStateImpl;

  @override
  AppStatus get addDealDocumentsStatus;
  @override
  String? get addDealDocumentsError;
  @override
  Deal? get deal;
  @override
  AppStatus get getDealStatus;
  @override
  String? get getDealError;
  @override
  @JsonKey(ignore: true)
  _$$DealAddDocumentStateImplCopyWith<_$DealAddDocumentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
