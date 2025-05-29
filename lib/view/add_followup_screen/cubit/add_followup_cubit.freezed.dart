// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_followup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddFollowupState {
  Lead? get lead;
  AppStatus get getLeadStatus;
  String? get getLeadError;
  AppStatus get addFollowupStatus;
  String? get addFollowupError;
  NotificationModel? get notificationModel;

  /// Create a copy of AddFollowupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddFollowupStateCopyWith<AddFollowupState> get copyWith =>
      _$AddFollowupStateCopyWithImpl<AddFollowupState>(
          this as AddFollowupState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddFollowupState &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.getLeadStatus, getLeadStatus) ||
                other.getLeadStatus == getLeadStatus) &&
            (identical(other.getLeadError, getLeadError) ||
                other.getLeadError == getLeadError) &&
            (identical(other.addFollowupStatus, addFollowupStatus) ||
                other.addFollowupStatus == addFollowupStatus) &&
            (identical(other.addFollowupError, addFollowupError) ||
                other.addFollowupError == addFollowupError) &&
            (identical(other.notificationModel, notificationModel) ||
                other.notificationModel == notificationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lead, getLeadStatus,
      getLeadError, addFollowupStatus, addFollowupError, notificationModel);

  @override
  String toString() {
    return 'AddFollowupState(lead: $lead, getLeadStatus: $getLeadStatus, getLeadError: $getLeadError, addFollowupStatus: $addFollowupStatus, addFollowupError: $addFollowupError, notificationModel: $notificationModel)';
  }
}

/// @nodoc
abstract mixin class $AddFollowupStateCopyWith<$Res> {
  factory $AddFollowupStateCopyWith(
          AddFollowupState value, $Res Function(AddFollowupState) _then) =
      _$AddFollowupStateCopyWithImpl;
  @useResult
  $Res call(
      {Lead? lead,
      AppStatus getLeadStatus,
      String? getLeadError,
      AppStatus addFollowupStatus,
      String? addFollowupError,
      NotificationModel? notificationModel});

  $LeadCopyWith<$Res>? get lead;
  $NotificationModelCopyWith<$Res>? get notificationModel;
}

/// @nodoc
class _$AddFollowupStateCopyWithImpl<$Res>
    implements $AddFollowupStateCopyWith<$Res> {
  _$AddFollowupStateCopyWithImpl(this._self, this._then);

  final AddFollowupState _self;
  final $Res Function(AddFollowupState) _then;

  /// Create a copy of AddFollowupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lead = freezed,
    Object? getLeadStatus = null,
    Object? getLeadError = freezed,
    Object? addFollowupStatus = null,
    Object? addFollowupError = freezed,
    Object? notificationModel = freezed,
  }) {
    return _then(_self.copyWith(
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
      addFollowupStatus: null == addFollowupStatus
          ? _self.addFollowupStatus
          : addFollowupStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addFollowupError: freezed == addFollowupError
          ? _self.addFollowupError
          : addFollowupError // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationModel: freezed == notificationModel
          ? _self.notificationModel
          : notificationModel // ignore: cast_nullable_to_non_nullable
              as NotificationModel?,
    ));
  }

  /// Create a copy of AddFollowupState
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

  /// Create a copy of AddFollowupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<$Res>? get notificationModel {
    if (_self.notificationModel == null) {
      return null;
    }

    return $NotificationModelCopyWith<$Res>(_self.notificationModel!, (value) {
      return _then(_self.copyWith(notificationModel: value));
    });
  }
}

/// @nodoc

class _AddFollowupState implements AddFollowupState {
  const _AddFollowupState(
      {this.lead,
      this.getLeadStatus = AppStatus.init,
      this.getLeadError,
      this.addFollowupStatus = AppStatus.init,
      this.addFollowupError,
      this.notificationModel});

  @override
  final Lead? lead;
  @override
  @JsonKey()
  final AppStatus getLeadStatus;
  @override
  final String? getLeadError;
  @override
  @JsonKey()
  final AppStatus addFollowupStatus;
  @override
  final String? addFollowupError;
  @override
  final NotificationModel? notificationModel;

  /// Create a copy of AddFollowupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddFollowupStateCopyWith<_AddFollowupState> get copyWith =>
      __$AddFollowupStateCopyWithImpl<_AddFollowupState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddFollowupState &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.getLeadStatus, getLeadStatus) ||
                other.getLeadStatus == getLeadStatus) &&
            (identical(other.getLeadError, getLeadError) ||
                other.getLeadError == getLeadError) &&
            (identical(other.addFollowupStatus, addFollowupStatus) ||
                other.addFollowupStatus == addFollowupStatus) &&
            (identical(other.addFollowupError, addFollowupError) ||
                other.addFollowupError == addFollowupError) &&
            (identical(other.notificationModel, notificationModel) ||
                other.notificationModel == notificationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lead, getLeadStatus,
      getLeadError, addFollowupStatus, addFollowupError, notificationModel);

  @override
  String toString() {
    return 'AddFollowupState(lead: $lead, getLeadStatus: $getLeadStatus, getLeadError: $getLeadError, addFollowupStatus: $addFollowupStatus, addFollowupError: $addFollowupError, notificationModel: $notificationModel)';
  }
}

/// @nodoc
abstract mixin class _$AddFollowupStateCopyWith<$Res>
    implements $AddFollowupStateCopyWith<$Res> {
  factory _$AddFollowupStateCopyWith(
          _AddFollowupState value, $Res Function(_AddFollowupState) _then) =
      __$AddFollowupStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Lead? lead,
      AppStatus getLeadStatus,
      String? getLeadError,
      AppStatus addFollowupStatus,
      String? addFollowupError,
      NotificationModel? notificationModel});

  @override
  $LeadCopyWith<$Res>? get lead;
  @override
  $NotificationModelCopyWith<$Res>? get notificationModel;
}

/// @nodoc
class __$AddFollowupStateCopyWithImpl<$Res>
    implements _$AddFollowupStateCopyWith<$Res> {
  __$AddFollowupStateCopyWithImpl(this._self, this._then);

  final _AddFollowupState _self;
  final $Res Function(_AddFollowupState) _then;

  /// Create a copy of AddFollowupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lead = freezed,
    Object? getLeadStatus = null,
    Object? getLeadError = freezed,
    Object? addFollowupStatus = null,
    Object? addFollowupError = freezed,
    Object? notificationModel = freezed,
  }) {
    return _then(_AddFollowupState(
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
      addFollowupStatus: null == addFollowupStatus
          ? _self.addFollowupStatus
          : addFollowupStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      addFollowupError: freezed == addFollowupError
          ? _self.addFollowupError
          : addFollowupError // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationModel: freezed == notificationModel
          ? _self.notificationModel
          : notificationModel // ignore: cast_nullable_to_non_nullable
              as NotificationModel?,
    ));
  }

  /// Create a copy of AddFollowupState
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

  /// Create a copy of AddFollowupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<$Res>? get notificationModel {
    if (_self.notificationModel == null) {
      return null;
    }

    return $NotificationModelCopyWith<$Res>(_self.notificationModel!, (value) {
      return _then(_self.copyWith(notificationModel: value));
    });
  }
}

// dart format on
