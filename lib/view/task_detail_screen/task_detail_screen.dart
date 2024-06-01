import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/activity_cubit/activity_cubit.dart';
import 'package:real_estate_app/model/activity_feedback_model.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/currency_formatter.dart';
import 'package:real_estate_app/util/date_formatter.dart';
import 'package:real_estate_app/view/add_deal_screen/add_deal_screen.dart';
import 'package:real_estate_app/view/add_task_screen/add_task_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/widgets/activity_list.dart';
import 'package:real_estate_app/view/task_detail_screen/cubit/task_detail_cubit.dart';
import 'package:real_estate_app/view/task_detail_screen/widgets/property_card_list.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../app/call_bloc/call_bloc.dart';
import '../../model/property_model.dart';
import '../../util/color_category.dart';
import '../../util/property_price.dart';
import '../../widgets/button.dart';
import '../../widgets/fields/card_picker_field.dart';
import '../../widgets/fields/date_field.dart';
import '../../widgets/fields/wrap_select_field.dart';
import '../../widgets/s3_image.dart';
import '../../widgets/snackbar.dart';

class TaskDetailScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<TaskDetailCubit>(param1: taskId, param2: activity),
      child: _TaskDetailScreenLayout(),
    );
  }
}

class _TaskDetailScreenLayout extends StatefulWidget {
  const _TaskDetailScreenLayout({super.key});

  @override
  State<_TaskDetailScreenLayout> createState() =>
      _TaskDetailScreenLayoutState();
}

enum CardAction { ManuelSwipe, Heart, Charge, Star, Skip }

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
            return AppinioSwiper(
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
                if (previousIndex >= targetIndex) {
                  return;
                }
                if (mode == CardAction.Skip) {
                  context.read<TaskDetailCubit>().setCurrentTask(targetIndex);
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
                  if (val == null && mounted) {
                    _appinioSwiperController.unswipe();
                  } else {
                    context.read<TaskDetailCubit>().setCurrentTask(targetIndex);
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
                    _appinioSwiperController.unswipe();
                  } else {
                    context.read<TaskDetailCubit>().setCurrentTask(targetIndex);
                  }
                }
              },
              cardBuilder: (context, index) {
                final task = tasks[index];
                return SizedBox(
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
                                          TitleText(
                                            text: task.type,
                                          ),
                                          VerticalSmallGap(),
                                          Row(
                                            children: [
                                              ContainerIcon(
                                                  icon: CupertinoIcons.person),
                                              HorizontalSmallGap(),
                                              Expanded(
                                                child: NormalText(
                                                    text:
                                                        '${task.lead?.firstName ?? ''} ${task.lead?.lastName ?? ''}'),
                                              )
                                            ],
                                          ),
                                          VerticalSmallGap(),
                                          Row(
                                            children: [
                                              ContainerIcon(
                                                  icon: CupertinoIcons.search),
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
                                                      text: 'Task Type Call'))
                                            ],
                                          ),
                                          VerticalSmallGap(),
                                          Row(
                                            children: [
                                              ContainerIcon(
                                                  icon:
                                                      CupertinoIcons.calendar),
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
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              LabelText(
                                                text: 'Notes',
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    showGeneralDialog(
                                                        context: context,
                                                        useRootNavigator: false,
                                                        barrierDismissible:
                                                            true,
                                                        barrierLabel:
                                                            'add-note-task',
                                                        pageBuilder: (dContext,
                                                            anim1, anim2) {
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
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                child: OutlinedButton(
                                                    onPressed: () {
                                                      getIt<CallBloc>().add(
                                                          CallEvent.clickToCall(
                                                              phoneNumber: task
                                                                      .lead
                                                                      ?.phone ??
                                                                  '',
                                                              leadId: task.lead
                                                                      ?.id ??
                                                                  ''));
                                                    },
                                                    child: Icon(Icons.call)),
                                              ),
                                              HorizontalSmallGap(),
                                              Expanded(
                                                child: OutlinedButton(
                                                    onPressed: () {
                                                      launchUrlString(
                                                          'whatsapp://send?phone=${task.lead?.phone}');
                                                    },
                                                    child: ImageIcon(AssetImage(
                                                        'assets/images/whatsapp.png'))),
                                              ),
                                              HorizontalSmallGap(),
                                              Expanded(
                                                child: OutlinedButton(
                                                    onPressed: () async {
                                                      final uri = Uri.parse(
                                                          'mailto:${task.lead?.email}');
                                                      if (await canLaunchUrl(
                                                          uri)) {
                                                        await launchUrl(uri);
                                                      } else {
                                                        showSnackbar(
                                                            context,
                                                            'Can not launch the app',
                                                            SnackBarType
                                                                .failure);
                                                      }
                                                    },
                                                    child: Icon(
                                                        Icons.email_outlined)),
                                              )
                                            ],
                                          ),
                                          VerticalSmallGap(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              LabelText(
                                                text: 'Last 3 activities',
                                              ),
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
                                            _appinioSwiperController
                                                .swipeLeft();
                                          },
                                          style: IconButton.styleFrom(
                                              side: BorderSide(
                                                  color: Colors.red)),
                                          icon: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          )),
                                    ),
                                    HorizontalSmallGap(),
                                    Expanded(
                                      child: IconButton.filled(
                                          style: IconButton.styleFrom(
                                              backgroundColor: Colors.red),
                                          onPressed: () {
                                            mode = CardAction.Heart;
                                            _appinioSwiperController
                                                .swipeRight();
                                          },
                                          icon:
                                              Icon(CupertinoIcons.heart_fill)),
                                    ),
                                    HorizontalSmallGap(),
                                    Expanded(
                                        child: IconButton.filled(
                                            style: IconButton.styleFrom(
                                                backgroundColor: Colors.purple),
                                            onPressed: () async {
                                              mode = CardAction.Star;
                                              _appinioSwiperController
                                                  .swipeRight();
                                            },
                                            icon: Icon(Icons.star))),
                                    HorizontalSmallGap(),
                                    Expanded(
                                      child: IconButton.filled(
                                          onPressed: () async {
                                            mode = CardAction.Charge;
                                            _appinioSwiperController
                                                .swipeRight();
                                          },
                                          style: IconButton.styleFrom(
                                            backgroundColor: Color(0xff3A3A3A),
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
                                          onPressed: () {
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
    this.direction,
    this.mode,
  });

  final Activity activity;
  final BuildContext parentContext;
  final DismissDirection? direction;
  final CardAction? mode;

  @override
  State<ActivityFeedbackDialog> createState() => _ActivityFeedbackDialogState();
}

class _ActivityFeedbackDialogState extends State<ActivityFeedbackDialog> {
  final ValueNotifier<String?> feedBackValue = ValueNotifier(null);
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  void initState() {
    feedBackValue.value = switch (widget.mode) {
      CardAction.Heart => 'Interested',
      CardAction.Charge => 'Very Interested',
      CardAction.Star => 'Deal',
      _ => null
    };

    super.initState();
  }

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleText(
                          text: widget.direction == DismissDirection.endToStart
                              ? 'Leave Feedback'
                              : 'Complete Task?'),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.close,
                            size: 20,
                          ))
                    ],
                  ),
                  height: 60,
                  padding:
                      EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 12),
                  width: double.infinity,
                  color: widget.direction == DismissDirection.startToEnd
                      ? Colors.green[200]
                      : widget.direction == DismissDirection.endToStart
                          ? Colors.red[200]
                          : lightPacific,
                ),
                VerticalSmallGap(),
                Flexible(
                  child: ScrollShadow(
                    child: SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: FormBuilder(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LabelText(
                              text: 'Feedback Note',
                              underline: true,
                            ),
                            VerticalSmallGap(),
                            if ((widget.direction ==
                                    DismissDirection.startToEnd &&
                                (widget.mode == CardAction.ManuelSwipe ||
                                    widget.mode == CardAction.Star)))
                              RadioListTile(
                                  value: 'Listing',
                                  title: Text('Win / Create new listing'),
                                  groupValue: value,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  contentPadding: EdgeInsets.zero,
                                  onChanged: (val) {
                                    if (val != null) feedBackValue.value = val;
                                  }),
                            if ((widget.direction ==
                                    DismissDirection.startToEnd &&
                                (widget.mode == CardAction.ManuelSwipe ||
                                    widget.mode == CardAction.Star)))
                              RadioListTile(
                                  value: 'Deal',
                                  title: Text('Win / Create new deal'),
                                  groupValue: value,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  contentPadding: EdgeInsets.zero,
                                  onChanged: (val) {
                                    if (val != null) feedBackValue.value = val;
                                  }),
                            if ((widget.direction ==
                                    DismissDirection.startToEnd &&
                                widget.mode == CardAction.ManuelSwipe))
                              RadioListTile(
                                  value: 'Very Interested',
                                  title:
                                      Text('Very Interested / Make Prospect'),
                                  groupValue: value,
                                  contentPadding: EdgeInsets.zero,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onChanged: (val) {
                                    if (val != null) feedBackValue.value = val;
                                  }),
                            if ((widget.direction ==
                                    DismissDirection.startToEnd &&
                                widget.mode == CardAction.ManuelSwipe))
                              RadioListTile(
                                  value: 'Interested',
                                  title: Text('Interested'),
                                  groupValue: value,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  contentPadding: EdgeInsets.zero,
                                  onChanged: (val) {
                                    if (val != null) feedBackValue.value = val;
                                  }),
                            if (widget.direction == null ||
                                widget.direction == DismissDirection.endToStart)
                              RadioListTile(
                                  value: 'Not Interested',
                                  title: Text('Not Interested'),
                                  groupValue: value,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  contentPadding: EdgeInsets.zero,
                                  onChanged: (val) {
                                    if (val != null) feedBackValue.value = val;
                                  }),
                            if (widget.direction == null ||
                                widget.direction == DismissDirection.endToStart)
                              RadioListTile(
                                  value: 'Not Answered',
                                  title: Text('No Answer'),
                                  groupValue: value,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  contentPadding: EdgeInsets.zero,
                                  onChanged: (val) {
                                    if (val != null) feedBackValue.value = val;
                                  }),
                            if (widget.direction == null ||
                                widget.direction == DismissDirection.endToStart)
                              RadioListTile(
                                  value: 'Invalid Number',
                                  title: Text('Invalid Number'),
                                  groupValue: value,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  contentPadding: EdgeInsets.zero,
                                  onChanged: (val) {
                                    if (val != null) feedBackValue.value = val;
                                  }),
                            if (widget.direction == null ||
                                widget.direction == DismissDirection.endToStart)
                              RadioListTile(
                                  value: 'Disqualify',
                                  title: Text('Disqualify'),
                                  groupValue: value,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
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
                            if (feedBackValue.value == 'Interested' ||
                                feedBackValue.value == 'Very Interested') ...[
                              LabelText(
                                text: 'New Task',
                                underline: true,
                              ),
                              VerticalSmallGap(),
                              WrapSelectField(
                                name: 'type',
                                label: 'Type',
                                values: ['Call', 'WhatsApp', 'Viewing'],
                                isRequired: true,
                              ),
                              DateField(
                                  name: 'date',
                                  label: 'Date',
                                  firstDate: DateTime.now(),
                                  lastDate:
                                      DateTime.now().add(Duration(days: 90))),
                              CardPickerDialogField<Property>(
                                name: 'property',
                                label: 'Property',
                                isRequired: false,
                                valueTransformer: (option) => option?.id,
                                optionsBuilder: (v) async {
                                  return widget.parentContext
                                      .read<TaskDetailCubit>()
                                      .getListings(search: v.text);
                                },
                                optionBuilder: (context, listing) {
                                  String? image;
                                  if (listing.images?.isNotEmpty == true) {
                                    image = listing.images!.first is String
                                        ? listing.images!.first
                                        : listing.images!.first['thumbnail'];
                                  }

                                  return Container(
                                    height: 170,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                              color: shadowColor,
                                              offset: Offset(-4, 5),
                                              blurRadius: 11)
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              flex: 4,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12)),
                                                      child: S3Image(
                                                        url: image,
                                                      ),
                                                    ),
                                                  ),
                                                  VerticalSmallGap(
                                                    adjustment: 0.5,
                                                  ),
                                                  BlockTitleText(
                                                    text: 'AED ' +
                                                        (getPrice(listing)
                                                                ?.toInt()
                                                                .toString() ??
                                                            ''),
                                                  ),
                                                ],
                                              )),
                                          HorizontalSmallGap(),
                                          Expanded(
                                              flex: 5,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  LabelText(
                                                    text: listing.propertyTitle,
                                                    maxLines: 2,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                  ),
                                                  VerticalSmallGap(),
                                                  TextWithIcon(
                                                    text: (listing.beds
                                                                ?.toString() ??
                                                            "1") +
                                                        ' Beds',
                                                    iconPath:
                                                        'assets/images/bed.png',
                                                    color: Colors.black,
                                                  ),
                                                  TextWithIcon(
                                                    text: (listing.baths
                                                                ?.toString() ??
                                                            "1") +
                                                        " Baths",
                                                    iconPath:
                                                        'assets/images/shower.png',
                                                    color: Colors.black,
                                                  ),
                                                  TextWithIcon(
                                                    text: (listing.size
                                                                ?.toInt()
                                                                .toString() ??
                                                            "1") +
                                                        ' Sqft',
                                                    iconPath:
                                                        'assets/images/area.png',
                                                    color: Colors.black,
                                                  ),
                                                  VerticalSmallGap(
                                                    adjustment: 0.3,
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10,
                                                            vertical: 2),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6),
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .primaryContainer
                                                            .withOpacity(.5)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SmallText(
                                                                text: 'Agent'),
                                                            LabelText(
                                                                text: listing
                                                                        .agent
                                                                        ?.user
                                                                        .firstName ??
                                                                    ''),
                                                          ],
                                                        ),
                                                        HorizontalSmallGap(),
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          clipBehavior:
                                                              Clip.hardEdge,
                                                          decoration:
                                                              BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle),
                                                          child: S3Image(
                                                            url: listing
                                                                    .agent
                                                                    ?.user
                                                                    .photo ??
                                                                '',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ))
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              MultiLineField(
                                label: 'Description',
                                name: 'description',
                              ),
                              VerticalSmallGap(),
                            ]
                          ],
                        ),
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
                            if (value == "Interested" ||
                                value == 'Very Interested') ...[
                              if (widget.mode != CardAction.Star)
                                AppPrimaryButton(
                                    onTap: () async {
                                      if (_formKey.currentState
                                              ?.saveAndValidate() !=
                                          true) {
                                        return;
                                      }
                                      final val = _formKey.currentState!.value;
                                      Logger().d({
                                        ...val,
                                        'interested': feedBackValue.value
                                      });
                                      await widget.parentContext
                                          .read<TaskDetailCubit>()
                                          .completeAndAddFollowUp(
                                              context: context,
                                              values: val,
                                              description: val['description'],
                                              markAsProspect:
                                                  feedBackValue.value ==
                                                      'Very Interested');
                                      // getIt<ActivityCubit>()
                                      //     .setLastActivityFeedback(
                                      //         widget.activity,
                                      //         ActivityFeedback(
                                      //             isInterested: true,
                                      //             status: 'Complete',
                                      //             notes: _controller.text));
                                      // Navigator.of(context).pop();
                                      // final result = await widget.parentContext
                                      //     .pushNamed(AddTaskScreen.routeName);
                                      // if (result == true &&
                                      //     widget.parentContext.mounted) {
                                      //   widget.parentContext.pop();
                                      // }
                                    },
                                    text: ('Add Followup')),
                              VerticalSmallGap(
                                adjustment: 1,
                              ),
                            ],
                            if (((widget.mode == CardAction.ManuelSwipe ||
                                    widget.mode == CardAction.Star) &&
                                feedBackValue.value == 'Deal'))
                              AppPrimaryButton(
                                  backgroundColor: Colors.green[800],
                                  onTap: () async {
                                    if (_formKey.currentState
                                            ?.saveAndValidate() !=
                                        true) {
                                      return;
                                    }
                                    Navigator.of(context).pop(false);
                                    getIt<ActivityCubit>()
                                        .setLastActivityFeedback(
                                            widget.activity,
                                            ActivityFeedback(
                                                isInterested: true,
                                                status: 'Complete',
                                                notes: _controller.text));
                                    widget.parentContext
                                        .pushNamed(AddDealScreen.routeName);
                                  },
                                  text: ('Complete & Add Deal')),
                            if (((widget.mode == CardAction.ManuelSwipe ||
                                    widget.mode == CardAction.Star) &&
                                feedBackValue.value == 'Listing'))
                              AppPrimaryButton(
                                  backgroundColor: Colors.green[800],
                                  onTap: () async {
                                    if (_formKey.currentState
                                            ?.saveAndValidate() !=
                                        true) {
                                      return;
                                    }
                                    Navigator.of(context).pop(false);
                                    getIt<ActivityCubit>()
                                        .setLastActivityFeedback(
                                            widget.activity,
                                            ActivityFeedback(
                                                isInterested: true,
                                                status: 'Complete',
                                                notes: _controller.text));
                                    widget.parentContext
                                        .pushNamed(AddDealScreen.routeName);
                                  },
                                  text: ('Complete & Add Listing')),
                            if (value == "Not Interested") ...[
                              AppPrimaryButton(
                                  onTap: () async {
                                    if (_formKey.currentState
                                            ?.saveAndValidate() !=
                                        true) {
                                      return;
                                    }
                                    await widget.parentContext
                                        .read<TaskDetailCubit>()
                                        .makeLost(
                                          context: context,
                                          description: _controller.text,
                                        );
                                  },
                                  text: ('Complete')),
                            ],
                            if (value == "Not Answered" ||
                                value == "Invalid Number" ||
                                value == "Disqualify") ...[
                              if (value == "Not Answered")
                                AppPrimaryButton(
                                    onTap: () async {
                                      if (_formKey.currentState
                                              ?.saveAndValidate() !=
                                          true) {
                                        return;
                                      }

                                      await widget.parentContext
                                          .read<TaskDetailCubit>()
                                          .makeLost(
                                            context: widget.parentContext,
                                            description: _controller.text,
                                          );
                                      Navigator.of(context).pop();
                                    },
                                    text: ('Complete')),
                              if (value == "Not Answered")
                                VerticalSmallGap(
                                  adjustment: 1,
                                ),
                              OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      maximumSize: Size(200, 43),
                                      minimumSize: Size(100, 43),
                                      side: BorderSide(color: Colors.red[800]!),
                                      foregroundColor: Colors.red[800]!),
                                  onPressed: () async {
                                    if (_formKey.currentState
                                            ?.saveAndValidate() !=
                                        true) {
                                      return;
                                    }

                                    await widget.parentContext
                                        .read<TaskDetailCubit>()
                                        .disqualify(
                                            context: widget.parentContext,
                                            description: _controller.text);
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Disqualify')),
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
