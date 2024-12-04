import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/constants/hot_leads.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/linkus_repo.dart';
import 'package:real_estate_app/model/lead_model.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../app/list_state_cubit/list_state_cubit.dart';
import '../../../model/paginator.dart';
import '../../../model/property_card_model.dart';
import '../../../service_locator/injectable.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';
import '../../../widgets/snackbar.dart';

part 'leads_state.dart';
part 'leads_cubit.freezed.dart';

@injectable
class LeadsCubit extends Cubit<LeadsState> {
  LeadsCubit(this._leadRepo, this._linkusRepo, this._explorerRepo)
      : super(LeadsState());

  final LeadRepo _leadRepo;
  final LinkusRepo _linkusRepo;
  final ExplorerRepo _explorerRepo;

  Future<void> getLeads({bool refresh = false}) async {
    if (refresh || state.leadsPaginator == null) {
      emit(state.copyWith(
          getLeadsStatus: AppStatus.loading, leadsPaginator: null, leads: []));
    } else {
      emit(state.copyWith(getLeadsStatus: AppStatus.loadingMore));
    }

    final result = await _leadRepo.getLeads(
        search: state.leadsSearch,
        filter: {
          ...(state.leadsFilter ?? {}),
          ...(state.quickFilter?.value ?? {}),
          'sort_dir': state.sortDir == 1 ? 'ASC' : 'DESC'
        },
        paginator: state.leadsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            leads: [...state.leads, ...s.value],
            leadsPaginator: s.paginator,
            getLeadsStatus: AppStatus.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getLeadsStatus: AppStatus.failure, getLeadsError: e.exception));
    }
  }

  void searchLeads(String? search) {
    emit(state.copyWith(leadsSearch: search));
    getLeads(refresh: true);
  }

  void setLeadFilters(Map<String, dynamic>? filter) {
    emit(state.copyWith(leadsFilter: filter));
    getLeads(refresh: true);
  }

  void setQuickFilter(String? filter) {
    switch (filter) {
      case 'New':
        emit(state.copyWith(
            leadsFilter: null,
            quickFilter:
                QuickFilter(value: {'newLeads': true}, filter: filter!)));
        break;

      case 'Hot':
        emit(state.copyWith(
            leadsFilter: null,
            quickFilter: QuickFilter(
                value: {'lead_source': hotLeads}, filter: filter!)));
        break;
      case 'Fresh':
        emit(state.copyWith(
            leadsFilter: null,
            quickFilter:
                QuickFilter(value: {'lead_status': 'Fresh'}, filter: filter!)));
        break;
      case 'Prospect':
        emit(state.copyWith(
            leadsFilter: null,
            quickFilter: QuickFilter(
                value: {'lead_status': 'Prospect'}, filter: filter!)));
        break;
      case 'Hot & Fresh':
        emit(state.copyWith(
            leadsFilter: null,
            quickFilter: QuickFilter(
                value: {'lead_status': 'Fresh', 'lead_source_type': 'hot'},
                filter: filter!)));
        break;
      case 'Client with deals':
        emit(state.copyWith(
            leadsFilter: null,
            quickFilter:
                QuickFilter(value: {'with_deals': "true"}, filter: filter!)));
        break;
      case 'Recent':
        emit(state.copyWith(
            leadsFilter: null,
            quickFilter: QuickFilter(value: {
              'sort_by': 'createdAt',
              "sort_dir": 'DESC',
              "from_date": DateTime.now().subtract(Duration(days: 7)),
              "to_date": DateTime.now()
            }, filter: filter!)));
        break;
      default:
        emit(state.copyWith(leadsFilter: {}, quickFilter: null));
    }
    getLeads(refresh: true);
  }

  Future<void> makeACall(Lead lead) async {
    await _linkusRepo.makeACall(number: lead.phone!);
  }

  void setSortDir() {
    emit(state.copyWith(sortDir: -1 * state.sortDir));
    getLeads(refresh: true);
  }

  void setSelectionModeDisabled() {
    emit(state.copyWith(selectModeEnabled: false, selectedLeads: []));
  }

  void addToSelection(BuildContext context, Lead lead) {
    if (state.selectedLeads.contains(lead.id)) {
      final list = List<String>.from(state.selectedLeads)..remove(lead.id);
      emit(state.copyWith(selectedLeads: list));
      return;
    }
    emit(state.copyWith(selectedLeads: [...state.selectedLeads, lead.id]));
  }

  void addMultipleToSelection(BuildContext context, List<Lead> leads) {
    emit(state.copyWith(selectModeEnabled: true, selectedLeads: [
      ...(leads.map((e) => e.id).toList()),
    ]));
  }

  void setSelectionModeEnabled(BuildContext context, Lead lead) {
    emit(state.copyWith(selectModeEnabled: true, selectedLeads: [lead.id]));
  }

  Future<void> returnLeadInBulk(
      {required BuildContext context,
      List<String> selectedLeads = const []}) async {
    emit(state.copyWith(returnLeadsStatus: AppStatus.loading));
    final result = await _explorerRepo.checkInLeads(
        leads: selectedLeads.isNotEmpty ? selectedLeads : state.selectedLeads);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            returnLeadsStatus: AppStatus.success,
            selectModeEnabled: false,
            selectedLeads: []));
        getLeads(refresh: true);
        if (context.mounted) {
          showSnackbar(
              context, 'Leads Returned Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        getIt<ListStateCubit>().setChangedTaskListState();
        getIt<ListStateCubit>().setChangedLeadsListState();
        break;
      case (Error e):
        emit(state.copyWith(
            returnLeadsStatus: AppStatus.failure,
            returnLeadsError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> returnLeadInBulkFromDialog(
      {required BuildContext context, required List<String> leads}) async {
    emit(state.copyWith(returnLeadsStatus: AppStatus.loading));
    Logger().d(leads);
    final result = await _explorerRepo.checkInLeads(leads: leads);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            returnLeadsStatus: AppStatus.success,
            selectModeEnabled: false,
            selectedLeads: []));
        getLeads(refresh: true);
        if (context.mounted) {
          showSnackbar(
              context, 'Leads Returned Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        getIt<ListStateCubit>().setChangedTaskListState();
        getIt<ListStateCubit>().setChangedLeadsListState();
        break;
      case (Error e):
        emit(state.copyWith(
            returnLeadsStatus: AppStatus.failure,
            returnLeadsError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }
}

class QuickFilter {
  final Map<String, dynamic> value;
  final String filter;

  QuickFilter({required this.value, required this.filter});
}
