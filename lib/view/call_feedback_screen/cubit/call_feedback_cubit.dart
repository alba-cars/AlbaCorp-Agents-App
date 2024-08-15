import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/remote_data/pending_call_feedback_repo.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/agent_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/lead_source_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/date_formatter.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../model/property_model.dart';
import '../../../widgets/snackbar.dart';

part 'call_feedback_state.dart';
part 'call_feedback_cubit.freezed.dart';

@injectable
class CallFeedbackCubit extends Cubit<CallFeedbackState> {
  CallFeedbackCubit(this._leadRepo, this._pendingCallFeedbackRepo,
      this._activityRepo, this._agentRepo)
      : super(CallFeedbackState()) {
    checkUerExist();
  }

  final LeadRepo _leadRepo;
  final PendingCallFeedbackRepo _pendingCallFeedbackRepo;
  final ActivityRepo _activityRepo;
  final AgentRepo _agentRepo;

  Future<void> checkUerExist({String? numberEntered}) async {
    emit(state.copyWith(
        checkLeadStatus: AppStatus.loading, requestNumber: false));
    final number = numberEntered ?? getIt<AuthBloc>().state.lastCalledNumber;
    if (numberEntered != null) {
      getIt<SharedPreferences>().setString('calledNumber', numberEntered);
    }

    if (number != null && number != 'IPHONE' && number != 'Unknown' && number != "PROPERTY_FINDER") {
      String validatedNumber = number.replaceAll('+', '');
      if (validatedNumber.startsWith('0')) {
        validatedNumber = validatedNumber.replaceFirst('0', '');
      }
      final result = await _leadRepo.getLeadByPhone(phone: validatedNumber);
      switch (result) {
        case (Success<Lead?> s):
          emit(state.copyWith(
              lead: s.value,
              checkLeadStatus: AppStatus.success,
              number: validatedNumber));
          getLeadActivities();
          break;
        case (Error _):
          emit(state.copyWith(
              checkLeadStatus: AppStatus.failure, number: validatedNumber));
      }
    } else {
      emit(state.copyWith(requestNumber: true));
    }
  }

  Future<void> addActivity({required String feedback}) async {
    emit(state.copyWith(
        addActivityStatus: AppStatus.loading, feedback: feedback));
    final number = getIt<AuthBloc>().state.lastCalledNumber;
    if (number != null && state.lead != null) {
      final result = await _activityRepo.createCallFeedbackActivity(
          leadId: state.lead!.id,
          feedback: feedback,
          attachedActivityId: state.attachLastPendingActivityToTheCall);
      switch (result) {
        case (Success s):
          if (s.value) {
            emit(state.copyWith(requestFollowUpTask: true));
          } else {
            emit(state.copyWith(addActivityStatus: AppStatus.success));
          }
        case (Error _):
          emit(state.copyWith(addActivityStatus: AppStatus.failure));
      }
    }
  }

  Future<void> addLead(Map<String, dynamic> val) async {
    emit(state.copyWith(addLeadStatus: AppStatus.loadingMore));

    final result = await _leadRepo.addLead(lead: {'role': "User", ...val});
    switch (result) {
      case (Success s):
        Logger().d(s.value);
        emit(state.copyWith(lead: s.value, addLeadStatus: AppStatus.success));
        getLeadActivities();
        break;
      case (Error e):
        emit(state.copyWith(
            addLeadStatus: AppStatus.failure, addLeadError: e.exception));
        break;
    }
  }

  Future<void> getLeadSources() async {
    emit(state.copyWith(getLeadSourceStatus: AppStatus.loadingMore));
    final result = await _leadRepo.getLeadSources();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            leadSources: s.value, getLeadSourceStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getLeadSourceStatus: AppStatus.failure, addLeadError: e.exception));
        break;
    }
  }

  Future<void> getLeadActivities() async {
    if (state.lead?.currentAgent?.id != getIt<AuthBloc>().state.agent?.id) {
      return;
    }
    emit(state.copyWith(getActivitiesStatus: AppStatus.loading));
    final result = await _leadRepo.getLeadActivities(leadId: state.lead!.id);
    switch (result) {
      case (Success<List<Activity>> s):
        final ls = s.value.where((e) => e.status != 'Complete');
        if (ls.isEmpty) {
          return null;
        }
        final pendingActivity = ls.first;
        emit(state.copyWith(
            getActivitiesStatus: AppStatus.success,
            activities: s.value,
            attachLastPendingActivityToTheCall: pendingActivity.id));

        break;
      case (Error e):
        emit(state.copyWith(
            getActivitiesStatus: AppStatus.failure,
            getActivitiesError: e.exception));

        break;
    }
  }

  void setAttachLastPendingActivity(String? val) {
    emit(state.copyWith(attachLastPendingActivityToTheCall: val));
  }

  Future<List<Property>> getListings({String? search}) async {
    final result = await _agentRepo.getAgentProperties(
      agentId: getIt<AuthBloc>().state.agent?.id ?? '',
    );
    switch (result) {
      case (Success s):
        return s.value;
      case (Error e):
        return [];
    }
  }

  Future<void> addFollowUpActivity(
      {required BuildContext context, Map<String, dynamic>? values}) async {
    emit(state.copyWith(addActivityStatus: AppStatus.loading));
    final date = (values?["date"] as DateTime?)?.addTime(
        (values?["time"] as TimeOfDay? ?? TimeOfDay(hour: 0, minute: 0)));
    if (date == null || date.compareTo(DateTime.now()) == -1) {
      if (context.mounted) {
        showSnackbar(context, 'Choose a valid date time', SnackBarType.failure);
        return;
      }
    }
    final type = values?['type'];
    final propertyId = values?['property'];
    final description = values?["description"];
    final result = await _activityRepo.createActivity(
        leadId: state.lead!.id,
        type: type,
        date: date,
        description: description,
        propertyId: propertyId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addActivityStatus: AppStatus.success));

      case (Error e):
        emit(state.copyWith(addActivityStatus: AppStatus.failure));
    }
  }
}
