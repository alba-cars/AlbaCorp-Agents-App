import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:real_estate_app/app/activity_cubit/activity_cubit.dart';
import 'package:real_estate_app/data/repository/notification_repo.dart';
import 'package:real_estate_app/routes/app_router.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/view/add_followup_screen/add_followup_screen.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../app/call_bloc/call_bloc.dart';
import '../../model/notification_model.dart';

class RootLayout extends StatefulWidget {
  const RootLayout({super.key, required this.child});

  final Widget child;

  @override
  State<RootLayout> createState() => _RootLayoutState();
}

class _RootLayoutState extends State<RootLayout> {
  final ValueNotifier<String> feedBackValue = ValueNotifier('Interested');
  final TextEditingController _controller = TextEditingController();
   bool _notificationsEnabled = false;
  @override
  void initState() {
    getPendingActions();
    checkPushNotificationPermission();
    super.initState();
  }



  // Function to check notification permissions
  Future<void> checkPushNotificationPermission() async {
    var status = await Permission.notification.status;
    
    if (status.isGranted) {
      setState(() {
        _notificationsEnabled = true;
      });
    } else {
      // If notifications are disabled, show MaterialBanner
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showNotificationBanner();
      });
    }
  }

  // Function to request notification permission
  Future<void> requestNotificationPermission() async {
    var result = await Permission.notification.request();

    if (result.isGranted) {
      setState(() {
        _notificationsEnabled = true;
        ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
      });
    } else {
      setState(() {
        _notificationsEnabled = false;
      });
    }
  }

  // Function to show the Material Banner
  void showNotificationBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text('Push notifications are disabled. Please enable them.'),
        actions: [
          TextButton(
            onPressed: () {
              requestNotificationPermission();
            },
            child: Text('ENABLE'),
          ),
        ],
        backgroundColor: Colors.amber,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant RootLayout oldWidget) {
    getPendingActions();
    super.didUpdateWidget(oldWidget);
  }

  void getPendingActions() async {
    final notificationsResult =
        await getIt<NotificationRepo>().getNotificationsWithActionsPending();

    if (notificationsResult is Success) {
      final notifications =
          (notificationsResult as Success<List<NotificationModel>>).value;
      if (notifications.isNotEmpty) {
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            content: Text('You have a follow-up task to schedule'),
            actions: [
              TextButton(
                onPressed: () {
                  // Navigate to the AddFollowUpScreen with the appropriate query parameters
                  context.pushNamed(
                    AddFollowUpScreen.routeName,
                    queryParameters: {'leadId': notifications.first.leadId},
                  );
                },
                child: Text('Schedule'),
              ),
            ],
            backgroundColor: Colors.amber, // Optional: set the background color
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Material(child: widget.child);
    });
  }
}

class CallFeedbackDialog extends StatelessWidget {
  const CallFeedbackDialog({
    super.key,
    required this.feedBackValue,
    required TextEditingController controller,
  }) : _controller = controller;

  final ValueNotifier<String> feedBackValue;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // backgroundColor: Colors.white,
      clipBehavior: Clip.hardEdge,

      child: ValueListenableBuilder(
          valueListenable: feedBackValue,
          builder: (context, value, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: TitleText(text: 'Complete Task?'),
                  height: 60,
                  padding:
                      EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 12),
                  width: double.infinity,
                  color: lightPacific,
                ),
                VerticalSmallGap(),
                Flexible(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RadioListTile(
                            value: 'Interested',
                            title: Text('Interested'),
                            groupValue: value,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (val) {
                              if (val != null) feedBackValue.value = val;
                            }),
                        RadioListTile(
                            value: 'Not Interested',
                            title: Text('Not Interested'),
                            groupValue: value,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (val) {
                              if (val != null) feedBackValue.value = val;
                            }),
                        RadioListTile(
                            value: 'Not Answered',
                            title: Text('Not Answered'),
                            groupValue: value,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (val) {
                              if (val != null) feedBackValue.value = val;
                            }),
                        TextFormField(
                          controller: _controller,
                          minLines: 5,
                          maxLines: 10,
                          decoration: InputDecoration(
                              labelText: "Notes",
                              hintText: "Write a brief note!",
                              border: OutlineInputBorder()),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  color: lightPacific,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () async {
                              getIt<CallBloc>().add(CallEvent.updateActivity(
                                  feedback: feedBackValue.value,
                                  note: _controller.text,
                                  description: ''));
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel')),
                      ),
                      HorizontalSmallGap(),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () async {
                              getIt<CallBloc>().add(CallEvent.updateActivity(
                                  feedback: feedBackValue.value,
                                  note: _controller.text,
                                  description: ''));
                              Navigator.of(context).pop();
                            },
                            child: Text('Save')),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
