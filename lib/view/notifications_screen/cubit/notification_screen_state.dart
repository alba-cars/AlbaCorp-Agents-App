part of 'notification_screen_cubit.dart';

@freezed
class NotificationScreenState with _$NotificationScreenState {
  const factory NotificationScreenState({
    @Default([]) List<NotificationModel> notifications,
  }) = _NotificationScreenState;
}
