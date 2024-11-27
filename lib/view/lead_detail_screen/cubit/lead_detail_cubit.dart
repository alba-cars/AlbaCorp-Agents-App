import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../model/activity_model.dart';
import '../../../model/paginator.dart';
import '../../../util/result.dart';

part 'lead_detail_state.dart';
part 'lead_detail_cubit.freezed.dart';

@injectable
class LeadDetailCubit extends Cubit<LeadDetailState> {
  LeadDetailCubit(
      this._leadRepo, @factoryParam String leadId, this._explorerRepo)
      : super(LeadDetailState(leadId: leadId));

  final LeadRepo _leadRepo;
  final ExplorerRepo _explorerRepo;

  Future<void> getLeadDetails() async {
    emit(state.copyWith(getLeadStatus: AppStatus.loading));
    final result = await _leadRepo.getLead(leadId: state.leadId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(getLeadStatus: AppStatus.success, lead: s.value));
        Future.wait([getLeadActivities(), getLeadPropertyCards()]);
        break;
      case (Error e):
        emit(state.copyWith(
            getLeadStatus: AppStatus.failure, getLeadError: e.exception));

        break;
    }
  }

  Future<void> getLeadActivities() async {
    emit(state.copyWith(getActivitiesStatus: AppStatus.loading));
    final result = await _leadRepo.getLeadActivities(leadId: state.leadId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            getActivitiesStatus: AppStatus.success, activities: s.value));

        break;
      case (Error e):
        emit(state.copyWith(
            getActivitiesStatus: AppStatus.failure,
            getActivitiesError: e.exception));

        break;
    }
  }

  Future<void> getLeadDeals() async {
    emit(state.copyWith(getDealsStatus: AppStatus.loading));
    final result = await _leadRepo.getLeadDeals(leadId: state.leadId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(getDealsStatus: AppStatus.success, deals: s.value));

        break;
      case (Error e):
        emit(state.copyWith(
            getDealsStatus: AppStatus.failure, getDealsError: e.exception));

        break;
    }
  }

  Future<bool> updateLead(Map<String, dynamic> value) async {
    emit(state.copyWith(updateLeadStatus: AppStatus.loading));

    final Map<String, dynamic> values = {};
    for (final val in value.entries) {
      if (val.value?.toString().isEmpty == false) {
        values.addEntries([val]);
      }
    }

    final result =
        await _leadRepo.updateLead(leadId: state.leadId, value: values);
    switch (result) {
      case (Success s):
        emit(
            state.copyWith(updateLeadStatus: AppStatus.success, lead: s.value));
        return true;

      case (Error e):
        emit(state.copyWith(
            updateLeadStatus: AppStatus.failure, updateLeadError: e.exception));
        return false;
    }
  }

  Future<bool> removeProspect() async {
    emit(state.copyWith(updateLeadStatus: AppStatus.loading));

    final result = await _leadRepo.removeProspect(
      leadId: state.leadId,
    );
    switch (result) {
      case (Success s):
        emit(
            state.copyWith(updateLeadStatus: AppStatus.success, lead: s.value));
        return true;

      case (Error e):
        emit(state.copyWith(
            updateLeadStatus: AppStatus.failure, updateLeadError: e.exception));
        return false;
    }
  }

  Future<void> getLeadPropertyCards(
      {bool refresh = false, Paginator? paginator}) async {
    Logger().d("Paginator ${paginator?.currentPage ?? 0}");
    if (refresh || paginator == null) {
      emit(state.copyWith(
          getPropertyCardsListStatus: AppStatus.loading,
          propertyCardsList: []));
    } else {
      if (state.getPropertyCardsListStatus == AppStatus.loadingMore) {
        return;
      }
      emit(state.copyWith(
          getPropertyCardsListStatus: AppStatus.loadingMore,
          propertyCardPaginator: paginator));
    }

    final result = await _explorerRepo.getLeadPropertyCards(
        leadId: state.leadId, paginator: paginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardsList: [...state.propertyCardsList, ...s.value],
            getPropertyCardsListStatus: AppStatus.success,
            propertyCardPaginator: s.paginator));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardsListStatus: AppStatus.failure,
            getPropertyCardsListError: e.exception));
    }
  }

  Future<void> unLinkLeadFromPropertyCard({required String leadCardId}) async {
    emit(state.copyWith(updatePropertyCardStatus: AppStatus.loading));
    final result =
        await _explorerRepo.unLinkPropertyFromLead(leadCardId: leadCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(updatePropertyCardStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            updatePropertyCardStatus: AppStatus.failure,
            updatePropertyCardError: e.exception));
    }
  }
}
