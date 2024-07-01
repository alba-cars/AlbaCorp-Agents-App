import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/notifications_screen/cubit/notification_screen_cubit.dart';
import 'package:real_estate_app/widgets/text.dart';

class NotificationsScreen extends StatelessWidget {
  static const routeName = '/notificationsScreen';
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => getIt<NotificationScreenCubit>(),
      child: _NotificationScreenBody(),
    );
  }
}

class _NotificationScreenBody extends StatefulWidget {
  const _NotificationScreenBody({super.key});

  @override
  State<_NotificationScreenBody> createState() =>
      __NotificationScreenBodyState();
}

class __NotificationScreenBodyState extends State<_NotificationScreenBody> {
  @override
  Widget build(BuildContext context) {
    final notifications = context
        .select((NotificationScreenCubit cubit) => cubit.state.notifications);
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
      ),
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.fromBorderSide(BorderSide(
                      color: Theme.of(context).colorScheme.primary))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabelText(text: notification.title),
                  Text(notification.subTitle ?? '')
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 8,
            );
          },
          itemCount: notifications.length),
    );
  }
}
