import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/objectbox/entity/notification_entity.dart';
import 'package:real_estate_app/data/repository/notification_repo.dart';
import 'package:real_estate_app/model/notification_model.dart';
import 'package:real_estate_app/objectbox.g.dart';
import 'package:real_estate_app/util/result.dart';

import '../../../service_locator/objectbox.dart';

@Injectable(as: NotificationRepo)
class NotificationData implements NotificationRepo {
  final ObjectBox objectBox;
//
  NotificationData({required this.objectBox})
      : _notificationBox = objectBox.store.box<NotificationEntity>();
  final log = Logger();

  final Box<NotificationEntity> _notificationBox;
  @override
  Future<Result<void>> addNotification(
      {required NotificationModel notification}) async {
    try {
      _notificationBox.put(NotificationEntity.fromModel(notification));
      return Success(null);
    } catch (e) {
      log.d(e);
      return Error(e.toString());
    }
  }

  @override
  Future<Result<NotificationModel>> getNotification(String ticketId) {
    // TODO: implement getNotification
    throw UnimplementedError();
  }

  @override
  Future<Result<List<NotificationModel>>> getNotifications() async {
    try {
      final res = await _notificationBox.getAllAsync();
      return Success(res.reversed.map((e) => e.toModel()).toList());
    } catch (e) {
      log.d(e);
      return Error(e.toString());
    }
  }

  @override
  Future<Result<bool>> isNotificationReceived(
      {required String notificationId}) async {
    try {
      final res = await _notificationBox
          .query(NotificationEntity_.notificationId.equals(notificationId))
          .build()
          .findFirstAsync();
      return Success(res != null);
    } catch (e) {
      log.d(e);
      return Error(e.toString());
    }
  }

  @override
  Future<Result<List<NotificationModel>>>
      getNotificationsWithActionsPending() async {
    try {
      final res = await _notificationBox
          .query(NotificationEntity_.requiresAction.equals(true))
          .build()
          .findAsync();

      return Success(res.reversed.map((e) => e.toModel()).toList());
    } catch (e) {
      log.d(e);
      return Error(e.toString());
    }
  }

  @override
  Future<Result<bool>> updateNotification(
      {required NotificationModel notificationModel}) async {
    try {
      final entity = NotificationEntity.fromModel(notificationModel);
      await _notificationBox.putAsync(entity);

      return Success(true);
    } catch (e) {
      log.d(e);
      return Error(e.toString());
    }
  }
}
