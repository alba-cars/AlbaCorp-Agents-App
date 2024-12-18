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
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/launch_whatsapp.dart';
import 'package:real_estate_app/util/share_company_profile.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/cold_lead_screen/cold_lead_screen.dart';
import 'package:real_estate_app/view/cold_lead_screen/cubit/cold_lead_cubit.dart';
import 'package:real_estate_app/view/enquiries_screen/enquiries_screen.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart' as home;
import 'package:real_estate_app/view/lead_detail_screen/cubit/lead_detail_cubit.dart';
import 'package:real_estate_app/view/leads_list_explorer/leads_list_explorer.dart';
import 'package:real_estate_app/view/listing_detail_screen/listing_detail_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/widgets/activity_list.dart';
import 'package:real_estate_app/view/task_detail_screen/cubit/task_detail_cubit.dart';
import 'package:real_estate_app/view/task_detail_screen/widgets/property_card_list.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:real_estate_app/widgets/url_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../app/call_bloc/call_bloc.dart';
import '../../util/color_category.dart';
import '../../widgets/button.dart';
import '../../widgets/snackbar.dart';
import '../lead_detail_screen/lead_detail_screen.dart';
import 'widgets/feedback_dialog.dart';

// enum TaskSortType {
//   HotNew,
//   HotFollowUp,
//   HotFavourites,
//   HotExpiring,
//   ColdNew,
//   ColdFollowUp,
//   ColdFavourites,
//   ColdExpiring
// }

class TaskDetailScreen extends StatefulWidget {
  static const routeName = '/taskDetailScreen';
  const TaskDetailScreen({
    super.key,
    required this.taskId,
    this.activity,
    required this.isBlocking,
    this.taskType,
    this.taskFilter,
  });
  final String taskId;
  final Activity? activity;
  final bool isBlocking;
  final home.TaskType? taskType;
  final TaskFilterEnum? taskFilter;

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
      create: (context) =>
          getIt<TaskDetailCubit>(param1: widget.taskId, param2: widget.activity)
            ..setTaskSortType(widget.taskType, widget.taskFilter),
      child: _TaskDetailScreenLayout(
          isEnquiry: widget.taskType == home.TaskType.Hot),
    );
  }
}

class _TaskDetailScreenLayout extends StatefulWidget {
  const _TaskDetailScreenLayout({required this.isEnquiry});
  final bool isEnquiry;

  @override
  State<_TaskDetailScreenLayout> createState() =>
      _TaskDetailScreenLayoutState();
}

enum CardAction { ManuelSwipe, Heart, Charge, Star, Skip, Negative }

class _TaskDetailScreenLayoutState extends State<_TaskDetailScreenLayout> {
  late final AppinioSwiperController _appinioSwiperController =
      AppinioSwiperController();

  CardAction mode = CardAction.ManuelSwipe;

  final ValueNotifier<bool> isProspect = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isEnquiry ? 'Enquiry' : "Cold Lead"),
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
        actions: [
          if (context.select<TaskDetailCubit, double>(
                      (state) => state.state.task?.activityWeight ?? 0) >=
                  0.8 &&
              context.select<AuthBloc, bool>((state) =>
                  state.state.veryImportantActivities?.isNotEmpty ?? false))
            IconButton(
                onPressed: () {
                  context
                      .read<AuthBloc>()
                      .add(AuthEvent.clearImportantActivity());
                  setState(() {});
                },
                icon: Icon(Icons.close))
        ],
      ),
      backgroundColor: const Color(0xFFF5F7FA),
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
                              context.pushNamed(LeadsExplorerScreen.routeName);
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
                              if (context.canPop()) {
                                context.pop();
                              } else {
                                context.goNamed(ColdLeadScreen.routeName);
                              }
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
                              BlocProvider.value(
                                value: context.read<TaskDetailCubit>(),
                                child: ActivityFeedbackDialog(
                                  parentContext: context,
                                  direction: DismissDirection.startToEnd,
                                  mode: mode,
                                  notes: context
                                      .read<TaskDetailCubit>()
                                      .state
                                      .task
                                      ?.notes,
                                  activity: context
                                      .read<TaskDetailCubit>()
                                      .state
                                      .task!,
                                ),
                              ));
                      if (val == null &&
                          mounted &&
                          (tasks.length == targetIndex ||
                              context.read<TaskDetailCubit>().state.taskId !=
                                  tasks[targetIndex].id)) {
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
                              BlocProvider.value(
                                value: context.read<TaskDetailCubit>(),
                                child: ActivityFeedbackDialog(
                                  parentContext: context,
                                  direction: DismissDirection.endToStart,
                                  notes: context
                                      .read<TaskDetailCubit>()
                                      .state
                                      .task
                                      ?.notes,
                                  activity: context
                                      .read<TaskDetailCubit>()
                                      .state
                                      .task!,
                                ),
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
                    isProspect.value =
                        task.lead?.leadStatus == LeadStatus.Prospect;
                    final isBlockingActivity = task.activityWeight >= 0.8;
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
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Expanded(
                                    child: ScrollShadow(
                                      size: 6,
                                      color: shadowColor,
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
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  TitleText(
                                                    text: task.type,
                                                  ),
                                                  BlocProvider(
                                                    create: (context) =>
                                                        getIt<LeadDetailCubit>(
                                                            param1:
                                                                task.lead?.id ??
                                                                    ""),
                                                    child: Visibility(
                                                      visible: isProspect.value,
                                                      child: BlocBuilder<
                                                          LeadDetailCubit,
                                                          LeadDetailState>(
                                                        builder: (context,
                                                                state) =>
                                                            IconButton(
                                                                // style: IconButton.styleFrom(
                                                                //     backgroundColor: Colors.red[100]),
                                                                onPressed:
                                                                    () async {
                                                                  if (task.lead
                                                                          ?.leadStatus ==
                                                                      LeadStatus
                                                                          .Prospect) {
                                                                    final result = await context
                                                                        .read<
                                                                            LeadDetailCubit>()
                                                                        .removeProspect();

                                                                    if (result) {
                                                                      isProspect
                                                                              .value =
                                                                          false;
                                                                      showSnackbar(
                                                                          context,
                                                                          'Successfully removed prospect tag',
                                                                          SnackBarType
                                                                              .success);
                                                                    } else {
                                                                      final error = context
                                                                          .read<
                                                                              LeadDetailCubit>()
                                                                          .state
                                                                          .updateLeadError;
                                                                      showSnackbar(
                                                                          context,
                                                                          error ??
                                                                              'Failed to remove prospect tag',
                                                                          SnackBarType
                                                                              .failure);
                                                                    }
                                                                  } else {
                                                                    final result = await context
                                                                        .read<
                                                                            LeadDetailCubit>()
                                                                        .updateLead({
                                                                      "lead_status":
                                                                          "Prospect"
                                                                    });
                                                                    if (result) {
                                                                      showSnackbar(
                                                                          context,
                                                                          'Successfully marked as prospect',
                                                                          SnackBarType
                                                                              .success);
                                                                    } else {
                                                                      final error = context
                                                                          .read<
                                                                              LeadDetailCubit>()
                                                                          .state
                                                                          .updateLeadError;
                                                                      showSnackbar(
                                                                          context,
                                                                          error ??
                                                                              'Failed to mark as prospect',
                                                                          SnackBarType
                                                                              .failure);
                                                                    }
                                                                  }
                                                                },
                                                                icon: Icon(
                                                                  isProspect
                                                                          .value
                                                                      ? CupertinoIcons
                                                                          .heart_fill
                                                                      : CupertinoIcons
                                                                          .heart,
                                                                  color: Colors
                                                                      .red,
                                                                )),
                                                      ),
                                                    ),
                                                  )
                                                ],
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
                                                              'Phone: ${task.lead?.phone ?? ''}')),
                                                  if (task.lead?.dndStatus ??
                                                      false)
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 4,
                                                              vertical: 1),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .error),
                                                          color: Theme.of(
                                                                  context)
                                                              .colorScheme
                                                              .errorContainer),
                                                      child: SmallText(
                                                          text: 'DND'),
                                                    ),
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
                                                            'Due on : ${DateFormat.yMMMMd().add_jmv().format(task.date.toLocal())}'),
                                                  )
                                                ],
                                              ),
                                              VerticalSmallGap(),
                                              // show property cards as horizontal scroll
                                              if (task.type == "Viewing" &&
                                                  task.property_list != null)
                                                InkWell(
                                                  onTap: () {
                                                    context.pushNamed(
                                                        ListingDetailsScreen
                                                            .routeName,
                                                        pathParameters: {
                                                          'id': task
                                                                  .property_list
                                                                  ?.id ??
                                                              ""
                                                        });
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.grey,
                                                            width: .5)),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            "Property for viewing"),
                                                        PropertyCardPickerItem(
                                                            listing: task
                                                                .property_list!),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              VerticalSmallGap(),
                                              CallProcessing(),
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
                                                                    AddNoteDialog(
                                                                  activity:
                                                                      task,
                                                                  preNote:
                                                                      task.notes ??
                                                                          "",
                                                                ),
                                                              );
                                                            });
                                                      },
                                                      child: Text('Add'))
                                                ],
                                              ),

                                              (task.notes?.isNotEmpty == true)
                                                  ? UrlText(
                                                      text: task.notes ?? '')
                                                  : Text('No notes'),
                                              VerticalSmallGap(),
                                              LabelText(
                                                text: 'Description',
                                              ),
                                              VerticalSmallGap(),
                                              (task.description?.isNotEmpty ==
                                                      true)
                                                  ? UrlText(
                                                      text: task.description ??
                                                          '')
                                                  : Text('No description'),
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
                                                          await launchWhatsApp(
                                                              context,
                                                              task.lead?.phone);
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
                                                              'index': "3"
                                                            });
                                                      },
                                                      child: LinkText(
                                                          text: "View all"))
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
  const AddNoteDialog(
      {super.key, required this.preNote, required this.activity});

  final String preNote;
  final Activity activity;

  @override
  State<AddNoteDialog> createState() => _AddNoteDialogState();
}

class _AddNoteDialogState extends State<AddNoteDialog> {
  String note = "";
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    note = widget.preNote;
    _controller = TextEditingController(text: note);
    super.initState();
  }

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
                controller: _controller,
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
                            notes: _controller.text.trim(),
                          );
                    }
                  }),
            )
          ],
        ),
      ],
    );
  }
}
