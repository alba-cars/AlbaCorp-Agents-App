import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/notification_repo.dart';
import 'package:real_estate_app/model/notification_model.dart';
import 'package:real_estate_app/util/result.dart';

part 'notification_screen_state.dart';
part 'notification_screen_cubit.freezed.dart';

@injectable
class NotificationScreenCubit extends Cubit<NotificationScreenState> {
  NotificationScreenCubit(this._notificationRepo)
      : super(NotificationScreenState()) {
    getNotifications();
  }

  final NotificationRepo _notificationRepo;

  void getNotifications() async {
    final result = await _notificationRepo.getNotifications();

    switch (result) {
      case (Success s):
        emit(state.copyWith(notifications: s.value));
        break;
      case (Error s):
        Logger().d(s.exception);
    }
  }
}
