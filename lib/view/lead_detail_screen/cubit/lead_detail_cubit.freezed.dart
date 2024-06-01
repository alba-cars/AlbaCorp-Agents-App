// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeadDetailState {
  String get leadId => throw _privateConstructorUsedError;
  Lead? get lead => throw _privateConstructorUsedError;
  AppStatus get getLeadStatus => throw _privateConstructorUsedError;
  String? get getLeadError => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  AppStatus get getActivitiesStatus => throw _privateConstructorUsedError;
  String? get getActivitiesError => throw _privateConstructorUsedError;
  List<Deal> get deals => throw _privateConstructorUsedError;
  AppStatus get getDealsStatus => throw _privateConstructorUsedError;
  String? get getDealsError => throw _privateConstructorUsedError;
  AppStatus get updateLeadStatus => throw _privateConstructorUsedError;
  String? get updateLeadError => throw _privateConstructorUsedError;
  AppStatus get getPropertyCardsListStatus =>
      throw _privateConstructorUsedError;
  List<LeadPropertyCardModel> get propertyCardsList =>
      throw _privateConstructorUsedError;
  String? get getPropertyCardsListError => throw _privateConstructorUsedError;
  Paginator? get propertyCardPaginator => throw _privateConstructorUsedError;
  AppStatus get updatePropertyCardStatus => throw _privateConstructorUsedError;
  String? get updatePropertyCardError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeadDetailStateCopyWith<LeadDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadDetailStateCopyWith<$Res> {
  factory $LeadDetailStateCopyWith(
          LeadDetailState value, $Res Function(LeadDetailState) then) =
      _$LeadDetailStateCopyWithImpl<$Res, LeadDetailState>;
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
class _$LeadDetailStateCopyWithImpl<$Res, $Val extends LeadDetailState>
    implements $LeadDetailStateCopyWith<$Res> {
  _$LeadDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      lead: freezed == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      getLeadStatus: null == getLeadStatus
          ? _value.getLeadStatus
          : getLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getLeadError: freezed == getLeadError
          ? _value.getLeadError
          : getLeadError // ignore: cast_nullable_to_non_nullable
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
      deals: null == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _value.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealsError: freezed == getDealsError
          ? _value.getDealsError
          : getDealsError // ignore: cast_nullable_to_non_nullable
              as String?,
      updateLeadStatus: null == updateLeadStatus
          ? _value.updateLeadStatus
          : updateLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateLeadError: freezed == updateLeadError
          ? _value.updateLeadError
          : updateLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      getPropertyCardsListStatus: null == getPropertyCardsListStatus
          ? _value.getPropertyCardsListStatus
          : getPropertyCardsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyCardsList: null == propertyCardsList
          ? _value.propertyCardsList
          : propertyCardsList // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModel>,
      getPropertyCardsListError: freezed == getPropertyCardsListError
          ? _value.getPropertyCardsListError
          : getPropertyCardsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyCardPaginator: freezed == propertyCardPaginator
          ? _value.propertyCardPaginator
          : propertyCardPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      updatePropertyCardStatus: null == updatePropertyCardStatus
          ? _value.updatePropertyCardStatus
          : updatePropertyCardStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updatePropertyCardError: freezed == updatePropertyCardError
          ? _value.updatePropertyCardError
          : updatePropertyCardError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res>? get lead {
    if (_value.lead == null) {
      return null;
    }

    return $LeadCopyWith<$Res>(_value.lead!, (value) {
      return _then(_value.copyWith(lead: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatorCopyWith<$Res>? get propertyCardPaginator {
    if (_value.propertyCardPaginator == null) {
      return null;
    }

    return $PaginatorCopyWith<$Res>(_value.propertyCardPaginator!, (value) {
      return _then(_value.copyWith(propertyCardPaginator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeadDetailStateImplCopyWith<$Res>
    implements $LeadDetailStateCopyWith<$Res> {
  factory _$$LeadDetailStateImplCopyWith(_$LeadDetailStateImpl value,
          $Res Function(_$LeadDetailStateImpl) then) =
      __$$LeadDetailStateImplCopyWithImpl<$Res>;
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
class __$$LeadDetailStateImplCopyWithImpl<$Res>
    extends _$LeadDetailStateCopyWithImpl<$Res, _$LeadDetailStateImpl>
    implements _$$LeadDetailStateImplCopyWith<$Res> {
  __$$LeadDetailStateImplCopyWithImpl(
      _$LeadDetailStateImpl _value, $Res Function(_$LeadDetailStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$LeadDetailStateImpl(
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      lead: freezed == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead?,
      getLeadStatus: null == getLeadStatus
          ? _value.getLeadStatus
          : getLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getLeadError: freezed == getLeadError
          ? _value.getLeadError
          : getLeadError // ignore: cast_nullable_to_non_nullable
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
      deals: null == deals
          ? _value._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>,
      getDealsStatus: null == getDealsStatus
          ? _value.getDealsStatus
          : getDealsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getDealsError: freezed == getDealsError
          ? _value.getDealsError
          : getDealsError // ignore: cast_nullable_to_non_nullable
              as String?,
      updateLeadStatus: null == updateLeadStatus
          ? _value.updateLeadStatus
          : updateLeadStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateLeadError: freezed == updateLeadError
          ? _value.updateLeadError
          : updateLeadError // ignore: cast_nullable_to_non_nullable
              as String?,
      getPropertyCardsListStatus: null == getPropertyCardsListStatus
          ? _value.getPropertyCardsListStatus
          : getPropertyCardsListStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      propertyCardsList: null == propertyCardsList
          ? _value._propertyCardsList
          : propertyCardsList // ignore: cast_nullable_to_non_nullable
              as List<LeadPropertyCardModel>,
      getPropertyCardsListError: freezed == getPropertyCardsListError
          ? _value.getPropertyCardsListError
          : getPropertyCardsListError // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyCardPaginator: freezed == propertyCardPaginator
          ? _value.propertyCardPaginator
          : propertyCardPaginator // ignore: cast_nullable_to_non_nullable
              as Paginator?,
      updatePropertyCardStatus: null == updatePropertyCardStatus
          ? _value.updatePropertyCardStatus
          : updatePropertyCardStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updatePropertyCardError: freezed == updatePropertyCardError
          ? _value.updatePropertyCardError
          : updatePropertyCardError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LeadDetailStateImpl implements _LeadDetailState {
  const _$LeadDetailStateImpl(
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

  @override
  String toString() {
    return 'LeadDetailState(leadId: $leadId, lead: $lead, getLeadStatus: $getLeadStatus, getLeadError: $getLeadError, activities: $activities, getActivitiesStatus: $getActivitiesStatus, getActivitiesError: $getActivitiesError, deals: $deals, getDealsStatus: $getDealsStatus, getDealsError: $getDealsError, updateLeadStatus: $updateLeadStatus, updateLeadError: $updateLeadError, getPropertyCardsListStatus: $getPropertyCardsListStatus, propertyCardsList: $propertyCardsList, getPropertyCardsListError: $getPropertyCardsListError, propertyCardPaginator: $propertyCardPaginator, updatePropertyCardStatus: $updatePropertyCardStatus, updatePropertyCardError: $updatePropertyCardError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadDetailStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadDetailStateImplCopyWith<_$LeadDetailStateImpl> get copyWith =>
      __$$LeadDetailStateImplCopyWithImpl<_$LeadDetailStateImpl>(
          this, _$identity);
}

abstract class _LeadDetailState implements LeadDetailState {
  const factory _LeadDetailState(
      {required final String leadId,
      final Lead? lead,
      final AppStatus getLeadStatus,
      final String? getLeadError,
      final List<Activity> activities,
      final AppStatus getActivitiesStatus,
      final String? getActivitiesError,
      final List<Deal> deals,
      final AppStatus getDealsStatus,
      final String? getDealsError,
      final AppStatus updateLeadStatus,
      final String? updateLeadError,
      final AppStatus getPropertyCardsListStatus,
      final List<LeadPropertyCardModel> propertyCardsList,
      final String? getPropertyCardsListError,
      final Paginator? propertyCardPaginator,
      final AppStatus updatePropertyCardStatus,
      final String? updatePropertyCardError}) = _$LeadDetailStateImpl;

  @override
  String get leadId;
  @override
  Lead? get lead;
  @override
  AppStatus get getLeadStatus;
  @override
  String? get getLeadError;
  @override
  List<Activity> get activities;
  @override
  AppStatus get getActivitiesStatus;
  @override
  String? get getActivitiesError;
  @override
  List<Deal> get deals;
  @override
  AppStatus get getDealsStatus;
  @override
  String? get getDealsError;
  @override
  AppStatus get updateLeadStatus;
  @override
  String? get updateLeadError;
  @override
  AppStatus get getPropertyCardsListStatus;
  @override
  List<LeadPropertyCardModel> get propertyCardsList;
  @override
  String? get getPropertyCardsListError;
  @override
  Paginator? get propertyCardPaginator;
  @override
  AppStatus get updatePropertyCardStatus;
  @override
  String? get updatePropertyCardError;
  @override
  @JsonKey(ignore: true)
  _$$LeadDetailStateImplCopyWith<_$LeadDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
