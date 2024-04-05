import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_screen_state.dart';
part 'notification_screen_cubit.freezed.dart';

class NotificationScreenCubit extends Cubit<NotificationScreenState> {
  NotificationScreenCubit() : super(NotificationScreenState());
}
