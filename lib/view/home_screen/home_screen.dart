import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/call_bloc/call_bloc.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/routes/app_router.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/constant_widget.dart';
import 'package:real_estate_app/util/paginator.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/view/home_screen/widgets/sliver_categories.dart';
import 'package:real_estate_app/view/lead_detail_screen/lead_detail_screen.dart';
import 'package:real_estate_app/view/task_detail_screen/task_detail_screen.dart';
import 'package:real_estate_app/widgets/button.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';
import 'package:real_estate_app/widgets/timer_text.dart';

import '../../app/activity_cubit/activity_cubit.dart';
import '../../model/activity_feedback_model.dart';
import '../../model/category_model.dart';
import '../../util/color_category.dart';
import '../../widgets/fields/multi_line_textfield.dart';
import '../add_deal_screen/add_deal_screen.dart';
import '../add_task_screen/add_task_screen.dart';
import 'cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: HomePageLayout(),
    );
  }
}

class HomePageLayout extends StatefulWidget {
  const HomePageLayout({Key? key}) : super(key: key);

  @override
  State<HomePageLayout> createState() => _HomePageLayoutState();
}

class _HomePageLayoutState extends State<HomePageLayout> {
  @override
  Widget build(BuildContext context) {
    final user = getIt<AuthBloc>().state.user;
    return NestedScrollView(
        headerSliverBuilder: (context, hasUnderScroll) => [
              // SliverAppBar(
              //   title: SizedBox(
              //     height: 50,
              //     child: Image.asset(
              //       'assets/images/logo-black.png',
              //       fit: BoxFit.fitHeight,
              //     ),
              //   ),
              //   centerTitle: true,
              //   backgroundColor: Color.fromARGB(255, 240, 246, 250),
              //   foregroundColor: pacificBlue,
              //   leading: IconButton(
              //     onPressed: () {},
              //     icon: Icon(Icons.menu),
              //     padding: EdgeInsetsDirectional.only(start: 8),
              //   ),
              //   actions: [
              //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              //   ],
              //   pinned: true,
              // ),
              SliverVerticalSmallGap(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: S3Image(
                          url: user?.photo,
                          fit: BoxFit.cover,
                        ),
                      ),
                      HorizontalSmallGap(),
                      HorizontalSmallGap(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleText(text: 'Welcome, '),
                            BlockTitleText(
                                text:
                                    '${user?.firstName ?? ''} ${user?.lastName ?? ''}')
                          ],
                        ),
                      ),
                      HorizontalSmallGap(),
                      HorizontalSmallGap(),
                    ],
                  ),
                ),
              ),
              SliverVerticalSmallGap(),
              SliverVerticalSmallGap(),
              // SliverToBoxAdapter(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 20),
              //     child: getSearchField('Search'),
              //   ),
              // ),
              // SliverVerticalSmallGap(),
              // BlocSelector<HomeCubit, HomeState, ModelCategory>(
              //   selector: (state) {
              //     return state.selectedCategory;
              //   },
              //   builder: (context, selectedCategory) {
              //     return SliverCategories(
              //         categories: context.read<HomeCubit>().state.categories,
              //         selectedCategory: selectedCategory);
              //   },
              // ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                LabelText(
                                  text: 'Actions Pending Today',
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
                                BlocSelector<HomeCubit, HomeState, int>(
                                  selector: (state) {
                                    return state.pendingTasksCount;
                                  },
                                  builder: (context, state) {
                                    return TitleText(text: '${state}');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        HorizontalSmallGap(),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                LabelText(
                                  text: 'Actions Done Today',
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
                                BlocSelector<HomeCubit, HomeState, int>(
                                  selector: (state) {
                                    return state.completedTasksCount;
                                  },
                                  builder: (context, completedTasksCount) {
                                    return TitleText(
                                        text: '${completedTasksCount}');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        HorizontalSmallGap(),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                LabelText(
                                  text: 'Viewings Today',
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
                                BlocSelector<HomeCubit, HomeState, int>(
                                  selector: (state) {
                                    return state.viewingTasksCount;
                                  },
                                  builder: (context, state) {
                                    return TitleText(text: '${state}');
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SliverVerticalSmallGap(),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BlocSelector<HomeCubit, HomeState, Set<ListType>>(
                        selector: (state) {
                          return state.listType;
                        },
                        builder: (context, listType) {
                          return SegmentedButton<ListType>(
                            segments: [
                              ButtonSegment(
                                  value: ListType.Categorized,
                                  label: Text('Categorized')),
                              ButtonSegment(
                                  value: ListType.Sorted, label: Text('List'))
                            ],
                            selected: listType,
                            onSelectionChanged: (p0) {
                              context.read<HomeCubit>().selectListType(p0);
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              SliverVerticalSmallGap(),
            ],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: TitleText(
            //     text: 'Tasks :',
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Expanded(
              child: BlocSelector<HomeCubit, HomeState, Set<ListType>>(
                selector: (state) {
                  return state.listType;
                },
                builder: (context, listType) {
                  if (listType.first == ListType.Sorted) {
                    return SortedView();
                  } else {
                    return CategorizedView();
                  }
                },
              ),
            ),
          ],
        ));
  }
}

class SortedView extends StatelessWidget {
  const SortedView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.getSortedActivitiesStatus == AppStatus.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final activities = state.sortedActivity;
        final itemLength = activities.length;

        return RefreshIndicator.adaptive(
          onRefresh: () async {
            await context.read<HomeCubit>().getSortedActivities(refresh: true);
          },
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (state.getSortedActivitiesStatus != AppStatus.loadingMore &&
                  scrollInfo.metrics.pixels >=
                      0.9 * scrollInfo.metrics.maxScrollExtent) {
                context.read<HomeCubit>().getSortedActivities();
              }
              return true;
            },
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              itemBuilder: (context, index) {
                if (index == itemLength) {
                  return SizedBox(
                    height: 50,
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                return ActivityListItem(
                  activity: activities[index],
                  index: index,
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 8,
              ),
              itemCount:
                  state.getSortedActivitiesStatus != AppStatus.loadingMore
                      ? itemLength
                      : itemLength + 1,
            ),
          ),
        );
      },
    );
  }
}

class CategorizedView extends StatelessWidget {
  const CategorizedView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: List.generate(
          7,
          (index) => BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  final activities = state.activities[index] ?? [];
                  final itemLength = activities.length;

                  return SliverStickyHeader.builder(
                    builder: (context, state) => Container(
                      height: 60.0,
                      color: Theme.of(context).colorScheme.primaryContainer,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LabelText(
                            text: switch (index) {
                              0 => 'Pending Fresh Hot Leads:',
                              1 => 'Pending Call Center Leads:',
                              2 => 'Hot Confidential Pending:',
                              3 => 'Active Prospects:',
                              4 => 'Follow Up Hot Leads:',
                              5 => 'Follow Up Cold Leads:',
                              6 => 'Fresh Cold Leads:',
                              _ => ''
                            },
                          ),
                          TextButton(
                              onPressed: () async {
                                await context.read<HomeCubit>().getActivities(
                                    filterCode: index, refresh: true);
                              },
                              child: Icon(Icons.refresh))
                        ],
                      ),
                    ),
                    sliver: SliverPadding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      sliver: state.getActivitiesStatus[index] ==
                              AppStatus.loading
                          ? SliverToBoxAdapter(
                              child: Center(child: CircularProgressIndicator()),
                            )
                          : state.getActivitiesStatus[index] ==
                                      AppStatus.success &&
                                  state.activities[index]?.isEmpty == true
                              ? SliverToBoxAdapter(child: Text('No Leads'))
                              : SliverList.separated(
                                  itemCount: (state.activityPaginator[index]
                                                  ?.hasNextPage ??
                                              false) &&
                                          state.activities[index]?.isNotEmpty ==
                                              true
                                      ? itemLength + 1
                                      : itemLength,
                                  itemBuilder: (context, v) {
                                    if (v == itemLength) {
                                      return OutlinedButton(
                                          onPressed: () {
                                            context
                                                .read<HomeCubit>()
                                                .getActivities(
                                                    filterCode: index);
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("Load More"),
                                              if (state.getActivitiesStatus[
                                                      index] ==
                                                  AppStatus.loadingMore) ...[
                                                HorizontalSmallGap(),
                                                SizedBox.square(
                                                  dimension: 20,
                                                  child:
                                                      CircularProgressIndicator
                                                          .adaptive(),
                                                )
                                              ]
                                            ],
                                          ));
                                    }
                                    final activity = activities[v];
                                    return ActivityListItem(
                                      activity: activity,
                                      index: v,
                                      taskSection: index,
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      VerticalSmallGap()),
                    ),
                  );
                },
              )),
    );
  }
}

class ActivityListItem extends StatelessWidget {
  const ActivityListItem({
    super.key,
    required this.activity,
    required this.index,
    this.taskSection,
  });

  final Activity activity;
  final int index;
  final int? taskSection;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(activity.id),
      background: Container(
        decoration: BoxDecoration(
            color: Colors.red[700],
            borderRadius: BorderRadius.horizontal(left: Radius.circular(11))),
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: LabelText(
                text: 'Complete as Not Interested',
                color: Colors.white,
              ),
            )),
          ],
        ),
      ),
      secondaryBackground: Container(
        decoration: BoxDecoration(
            color: Colors.green[700],
            borderRadius: BorderRadius.horizontal(right: Radius.circular(11))),
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: LabelText(
                text: 'Complete as Interested',
                textAlign: TextAlign.end,
                color: Colors.white,
              ),
            )),
          ],
        ),
      ),
      confirmDismiss: (direction) async {
        return await showGeneralDialog<bool>(
            context: context,
            pageBuilder: (dContext, anim1, anim2) => ActivityFeedbackDialog(
                direction: direction,
                activity: activity,
                index: index,
                taskSection: taskSection,
                parentContext: context));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.h),
            boxShadow: [
              BoxShadow(
                  color: shadowColor, offset: Offset(-4, 5), blurRadius: 11)
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
          child: InkWell(
            onTap: () {
              context.pushNamed(TaskDetailScreen.routeName,
                  pathParameters: {'id': activity.lead?.id ?? ''},
                  extra: activity);
            },
            child: Row(children: [
              Container(
                width: 70,
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[100]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    switch (activity.type.toLowerCase()) {
                      'call' => Icon(
                          Icons.call,
                          color: Colors.grey,
                        ),
                      'whatsapp' => ImageIcon(
                          AssetImage('assets/images/whatsapp.png'),
                          color: Colors.grey,
                        ),
                      _ => Icon(
                          Icons.call,
                          color: Colors.grey,
                        )
                    },
                    VerticalSmallGap(
                      adjustment: 0.3,
                    ),
                    SmallText(
                      text: activity.type,
                      color: Colors.grey[800]!,
                    )
                  ],
                ),
              ),
              HorizontalSmallGap(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.h),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.blueGrey[100]),
                      child: SmallText(
                          text: activity.lead?.leadStatus?.name ?? ''),
                    ),
                    VerticalSmallGap(
                      adjustment: .2,
                    ),
                    Text(
                        "${activity.lead?.firstName ?? ''} ${activity.lead?.lastName ?? ''}"),
                    CountdownTimer(endTime: activity.date)
                  ],
                ),
              ),
              HorizontalSmallGap(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton.filledTonal(
                      onPressed: () async {
                        if (activity.lead == null) {
                          return;
                        }
                        context.read<CallBloc>().add(CallEvent.callStarted(
                            phoneNumber: activity.lead!.phone ?? '',
                            activityId: activity.id,
                            leadId: activity.lead!.id));
                      },
                      icon: Icon(
                        Icons.call,
                      ))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class ActivityFeedbackDialog extends StatefulWidget {
  const ActivityFeedbackDialog({
    super.key,
    required this.activity,
    required this.parentContext,
    required this.direction,
    required this.index,
    this.taskSection,
  });

  final Activity activity;
  final BuildContext parentContext;
  final DismissDirection direction;
  final int index;
  final int? taskSection;

  @override
  State<ActivityFeedbackDialog> createState() => _ActivityFeedbackDialogState();
}

class _ActivityFeedbackDialogState extends State<ActivityFeedbackDialog> {
  late final ValueNotifier<String> feedBackValue = ValueNotifier(
      (widget.direction == DismissDirection.endToStart)
          ? 'Interested'
          : "Not Interested");
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleText(text: 'Complete Task?'),
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
                          if (widget.direction == DismissDirection.endToStart)
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
                          if (widget.direction == DismissDirection.startToEnd)
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
                                    final result = await widget.parentContext
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
                                  backgroundColor: Colors.green[800],
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
                                    widget.parentContext
                                        .pushNamed(AddDealScreen.routeName);
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
                                    await widget.parentContext
                                        .read<HomeCubit>()
                                        .updateActivity(
                                            context: widget.parentContext,
                                            task: widget.activity,
                                            index: widget.index,
                                            taskSection: widget.taskSection,
                                            description: _controller.text);
                                    Navigator.of(context).pop();
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

                                    await widget.parentContext
                                        .read<HomeCubit>()
                                        .updateActivity(
                                            context: widget.parentContext,
                                            task: widget.activity,
                                            index: widget.index,
                                            taskSection: widget.taskSection,
                                            description: _controller.text);
                                    Navigator.of(context).pop();
                                  },
                                  text: ('Complete')),
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
                                        .read<HomeCubit>()
                                        .disqualify(
                                            context: widget.parentContext,
                                            task: widget.activity,
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
