// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListingDetailState {
  String get listingId => throw _privateConstructorUsedError;
  AppStatus get getListingDetailsStatus => throw _privateConstructorUsedError;
  Property? get listing => throw _privateConstructorUsedError;
  String? get getListingError => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  AppStatus get getActivitiesStatus => throw _privateConstructorUsedError;
  String? get getActivitiesError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListingDetailStateCopyWith<ListingDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingDetailStateCopyWith<$Res> {
  factory $ListingDetailStateCopyWith(
          ListingDetailState value, $Res Function(ListingDetailState) then) =
      _$ListingDetailStateCopyWithImpl<$Res, ListingDetailState>;
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
class _$ListingDetailStateCopyWithImpl<$Res, $Val extends ListingDetailState>
    implements $ListingDetailStateCopyWith<$Res> {
  _$ListingDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      listingId: null == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      getListingDetailsStatus: null == getListingDetailsStatus
          ? _value.getListingDetailsStatus
          : getListingDetailsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      listing: freezed == listing
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Property?,
      getListingError: freezed == getListingError
          ? _value.getListingError
          : getListingError // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _value.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res>? get listing {
    if (_value.listing == null) {
      return null;
    }

    return $PropertyCopyWith<$Res>(_value.listing!, (value) {
      return _then(_value.copyWith(listing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListingDetailStateImplCopyWith<$Res>
    implements $ListingDetailStateCopyWith<$Res> {
  factory _$$ListingDetailStateImplCopyWith(_$ListingDetailStateImpl value,
          $Res Function(_$ListingDetailStateImpl) then) =
      __$$ListingDetailStateImplCopyWithImpl<$Res>;
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
class __$$ListingDetailStateImplCopyWithImpl<$Res>
    extends _$ListingDetailStateCopyWithImpl<$Res, _$ListingDetailStateImpl>
    implements _$$ListingDetailStateImplCopyWith<$Res> {
  __$$ListingDetailStateImplCopyWithImpl(_$ListingDetailStateImpl _value,
      $Res Function(_$ListingDetailStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$ListingDetailStateImpl(
      listingId: null == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
      getListingDetailsStatus: null == getListingDetailsStatus
          ? _value.getListingDetailsStatus
          : getListingDetailsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      listing: freezed == listing
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Property?,
      getListingError: freezed == getListingError
          ? _value.getListingError
          : getListingError // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      getActivitiesStatus: null == getActivitiesStatus
          ? _value.getActivitiesStatus
          : getActivitiesStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getActivitiesError: freezed == getActivitiesError
          ? _value.getActivitiesError
          : getActivitiesError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ListingDetailStateImpl implements _ListingDetailState {
  const _$ListingDetailStateImpl(
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

  @override
  String toString() {
    return 'ListingDetailState(listingId: $listingId, getListingDetailsStatus: $getListingDetailsStatus, listing: $listing, getListingError: $getListingError, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingDetailStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingDetailStateImplCopyWith<_$ListingDetailStateImpl> get copyWith =>
      __$$ListingDetailStateImplCopyWithImpl<_$ListingDetailStateImpl>(
          this, _$identity);
}

abstract class _ListingDetailState implements ListingDetailState {
  const factory _ListingDetailState(
      {required final String listingId,
      final AppStatus getListingDetailsStatus,
      final Property? listing,
      final String? getListingError,
      final List<Activity> activities,
      final AppStatus getActivitiesStatus,
      final String? getActivitiesError}) = _$ListingDetailStateImpl;

  @override
  String get listingId;
  @override
  AppStatus get getListingDetailsStatus;
  @override
  Property? get listing;
  @override
  String? get getListingError;
  @override
  List<Activity> get activities;
  @override
  AppStatus get getActivitiesStatus;
  @override
  String? get getActivitiesError;
  @override
  @JsonKey(ignore: true)
  _$$ListingDetailStateImplCopyWith<_$ListingDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
