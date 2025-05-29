// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeadDetailState {
  String get leadId;
  Lead? get lead;
  AppStatus get getLeadStatus;
  String? get getLeadError;
  List<Activity> get activities;
  AppStatus get getActivitiesStatus;
  String? get getActivitiesError;
  List<Deal> get deals;
  AppStatus get getDealsStatus;
  String? get getDealsError;
  AppStatus get updateLeadStatus;
  String? get updateLeadError;
  AppStatus get getPropertyCardsListStatus;
  List<LeadPropertyCardModel> get propertyCardsList;
  String? get getPropertyCardsListError;
  Paginator? get propertyCardPaginator;
  AppStatus get updatePropertyCardStatus;
  String? get updatePropertyCardError;

  /// Create a copy of LeadDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeadDetailStateCopyWith<LeadDetailState> get copyWith =>
      _$LeadDetailStateCopyWithImpl<LeadDetailState>(
          this as LeadDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeadDetailState &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.getLeadStatus, getLeadStatus) ||
                other.getLeadStatus == getLeadStatus) &&
            (identical(other.getLeadError, getLeadError) ||
                other.getLeadError == getLeadError) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.getActivitiesError, getActivitiesError) ||
                other.getActivitiesError == getActivitiesError) &&
            const DeepCollectionEquality().equals(other.deals, deals) &&
            (identical(other.getDealsStatus, getDealsStatus) ||
                other.getDealsStatus == getDealsStatus) &&
            (identical(other.getDealsError, getDealsError) ||
                other.getDealsError == getDealsError) &&
            (identical(other.updateLeadStatus, updateLeadStatus) ||
                other.updateLeadStatus == updateLeadStatus) &&
            (identical(other.updateLeadError, updateLeadError) ||
                other.updateLeadError == updateLeadError) &&
            (identical(other.getPropertyCardsListStatus,
                    getPropertyCardsListStatus) ||
                other.getPropertyCardsListStatus ==
                    getPropertyCardsListStatus) &&
            const DeepCollectionEquality()
                .equals(other.propertyCardsList, propertyCardsList) &&
            (identical(other.getPropertyCardsListError,
                    getPropertyCardsListError) ||
                other.getPropertyCardsListError == getPropertyCardsListError) &&
            (identical(other.propertyCardPaginator, propertyCardPaginator) ||
                other.propertyCardPaginator == propertyCardPaginator) &&
            (identical(
                    other.updatePropertyCardStatus, updatePropertyCardStatus) ||
                other.updatePropertyCardStatus == updatePropertyCardStatus) &&
            (identical(
                    other.updatePropertyCardError, updatePropertyCardError) ||
                other.updatePropertyCardError == updatePropertyCardError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      leadId,
      lead,
      getLeadStatus,
      getLeadError,
      const DeepCollectionEquality().hash(activities),
      getActivitiesStatus,
      getActivitiesError,
      const DeepCollectionEquality().hash(deals),
      getDealsStatus,
      getDealsError,
      updateLeadStatus,
      updateLeadError,
      getPropertyCardsListStatus,
      const DeepCollectionEquality().hash(propertyCardsList),
      getPropertyCardsListError,
      propertyCardPaginator,
      updatePropertyCardStatus,
      updatePropertyCardError);

  @override
  String toString() {
    return 'LeadDetailState(leadId: $leadId, lead: $lead, getLeadStatus: $getLeadStatus, getLeadError: $getLeadError, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, deals: $deals, getDealsStatus: $getDealsStatus, getDealsError: $getDealsError, updateLeadStatus: $updateLeadStatus, updateLeadError: $updateLeadError, getPropertyCardsListStatus: $getPropertyCardsListStatus, propertyCardsList: $propertyCardsList, getPropertyCardsListError: $getPropertyCardsListError, propertyCardPaginator: $propertyCardPaginator, updatePropertyCardStatus: $updatePropertyCardStatus, updatePropertyCardError: $updatePropertyCardError)';
  }
}

/// @nodoc
abstract mixin class $LeadDetailStateCopyWith<$Res> {
  factory $LeadDetailStateCopyWith(
          LeadDetailState value, $Res Function(LeadDetailState) _then) =
      _$LeadDetailStateCopyWithImpl;
  @useResult
  $Res call(
      {String leadId,
      Lead? lead,
      AppStatus getLeadStatus,
      String? getLeadError,
      List<Activity> activities,
      AppStatus getActivitiesStatus,
      String? getActivitiesError,
      List<Deal> deals,
      AppStatus getDealsStatus,
      String? getDealsError,
      AppStatus updateLeadStatus,
      String? updateLeadError,
      AppStatus getPropertyCardsListStatus,
      List<LeadPropertyCardModel> propertyCardsList,
      String? getPropertyCardsListError,
      Paginator? propertyCardPaginator,
      AppStatus updatePropertyCardStatus,
      String? updatePropertyCardError});

  $LeadCopyWith<$Res>? get lead;
  $PaginatorCopyWith<$Res>? get propertyCardPaginator;
}

/// @nodoc
class _$LeadDetailStateCopyWithImpl<$Res>
    implements $LeadDetailStateCopyWith<$Res> {
  _$LeadDetailStateCopyWithImpl(this._self, this._then);

  final LeadDetailState _self;
  final $Res Function(LeadDetailState) _then;

  /// Create a copy of LeadDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leadId = null,
    Object? lead = freezed,
    Object? getLeadStatus = null,
    Object? getLeadError = freezed,
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = freezed,
    Object? deals = null,
    Object? getDealsStatus = null,
    Object? getDealsError = freezed,
    Object? updateLeadStatus = null,
    Object? updateLeadError = freezed,
    Object? getPropertyCardsListStatus = null,
    Object? propertyCardsList = null,
    Object? getPropertyCardsListError = freezed,
    Object? propertyCardPaginator = freezed,
    Object? updatePropertyCardStatus = null,
    Object? updatePropertyCardError = freezed,
  }) {
    return _then(_self.copyWith(
      leadId: null == leadId
          ? _self.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      lead: freezed == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      getLeadStatus: null == getLeadStatus
          ? _self.getLeadStatus
          : getLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getLeadError: freezed == getLeadError
          ? _self.getLeadError
          : getLeadError // ignore: cast_nullable_to_non_nullable
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
      deals: null == deals
          ? _self.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _self.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealsError: freezed == getDealsError
          ? _self.getDealsError
          : getDealsError // ignore: cast_nullable_to_non_nullable
              as String?,
      updateLeadStatus: null == updateLeadStatus
          ? _self.updateLeadStatus
          : updateLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateLeadError: freezed == updateLeadError
          ? _self.updateLeadError
          : updateLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      getPropertyCardsListStatus: null == getPropertyCardsListStatus
          ? _self.getPropertyCardsListStatus
          : getPropertyCardsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyCardsList: null == propertyCardsList
          ? _self.propertyCardsList
          : propertyCardsList // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModel>,
      getPropertyCardsListError: freezed == getPropertyCardsListError
          ? _self.getPropertyCardsListError
          : getPropertyCardsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyCardPaginator: freezed == propertyCardPaginator
          ? _self.propertyCardPaginator
          : propertyCardPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      updatePropertyCardStatus: null == updatePropertyCardStatus
          ? _self.updatePropertyCardStatus
          : updatePropertyCardStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updatePropertyCardError: freezed == updatePropertyCardError
          ? _self.updatePropertyCardError
          : updatePropertyCardError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LeadDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_self.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.lead!, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }

  /// Create a copy of LeadDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get propertyCardPaginator {
    if (_self.propertyCardPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.propertyCardPaginator!, (value) {
      return _then(_self.copyWith(propertyCardPaginator: value));
    });
  }
}

/// @nodoc

class _LeadDetailState implements LeadDetailState {
  const _LeadDetailState(
      {required this.leadId,
      this.lead,
      this.getLeadStatus = AppStatus.init,
      this.getLeadError,
      final List<Activity> activities = const [],
      this.getActivitiesStatus = AppStatus.init,
      this.getActivitiesError,
      final List<Deal> deals = const [],
      this.getDealsStatus = AppStatus.init,
      this.getDealsError,
      this.updateLeadStatus = AppStatus.init,
      this.updateLeadError,
      this.getPropertyCardsListStatus = AppStatus.init,
      final List<LeadPropertyCardModel> propertyCardsList = const [],
      this.getPropertyCardsListError,
      this.propertyCardPaginator,
      this.updatePropertyCardStatus = AppStatus.init,
      this.updatePropertyCardError})
      : _activities = activities,
        _deals = deals,
        _propertyCardsList = propertyCardsList;

  @override
  final String leadId;
  @override
  final Lead? lead;
  @override
  @JsonKey()
  final AppStatus getLeadStatus;
  @override
  final String? getLeadError;
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
  final List<Deal> _deals;
  @override
  @JsonKey()
  List<Deal> get deals {
    if (_deals is EqualUnmodifiableListView) return _deals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deals);
  }

  @override
  @JsonKey()
  final AppStatus getDealsStatus;
  @override
  final String? getDealsError;
  @override
  @JsonKey()
  final AppStatus updateLeadStatus;
  @override
  final String? updateLeadError;
  @override
  @JsonKey()
  final AppStatus getPropertyCardsListStatus;
  final List<LeadPropertyCardModel> _propertyCardsList;
  @override
  @JsonKey()
  List<LeadPropertyCardModel> get propertyCardsList {
    if (_propertyCardsList is EqualUnmodifiableListView)
      return _propertyCardsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_propertyCardsList);
  }

  @override
  final String? getPropertyCardsListError;
  @override
  final Paginator? propertyCardPaginator;
  @override
  @JsonKey()
  final AppStatus updatePropertyCardStatus;
  @override
  final String? updatePropertyCardError;

  /// Create a copy of LeadDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeadDetailStateCopyWith<_LeadDetailState> get copyWith =>
      __$LeadDetailStateCopyWithImpl<_LeadDetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeadDetailState &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.getLeadStatus, getLeadStatus) ||
                other.getLeadStatus == getLeadStatus) &&
            (identical(other.getLeadError, getLeadError) ||
                other.getLeadError == getLeadError) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.getActivitiesStatus, getActivitiesStatus) ||
                other.getActivitiesStatus == getActivitiesStatus) &&
            (identical(other.getActivitiesError, getActivitiesError) ||
                other.getActivitiesError == getActivitiesError) &&
            const DeepCollectionEquality().equals(other._deals, _deals) &&
            (identical(other.getDealsStatus, getDealsStatus) ||
                other.getDealsStatus == getDealsStatus) &&
            (identical(other.getDealsError, getDealsError) ||
                other.getDealsError == getDealsError) &&
            (identical(other.updateLeadStatus, updateLeadStatus) ||
                other.updateLeadStatus == updateLeadStatus) &&
            (identical(other.updateLeadError, updateLeadError) ||
                other.updateLeadError == updateLeadError) &&
            (identical(other.getPropertyCardsListStatus,
                    getPropertyCardsListStatus) ||
                other.getPropertyCardsListStatus ==
                    getPropertyCardsListStatus) &&
            const DeepCollectionEquality()
                .equals(other._propertyCardsList, _propertyCardsList) &&
            (identical(other.getPropertyCardsListError,
                    getPropertyCardsListError) ||
                other.getPropertyCardsListError == getPropertyCardsListError) &&
            (identical(other.propertyCardPaginator, propertyCardPaginator) ||
                other.propertyCardPaginator == propertyCardPaginator) &&
            (identical(
                    other.updatePropertyCardStatus, updatePropertyCardStatus) ||
                other.updatePropertyCardStatus == updatePropertyCardStatus) &&
            (identical(
                    other.updatePropertyCardError, updatePropertyCardError) ||
                other.updatePropertyCardError == updatePropertyCardError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      leadId,
      lead,
      getLeadStatus,
      getLeadError,
      const DeepCollectionEquality().hash(_activities),
      getActivitiesStatus,
      getActivitiesError,
      const DeepCollectionEquality().hash(_deals),
      getDealsStatus,
      getDealsError,
      updateLeadStatus,
      updateLeadError,
      getPropertyCardsListStatus,
      const DeepCollectionEquality().hash(_propertyCardsList),
      getPropertyCardsListError,
      propertyCardPaginator,
      updatePropertyCardStatus,
      updatePropertyCardError);

  @override
  String toString() {
    return 'LeadDetailState(leadId: $leadId, lead: $lead, getLeadStatus: $getLeadStatus, getLeadError: $getLeadError, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, deals: $deals, getDealsStatus: $getDealsStatus, getDealsError: $getDealsError, updateLeadStatus: $updateLeadStatus, updateLeadError: $updateLeadError, getPropertyCardsListStatus: $getPropertyCardsListStatus, propertyCardsList: $propertyCardsList, getPropertyCardsListError: $getPropertyCardsListError, propertyCardPaginator: $propertyCardPaginator, updatePropertyCardStatus: $updatePropertyCardStatus, updatePropertyCardError: $updatePropertyCardError)';
  }
}

/// @nodoc
abstract mixin class _$LeadDetailStateCopyWith<$Res>
    implements $LeadDetailStateCopyWith<$Res> {
  factory _$LeadDetailStateCopyWith(
          _LeadDetailState value, $Res Function(_LeadDetailState) _then) =
      __$LeadDetailStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String leadId,
      Lead? lead,
      AppStatus getLeadStatus,
      String? getLeadError,
      List<Activity> activities,
      AppStatus getActivitiesStatus,
      String? getActivitiesError,
      List<Deal> deals,
      AppStatus getDealsStatus,
      String? getDealsError,
      AppStatus updateLeadStatus,
      String? updateLeadError,
      AppStatus getPropertyCardsListStatus,
      List<LeadPropertyCardModel> propertyCardsList,
      String? getPropertyCardsListError,
      Paginator? propertyCardPaginator,
      AppStatus updatePropertyCardStatus,
      String? updatePropertyCardError});

  @override
  $LeadCopyWith<$Res>? get lead;
  @override
  $PaginatorCopyWith<$Res>? get propertyCardPaginator;
}

/// @nodoc
class __$LeadDetailStateCopyWithImpl<$Res>
    implements _$LeadDetailStateCopyWith<$Res> {
  __$LeadDetailStateCopyWithImpl(this._self, this._then);

  final _LeadDetailState _self;
  final $Res Function(_LeadDetailState) _then;

  /// Create a copy of LeadDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? leadId = null,
    Object? lead = freezed,
    Object? getLeadStatus = null,
    Object? getLeadError = freezed,
    Object? activities = null,
    Object? getActivitiesStatus = null,
    Object? getActivitiesError = freezed,
    Object? deals = null,
    Object? getDealsStatus = null,
    Object? getDealsError = freezed,
    Object? updateLeadStatus = null,
    Object? updateLeadError = freezed,
    Object? getPropertyCardsListStatus = null,
    Object? propertyCardsList = null,
    Object? getPropertyCardsListError = freezed,
    Object? propertyCardPaginator = freezed,
    Object? updatePropertyCardStatus = null,
    Object? updatePropertyCardError = freezed,
  }) {
    return _then(_LeadDetailState(
      leadId: null == leadId
          ? _self.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      lead: freezed == lead
          ? _self.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      getLeadStatus: null == getLeadStatus
          ? _self.getLeadStatus
          : getLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getLeadError: freezed == getLeadError
          ? _self.getLeadError
          : getLeadError // ignore: cast_nullable_to_non_nullable
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
      deals: null == deals
          ? _self._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _self.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealsError: freezed == getDealsError
          ? _self.getDealsError
          : getDealsError // ignore: cast_nullable_to_non_nullable
              as String?,
      updateLeadStatus: null == updateLeadStatus
          ? _self.updateLeadStatus
          : updateLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateLeadError: freezed == updateLeadError
          ? _self.updateLeadError
          : updateLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      getPropertyCardsListStatus: null == getPropertyCardsListStatus
          ? _self.getPropertyCardsListStatus
          : getPropertyCardsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyCardsList: null == propertyCardsList
          ? _self._propertyCardsList
          : propertyCardsList // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModel>,
      getPropertyCardsListError: freezed == getPropertyCardsListError
          ? _self.getPropertyCardsListError
          : getPropertyCardsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyCardPaginator: freezed == propertyCardPaginator
          ? _self.propertyCardPaginator
          : propertyCardPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      updatePropertyCardStatus: null == updatePropertyCardStatus
          ? _self.updatePropertyCardStatus
          : updatePropertyCardStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updatePropertyCardError: freezed == updatePropertyCardError
          ? _self.updatePropertyCardError
          : updatePropertyCardError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LeadDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_self.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_self.lead!, (value) {
      return _then(_self.copyWith(lead: value));
    });
  }

  /// Create a copy of LeadDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get propertyCardPaginator {
    if (_self.propertyCardPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_self.propertyCardPaginator!, (value) {
      return _then(_self.copyWith(propertyCardPaginator: value));
    });
  }
}

// dart format on
