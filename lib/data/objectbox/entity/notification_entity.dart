import 'package:objectbox/objectbox.dart';
import 'package:real_estate_app/model/notification_model.dart';

@Entity()
class NotificationEntity {
  @Id()
  int id = 0;
  String? notificationId;
  late String title;
  String? subTitle;
  bool isRead = false;
  @Property(type: PropertyType.date)
  DateTime? createdAt;

  NotificationEntity(
      {this.id = 0,
      this.notificationId,
      required this.title,
      this.subTitle,
      this.isRead = false,
      this.createdAt});

  NotificationModel toModel() {
    return NotificationModel(
        title: title,
        id: id.toString(),
        subTitle: subTitle,
        notificationId: notificationId,
        isRead: isRead,
        createdAt: createdAt);
  }

  factory NotificationEntity.fromModel(NotificationModel model) {
    return NotificationEntity(
        title: model.title,
        id: int.tryParse(model.id ?? '') ?? 0,
        notificationId: model.notificationId,
        subTitle: model.subTitle,
        isRead: model.isRead,
        createdAt: model.createdAt);
  }
}
