import 'package:real_estate_app/model/notification_model.dart';
import 'package:real_estate_app/util/result.dart';

abstract class NotificationRepo {
  Future<Result<List<NotificationModel>>> getNotifications();
  Future<Result<List<NotificationModel>>> getNotificationsWithActionsPending();
  Future<Result<NotificationModel>> getNotification(String ticketId);
  Future<Result<void>> addNotification(
      {required NotificationModel notification});
  Future<Result<bool>> isNotificationReceived({required String notificationId});
  Future<Result<bool>> updateNotification(
      {required NotificationModel notificationModel});
}
