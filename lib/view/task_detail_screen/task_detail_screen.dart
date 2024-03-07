import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/task_detail_screen/cubit/task_detail_cubit.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

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
                            onPressed: () {}, child: Text('Complete task'))),
                    HorizontalSmallGap(),
                    Expanded(
                        flex: 2,
                        child: OutlinedButton(
                            onPressed: () {},
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
