import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/call_bloc/call_bloc.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/color_category.dart';
import 'package:real_estate_app/util/launch_whatsapp.dart';
import 'package:real_estate_app/util/share_company_profile.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/cold_lead_screen/cold_lead_screen.dart';
import 'package:real_estate_app/view/cold_lead_screen/cubit/cold_lead_cubit.dart';
import 'package:real_estate_app/view/enquiries_screen/enquiries_screen.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart' as home;
import 'package:real_estate_app/view/lead_detail_screen/cubit/lead_detail_cubit.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';
import 'package:real_estate_app/view/leads_list_explorer/leads_list_explorer.dart';
import 'package:real_estate_app/view/listing_detail_screen/listing_detail_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/cubit/task_detail_cubit.dart';
import 'package:real_estate_app/view/task_detail_screen/widgets/activity_list.dart';
import 'package:real_estate_app/view/task_detail_screen/widgets/property_card_list.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/fields/multi_line_textfield.dart';
import 'package:real_estate_app/widgets/snackbar.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:real_estate_app/widgets/url_text.dart';

import 'widgets/feedback_dialog.dart';

/// Enum for card actions when swiping
enum CardAction { ManuelSwipe, Heart, Charge, Star, Skip, Negative }

class TaskDetailScreen extends StatefulWidget {
  static const routeName = '/taskDetailScreen';

  final String taskId;
  final Activity? activity;
  final bool isBlocking;
  final home.TaskType? taskType;
  final TaskFilterEnum? taskFilter;

  const TaskDetailScreen({
    super.key,
    required this.taskId,
    this.activity,
    required this.isBlocking,
    this.taskType,
    this.taskFilter,
  });

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
  final bool isEnquiry;

  const _TaskDetailScreenLayout({required this.isEnquiry});

  @override
  State<_TaskDetailScreenLayout> createState() =>
      _TaskDetailScreenLayoutState();
}

class _TaskDetailScreenLayoutState extends State<_TaskDetailScreenLayout> {
  final AppinioSwiperController _swiperController = AppinioSwiperController();
  CardAction mode = CardAction.ManuelSwipe;
  final ValueNotifier<bool> isProspect = ValueNotifier(false);

  @override
  void dispose() {
    isProspect.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: const Color(0xFFF5F7FA),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: BlocSelector<TaskDetailCubit, TaskDetailState, List<Activity>>(
          selector: (state) => state.sortedActivity,
          builder: (context, tasks) {
            if (tasks.isEmpty) {
              return _buildEmptyState();
            }
            return _buildTasksStack(tasks);
          },
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(widget.isEnquiry ? 'Enquiry' : "Cold Lead"),
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: BlocSelector<AuthBloc, AuthState, Set<String>?>(
        selector: (state) => state.veryImportantActivities,
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
              icon: const Icon(Icons.arrow_back),
            );
          }
          return const SizedBox();
        },
      ),
      actions: [
        if (context.select<TaskDetailCubit, double>(
                    (cubit) => cubit.state.task?.activityWeight ?? 0) >=
                0.8 &&
            context.select<AuthBloc, bool>((bloc) =>
                bloc.state.veryImportantActivities?.isNotEmpty ?? false))
          IconButton(
            onPressed: () {
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.clearImportantActivity());
              setState(() {});
            },
            icon: const Icon(Icons.close),
          )
      ],
    );
  }

  Widget _buildEmptyState() {
    return const Center(
      child: Text('No Tasks'),
    );
  }

  Widget _buildTasksStack(List<Activity> tasks) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildEndOfTasksCard(),
        _buildTaskSwiper(tasks),
      ],
    );
  }

  Widget _buildEndOfTasksCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TitleText(text: "You have reached the end"),
            const VerticalSmallGap(),
            if (getIt<AuthBloc>().state.user?.role != 'AnonymousAgent')
              AppPrimaryButton(
                  text: 'Go To Explorer',
                  onTap: () {
                    context.pushNamed(LeadsExplorerScreen.routeName);
                  }),
            const VerticalSmallGap(),
            AppPrimaryButton(
                text: 'Go Back',
                backgroundColor: Colors.white,
                borderColor: Theme.of(context).colorScheme.primary,
                borderShow: true,
                foregroundColor: Theme.of(context).colorScheme.primary,
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
    );
  }

  Widget _buildTaskSwiper(List<Activity> tasks) {
    return AppinioSwiper(
      controller: _swiperController,
      swipeOptions: const SwipeOptions.symmetric(horizontal: true),
      cardCount: tasks.length,
      backgroundCardScale: 1,
      threshold: 150,
      invertAngleOnBottomDrag: false,
      backgroundCardCount: 3,
      backgroundCardOffset: const Offset(-3, -3),
      onCardPositionChanged: (position) {
        mode = CardAction.ManuelSwipe;
      },
      onSwipeEnd: (previousIndex, targetIndex, activity) =>
          _handleSwipeEnd(previousIndex, targetIndex, activity, tasks),
      cardBuilder: (context, index) => _buildTaskCard(tasks[index]),
    );
  }

  Future<void> _handleSwipeEnd(int previousIndex, int targetIndex,
      SwiperActivity activity, List<Activity> tasks) async {
    if (activity is Unswipe) {
      return;
    }

    if (previousIndex >= targetIndex && mode != CardAction.Negative) {
      return;
    }

    if (mode == CardAction.Skip) {
      context.read<TaskDetailCubit>().setCurrentTask(targetIndex);
      return;
    }

    // Handle swipe right
    if ((activity.begin?.dx ?? 0) < (activity.end?.dx ?? 0)) {
      final val = await _showFeedbackDialog(DismissDirection.startToEnd,
          context.read<TaskDetailCubit>().state.task!);

      if (val == null &&
          mounted &&
          (tasks.length == targetIndex ||
              context.read<TaskDetailCubit>().state.taskId !=
                  tasks[targetIndex].id)) {
        _swiperController.unswipe();
      } else {
        context.read<TaskDetailCubit>().setCurrentTask(targetIndex);
      }
    }
    // Handle swipe left
    else {
      final val = await _showFeedbackDialog(DismissDirection.endToStart,
          context.read<TaskDetailCubit>().state.task!);

      if (val == null && mounted) {
        mode = CardAction.Skip;
        _swiperController.unswipe();
      } else {
        context.read<TaskDetailCubit>().setCurrentTask(targetIndex);
      }
    }
  }

  Future<dynamic> _showFeedbackDialog(
      DismissDirection direction, Activity activity) {
    return showGeneralDialog(
        context: context,
        useRootNavigator: false,
        pageBuilder: (dContext, anim1, anim2) => BlocProvider.value(
              value: context.read<TaskDetailCubit>(),
              child: ActivityFeedbackDialog(
                parentContext: context,
                direction: direction,
                mode: direction == DismissDirection.startToEnd ? mode : null,
                notes: activity.notes,
                activity: activity,
              ),
            ));
  }

  Widget _buildTaskCard(Activity task) {
    final isBlockingActivity = task.activityWeight >= 0.8;
    isProspect.value = task.lead?.leadStatus == LeadStatus.Prospect;

    return SizedBox(
      key: ValueKey(task.id),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Expanded(
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  blurRadius: 9,
                )
              ], color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Expanded(
                    child: ScrollShadow(
                      size: 6,
                      color: shadowColor,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: _buildTaskDetails(task, isBlockingActivity),
                        ),
                      ),
                    ),
                  ),
                  _buildActionButtons(isBlockingActivity),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget _buildTaskDetails(Activity task, bool isBlockingActivity) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isBlockingActivity) ...[
          const VerticalSmallGap(),
          _buildImportantActivityWarning(),
        ],
        const VerticalSmallGap(),
        _buildTaskHeader(task),
        const VerticalSmallGap(),
        _buildLeadInfo(task),
        const VerticalSmallGap(),
        _buildLeadSource(task),
        const VerticalSmallGap(),
        _buildPhoneInfo(task),
        const VerticalSmallGap(),
        _buildTaskDueDate(task),
        const VerticalSmallGap(),
        if (task.type == "Viewing" && task.property_list != null)
          _buildPropertyViewing(task),
        const VerticalSmallGap(),
        const CallProcessing(),
        const VerticalSmallGap(),
        _buildNotesSection(task),
        const VerticalSmallGap(),
        _buildDescriptionSection(task),
        const VerticalSmallGap(),
        const LabelText(text: 'Actions'),
        const VerticalSmallGap(),
        _buildLeadActions(task),
        const VerticalSmallGap(),
        _buildPropertyCardsSection(),
        const VerticalSmallGap(),
        _buildActivitiesSection(task),
        const VerticalSmallGap(),
      ],
    );
  }

  Widget _buildImportantActivityWarning() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(8),
          border: Border.fromBorderSide(
              BorderSide(color: Theme.of(context).colorScheme.error))),
      child: const Text(
          'This is a very important activity. Complete this activity to further use the app'),
    );
  }

  Widget _buildTaskHeader(Activity task) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(text: task.type),
        Row(
          children: [
            // Add Lead Score Display
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Score: ${(task.lead?.rating ?? 0)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(width: 8),
            // Existing Prospect Heart Icon
            BlocProvider(
              create: (context) =>
                  getIt<LeadDetailCubit>(param1: task.lead?.id ?? ""),
              child: ValueListenableBuilder<bool>(
                valueListenable: isProspect,
                builder: (context, value, child) {
                  if (!value) return const SizedBox();

                  return BlocBuilder<LeadDetailCubit, LeadDetailState>(
                    builder: (context, state) => IconButton(
                      onPressed: () => _handleProspectToggle(context, task),
                      icon: Icon(
                        value
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _handleProspectToggle(
      BuildContext context, Activity task) async {
    if (task.lead?.leadStatus == LeadStatus.Prospect) {
      final result = await context.read<LeadDetailCubit>().removeProspect();

      if (result) {
        isProspect.value = false;
        if (mounted) {
          showSnackbar(context, 'Successfully removed prospect tag',
              SnackBarType.success);
        }
      } else {
        final error = context.read<LeadDetailCubit>().state.updateLeadError;
        if (mounted) {
          showSnackbar(context, error ?? 'Failed to remove prospect tag',
              SnackBarType.failure);
        }
      }
    } else {
      final result = await context
          .read<LeadDetailCubit>()
          .updateLead({"lead_status": "Prospect"});

      if (result) {
        if (mounted) {
          showSnackbar(
              context, 'Successfully marked as prospect', SnackBarType.success);
        }
      } else {
        final error = context.read<LeadDetailCubit>().state.updateLeadError;
        if (mounted) {
          showSnackbar(context, error ?? 'Failed to mark as prospect',
              SnackBarType.failure);
        }
      }
    }
  }

  Widget _buildLeadInfo(Activity task) {
    return Row(
      children: [
        const ContainerIcon(icon: CupertinoIcons.person),
        const HorizontalSmallGap(),
        Flexible(
            child: TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 0)),
          child: Text(
            '${task.lead?.firstName ?? ''} ${task.lead?.lastName ?? ''}',
            textAlign: TextAlign.start,
          ),
          onPressed: () {
            context.pushNamed(LeadDetailScreen.routeName, pathParameters: {
              "id": task.lead!.id,
            });
          },
        ))
      ],
    );
  }

  Widget _buildLeadSource(Activity task) {
    return Row(
      children: [
        const ContainerIcon(icon: CupertinoIcons.search),
        const HorizontalSmallGap(),
        Expanded(
          child:
              NormalText(text: 'Lead Source: ${task.lead?.leadSource ?? ''}'),
        )
      ],
    );
  }

  Widget _buildPhoneInfo(Activity task) {
    return Row(
      children: [
        const ContainerIcon(icon: CupertinoIcons.check_mark),
        const HorizontalSmallGap(),
        Expanded(child: NormalText(text: 'Phone: ${task.lead?.phone ?? ''}')),
        if (task.lead?.dndStatus ?? false)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
            decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.error),
                color: Theme.of(context).colorScheme.errorContainer),
            child: const SmallText(text: 'DND'),
          ),
      ],
    );
  }

  Widget _buildTaskDueDate(Activity task) {
    return Row(
      children: [
        const ContainerIcon(icon: CupertinoIcons.calendar),
        const HorizontalSmallGap(),
        Expanded(
          child: NormalText(
              text:
                  'Due on : ${DateFormat.yMMMMd().add_jmv().format(task.date.toLocal())}'),
        )
      ],
    );
  }

  Widget _buildPropertyViewing(Activity task) {
    return InkWell(
      onTap: () {
        context.pushNamed(ListingDetailsScreen.routeName,
            pathParameters: {'id': task.property_list?.id ?? ""});
      },
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: .5)),
        child: Column(
          children: [
            const Text("Property for viewing"),
            PropertyCardPickerItem(listing: task.property_list!),
          ],
        ),
      ),
    );
  }

  Widget _buildNotesSection(Activity task) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LabelText(text: 'Notes'),
            TextButton(
                onPressed: () => _showAddNoteDialog(task),
                child: const Text('Add'))
          ],
        ),
        (task.notes?.isNotEmpty == true)
            ? UrlText(text: task.notes ?? '')
            : const Text('No notes'),
      ],
    );
  }

  void _showAddNoteDialog(Activity task) {
    showGeneralDialog(
        context: context,
        useRootNavigator: false,
        barrierDismissible: true,
        barrierLabel: 'add-note-task',
        pageBuilder: (dContext, anim1, anim2) {
          return BlocProvider.value(
            value: context.read<TaskDetailCubit>(),
            child: AddNoteDialog(
              activity: task,
              preNote: task.notes ?? "",
            ),
          );
        });
  }

  Widget _buildDescriptionSection(Activity task) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelText(text: 'Description'),
        const VerticalSmallGap(),
        (task.description?.isNotEmpty == true)
            ? UrlText(text: task.description ?? '')
            : const Text('No description'),
      ],
    );
  }

  Widget _buildLeadActions(Activity task) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: OutlinedButton(
              onPressed: () => _handleCallAction(task),
              child: const Icon(Icons.call)),
        ),
        const HorizontalSmallGap(),
        Expanded(
          child: OutlinedButton(
              onPressed: () async {
                await launchWhatsApp(context, task.lead?.phone);
              },
              child: const ImageIcon(AssetImage('assets/images/whatsapp.png'))),
        ),
        const HorizontalSmallGap(),
        Expanded(
          child: OutlinedButton(
              onPressed: () async {
                shareCompanyProfile();
              },
              child: const Icon(Icons.share)),
        )
      ],
    );
  }

  Future<void> _handleCallAction(Activity task) async {
    getIt<CallBloc>().add(CallEvent.callStarted(
        activityId: task.id,
        phoneNumber: task.lead?.phone ?? '',
        leadId: task.lead?.id ?? '',
        leadSource: task.lead!.leadSourceObject?.leadSourceType ?? "Cold"));

    final state = await getIt<CallBloc>()
        .stream
        .firstWhere((e) => e.makeACallStatus != AppStatus.loading);

    if (state.makeACallStatus == AppStatus.success) {
      if (mounted) {
        showSnackbar(
            context,
            'Call request sent successfully. Please open linkus app to receive call',
            SnackBarType.success);
      }
    } else {
      if (mounted) {
        showSnackbar(
            context,
            'Call request failed to send. Error: ${state.makeACallError}',
            SnackBarType.failure);
      }
    }
  }

  Widget _buildPropertyCardsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LabelText(text: 'Property cards'),
            GestureDetector(
                onTap: () {
                  final task = context.read<TaskDetailCubit>().state.task;
                  context
                      .pushNamed(LeadDetailScreen.routeName, pathParameters: {
                    'id': task?.lead?.id ?? "",
                  }, queryParameters: {
                    'index': "3"
                  });
                },
                child: const LinkText(text: "View all"))
          ],
        ),
        const VerticalSmallGap(),
        const PropertyCardList(),
      ],
    );
  }

  Widget _buildActivitiesSection(Activity task) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LabelText(text: 'Last 3 activities'),
            GestureDetector(
                onTap: () {
                  context
                      .pushNamed(LeadDetailScreen.routeName, pathParameters: {
                    'id': task.lead?.id ?? "",
                  }, queryParameters: {
                    'index': "1"
                  });
                },
                child: const LinkText(text: "View all"))
          ],
        ),
        const VerticalSmallGap(),
        const ActivityList(),
      ],
    );
  }

  Widget _buildActionButtons(bool isBlockingActivity) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: IconButton.outlined(
                onPressed: () {
                  mode = CardAction.Negative;
                  _swiperController.swipeLeft();
                },
                style: IconButton.styleFrom(
                    side: const BorderSide(color: Colors.red)),
                icon: const Icon(
                  CupertinoIcons.hand_thumbsdown,
                  color: Colors.red,
                )),
          ),
          const HorizontalSmallGap(),
          Expanded(
            child: IconButton.filled(
                style: IconButton.styleFrom(
                    backgroundColor: Colors.green,
                    side: const BorderSide(color: Colors.green)),
                onPressed: () {
                  mode = CardAction.Heart;
                  _swiperController.swipeRight();
                },
                icon: const Icon(
                  CupertinoIcons.hand_thumbsup_fill,
                  color: Colors.white,
                )),
          ),
          const HorizontalSmallGap(),
          Expanded(
              child: IconButton.filled(
                  style: IconButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    mode = CardAction.Charge;
                    _swiperController.swipeRight();
                  },
                  icon: const Icon(CupertinoIcons.heart_fill))),
          const HorizontalSmallGap(),
          Expanded(
            child: IconButton.filled(
                onPressed: () {
                  mode = CardAction.Star;
                  _swiperController.swipeRight();
                },
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xff3A3A3A),
                ),
                icon: Image.asset(
                  'assets/images/flame.png',
                  fit: BoxFit.contain,
                  height: 22,
                )),
          ),
          const HorizontalSmallGap(),
          Expanded(
            child: IconButton.filled(
                onPressed: isBlockingActivity
                    ? null
                    : () {
                        mode = CardAction.Skip;
                        _swiperController.swipeRight();
                      },
                icon: const Icon(Icons.redo)),
          ),
        ],
      ),
    );
  }
}

class ContainerIcon extends StatelessWidget {
  final IconData icon;

  const ContainerIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xffF0F2F5)),
      child: Icon(icon),
    );
  }
}

class AddNoteDialog extends StatefulWidget {
  final String preNote;
  final Activity activity;

  const AddNoteDialog(
      {super.key, required this.preNote, required this.activity});

  @override
  State<AddNoteDialog> createState() => _AddNoteDialogState();
}

class _AddNoteDialogState extends State<AddNoteDialog> {
  late final TextEditingController _controller;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.preNote);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Note'),
      content: FormBuilder(
        key: _formKey,
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
                child: const Text('Cancel'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            const HorizontalSmallGap(),
            Expanded(
              child: AppPrimaryButton(
                  text: 'Save',
                  onTap: () async {
                    final validated = _formKey.currentState?.saveAndValidate();
                    if (validated == true) {
                      await context.read<TaskDetailCubit>().updateActivity(
                            context: context,
                            notes: _controller.text.trim(),
                          );
                      if (mounted) {
                        Navigator.of(context).pop(true);
                      }
                    }
                  }),
            )
          ],
        ),
      ],
    );
  }
}
