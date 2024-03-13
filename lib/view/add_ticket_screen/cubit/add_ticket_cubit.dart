import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/agent_repo.dart';
import 'package:real_estate_app/data/repository/deals_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/data/repository/ticket_repo.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/department_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/property_model.dart';
import 'package:real_estate_app/model/property_type_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../model/community_model.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';

part 'add_ticket_state.dart';
part 'add_ticket_cubit.freezed.dart';

@injectable
class AddTicketCubit extends Cubit<AddTicketState> {
  AddTicketCubit(this._ticketRepo, this._dealsRepo, this._leadRepo,
      this._listingsRepo, this._agentRepo)
      : super(AddTicketState()) {
    getAgentProperties();
    getDepartments();
    getPropertyTypes();
    getCommunities();
  }
  final TicketRepo _ticketRepo;
  final DealsRepo _dealsRepo;
  final LeadRepo _leadRepo;
  final ListingsRepo _listingsRepo;
  final AgentRepo _agentRepo;

  Future<void> getAgentProperties() async {
    emit(state.copyWith(
      getPropertiesStatus: Status.loadingMore,
    ));

    final result = await _agentRepo.getAgentProperties(
        agentId: getIt<AuthBloc>().state.agent?.id ?? '');
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            properties: s.value, getPropertiesStatus: Status.success));

      case (Error e):
        emit(state.copyWith(
          getPropertiesStatus: Status.failure,
        ));
    }
  }

  Future<List<Lead>> getAgentLeads(String? search) async {
    emit(state.copyWith(
      getLeadsStatus: Status.loadingMore,
    ));

    final result = await _leadRepo.getLeads(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(leads: s.value, getLeadsStatus: Status.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getLeadsStatus: Status.failure,
        ));
        return [];
    }
  }

  Future<List<Deal>> getAgentDeals(String search) async {
    emit(state.copyWith(
      getDealsStatus: Status.loading,
    ));

    final result = await _dealsRepo.getDeals(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(deals: s.value, getDealsStatus: Status.success));
        return s.value;

      case (Error e):
        emit(state.copyWith(
          getDealsStatus: Status.failure,
        ));
        return [];
    }
  }

  Future<List<Department>> getDepartments() async {
    emit(state.copyWith(
      getDepartmentsStatus: Status.loading,
    ));

    final result = await _ticketRepo.getDepartments();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            departments: s.value, getDepartmentsStatus: Status.success));
        return s.value;

      case (Error e):
        emit(state.copyWith(
          getDepartmentsStatus: Status.failure,
        ));
        return [];
    }
  }

  Future<List<Community>> getCommunities({String? search}) async {
    emit(state.copyWith(getCommunityListStatus: Status.loadingMore));
    final result = await _listingsRepo.getCommunities(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            communityList: s.value, getCommunityListStatus: Status.success));
        return s.value;
      case (Error e):
        emit(state.copyWith(
          getCommunityListStatus: Status.failure,
        ));
        return [];
    }
  }

  Future<void> getPropertyTypes() async {
    emit(state.copyWith(getPropertyTypeListStatus: Status.loadingMore));
    final result = await _listingsRepo.getPropertyTypes();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyTypeList: s.value,
            getPropertyTypeListStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
          getPropertyTypeListStatus: Status.failure,
        ));
    }
  }

  Future<void> addTicket(
      {required GlobalKey<FormBuilderState> formKey,
      required BuildContext context}) async {
    final val = formKey.currentState?.saveAndValidate();
    if (val == true) {
      final value = formKey.currentState!.value;
      Logger().d(value);
      emit(state.copyWith(
        addTicketStatus: Status.loading,
      ));
      final result = await _ticketRepo.addTicket(values: value);
      switch (result) {
        case (Success s):
          emit(state.copyWith(addTicketStatus: Status.success));
          if (context.mounted) {
            showSnackbar(
                context, 'Ticket Added Successfully', SnackBarType.success);
            context.pop(s.value);
          }
        case (Error e):
          emit(state.copyWith(
              addTicketStatus: Status.failure, addTicketError: e.exception));
          if (context.mounted) {
            showSnackbar(context, e.exception, SnackBarType.success);
          }
      }
    }
  }
}
