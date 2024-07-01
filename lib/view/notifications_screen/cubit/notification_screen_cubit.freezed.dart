// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationScreenState {
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationScreenStateCopyWith<NotificationScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationScreenStateCopyWith<$Res> {
  factory $NotificationScreenStateCopyWith(NotificationScreenState value,
          $Res Function(NotificationScreenState) then) =
      _$NotificationScreenStateCopyWithImpl<$Res, NotificationScreenState>;
  @useResult
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class _$NotificationScreenStateCopyWithImpl<$Res,
        $Val extends NotificationScreenState>
    implements $NotificationScreenStateCopyWith<$Res> {
  _$NotificationScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationScreenStateImplCopyWith<$Res>
    implements $NotificationScreenStateCopyWith<$Res> {
  factory _$$NotificationScreenStateImplCopyWith(
          _$NotificationScreenStateImpl value,
          $Res Function(_$NotificationScreenStateImpl) then) =
      __$$NotificationScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class __$$NotificationScreenStateImplCopyWithImpl<$Res>
    extends _$NotificationScreenStateCopyWithImpl<$Res,
        _$NotificationScreenStateImpl>
    implements _$$NotificationScreenStateImplCopyWith<$Res> {
  __$$NotificationScreenStateImplCopyWithImpl(
      _$NotificationScreenStateImpl _value,
      $Res Function(_$NotificationScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$NotificationScreenStateImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc

class _$NotificationScreenStateImpl implements _NotificationScreenState {
  const _$NotificationScreenStateImpl(
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

  @override
  String toString() {
    return 'NotificationScreenState(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationScreenStateImplCopyWith<_$NotificationScreenStateImpl>
      get copyWith => __$$NotificationScreenStateImplCopyWithImpl<
          _$NotificationScreenStateImpl>(this, _$identity);
}

abstract class _NotificationScreenState implements NotificationScreenState {
  const factory _NotificationScreenState(
          {final List<NotificationModel> notifications}) =
      _$NotificationScreenStateImpl;

  @override
  List<NotificationModel> get notifications;
  @override
  @JsonKey(ignore: true)
  _$$NotificationScreenStateImplCopyWith<_$NotificationScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
