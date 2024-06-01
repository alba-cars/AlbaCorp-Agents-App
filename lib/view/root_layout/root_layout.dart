import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/activity_cubit/activity_cubit.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../app/call_bloc/call_bloc.dart';

class RootLayout extends StatefulWidget {
  const RootLayout({super.key, required this.child});

  final Widget child;

  @override
  State<RootLayout> createState() => _RootLayoutState();
}

class _RootLayoutState extends State<RootLayout> {
  final ValueNotifier<String> feedBackValue = ValueNotifier('Interested');
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CallBloc, CallState>(
        listener: (context, state) {
          showGeneralDialog(
              context: context,
              barrierDismissible: false,
              barrierLabel: 'call_feedback_dialog',
              pageBuilder: (context, anim1, anim2) {
                return CallFeedbackDialog(
                    feedBackValue: feedBackValue, controller: _controller);
              });
        },
        listenWhen: (previous, current) {
          Logger().d(current);
          return current.feedbackRequestDialogOpen == true &&
              previous.phoneCallStatus == PhoneCallStatus.inCall &&
              current.phoneCallStatus == PhoneCallStatus.callEnded;
        },
        child: BlocListener<ActivityCubit, ActivityState>(
          listener: (context, state) {},
          listenWhen: (previous, current) =>
              previous.newSpecialLeadsTasks != current.newSpecialLeadsTasks &&
              current.newSpecialLeadsTasks == true,
          child: widget.child,
        ),
      ),
    );
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
