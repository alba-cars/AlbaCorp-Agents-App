import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/agent_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/notification_repo.dart';
import 'package:real_estate_app/model/notification_model.dart';
import 'package:real_estate_app/util/date_formatter.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../model/lead_model.dart';
import '../../../model/property_model.dart';
import '../../../service_locator/injectable.dart';
import '../../../util/status.dart';

part 'add_followup_state.dart';
part 'add_followup_cubit.freezed.dart';

@injectable
class AddFollowupCubit extends Cubit<AddFollowupState> {
  AddFollowupCubit(this._leadRepo, this._activityRepo, this._agentRepo,
      @factoryParam this.leadId, this._notificationRepo)
      : super(AddFollowupState()) {
    // getLeadDetails(leadId);
    getPendingNotifications();
  }

  final LeadRepo _leadRepo;
  final ActivityRepo _activityRepo;
  final AgentRepo _agentRepo;
  final String leadId;
  final NotificationRepo _notificationRepo;

  Future<void> addFollowUpActivity(
      {required BuildContext context, Map<String, dynamic>? values}) async {
    emit(state.copyWith(addFollowupStatus: AppStatus.loading));
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
        emit(state.copyWith(addFollowupStatus: AppStatus.success));
        getIt<NotificationRepo>().updateNotification(
            notificationModel:
                state.notificationModel!.copyWith(requiresAction: false));

      case (Error e):
        emit(state.copyWith(addFollowupStatus: AppStatus.failure));
    }
  }

  Future<void> getLeadDetails(String leadId) async {
    emit(state.copyWith(getLeadStatus: AppStatus.loading));
    final result = await _leadRepo.getLead(leadId: leadId);
    switch (result) {
      case (Success<Lead> s):
        if (s.value.currentAgent == getIt<AuthBloc>().state.agent?.id) {
          emit(state.copyWith(getLeadStatus: AppStatus.success, lead: s.value));
          //ScaffoldMessenger.of(context).hideCurrentSnackBar();
        } else {
          emit(state.copyWith(getLeadStatus: AppStatus.success, lead: null));
        }
        break;
      case (Error e):
        emit(state.copyWith(
            getLeadStatus: AppStatus.failure, getLeadError: e.exception));

        break;
    }
  }

  Future<void> getPendingNotifications() async {
    final result = await _notificationRepo.getNotificationsWithActionsPending();
    switch (result) {
      case (Success<List<NotificationModel>> s):
        if (s.value.isNotEmpty && s.value.first.leadId != null) {
          emit(state.copyWith(notificationModel: s.value.first));
          getLeadDetails(s.value.first.leadId!);
        }
        break;
      case (Error _):
        break;
    }
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
}
