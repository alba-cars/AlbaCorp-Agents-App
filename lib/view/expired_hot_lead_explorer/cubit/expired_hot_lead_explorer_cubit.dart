import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/lead_expiration_model.dart';
import 'package:real_estate_app/model/lead_source_category_model.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../model/paginator.dart';
import '../../../model/property_card_model.dart';
import '../../../service_locator/injectable.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';
import '../../../widgets/snackbar.dart';

part 'expired_hot_lead_explorer_state.dart';
part 'expired_hot_lead_explorer_cubit.freezed.dart';


@injectable
class ExpiredHotLeadExplorerCubit extends Cubit<ExpiredHotLeadExplorerState> {
  ExpiredHotLeadExplorerCubit(this._explorerRepo, this._leadRepo) : super(ExpiredHotLeadExplorerState()){
    getExpiredHotLeads();
    getLeadSourceCtegories();
  }

  final ExplorerRepo _explorerRepo;
  final LeadRepo _leadRepo;

   Future<void> getExpiredHotLeads({
    bool refresh = false,
  }) async {
    if(state.getExpiredHotLeadStatus == AppStatus.loading){
      return;
    }
    if (refresh || state.expiredHotLeadsPaginator == null) {
      emit(state.copyWith(
          getExpiredHotLeadStatus: AppStatus.loading,
          expiredHotLeadsPaginator: null,
          expiredHotLeads: []));
    } else {
      emit(state.copyWith(getExpiredHotLeadStatus: AppStatus.loading));
    }
    final result = await _explorerRepo.getHotExplorerLeads(leadSourceFilter: state.selectedLeadSources.map((e)=>e.name).toList(),
        paginator: state.expiredHotLeadsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            expiredHotLeads: [...state.expiredHotLeads, ...s.value],
            getExpiredHotLeadStatus: AppStatus.success,
            expiredHotLeadsPaginator: s.paginator));
        break;
      case (Error e):
        emit(state.copyWith(
            getExpiredHotLeadStatus: AppStatus.failure,
            getExpiredHotLeadError: e.exception));
    }
  }

  Future<void> checkOutLead(
      {required BuildContext context, required LeadExpirationModel card}) async {
    emit(state.copyWith(assignLeadStatus: AppStatus.loading));
    final result = await _explorerRepo.checkOutLead(leadIds: [card.lastExpirationRecord.lead.id],source: "hot-leads-explorer");
    switch (result) {
      case (Success s):
        final newList = List<LeadExpirationModel>.from(state.expiredHotLeads);
        newList.remove(card);
        emit(state.copyWith(
            assignLeadStatus: AppStatus.success, expiredHotLeads: newList));
        if (context.mounted) {
          showSnackbar(
              context, 'Lead assignrd Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        break;
      case (Error e):
        emit(state.copyWith(
            assignLeadStatus: AppStatus.failure,
            assignLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> getLeadSourceCtegories() async {
  
    final result = await _leadRepo.getLeadSourceCategories();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            leadSourceCategories: s.value,
            getLeadSourceCategories: AppStatus.success,));
        break;
      case (Error _):
        emit(state.copyWith(
            getLeadSourceCategories: AppStatus.failure,
            ));
    }
  }

  Future<void> selectedLeadSources(List<LeadSourceItem>? leadSourceItems) async {
    emit(state.copyWith(selectedLeadSources: leadSourceItems??[] ));
    getExpiredHotLeads(refresh: true);
  }
  Future<void> removeFromSelectedLeadSources(LeadSourceItem leadSourceItem) async {
    final leadSources = List<LeadSourceItem>.from(state.selectedLeadSources);
    leadSources.remove(leadSourceItem);
    emit(state.copyWith(selectedLeadSources: leadSources ));
    getExpiredHotLeads(refresh: true);
  }


}
