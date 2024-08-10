import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/routes/app_routes.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/share_company_profile.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/enquiries_screen/enquiries_screen.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart' as home;
import 'package:real_estate_app/view/leads_list_explorer/leads_list_explorer.dart';
import 'package:real_estate_app/view/task_detail_screen/widgets/activity_list.dart';
import 'package:real_estate_app/view/task_detail_screen/cubit/task_detail_cubit.dart';
import 'package:real_estate_app/view/task_detail_screen/widgets/property_card_list.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../app/call_bloc/call_bloc.dart';
import '../../util/color_category.dart';
import '../../widgets/button.dart';
import '../../widgets/snackbar.dart';
import '../lead_detail_screen/lead_detail_screen.dart';
import 'widgets/feedback_dialog.dart';

class TaskDetailScreen extends StatefulWidget {
  static const routeName = '/taskDetailScreen';
  const TaskDetailScreen(
      {super.key,
      required this.taskId,
      this.activity,
      required this.isBlocking});
  final String taskId;
  final Activity? activity;
  final bool isBlocking;

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<bool> didPopRoute() async {
    final veryImportantActivities =
        context.read<AuthBloc>().state.veryImportantActivities;
    if (veryImportantActivities == null ||
        veryImportantActivities.isEmpty == true) {
      context.goNamed(EnquiriesScreen.routeName);
      return true;
    }
    return super.didPopRoute();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TaskDetailCubit>(
          param1: widget.taskId, param2: widget.activity),
      child: _TaskDetailScreenLayout(),
    );
  }
}

class _TaskDetailScreenLayout extends StatefulWidget {
  const _TaskDetailScreenLayout();

  @override
  State<_TaskDetailScreenLayout> createState() =>
      _TaskDetailScreenLayoutState();
}

enum CardAction { ManuelSwipe, Heart, Charge, Star, Skip, Negative }

class _TaskDetailScreenLayoutState extends State<_TaskDetailScreenLayout> {
  late final AppinioSwiperController _appinioSwiperController =
      AppinioSwiperController();

  CardAction mode = CardAction.ManuelSwipe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: BlocSelector<AuthBloc, AuthState, Set<String>?>(
          selector: (state) {
            return state.veryImportantActivities;
          },
          builder: (context, veryImportantActivities) {
            if (veryImportantActivities == null ||
                veryImportantActivities.isEmpty == true) {
              return IconButton(
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop();
                    } else {
                      context.goNamed(EnquiriesScreen.routeName);
                    }
                  },
                  icon: Icon(Icons.arrow_back));
            }
            return SizedBox();
          },
        ),
      ),
      backgroundColor: Colors.blueGrey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: BlocSelector<TaskDetailCubit, TaskDetailState, List<Activity>>(
          selector: (state) {
            return state.sortedActivity;
          },
          builder: (context, tasks) {
            if (tasks.isEmpty) {
              return Center(
                child: Text('No Tasks'),
              );
            }
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TitleText(text: "You have reached the end"),
                        VerticalSmallGap(),
                        AppPrimaryButton(
                            text: 'Go To Explorer',
                            onTap: () {
                              context
                                  .replaceNamed(LeadsExplorerScreen.routeName);
                            }),
                        VerticalSmallGap(),
                        AppPrimaryButton(
                            text: 'Go Back',
                            backgroundColor: Colors.white,
                            borderColor: Theme.of(context).colorScheme.primary,
                            borderShow: true,
                            foregroundColor:
                                Theme.of(context).colorScheme.primary,
                            onTap: () {
                              context.pop();
                            })
                      ],
                    ),
                  ),
                ),
                AppinioSwiper(
                  controller: _appinioSwiperController,
                  swipeOptions: SwipeOptions.symmetric(horizontal: true),
                  cardCount: tasks.length,
                  backgroundCardScale: 1,
                  threshold: 150,
                  invertAngleOnBottomDrag: false,
                  backgroundCardCount: 3,
                  backgroundCardOffset: Offset(-3, -3),
                  onCardPositionChanged: (position) {
                    mode = CardAction.ManuelSwipe;
                  },
                  onSwipeEnd: (previousIndex, targetIndex, activity) async {
                    if (activity is Unswipe) {
                      return;
                    }
                    if (targetIndex == tasks.length - 1) {
                      context.read<TaskDetailCubit>().getSortedActivities();
                    }
                    if (previousIndex >= targetIndex &&
                        mode != CardAction.Negative) {
                      return;
                    }
                    if (mode == CardAction.Skip) {
                      context
                          .read<TaskDetailCubit>()
                          .setCurrentTask(targetIndex);
                      return;
                    }
                    if ((activity.begin?.dx ?? 0) < (activity.end?.dx ?? 0)) {
                      final val = await showGeneralDialog(
                          context: context,
                          useRootNavigator: false,
                          pageBuilder: (dContext, anim1, anim2) =>
                              ActivityFeedbackDialog(
                                parentContext: context,
                                direction: DismissDirection.startToEnd,
                                mode: mode,
                                activity:
                                    context.read<TaskDetailCubit>().state.task!,
                              ));
                      if (val == null &&
                          mounted &&
                          context.read<TaskDetailCubit>().state.taskId !=
                              tasks[targetIndex].id) {
                        _appinioSwiperController.unswipe();
                      } else {
                        context
                            .read<TaskDetailCubit>()
                            .setCurrentTask(targetIndex);
                      }
                    } else {
                      final val = await showGeneralDialog(
                          context: context,
                          useRootNavigator: false,
                          pageBuilder: (dContext, anim1, anim2) =>
                              ActivityFeedbackDialog(
                                parentContext: context,
                                direction: DismissDirection.endToStart,
                                activity:
                                    context.read<TaskDetailCubit>().state.task!,
                              ));
                      if (val == null && mounted) {
                        mode = CardAction.Skip;
                        _appinioSwiperController.unswipe();
                      } else {
                        context
                            .read<TaskDetailCubit>()
                            .setCurrentTask(targetIndex);
                      }
                    }
                  },
                  cardBuilder: (context, index) {
                    final blockingActivities = context.select(
                        (AuthBloc authBloc) =>
                            authBloc.state.veryImportantActivities);
                    final task = tasks[index];
                    final isBlockingActivity =
                        blockingActivities?.contains(task.id) ?? false;
                    return SizedBox(
                      key: ValueKey(task.id),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: shadowColor,
                                      blurRadius: 9,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ScrollShadow(
                                      size: 12,
                                      color: Colors.grey[200]!,
                                      child: SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              if (isBlockingActivity) ...[
                                                VerticalSmallGap(),
                                                Container(
                                                  padding: EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .errorContainer,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.fromBorderSide(
                                                          BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .error))),
                                                  child: Text(
                                                      'This is a very important activity. complete this activity to further use the app'),
                                                ),
                                              ],
                                              VerticalSmallGap(),
                                              TitleText(
                                                text: task.type,
                                              ),
                                              VerticalSmallGap(),
                                              Row(
                                                children: [
                                                  ContainerIcon(
                                                      icon: CupertinoIcons
                                                          .person),
                                                  HorizontalSmallGap(),
                                                  Flexible(
                                                      child: TextButton(
                                                    style: TextButton.styleFrom(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 0)),
                                                    child: Text(
                                                      '${task.lead?.firstName ?? ''} ${task.lead?.lastName ?? ''}',
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    onPressed: () {
                                                      context.pushNamed(
                                                          LeadDetailScreen
                                                              .routeName,
                                                          pathParameters: {
                                                            "id": task.lead!.id,
                                                          });
                                                    },
                                                  ))
                                                ],
                                              ),
                                              VerticalSmallGap(),
                                              Row(
                                                children: [
                                                  ContainerIcon(
                                                      icon: CupertinoIcons
                                                          .search),
                                                  HorizontalSmallGap(),
                                                  Expanded(
                                                    child: NormalText(
                                                        text:
                                                            'Lead Source: ${task.lead?.leadSource ?? ''}'),
                                                  )
                                                ],
                                              ),
                                              VerticalSmallGap(),
                                              Row(
                                                children: [
                                                  ContainerIcon(
                                                      icon: CupertinoIcons
                                                          .check_mark),
                                                  HorizontalSmallGap(),
                                                  Expanded(
                                                      child: NormalText(
                                                          text:
                                                              'Task Type Call'))
                                                ],
                                              ),
                                              VerticalSmallGap(),
                                              Row(
                                                children: [
                                                  ContainerIcon(
                                                      icon: CupertinoIcons
                                                          .calendar),
                                                  HorizontalSmallGap(),
                                                  Expanded(
                                                    child: NormalText(
                                                        text:
                                                            'Due on : ${DateFormat.yMMMMd().add_jmv().format(task.date)}'),
                                                  )
                                                ],
                                              ),
                                              VerticalSmallGap(),
                                              // show property cards as horizontal scroll

                                              VerticalSmallGap(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  LabelText(
                                                    text: 'Notes',
                                                  ),
                                                  TextButton(
                                                      onPressed: () {
                                                        showGeneralDialog(
                                                            context: context,
                                                            useRootNavigator:
                                                                false,
                                                            barrierDismissible:
                                                                true,
                                                            barrierLabel:
                                                                'add-note-task',
                                                            pageBuilder:
                                                                (dContext,
                                                                    anim1,
                                                                    anim2) {
                                                              return BlocProvider
                                                                  .value(
                                                                value: context.read<
                                                                    TaskDetailCubit>(),
                                                                child:
                                                                    AddNoteDialog(),
                                                              );
                                                            });
                                                      },
                                                      child: Text('Add'))
                                                ],
                                              ),

                                              (task.notes?.isNotEmpty == true)
                                                  ? Text(task.notes ?? '')
                                                  : Text('No notes'),
                                              VerticalSmallGap(),
                                              LabelText(
                                                text: 'Actions',
                                              ),
                                              VerticalSmallGap(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Expanded(
                                                    child: OutlinedButton(
                                                        onPressed: () async {
                                                          getIt<CallBloc>().add(
                                                              CallEvent.callStarted(
                                                                  activityId:
                                                                      task.id,
                                                                  phoneNumber: task
                                                                          .lead
                                                                          ?.phone ??
                                                                      '',
                                                                  leadId: task
                                                                          .lead
                                                                          ?.id ??
                                                                      ''));
                                                          final state = await getIt<
                                                                  CallBloc>()
                                                              .stream
                                                              .firstWhere((e) =>
                                                                  e.makeACallStatus !=
                                                                  AppStatus
                                                                      .loading);
                                                          if (state
                                                                  .makeACallStatus ==
                                                              AppStatus
                                                                  .success) {
                                                            showSnackbar(
                                                                context,
                                                                'Call request sent successfully. please open linkus app to receieve call',
                                                                SnackBarType
                                                                    .success);
                                                          } else {
                                                            showSnackbar(
                                                                context,
                                                                'Call request failed to send. error: ${state.makeACallError}',
                                                                SnackBarType
                                                                    .failure);
                                                          }
                                                        },
                                                        child:
                                                            Icon(Icons.call)),
                                                  ),
                                                  HorizontalSmallGap(),
                                                  Expanded(
                                                    child: OutlinedButton(
                                                        onPressed: () async {
                                                          if (await canLaunchUrlString(
                                                              "https://wa.me/${task.lead?.phone?.replaceFirst("+", "")}")) {
                                                            launchUrlString(
                                                                "https://wa.me/${task.lead?.phone?.replaceFirst("+", "")}");
                                                          } else {
                                                            showSnackbar(
                                                                context,
                                                                'Can not launch the app',
                                                                SnackBarType
                                                                    .failure);
                                                          }
                                                        },
                                                        child: ImageIcon(AssetImage(
                                                            'assets/images/whatsapp.png'))),
                                                  ),
                                                  HorizontalSmallGap(),
                                                  Expanded(
                                                    child: OutlinedButton(
                                                        onPressed: () async {
                                                          shareCompanyProfile();
                                                        },
                                                        child:
                                                            Icon(Icons.share)),
                                                  )
                                                ],
                                              ),
                                              VerticalSmallGap(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  LabelText(
                                                    text: 'Property cards',
                                                  ),
                                                ],
                                              ),
                                              VerticalSmallGap(),
                                              PropertyCardList(),
                                              VerticalSmallGap(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  LabelText(
                                                    text: 'Last 3 activities',
                                                  ),
                                                  GestureDetector(
                                                      onTap: () {
                                                        context.pushNamed(
                                                            LeadDetailScreen
                                                                .routeName,
                                                            pathParameters: {
                                                              'id': task.lead
                                                                      ?.id ??
                                                                  "",
                                                            },
                                                            queryParameters: {
                                                              'index': "1"
                                                            });
                                                      },
                                                      child: LinkText(
                                                          text: "View all"))
                                                ],
                                              ),
                                              VerticalSmallGap(),
                                              ActivityList(),

                                              VerticalSmallGap(),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: IconButton.outlined(
                                              onPressed: () async {
                                                mode = CardAction.Negative;
                                                _appinioSwiperController
                                                    .swipeLeft();
                                              },
                                              style: IconButton.styleFrom(
                                                  side: BorderSide(
                                                      color: Colors.red)),
                                              icon: Icon(
                                                CupertinoIcons.hand_thumbsdown,
                                                color: Colors.red,
                                              )),
                                        ),
                                        HorizontalSmallGap(),
                                        Expanded(
                                          child: IconButton.filled(
                                              style: IconButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  side: BorderSide(
                                                      color: Colors.green)),
                                              onPressed: () {
                                                mode = CardAction.Heart;
                                                _appinioSwiperController
                                                    .swipeRight();
                                              },
                                              icon: Icon(
                                                CupertinoIcons
                                                    .hand_thumbsup_fill,
                                                color: Colors.white,
                                              )),
                                        ),
                                        HorizontalSmallGap(),
                                        Expanded(
                                            child: IconButton.filled(
                                                style: IconButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.red),
                                                onPressed: () async {
                                                  mode = CardAction.Charge;
                                                  _appinioSwiperController
                                                      .swipeRight();
                                                },
                                                icon: Icon(CupertinoIcons
                                                    .heart_fill))),
                                        HorizontalSmallGap(),
                                        Expanded(
                                          child: IconButton.filled(
                                              onPressed: () async {
                                                mode = CardAction.Star;
                                                _appinioSwiperController
                                                    .swipeRight();
                                              },
                                              style: IconButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xff3A3A3A),
                                              ),
                                              icon: Image.asset(
                                                'assets/images/flame.png',
                                                fit: BoxFit.contain,
                                                height: 22,
                                              )),
                                        ),
                                        HorizontalSmallGap(),
                                        Expanded(
                                          child: IconButton.filled(
                                              onPressed: isBlockingActivity
                                                  ? null
                                                  : () {
                                                      mode = CardAction.Skip;
                                                      _appinioSwiperController
                                                          .swipeRight();
                                                    }, // () {},
                                              icon: Icon(Icons.redo)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    );
                  },
                ),
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

class AddNoteDialog extends StatefulWidget {
  const AddNoteDialog({super.key});

  @override
  State<AddNoteDialog> createState() => _AddNoteDialogState();
}

class _AddNoteDialogState extends State<AddNoteDialog> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> key = GlobalKey();

    return AlertDialog(
      title: Text('Add Note'),
      content: FormBuilder(
        key: key,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MultiLineField(
                name: 'notes',
                label: 'Note',
              )
            ],
          ),
        ),
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
            HorizontalSmallGap(),
            Expanded(
              child: AppPrimaryButton(
                  text: 'Save',
                  onTap: () async {
                    final validated = key.currentState?.saveAndValidate();
                    if (validated == true) {
                      final values = key.currentState!.value;
                      await context.read<TaskDetailCubit>().updateActivity(
                          context: context,
                          completed: false,
                          refresh: true,
                          description: values["notes"],
                          addFollowUp: false);
                    }
                  }),
            )
          ],
        ),
      ],
    );
  }
}
