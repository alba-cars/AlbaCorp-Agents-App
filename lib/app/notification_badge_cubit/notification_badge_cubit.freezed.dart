// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_badge_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationBadgeState {
  int get unreadCount;
  AppStatus get status;
  String? get errorMessage;

  /// Create a copy of NotificationBadgeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationBadgeStateCopyWith<NotificationBadgeState> get copyWith =>
      _$NotificationBadgeStateCopyWithImpl<NotificationBadgeState>(
          this as NotificationBadgeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationBadgeState &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, unreadCount, status, errorMessage);

  @override
  String toString() {
    return 'NotificationBadgeState(unreadCount: $unreadCount, status: $status, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $NotificationBadgeStateCopyWith<$Res> {
  factory $NotificationBadgeStateCopyWith(NotificationBadgeState value,
          $Res Function(NotificationBadgeState) _then) =
      _$NotificationBadgeStateCopyWithImpl;
  @useResult
  $Res call({int unreadCount, AppStatus status, String? errorMessage});
}

/// @nodoc
class _$NotificationBadgeStateCopyWithImpl<$Res>
    implements $NotificationBadgeStateCopyWith<$Res> {
  _$NotificationBadgeStateCopyWithImpl(this._self, this._then);

  final NotificationBadgeState _self;
  final $Res Function(NotificationBadgeState) _then;

  /// Create a copy of NotificationBadgeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unreadCount = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      unreadCount: null == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _NotificationBadgeState implements NotificationBadgeState {
  const _NotificationBadgeState(
      {this.unreadCount = 0,
      this.status = AppStatus.initial,
      this.errorMessage});

  @override
  @JsonKey()
  final int unreadCount;
  @override
  @JsonKey()
  final AppStatus status;
  @override
  final String? errorMessage;

  /// Create a copy of NotificationBadgeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationBadgeStateCopyWith<_NotificationBadgeState> get copyWith =>
      __$NotificationBadgeStateCopyWithImpl<_NotificationBadgeState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationBadgeState &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, unreadCount, status, errorMessage);

  @override
  String toString() {
    return 'NotificationBadgeState(unreadCount: $unreadCount, status: $status, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$NotificationBadgeStateCopyWith<$Res>
    implements $NotificationBadgeStateCopyWith<$Res> {
  factory _$NotificationBadgeStateCopyWith(_NotificationBadgeState value,
          $Res Function(_NotificationBadgeState) _then) =
      __$NotificationBadgeStateCopyWithImpl;
  @override
  @useResult
  $Res call({int unreadCount, AppStatus status, String? errorMessage});
}

/// @nodoc
class __$NotificationBadgeStateCopyWithImpl<$Res>
    implements _$NotificationBadgeStateCopyWith<$Res> {
  __$NotificationBadgeStateCopyWithImpl(this._self, this._then);

  final _NotificationBadgeState _self;
  final $Res Function(_NotificationBadgeState) _then;

  /// Create a copy of NotificationBadgeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? unreadCount = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_NotificationBadgeState(
      unreadCount: null == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
