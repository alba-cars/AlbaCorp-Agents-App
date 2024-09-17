import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/agent_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/date_formatter.dart';
import 'package:real_estate_app/util/result.dart';

import '../../../util/status.dart';

part 'add_task_state.dart';
part 'add_task_cubit.freezed.dart';

@injectable
class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit(this._activityRepo, this._listingsRepo, this._agentRepo,
      @factoryParam this.leadId)
      : super(AddTaskState());

  final ActivityRepo _activityRepo;
  final ListingsRepo _listingsRepo;
  final AgentRepo _agentRepo;
  final String leadId;

  Future<void> addActivity({
    required BuildContext context,
    required String type,
    DateTime? date,
    TimeOfDay? time,
    String? propertyId,
    String? description,
  }) async {
    final dated = date?.addTime((time ?? TimeOfDay(hour: 0, minute: 0)));
    final result = await _activityRepo.createActivity(
        leadId: leadId,
        type: type,
        date: dated,
        description: description,
        propertyId: propertyId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addLeadStatus: AppStatus.success));

      case (Error e):
        emit(state.copyWith(
            addLeadError: e.exception, addLeadStatus: AppStatus.failure));
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
