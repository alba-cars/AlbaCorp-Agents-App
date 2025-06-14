import 'dart:async';

import 'package:app_badge_plus/app_badge_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/notification_repo.dart';
import 'package:real_estate_app/model/lead_model.dart'; // Added import for Lead
import 'package:real_estate_app/model/notification_model.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/util/result.dart' as res;

part 'notification_badge_state.dart';
part 'notification_badge_cubit.freezed.dart';

@injectable
class NotificationBadgeCubit extends Cubit<NotificationBadgeState> {
  NotificationBadgeCubit(
    this._notificationRepo,
    this._leadRepo,
    this._authBloc,
  ) : super(const NotificationBadgeState()) {
    // Added const
    _authSubscription = _authBloc.stream.listen((authState) {
      if (authState.authStatus == AuthStatus.Authenticated) {
        fetchUnreadNotificationCount();
      } else if (authState.authStatus == AuthStatus.UnAuthenticated) {
        // emit(state.copyWith(unreadCount: 0, status: AppStatus.initial)); // Keep previous count until new one is fetched or explicitly cleared
        clearBadge();
      }
    });
    // Initial fetch if already authenticated
    if (_authBloc.state.authStatus == AuthStatus.Authenticated) {
      fetchUnreadNotificationCount();
    }
  }

  final NotificationRepo _notificationRepo;
  final LeadRepo _leadRepo;
  final AuthBloc _authBloc;
  late StreamSubscription _authSubscription;

  Future<void> fetchUnreadNotificationCount() async {
    final currentUser = _authBloc.state.user;
    if (currentUser == null) {
      emit(state.copyWith(
          status: AppStatus.failure, errorMessage: "User not logged in"));
      return;
    }
    final currentUserId = currentUser.id;

    emit(state.copyWith(status: AppStatus.loading));

    final notificationsResult = await _notificationRepo.getNotifications();

    if (notificationsResult is res.Success<List<NotificationModel>>) {
      int count = 0;
      final notifications = notificationsResult.value;
      for (final notification in notifications) {
        if (!notification.isRead) {
          if (notification.leadId != null && notification.leadId!.isNotEmpty) {
            count++;
          }
        }
      }
      emit(state.copyWith(unreadCount: count, status: AppStatus.success));
      _updateAppBadge(count);
    } else if (notificationsResult is res.Error<List<NotificationModel>>) {
      emit(state.copyWith(
          status: AppStatus.failure,
          errorMessage: notificationsResult.exception));
    }
  }

  Future<void> _updateAppBadge(int count) async {
    if (await AppBadgePlus.isSupported()) {
      if (count > 0) {
        AppBadgePlus.updateBadge(count);
      } else {
        AppBadgePlus.updateBadge(0);
      }
    }
  }

  // Call this method when a notification is marked as read or a new one arrives
  // to ensure the badge is up-to-date.
  void refreshNotifications() {
    fetchUnreadNotificationCount();
  }

  void clearBadge() {
    emit(state.copyWith(unreadCount: 0, status: AppStatus.initial));
    _updateAppBadge(0);
  }

  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }
}
