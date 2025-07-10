import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:objectbox/objectbox.dart' as objBox;
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/agent_repo.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/data/repository/notification_repo.dart'; // Added
import 'package:real_estate_app/app/notification_badge_cubit/notification_badge_cubit.dart'; // Added
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/objectbox.g.dart' as obj;
import 'package:real_estate_app/util/date_formatter.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

import 'package:real_estate_app/view/new_leads_screen/widget/new_leads_page.dart';
import 'package:real_estate_app/view/home_screen/home_screen.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../data/objectbox/entity/call_processing_entity.dart';
import '../../../model/lead_property_card_model.dart';
import '../../../model/paginator.dart';
import '../../../model/property_model.dart';
import '../../../service_locator/injectable.dart';
import '../../../service_locator/objectbox.dart' as ob;
import '../task_detail_screen.dart';

part 'task_detail_state.dart';
part 'task_detail_cubit.freezed.dart';

@injectable
class TaskDetailCubit extends Cubit<TaskDetailState> {
  static TaskDetailCubit? _instance;
  TaskDetailCubit(
      this._activityRepo,
      @factoryParam String taskId,
      @factoryParam Activity? activity,
      this._leadRepo,
      this._agentRepo,
      this._explorerRepo,
      this._listingsRepo,
      this._notificationRepo, // Added
      this._notificationBadgeCubit // Added
      )
      : super(TaskDetailState(
          taskId: activity?.id ?? taskId,
          task: activity,
        )) {
    _instance = this;
    _markTaskNotificationsAsRead(activity?.id ?? taskId);
    _loadProcessingStatus();
    // Listen for updates
    _subscribeToProcessingUpdates();
  }

  StreamSubscription<objBox.Query<CallProcessingEntity>>?
      _processingSubscription;
  final ActivityRepo _activityRepo;
  final LeadRepo _leadRepo;
  final AgentRepo _agentRepo;
  final ListingsRepo _listingsRepo;
  final ExplorerRepo _explorerRepo;
  final NotificationRepo _notificationRepo; // Added
  final NotificationBadgeCubit _notificationBadgeCubit; // Added

  Future<void> _markTaskNotificationsAsRead(String taskId) async {
    if (taskId.isNotEmpty) {
      await _notificationRepo.markNotificationsAsRead(taskId: taskId);
      _notificationBadgeCubit.refreshNotifications();
    }
  }

  TaskType? taskType;
  TaskFilterEnum? taskFilter;

  void setTaskSortType(TaskType? taskType, TaskFilterEnum? taskFilter) {
    this.taskFilter = taskFilter;
    this.taskType = taskType;
    getSortedActivities();
  }

  Future<void> getTask() async {
    emit(state.copyWith(getTaskStatus: AppStatus.loading));
    final result = await _activityRepo.getActivity(activityId: state.taskId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
          task: s.value,
          getTaskStatus: AppStatus.success,
        ));
        break;
      case (Error e):
        emit(state.copyWith(getTaskStatus: AppStatus.failure));
        break;
    }
  }

  void onRAtingChanged(double value) {
    emit(state.copyWith(ratingValue: value));
  }

  Future<void> updateAndCompleteActivity(
      {required BuildContext context,
      required Activity task,
      String? notes,
      required bool addFollowUp,
      bool refresh = false,
      Map<String, dynamic>? values,
      FeedbackTypeEnum? feedbackType,
      double? rating}) async {
    try {
      // Prepare follow up data if needed
      Map<String, dynamic>? followUpData;
      if (addFollowUp && values != null) {
        DateTime? date = (values["date"] as DateTime?);

        if (date != null) {
          if (values['time'] != null) {
            date = date.addTime(
                values["time"] as TimeOfDay? ?? TimeOfDay(hour: 10, minute: 0));
          }
          followUpData = {
            "date": date.toUtc().toIso8601String(),
            "type": values['type'],
            "description":
                (values['description']?.toString().isNotEmpty ?? false)
                    ? values['description']
                    : notes,
            "property": values["property"]
          };
        }
      }

      // Prepare the completion request
      final result = await _activityRepo.completeActivity(
        activityId: task.id,
        type: feedbackType?.value ?? 'interested',
        feedback: notes,
        leadRating: rating ?? state.ratingValue,
        followUp: followUpData,
      );

      switch (result) {
        case (Success s):
          getIt<AuthBloc>().add(
              AuthEvent.completedImportantActivity(activityId: state.task!.id));
          emit(state.copyWith(
              updateTaskStatus: AppStatus.success, ratingValue: null));

          if (context.mounted) {
            Navigator.of(context).pop(true);
          }

          if (refresh) {
            final activity = state.task?.copyWith(notes: notes);
            final activities = state.activities
                .map((e) => e.id == state.taskId ? e.copyWith(notes: notes) : e)
                .toList();
            emit(state.copyWith(task: activity, sortedActivity: activities));
          }

          getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
          break;

        case (Error e):
          emit(state.copyWith(
              updateTaskError: e.exception,
              updateTaskStatus: AppStatus.failure));
          if (context.mounted) {
            showSnackbar(context, e.exception, SnackBarType.failure);
          }
          break;
      }
    } catch (e) {
      emit(state.copyWith(
          updateTaskError: e.toString(), updateTaskStatus: AppStatus.failure));
      if (context.mounted) {
        showSnackbar(context, e.toString(), SnackBarType.failure);
      }
    }
  }

  Future<void> disqualifyOrInvalidNumber({
    required BuildContext context,
    required Activity task,
    String? description,
    FeedbackTypeEnum feedbackType = FeedbackTypeEnum.disqualify,
  }) async {
    if (state.task?.lead?.id == null) return;

    await updateAndCompleteActivity(
      context: context,
      task: task,
      notes: description,
      addFollowUp: false,
      feedbackType: feedbackType,
    );
  }

  Future<void> makeLost({
    required BuildContext context,
    required Activity task,
    String? description,
  }) async {
    if (state.task?.lead?.id == null) return;

    await updateAndCompleteActivity(
      context: context,
      task: task,
      notes: description,
      addFollowUp: false,
      feedbackType: FeedbackTypeEnum.notInterested,
    );
  }

  Future<void> doNotCall({
    required BuildContext context,
    required Activity task,
    String? description,
  }) async {
    if (state.task?.lead?.id == null) return;

    await updateAndCompleteActivity(
      context: context,
      task: task,
      notes: description,
      addFollowUp: false,
      feedbackType: FeedbackTypeEnum.doNotDial,
    );
  }

  Future<void> completeAndAddFollowUp(
      {required BuildContext context,
      required Activity task,
      String? currentActivityNotes,
      required bool markAsProspect,
      required Map<String, dynamic> values,
      double? rating}) async {
    DateTime? date = (values["date"] as DateTime?);
    if (values['time'] != null && date != null) {
      date = date.addTime(
          values["time"] as TimeOfDay? ?? TimeOfDay(hour: 10, minute: 0));
    }

    if (date == null || date.compareTo(DateTime.now()) == -1) {
      if (context.mounted) {
        showSnackbar(context, 'Choose a valid date time', SnackBarType.failure);
      }
      return;
    }
    await updateAndCompleteActivity(
      context: context,
      task: task,
      addFollowUp: true,
      values: values,
      notes: currentActivityNotes,
      rating: rating,
      feedbackType: markAsProspect
          ? FeedbackTypeEnum.veryInterested
          : FeedbackTypeEnum.interested,
    );
  }

  Future<void> getSortedActivities({bool refresh = false}) async {
    if (state.getSortedActivitiesStatus == AppStatus.loading ||
        state.getSortedActivitiesStatus == AppStatus.loadingMore) {
      return;
    }
    if (state.task == null) {
      await getTask();
    }
    if (refresh || state.sortedActivityPaginator == null) {
      emit(state.copyWith(
          sortedActivityPaginator: null,
          getSortedActivitiesStatus: AppStatus.loading,
          sortedActivity: state.task != null ? [state.task!] : [],
          getSortedActivitiesError: null));
    } else {
      emit(state.copyWith(
          getSortedActivitiesStatus: AppStatus.loadingMore,
          getSortedActivitiesError: null));
    }
    final payload = getPayload(taskFilter, taskType);

    final result = await _activityRepo.fetchActivitiesSorted(
        filter: payload, limit: 20, paginator: state.sortedActivityPaginator);
    switch (result) {
      case (Success<List<Activity>> s):
        List<Activity> list = List<Activity>.from(s.value);
        if (getIt<AuthBloc>().state.veryImportantActivities?.isNotEmpty ==
            true) {
          final imp = await _checkForImportantActivity();

          if (imp != null && imp.isNotEmpty) {
            list.addAll(imp);
          }
        }
        if (list.any((d) => d.activityWeight >= .8)) {
          list.sort((a, b) => b.activityWeight.compareTo(a.activityWeight));
        }

        final activities = [...state.sortedActivity, ...list];

        final uniqueIds = <String>{}; // A set to track unique IDs
        activities.retainWhere(
            (element) => uniqueIds.add(element.id)); // Keep only unique items

        emit(state.copyWith(
            task: state.sortedActivityPaginator == null
                ? activities.firstOrNull
                : state.task,
            taskId: state.sortedActivityPaginator == null
                ? activities.firstOrNull?.id ?? state.taskId
                : state.task?.id ?? state.taskId,
            sortedActivity: activities,
            getSortedActivitiesStatus: AppStatus.success,
            sortedActivityPaginator: s.paginator));
        getLeadActivities();
        getExplorerList();

        break;
      case (Error e):
        emit(state.copyWith(
            getSortedActivitiesError: e.exception,
            getSortedActivitiesStatus: AppStatus.failure));
    }
  }

  Map<String, dynamic> getPayload(
      TaskFilterEnum? filterType, TaskType? taskType) {
    switch (filterType) {
      case TaskFilterEnum.Enquiry:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": "Fresh",
          "sortBy": 'latest'
        };
      case TaskFilterEnum.Cold:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": "Fresh",
          "sortBy": 'latest'
        };
      case TaskFilterEnum.Partner:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "partnersOnly": true,
          "sortBy": 'latest'
        };
      case TaskFilterEnum.FollowUpToday:
        DateTime d = DateTime.now().toUtc();
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal", 'Prospect'],
          "status": ["Pending", "Overdue"],
          "toDate": '${d.year}-${d.month}-${d.day}',
        };
      case TaskFilterEnum.FollowUpTomorrow:
        DateTime d = DateUtils.addDaysToDate(DateTime.now(), 1).toUtc();
        DateTime v = DateTime.now().toUtc();
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal", 'Prospect'],
          "status": ["Pending", "Overdue"],
          "toDate": '${d.year}-${d.month}-${d.day}',
          "fromDate": '${v.year}-${v.month}-${v.day}'
        };
      case TaskFilterEnum.FollowUpOverDue:
        DateTime d = DateTime.now().toUtc();
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal", 'Prospect'],
          "status": ["Overdue"],
          "toDate": '${d.year}-${d.month}-${d.day}',
        };
      case TaskFilterEnum.FollowUpAll:
        DateTime d = DateTime.now().toUtc();
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": ["Follow up", "Viewing", "Won", "Deal", 'Prospect'],
          "status": ["Pending", "Overdue"],
        };
      case TaskFilterEnum.Favourites:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "leadStatus": "Prospect"
        };
      case TaskFilterEnum.Expiring:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
          "expiring": true
        };
      default:
        return {
          if (taskType != null) "leadSourceType": taskType.name.toLowerCase(),
        };
    }
  }

  Future<void> updateActivity(
      {required BuildContext context, String? notes}) async {
    final result = await _activityRepo.updateActivity(
        activityId: state.task!.id, notes: notes, completed: false);
    switch (result) {
      case (Success s):
        emit(state.copyWith(updateTaskStatus: AppStatus.success));
        final activity = state.task?.copyWith(notes: notes);
        final activities = state.sortedActivity
            .map((e) => e.id == state.taskId ? e.copyWith(notes: notes) : e)
            .toList();
        emit(state.copyWith(task: activity, sortedActivity: activities));
      case (Error e):
        emit(state.copyWith(
            updateTaskError: e.exception, updateTaskStatus: AppStatus.failure));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<List<Property>> getListings(
      {String? search, bool isRefresh = false}) async {
    final result = await _listingsRepo.getListings(
        search: search, paginator: isRefresh ? null : state.listingsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(listingsPaginator: s.paginator));
        return s.value;
      case (Error e):
        return [];
    }
  }

  Future<void> getLeadActivities() async {
    if (state.task == null) {
      return;
    }
    emit(
        state.copyWith(getActivitiesStatus: AppStatus.loading, activities: []));
    final result =
        await _leadRepo.getLeadActivities(leadId: state.task!.lead!.id);
    switch (result) {
      case (Success s):
        if (!isClosed)
          emit(state.copyWith(
              getActivitiesStatus: AppStatus.success, activities: s.value));

        break;
      case (Error e):
        if (!isClosed)
          emit(state.copyWith(
              getActivitiesStatus: AppStatus.failure,
              getActivitiesError: e.exception));

        break;
    }
  }

  Future<void> getExplorerList({
    bool refresh = false,
  }) async {
    if (state.task == null) {
      return;
    }
    if (refresh || state.propertyCardPaginator == null) {
      emit(state.copyWith(
          getPropertyCardsListStatus: AppStatus.loading,
          propertyCardsList: []));
    } else {
      if (state.getPropertyCardsListStatus == AppStatus.loadingMore) {
        return;
      }
      emit(state.copyWith(getPropertyCardsListStatus: AppStatus.loadingMore));
    }

    final result =
        await _explorerRepo.getLeadPropertyCards(leadId: state.task!.lead!.id);

    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardsList: s.value,
            getPropertyCardsListStatus: AppStatus.success,
            propertyCardPaginator: s.paginator));
        break;
      case (Error e):
        Logger().e(e);
        emit(state.copyWith(
            getPropertyCardsListStatus: AppStatus.failure,
            getPropertyCardsListError: e.exception));
    }
  }

  void setCurrentTask(int taskIndex) {
    print(taskIndex);
    if (taskIndex > (state.sortedActivity.length - 1)) return;
    final task = state.sortedActivity[taskIndex];
    emit(state.copyWith(
        task: state.sortedActivity[taskIndex],
        taskId: task.id,
        callProcessingState: task.transcript != null
            ? CallProcessingState(
                activityId: task.id,
                summary: task.transcript,
                status: CallProcessingStatus.completed)
            : null));
    getLeadActivities();
    getExplorerList();
    if (taskIndex == state.sortedActivity.length - 1) {
      getSortedActivities();
    }
  }

  FutureOr<List<Activity>?> _checkForImportantActivity() async {
    final result = await _activityRepo.fetchActivitiesImportant();
    switch (result) {
      case (Success<List<Activity>> s):
        return s.value;
      case (Error _):
        return null;
    }
  }

  Future<void> handleMessage(CallProcessingEntity data) async {
    Logger().d(data);

    final status = data.status;
    final callId = '';
    final activityId = data.activityId;

    switch (status) {
      case 'STARTED':
        emit(state.copyWith(
            callProcessingState: CallProcessingState(
          activityId: activityId,
          isProcessing: true,
          callId: callId,
          status: CallProcessingStatus.started,
        )));
        break;

      case 'RECORDING_FOUND':
        emit(state.copyWith(
            callProcessingState: CallProcessingState(
          activityId: activityId,
          status: CallProcessingStatus.recordingFound,
        )));
        break;

      case 'GENERATING_SUMMARY':
        emit(state.copyWith(
            callProcessingState: CallProcessingState(
          activityId: activityId,
          status: CallProcessingStatus.generatingSummary,
        )));
        break;

      case 'COMPLETED':
        final summary = data.summary;
        emit(state.copyWith(
            callProcessingState: CallProcessingState(
          activityId: activityId,
          isProcessing: false,
          status: CallProcessingStatus.completed,
          summary: summary,
        )));
        break;

      case 'FAILED':
        final error = data.error;
        emit(state.copyWith(
            callProcessingState: CallProcessingState(
          activityId: activityId,
          isProcessing: false,
          status: CallProcessingStatus.failed,
          error: error,
        )));
        break;
      case 'AUTOCOMPLETED_BY_WHATSAPP':
        emit(state.copyWith(
            callProcessingState: CallProcessingState(
          activityId: activityId,
          isProcessing: false,
          status: CallProcessingStatus.autoCompletedByWhatsApp,
        )));
        break;
    }
  }

  Future<void> _loadProcessingStatus() async {
    try {
      final store = getIt<ob.ObjectBox>().store;
      final box = store.box<CallProcessingEntity>();

      // Get latest status for this call
      final query = box.query(
          obj.CallProcessingEntity_.activityId.equals(state.task?.id ?? 'ss'))
        ..order(obj.CallProcessingEntity_.timestamp,
            flags: obj.Order.descending);

      final latestStatus = query.build().findFirst();

      if (latestStatus != null) {
        handleMessage(latestStatus);
      }
    } catch (error) {
      Logger().e('Error loading call processing status: $error');
    }
  }

  void _subscribeToProcessingUpdates() {
    Logger().d("Listening to notifications");
    _processingSubscription?.cancel();
    final store = getIt<ob.ObjectBox>().store;
    final box = store.box<CallProcessingEntity>();

    final query = box.query()
      ..order(obj.CallProcessingEntity_.timestamp, flags: obj.Order.descending);

    _processingSubscription = query.watch().listen((updates) {
      final tasks = box
          .query(obj.CallProcessingEntity_.activityId.equals(state.taskId))
          .build()
          .find();
      Logger().d(tasks);

      if (tasks.isNotEmpty) {
        handleMessage(tasks.first);
      }
    });
  }

  @override
  void onChange(Change<TaskDetailState> change) {
    super.onChange(change);
    if (change.currentState.taskId != change.nextState.taskId) {
      _subscribeToProcessingUpdates();
    }
  }

  @override
  Future<void> close() {
    if (_instance == this) {
      _instance = null;
    }
    _processingSubscription?.cancel();
    return super.close();
  }
}

enum FeedbackTypeEnum {
  interested,
  veryInterested,
  notInterested,
  noAnswer,
  disqualify,
  invalidNumber,
  doNotDial,
  createListing,
  createPocketListing,
  createDeal
}

extension FeedbackTypeExtension on FeedbackTypeEnum {
  String get value {
    return toString().split('.').last;
  }
}
