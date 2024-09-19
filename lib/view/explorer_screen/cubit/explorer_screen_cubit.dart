import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/app/list_state_cubit/list_state_cubit.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/community_team_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../model/building_model.dart';
import '../../../model/community_model.dart';
import '../../../model/paginator.dart';
import '../../../model/property_type_model.dart';

part 'explorer_screen_state.dart';
part 'explorer_screen_cubit.freezed.dart';

@injectable
class ExplorerScreenCubit extends Cubit<ExplorerScreenState> {
  ExplorerScreenCubit(
      this._explorerRepo, this._listingsRepo, @factoryParam int? tab)
      : super(ExplorerScreenState(currentTab: tab ?? 0)) {
    getPropertyTypes();
  }
  final ExplorerRepo _explorerRepo;
  final ListingsRepo _listingsRepo;

  Future<void> getExplorerList({
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

    final result = await _explorerRepo.getPropertyCards(
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
      if (state.getCheckedOutExplorerListStatus == AppStatus.loading) {
        return;
      }
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
      case (Success<List<PropertyCard>> s):
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
    getExplorerList(refresh: true);
  }

  void searchExplorer(String? search) {
    emit(state.copyWith(explorerSearch: search));
    getExplorerList(refresh: true);
  }

  void searchCheckedOut(String? search) {
    emit(state.copyWith(checkedOutSearch: search));
    getCheckedOutExplorerList(refresh: true);
  }

  void setExplorerFilter(Map<String, dynamic>? filter) {
    emit(state.copyWith(explorerFilter: filter));
    getExplorerList(refresh: true);
  }

  void setCheckedOutFilter(Map<String, dynamic>? filter) {
    emit(state.copyWith(checkedOutFilter: filter));
    getCheckedOutExplorerList(refresh: true);
  }

  void setSelectionModeEnabled(BuildContext context, PropertyCard card) {
    if (card.availableForCheckout && card.currentAgent == null) {
      emit(state
          .copyWith(selectModeEnabled: true, selectedPropertyCards: [card.id]));
    } else {
      emit(state.copyWith(
        selectModeEnabled: true,
      ));
      if (context.mounted) {
        showSnackbar(
            context,
            'You can\'t assign this card, Please choose another',
            SnackBarType.info);
      }
    }
  }

  void setSelectionModeEnabledForReturn(
      BuildContext context, PropertyCard card) {
    emit(state
        .copyWith(selectModeEnabled: true, selectedPropertyCards: [card.id]));
  }

  void setSelectionModeDisabled() {
    emit(state.copyWith(selectModeEnabled: false, selectedPropertyCards: []));
  }

  void addToSelection(BuildContext context, PropertyCard card) {
    if (card.availableForCheckout && card.currentAgent == null) {
      if (state.selectedPropertyCards.contains(card.id)) {
        final list = List<String>.from(state.selectedPropertyCards)
          ..remove(card.id);
        emit(state.copyWith(selectedPropertyCards: list));
        return;
      }
      emit(state.copyWith(
          selectedPropertyCards: [...state.selectedPropertyCards, card.id]));
    } else {
      if (context.mounted) {
        showSnackbar(
            context,
            'You can\'t assign this card, Please choose another',
            SnackBarType.info);
      }
    }
  }

  void addToSelectionReturn(BuildContext context, PropertyCard card) {
    if (state.selectedPropertyCards.contains(card.id)) {
      final list = List<String>.from(state.selectedPropertyCards)
        ..remove(card.id);
      emit(state.copyWith(selectedPropertyCards: list));
      return;
    }
    emit(state.copyWith(
        selectedPropertyCards: [...state.selectedPropertyCards, card.id]));
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
              context, 'Lead returned Successfully', SnackBarType.success);
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
      {required BuildContext context, required PropertyCard card}) async {
    emit(state.copyWith(checkOutLeadStatus: AppStatus.loading));
    final result = await _explorerRepo.checkOutLead(propertyCardIds: [card.id]);
    switch (result) {
      case (Success s):
        final newList = List<PropertyCard>.from(state.explorerList);
        newList.remove(card);
        emit(state.copyWith(
            checkOutLeadStatus: AppStatus.success, explorerList: newList));
        if (context.mounted) {
          showSnackbar(
              context, 'Lead assignrd Successfully', SnackBarType.success);
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
        propertyCardIds: state.selectedPropertyCards);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            checkOutLeadStatus: AppStatus.success,
            selectModeEnabled: false,
            selectedPropertyCards: []));
        getExplorerList(refresh: true);
        if (context.mounted) {
          showSnackbar(
              context, 'Leads assigned Successfully', SnackBarType.success);
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

  Future<void> returnLeadInBulk({
    required BuildContext context,
  }) async {
    emit(state.copyWith(checkInLeadStatus: AppStatus.loading));
    final result = await _explorerRepo.checkInLead(
        propertyCardIds: state.selectedPropertyCards);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            checkInLeadStatus: AppStatus.success,
            selectModeEnabled: false,
            selectedPropertyCards: []));
        getCheckedOutExplorerList(refresh: true);
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
            checkInLeadStatus: AppStatus.failure,
            checkInLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> randomCheckout(
      {required BuildContext context, required int numberOfLeads}) async {
    emit(state.copyWith(randomLeadsAssignmentStatus: AppStatus.loading));
    final result = await _explorerRepo.randomLeadsAssignment(
        numberOfLeads: numberOfLeads, values: state.explorerFilter ?? {});
    switch (result) {
      case (Success s):
        emit(state.copyWith(
          randomLeadsAssignmentStatus: AppStatus.success,
        ));
        if (context.mounted) {
          showSnackbar(context, 'Leads Randomly assigned Successfully',
              SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        getIt<ListStateCubit>().setChangedTaskListState();
        getIt<ListStateCubit>().setChangedLeadsListState();
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
    emit(state.copyWith(
        currentTab: index,
        selectModeEnabled: false,
        selectedPropertyCards: []));
    if (index == 0) {
      getExplorerList();
    } else {
      getCheckedOutExplorerList();
    }
  }

  Future<List<CommunityTeamModel>> getCommunities({String? search}) async {
    emit(state.copyWith(getCommunityListStatus: AppStatus.loadingMore));
    if (state.communityList.isNotEmpty && search != null) {
      return state.communityList
          .where((e) => e.teamName.contains(search))
          .toList();
    } else {
      final result = await _explorerRepo.getCommunityTeams(
          agentId: getIt<AuthBloc>().state.agent!.id);
      switch (result) {
        case (Success<List<CommunityTeamModel>> s):
          emit(state.copyWith(
              communityList:
                  s.value.where((e) => e.communities.isNotEmpty).toList(),
              getCommunityListStatus: AppStatus.success));
          return s.value;
        case (Error e):
          emit(state.copyWith(
            getCommunityListStatus: AppStatus.failure,
          ));
          return [];
      }
    }
  }

  Future<List<Building>> getBuildings(
      {String? search, List<String>? community,bool refresh = false}) async {
    emit(state.copyWith(getBuildingListStatus: AppStatus.loadingMore));
    if(refresh){
      emit(state.copyWith(buildingsPaginator: null));
    }

    final result = await _listingsRepo.getBuildingNames(
        search: search, communityId: community,paginator: refresh?null:state.buildingsPaginator);
    switch (result) {
      case (Success s):
      final List<Building> buildings =refresh? s.value:[...state.buildingList,...s.value];
        emit(state.copyWith(
            buildingList:buildings, getBuildingListStatus: AppStatus.success,buildingsPaginator: s.paginator));
        return buildings;

      case (Error e):
        emit(state.copyWith(
          getBuildingListStatus: AppStatus.failure,
        ));
        return [];
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
