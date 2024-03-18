import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/activity_cubit/activity_cubit.dart';
import 'package:real_estate_app/model/activity_feedback_model.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/add_task_screen/add_task_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/cubit/task_detail_cubit.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../util/color_category.dart';
import '../../widgets/button.dart';

class TaskDetailScreen extends StatelessWidget {
  static const routeName = '/taskDetailScreen';
  const TaskDetailScreen({super.key, required this.taskId, this.activity});
  final String taskId;
  final Activity? activity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<TaskDetailCubit>(param1: taskId, param2: activity),
      child: _TaskDetailScreenLayout(),
    );
  }
}

class _TaskDetailScreenLayout extends StatelessWidget {
  const _TaskDetailScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: BlocSelector<TaskDetailCubit, TaskDetailState, Activity?>(
          selector: (state) {
            return state.task;
          },
          builder: (context, task) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(
                  text: task?.type ?? 'Call',
                ),
                VerticalSmallGap(),
                Row(
                  children: [
                    ContainerIcon(icon: CupertinoIcons.person),
                    HorizontalSmallGap(),
                    NormalText(
                        text:
                            '${task?.lead?.firstName ?? ''} ${task?.lead?.lastName ?? ''}')
                  ],
                ),
                VerticalSmallGap(),
                Row(
                  children: [
                    ContainerIcon(icon: CupertinoIcons.search),
                    HorizontalSmallGap(),
                    NormalText(
                        text: 'Lead Source: ${task?.lead?.leadSource ?? ''}')
                  ],
                ),
                VerticalSmallGap(),
                Row(
                  children: [
                    ContainerIcon(icon: CupertinoIcons.check_mark),
                    HorizontalSmallGap(),
                    NormalText(text: 'Task Type Call')
                  ],
                ),
                VerticalSmallGap(),
                Row(
                  children: [
                    ContainerIcon(icon: CupertinoIcons.calendar),
                    HorizontalSmallGap(),
                    NormalText(
                        text:
                            'Due on : ${DateFormat.yMMMMd().add_jmv().format(task?.date ?? DateTime.now())}')
                  ],
                ),
                VerticalSmallGap(),
                VerticalSmallGap(),
                TitleText(
                  text: 'Notes',
                ),
                VerticalSmallGap(),
                VerticalSmallGap(),
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (dContext) => ActivityFeedbackDialog(
                                        parentContext: context,
                                        activity: context
                                            .read<TaskDetailCubit>()
                                            .state
                                            .task!,
                                      ));
                            },
                            child: Text('Complete task'))),
                    HorizontalSmallGap(),
                    Expanded(
                        flex: 2,
                        child: OutlinedButton(
                            onPressed: () {
                              context.pushNamed(AddTaskScreen.routeName);
                            },
                            child: Text(
                              'Add Followup',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ))),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Color(0xffF0F2F5)),
      child: Icon(icon),
    );
  }
}

class ActivityFeedbackDialog extends StatefulWidget {
  const ActivityFeedbackDialog({
    super.key,
    required this.activity,
    required this.parentContext,
  });

  final Activity activity;
  final BuildContext parentContext;

  @override
  State<ActivityFeedbackDialog> createState() => _ActivityFeedbackDialogState();
}

class _ActivityFeedbackDialogState extends State<ActivityFeedbackDialog> {
  final ValueNotifier<String?> feedBackValue = ValueNotifier(null);
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();
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
                    child: FormBuilder(
                      key: _formKey,
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
                          MultiLineField(
                            controller: _controller,
                            placeHolder: "Write a brief note!",
                            label: "Notes",
                            name: 'notes',
                            validator: (val) {
                              if (val == null || val.length < 5) {
                                return 'Please write a valid note';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  // color: lightPacific,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ValueListenableBuilder(
                      valueListenable: feedBackValue,
                      builder: (context, value, _) {
                        return Column(
                          children: [
                            if (value == "Interested") ...[
                              AppPrimaryButton(
                                  onTap: () async {
                                    if (_formKey.currentState
                                            ?.saveAndValidate() !=
                                        true) {
                                      return;
                                    }
                                    getIt<ActivityCubit>()
                                        .setLastActivityFeedback(
                                            widget.activity,
                                            ActivityFeedback(
                                                isInterested: true,
                                                status: 'Complete',
                                                notes: _controller.text));
                                    Navigator.of(context).pop();
                                    final result = await context
                                        .pushNamed(AddTaskScreen.routeName);
                                    if (result == true &&
                                        widget.parentContext.mounted) {
                                      widget.parentContext.pop();
                                    }
                                  },
                                  text: ('Add Followup')),
                              VerticalSmallGap(
                                adjustment: 1,
                              ),
                              AppPrimaryButton(
                                  onTap: () async {
                                    if (_formKey.currentState
                                            ?.saveAndValidate() !=
                                        true) {
                                      return;
                                    }
                                    Navigator.of(context).pop();
                                    getIt<ActivityCubit>()
                                        .setLastActivityFeedback(
                                            widget.activity,
                                            ActivityFeedback(
                                                isInterested: true,
                                                status: 'Complete',
                                                notes: _controller.text));
                                  },
                                  text: ('Complete & Add Deal')),
                            ],
                            if (value == "Not Interested") ...[
                              AppPrimaryButton(
                                  onTap: () async {
                                    if (_formKey.currentState
                                            ?.saveAndValidate() !=
                                        true) {
                                      return;
                                    }
                                    Navigator.of(context).pop();
                                    getIt<ActivityCubit>()
                                        .setLastActivityFeedback(
                                            widget.activity,
                                            ActivityFeedback(
                                                isInterested: false,
                                                status: 'Complete',
                                                notes: _controller.text));
                                  },
                                  text: ('Complete')),
                            ],
                            if (value == "Not Answered") ...[
                              AppPrimaryButton(
                                  onTap: () async {
                                    if (_formKey.currentState
                                            ?.saveAndValidate() !=
                                        true) {
                                      return;
                                    }
                                    Navigator.of(context).pop();
                                    getIt<ActivityCubit>()
                                        .setLastActivityFeedback(
                                            widget.activity,
                                            ActivityFeedback(
                                                isInterested: false,
                                                status: 'Complete',
                                                notes: _controller.text));
                                  },
                                  text: ('Complete')),
                              VerticalSmallGap(
                                adjustment: 1,
                              ),
                              AppPrimaryButton(
                                  onTap: () async {
                                    if (_formKey.currentState
                                            ?.saveAndValidate() !=
                                        true) {
                                      return;
                                    }
                                    Navigator.of(context).pop();
                                    getIt<ActivityCubit>()
                                        .setLastActivityFeedback(
                                            widget.activity,
                                            ActivityFeedback(
                                                isInterested: false,
                                                status: 'Complete',
                                                notes: _controller.text));
                                  },
                                  text: ('Disqualify')),
                            ]
                          ],
                        );
                      }),
                )
              ],
            );
          }),
    );
  }
}
