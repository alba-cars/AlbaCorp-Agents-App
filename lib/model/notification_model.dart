import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    String? id,
    required String title,
    String? subTitle,
    String? notificationId,
    @Default(false) bool isRead,
    @Default(false) bool requiresAction,
    @Default('Normal') String type,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    String? leadId,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
