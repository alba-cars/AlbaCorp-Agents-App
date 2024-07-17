import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/list_state_cubit/list_state_cubit.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/building_model.dart';
import 'package:real_estate_app/model/community_model.dart';
import 'package:real_estate_app/model/community_team_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/lead_property_card_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/model/property_type_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

part 'leads_list_explorer_state.dart';
part 'leads_list_explorer_cubit.freezed.dart';

@injectable
class LeadsListExplorerCubit extends Cubit<LeadsListExplorerState> {
  LeadsListExplorerCubit(this._explorerRepo, this._listingsRepo)
      : super(LeadsListExplorerState()) {
    getPropertyTypes();
  }

  final ExplorerRepo _explorerRepo;
  final ListingsRepo _listingsRepo;

  Future<void> getLeadsExplorerList({
    bool refresh = false,
  }) async {
    if (refresh || state.explorerPaginator == null) {
      emit(state.copyWith(
          getExplorerListStatus: AppStatus.loading,
          explorerPaginator: null,
          explorerList: []));
    } else {
      if (state.getExplorerListStatus == AppStatus.loadingMore) {
        return;
      }
      emit(state.copyWith(getExplorerListStatus: AppStatus.loadingMore));
    }

    final result = await _explorerRepo.getLeadsWithPropertyCards(
        search: state.explorerSearch,
        filter: state.explorerFilter,
        showOnlyAvailable: state.showOnlyAvailable,
        paginator: state.explorerPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            explorerList: [...state.explorerList, ...s.value],
            getExplorerListStatus: AppStatus.success,
            explorerPaginator: s.paginator));
        break;
      case (Error e):
        emit(state.copyWith(
            getExplorerListStatus: AppStatus.failure,
            getExplorerListError: e.exception));
    }
  }

  Future<void> getCheckedOutExplorerList({
    bool refresh = false,
  }) async {
    if (refresh || state.checkedOutPaginator == null) {
      emit(state.copyWith(
          getCheckedOutExplorerListStatus: AppStatus.loading,
          checkedOutPaginator: null,
          checkedOutExplorerList: []));
    } else {
      if (state.getCheckedOutExplorerListStatus == AppStatus.loadingMore) {
        return;
      }
      emit(state.copyWith(
          getCheckedOutExplorerListStatus: AppStatus.loadingMore));
    }

    final result = await _explorerRepo.getCheckedOutPropertyCards(
        search: state.checkedOutSearch,
        filter: state.checkedOutFilter,
        paginator: state.checkedOutPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            checkedOutExplorerList: [
              ...state.checkedOutExplorerList,
              ...s.value
            ],
            getCheckedOutExplorerListStatus: AppStatus.success,
            checkedOutPaginator: s.paginator));
        break;
      case (Error e):
        emit(state.copyWith(
            getCheckedOutExplorerListStatus: AppStatus.failure,
            getCheckedOutExplorerListError: e.exception));
    }
  }

  void setShowOnlyAvailable(bool val) {
    emit(state.copyWith(showOnlyAvailable: val));
    getLeadsExplorerList(refresh: true);
  }

  void searchExplorer(String? search) {
    emit(state.copyWith(explorerSearch: search));
    getLeadsExplorerList(refresh: true);
  }

  void searchCheckedOut(String? search) {
    emit(state.copyWith(checkedOutSearch: search));
    getCheckedOutExplorerList(refresh: true);
  }

  void setExplorerFilter(Map<String, dynamic>? filter) {
    emit(state.copyWith(explorerFilter: filter));
    getLeadsExplorerList(refresh: true);
  }

  void setCheckedOutFilter(Map<String, dynamic>? filter) {
    emit(state.copyWith(checkedOutFilter: filter));
    getCheckedOutExplorerList(refresh: true);
  }

  void setSelectionModeEnabled(BuildContext context, LeadExplorerItem lead) {
    emit(
        state.copyWith(selectModeEnabled: true, selectedPropertyCards: [lead]));
  }

  void setSelectionModeDisabled() {
    emit(state.copyWith(selectModeEnabled: false, selectedPropertyCards: []));
  }

  void addToSelection(BuildContext context, LeadExplorerItem lead) {
    if (state.selectedPropertyCards.contains(lead)) {
      final list = List<LeadExplorerItem>.from(state.selectedPropertyCards)
        ..remove(lead.id);
      emit(state.copyWith(selectedPropertyCards: list));
      return;
    }
    emit(state.copyWith(
        selectedPropertyCards: [...state.selectedPropertyCards, lead]));
  }

  Future<void> checkInLead(
      {required BuildContext context, required PropertyCard card}) async {
    emit(state.copyWith(checkInLeadStatus: AppStatus.loading));
    final result = await _explorerRepo.checkInLead(propertyCardIds: [card.id]);
    switch (result) {
      case (Success s):
        final newList = List<PropertyCard>.from(state.checkedOutExplorerList)
          ..remove(card);
        emit(state.copyWith(
            checkInLeadStatus: AppStatus.success,
            checkedOutExplorerList: newList));
        if (context.mounted) {
          showSnackbar(
              context, 'Lead Checked In Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        getIt<ListStateCubit>().setChangedTaskListState();
        getIt<ListStateCubit>().setChangedLeadsListState();

        break;
      case (Error e):
        emit(state.copyWith(
            checkInLeadStatus: AppStatus.failure,
            checkInLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> checkOutLead(
      {required BuildContext context, required LeadExplorerItem lead}) async {
    emit(state.copyWith(checkOutLeadStatus: AppStatus.loading));
    final result = await _explorerRepo.checkOutLead(
      leadIds: [lead.id],
    );
    switch (result) {
      case (Success s):
        final newList = List<LeadExplorerItem>.from(state.explorerList);
        newList.remove(lead);
        emit(state.copyWith(
            checkOutLeadStatus: AppStatus.success, explorerList: newList));
        if (context.mounted) {
          showSnackbar(
              context, 'Lead Checked In Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        getIt<ListStateCubit>().setChangedTaskListState();
        getIt<ListStateCubit>().setChangedLeadsListState();
        break;
      case (Error e):
        emit(state.copyWith(
            checkOutLeadStatus: AppStatus.failure,
            checkOutLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> checkOutLeadInBulk({
    required BuildContext context,
  }) async {
    emit(state.copyWith(checkOutLeadStatus: AppStatus.loading));
    final result = await _explorerRepo.checkOutLead(
      leadIds: state.selectedPropertyCards.map((e) => e.id).toList(),
    );
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            checkOutLeadStatus: AppStatus.success,
            selectModeEnabled: false,
            selectedPropertyCards: []));
        getLeadsExplorerList(refresh: true);
        if (context.mounted) {
          showSnackbar(
              context, 'Leads Checked Out Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        getIt<ListStateCubit>().setChangedTaskListState();
        getIt<ListStateCubit>().setChangedLeadsListState();
        break;
      case (Error e):
        emit(state.copyWith(
            checkOutLeadStatus: AppStatus.failure,
            checkOutLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> randomCheckout(
      {required BuildContext context,
      required Map<String, dynamic> values}) async {
    emit(state.copyWith(randomLeadsAssignmentStatus: AppStatus.loading));
    final result = await _explorerRepo.randomLeadsAssignment(values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
          randomLeadsAssignmentStatus: AppStatus.success,
        ));
        if (context.mounted) {
          showSnackbar(context, 'Leads Randomly Checked In Successfully',
              SnackBarType.success);
          Navigator.of(context).pop();
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        break;
      case (Error e):
        emit(state.copyWith(
            randomLeadsAssignmentStatus: AppStatus.failure,
            randomLeadsAssignmentError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> setSelectedTab(int index) async {
    emit(state.copyWith(currentTab: index));
    if (index == 0) {
      getLeadsExplorerList();
    } else {
      getCheckedOutExplorerList();
    }
  }

  Future<List<Community>> getCommunities({String? search}) async {
    emit(state.copyWith(getCommunityListStatus: AppStatus.loadingMore));
    if (state.communityList.isNotEmpty && search != null) {
      return state.communityList
          .where((element) =>
              element.community.toLowerCase().contains(search.toLowerCase()))
          .toList();
    } else {
      final result = await _explorerRepo.getCommunityTeams(
          agentId: getIt<AuthBloc>().state.agent!.id);
      switch (result) {
        case (Success<List<CommunityTeamModel>> s):
          final List<Community> communities = s.value.fold(
              [],
              (v, b) => [
                    ...v,
                    ...b.communities
                        .map((e) => Community(id: e.id, community: e.community))
                  ]);
          emit(state.copyWith(
              communityList: communities,
              getCommunityListStatus: AppStatus.success));
          return communities;
        case (Error e):
          emit(state.copyWith(
            getCommunityListStatus: AppStatus.failure,
          ));
          return [];
      }
    }
  }

  Future<List<Building>> getBuildings({String? search}) async {
    emit(state.copyWith(getBuildingListStatus: AppStatus.loadingMore));
    if (state.buildingList.isNotEmpty && search != null) {
      return state.buildingList
          .where((element) =>
              element.name.toLowerCase().contains(search.toLowerCase()))
          .toList();
    } else {
      final result = await _listingsRepo.getBuildingNames(search: search);
      switch (result) {
        case (Success s):
          emit(state.copyWith(
              buildingList: s.value, getBuildingListStatus: AppStatus.success));
          return s.value;

        case (Error e):
          emit(state.copyWith(
            getBuildingListStatus: AppStatus.failure,
          ));
          return [];
      }
    }
  }

  Future<void> getPropertyTypes() async {
    emit(state.copyWith(getPropertyTypeListStatus: AppStatus.loadingMore));
    final result = await _listingsRepo.getPropertyTypes();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyTypeList: s.value,
            getPropertyTypeListStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
          getPropertyTypeListStatus: AppStatus.failure,
        ));
    }
  }
}
