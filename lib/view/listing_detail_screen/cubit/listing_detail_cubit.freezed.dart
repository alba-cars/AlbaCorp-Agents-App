// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingDetailState {
  String get listingId;
  AppStatus get getListingDetailsStatus;
  Property? get listing;
  String? get getListingError;
  List<Activity> get activities;
  AppStatus get getActivitiesStatus;
  String? get getActivitiesError;

  /// Create a copy of ListingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListingDetailStateCopyWith<ListingDetailState> get copyWith =>
      _$ListingDetailStateCopyWithImpl<ListingDetailState>(
          this as ListingDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListingDetailState &&
            (identical(other.listingId, listingId) ||
                other.listingId == listingId) &&
            (identical(
                    other.getListingDetailsStatus, getListingDetailsStatus) ||
                other.getListingDetailsStatus == getListingDetailsStatus) &&
            (identical(other.listing, listing) || other.listing == listing) &&
            (identical(other.getListingError, getListingError) ||
                other.getListingError == getListingError) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.getActivitiesError, getActivitiesError) ||
                other.getActivitiesError == getActivitiesError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      listingId,
      getListingDetailsStatus,
      listing,
      getListingError,
      const DeepCollectionEquality().hash(activities),
      getActivitiesStatus,
      getActivitiesError);

  @override
  String toString() {
    return 'ListingDetailState(listingId: $listingId, getListingDetailsStatus: $getListingDetailsStatus, listing: $listing, getListingError: $getListingError, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError)';
  }
}

/// @nodoc
abstract mixin class $ListingDetailStateCopyWith<$Res> {
  factory $ListingDetailStateCopyWith(
          ListingDetailState value, $Res Function(ListingDetailState) _then) =
      _$ListingDetailStateCopyWithImpl;
  @useResult
  $Res call(
      {String listingId,
      AppStatus getListingDetailsStatus,
      Property? listing,
      String? getListingError,
      List<Activity> activities,
      AppStatus getActivitiesStatus,
      String? getActivitiesError});

  $PropertyCopyWith<$Res>? get listing;
}

/// @nodoc
class _$ListingDetailStateCopyWithImpl<$Res>
    implements $ListingDetailStateCopyWith<$Res> {
  _$ListingDetailStateCopyWithImpl(this._self, this._then);

  final ListingDetailState _self;
  final $Res Function(ListingDetailState) _then;

  /// Create a copy of ListingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listingId = null,
    Object? getListingDetailsStatus = null,
    Object? listing = freezed,
    Object? getListingError = freezed,
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = freezed,
  }) {
    return _then(_self.copyWith(
      listingId: null == listingId
          ? _self.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      getListingDetailsStatus: null == getListingDetailsStatus
          ? _self.getListingDetailsStatus
          : getListingDetailsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      listing: freezed == listing
          ? _self.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Property?,
      getListingError: freezed == getListingError
          ? _self.getListingError
          : getListingError // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _self.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _self.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ListingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get listing {
    if (_self.listing == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_self.listing!, (value) {
      return _then(_self.copyWith(listing: value));
    });
  }
}

/// @nodoc

class _ListingDetailState implements ListingDetailState {
  const _ListingDetailState(
      {required this.listingId,
      this.getListingDetailsStatus = AppStatus.init,
      this.listing,
      this.getListingError,
      final List<Activity> activities = const [],
      this.getActivitiesStatus = AppStatus.init,
      this.getActivitiesError})
      : _activities = activities;

  @override
  final String listingId;
  @override
  @JsonKey()
  final AppStatus getListingDetailsStatus;
  @override
  final Property? listing;
  @override
  final String? getListingError;
  final List<Activity> _activities;
  @override
  @JsonKey()
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  @JsonKey()
  final AppStatus getActivitiesStatus;
  @override
  final String? getActivitiesError;

  /// Create a copy of ListingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListingDetailStateCopyWith<_ListingDetailState> get copyWith =>
      __$ListingDetailStateCopyWithImpl<_ListingDetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListingDetailState &&
            (identical(other.listingId, listingId) ||
                other.listingId == listingId) &&
            (identical(
                    other.getListingDetailsStatus, getListingDetailsStatus) ||
                other.getListingDetailsStatus == getListingDetailsStatus) &&
            (identical(other.listing, listing) || other.listing == listing) &&
            (identical(other.getListingError, getListingError) ||
                other.getListingError == getListingError) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.getActivitiesError, getActivitiesError) ||
                other.getActivitiesError == getActivitiesError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      listingId,
      getListingDetailsStatus,
      listing,
      getListingError,
      const DeepCollectionEquality().hash(_activities),
      getActivitiesStatus,
      getActivitiesError);

  @override
  String toString() {
    return 'ListingDetailState(listingId: $listingId, getListingDetailsStatus: $getListingDetailsStatus, listing: $listing, getListingError: $getListingError, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError)';
  }
}

/// @nodoc
abstract mixin class _$ListingDetailStateCopyWith<$Res>
    implements $ListingDetailStateCopyWith<$Res> {
  factory _$ListingDetailStateCopyWith(
          _ListingDetailState value, $Res Function(_ListingDetailState) _then) =
      __$ListingDetailStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String listingId,
      AppStatus getListingDetailsStatus,
      Property? listing,
      String? getListingError,
      List<Activity> activities,
      AppStatus getActivitiesStatus,
      String? getActivitiesError});

  @override
  $PropertyCopyWith<$Res>? get listing;
}

/// @nodoc
class __$ListingDetailStateCopyWithImpl<$Res>
    implements _$ListingDetailStateCopyWith<$Res> {
  __$ListingDetailStateCopyWithImpl(this._self, this._then);

  final _ListingDetailState _self;
  final $Res Function(_ListingDetailState) _then;

  /// Create a copy of ListingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? listingId = null,
    Object? getListingDetailsStatus = null,
    Object? listing = freezed,
    Object? getListingError = freezed,
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = freezed,
  }) {
    return _then(_ListingDetailState(
      listingId: null == listingId
          ? _self.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      getListingDetailsStatus: null == getListingDetailsStatus
          ? _self.getListingDetailsStatus
          : getListingDetailsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      listing: freezed == listing
          ? _self.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Property?,
      getListingError: freezed == getListingError
          ? _self.getListingError
          : getListingError // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _self.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _self.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ListingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get listing {
    if (_self.listing == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_self.listing!, (value) {
      return _then(_self.copyWith(listing: value));
    });
  }
}

// dart format on
