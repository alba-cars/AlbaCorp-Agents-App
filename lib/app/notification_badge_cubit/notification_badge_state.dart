part of 'notification_badge_cubit.dart';

@freezed
abstract class NotificationBadgeState with _$NotificationBadgeState {
  const factory NotificationBadgeState({
    @Default(0) int unreadCount,
    @Default(AppStatus.initial) AppStatus status,
    String? errorMessage,
  }) = _NotificationBadgeState;
}
