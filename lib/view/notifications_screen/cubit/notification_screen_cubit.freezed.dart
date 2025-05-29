// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationScreenState {
  List<NotificationModel> get notifications;

  /// Create a copy of NotificationScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationScreenStateCopyWith<NotificationScreenState> get copyWith =>
      _$NotificationScreenStateCopyWithImpl<NotificationScreenState>(
          this as NotificationScreenState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationScreenState &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notifications));

  @override
  String toString() {
    return 'NotificationScreenState(notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class $NotificationScreenStateCopyWith<$Res> {
  factory $NotificationScreenStateCopyWith(NotificationScreenState value,
          $Res Function(NotificationScreenState) _then) =
      _$NotificationScreenStateCopyWithImpl;
  @useResult
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class _$NotificationScreenStateCopyWithImpl<$Res>
    implements $NotificationScreenStateCopyWith<$Res> {
  _$NotificationScreenStateCopyWithImpl(this._self, this._then);

  final NotificationScreenState _self;
  final $Res Function(NotificationScreenState) _then;

  /// Create a copy of NotificationScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_self.copyWith(
      notifications: null == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc

class _NotificationScreenState implements NotificationScreenState {
  const _NotificationScreenState(
      {final List<NotificationModel> notifications = const []})
      : _notifications = notifications;

  final List<NotificationModel> _notifications;
  @override
  @JsonKey()
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  /// Create a copy of NotificationScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationScreenStateCopyWith<_NotificationScreenState> get copyWith =>
      __$NotificationScreenStateCopyWithImpl<_NotificationScreenState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationScreenState &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @override
  String toString() {
    return 'NotificationScreenState(notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class _$NotificationScreenStateCopyWith<$Res>
    implements $NotificationScreenStateCopyWith<$Res> {
  factory _$NotificationScreenStateCopyWith(_NotificationScreenState value,
          $Res Function(_NotificationScreenState) _then) =
      __$NotificationScreenStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class __$NotificationScreenStateCopyWithImpl<$Res>
    implements _$NotificationScreenStateCopyWith<$Res> {
  __$NotificationScreenStateCopyWithImpl(this._self, this._then);

  final _NotificationScreenState _self;
  final $Res Function(_NotificationScreenState) _then;

  /// Create a copy of NotificationScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_NotificationScreenState(
      notifications: null == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

// dart format on
