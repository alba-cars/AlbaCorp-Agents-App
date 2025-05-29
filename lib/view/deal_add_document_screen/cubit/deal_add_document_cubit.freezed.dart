// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_add_document_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DealAddDocumentState {
  AppStatus get addDealDocumentsStatus;
  String? get addDealDocumentsError;
  Deal? get deal;
  AppStatus get getDealStatus;
  String? get getDealError;

  /// Create a copy of DealAddDocumentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DealAddDocumentStateCopyWith<DealAddDocumentState> get copyWith =>
      _$DealAddDocumentStateCopyWithImpl<DealAddDocumentState>(
          this as DealAddDocumentState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DealAddDocumentState &&
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

  @override
  String toString() {
    return 'DealAddDocumentState(addDealDocumentsStatus: $addDealDocumentsStatus, addDealDocumentsError: $addDealDocumentsError, deal: $deal, getDealStatus: $getDealStatus, getDealError: $getDealError)';
  }
}

/// @nodoc
abstract mixin class $DealAddDocumentStateCopyWith<$Res> {
  factory $DealAddDocumentStateCopyWith(DealAddDocumentState value,
          $Res Function(DealAddDocumentState) _then) =
      _$DealAddDocumentStateCopyWithImpl;
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
class _$DealAddDocumentStateCopyWithImpl<$Res>
    implements $DealAddDocumentStateCopyWith<$Res> {
  _$DealAddDocumentStateCopyWithImpl(this._self, this._then);

  final DealAddDocumentState _self;
  final $Res Function(DealAddDocumentState) _then;

  /// Create a copy of DealAddDocumentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addDealDocumentsStatus = null,
    Object? addDealDocumentsError = freezed,
    Object? deal = freezed,
    Object? getDealStatus = null,
    Object? getDealError = freezed,
  }) {
    return _then(_self.copyWith(
      addDealDocumentsStatus: null == addDealDocumentsStatus
          ? _self.addDealDocumentsStatus
          : addDealDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addDealDocumentsError: freezed == addDealDocumentsError
          ? _self.addDealDocumentsError
          : addDealDocumentsError // ignore: cast_nullable_to_non_nullable
              as String?,
      deal: freezed == deal
          ? _self.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      getDealStatus: null == getDealStatus
          ? _self.getDealStatus
          : getDealStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealError: freezed == getDealError
          ? _self.getDealError
          : getDealError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DealAddDocumentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get deal {
    if (_self.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_self.deal!, (value) {
      return _then(_self.copyWith(deal: value));
    });
  }
}

/// @nodoc

class _DealAddDocumentState implements DealAddDocumentState {
  const _DealAddDocumentState(
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

  /// Create a copy of DealAddDocumentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DealAddDocumentStateCopyWith<_DealAddDocumentState> get copyWith =>
      __$DealAddDocumentStateCopyWithImpl<_DealAddDocumentState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealAddDocumentState &&
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

  @override
  String toString() {
    return 'DealAddDocumentState(addDealDocumentsStatus: $addDealDocumentsStatus, addDealDocumentsError: $addDealDocumentsError, deal: $deal, getDealStatus: $getDealStatus, getDealError: $getDealError)';
  }
}

/// @nodoc
abstract mixin class _$DealAddDocumentStateCopyWith<$Res>
    implements $DealAddDocumentStateCopyWith<$Res> {
  factory _$DealAddDocumentStateCopyWith(_DealAddDocumentState value,
          $Res Function(_DealAddDocumentState) _then) =
      __$DealAddDocumentStateCopyWithImpl;
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
class __$DealAddDocumentStateCopyWithImpl<$Res>
    implements _$DealAddDocumentStateCopyWith<$Res> {
  __$DealAddDocumentStateCopyWithImpl(this._self, this._then);

  final _DealAddDocumentState _self;
  final $Res Function(_DealAddDocumentState) _then;

  /// Create a copy of DealAddDocumentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addDealDocumentsStatus = null,
    Object? addDealDocumentsError = freezed,
    Object? deal = freezed,
    Object? getDealStatus = null,
    Object? getDealError = freezed,
  }) {
    return _then(_DealAddDocumentState(
      addDealDocumentsStatus: null == addDealDocumentsStatus
          ? _self.addDealDocumentsStatus
          : addDealDocumentsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addDealDocumentsError: freezed == addDealDocumentsError
          ? _self.addDealDocumentsError
          : addDealDocumentsError // ignore: cast_nullable_to_non_nullable
              as String?,
      deal: freezed == deal
          ? _self.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      getDealStatus: null == getDealStatus
          ? _self.getDealStatus
          : getDealStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealError: freezed == getDealError
          ? _self.getDealError
          : getDealError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DealAddDocumentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get deal {
    if (_self.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_self.deal!, (value) {
      return _then(_self.copyWith(deal: value));
    });
  }
}

// dart format on
