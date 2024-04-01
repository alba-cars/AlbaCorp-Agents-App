import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
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
  ExplorerScreenCubit(this._explorerRepo, this._listingsRepo)
      : super(ExplorerScreenState()) {
    getPropertyTypes();
  }
  final ExplorerRepo _explorerRepo;
  final ListingsRepo _listingsRepo;

  Future<void> getExplorerList({
    bool refresh = false,
  }) async {
    if (refresh || state.explorerPaginator == null) {
      emit(state.copyWith(
          getExplorerListStatus: Status.loading,
          explorerPaginator: null,
          explorerList: []));
    } else {
      if (state.getExplorerListStatus == Status.loadingMore) {
        return;
      }
      emit(state.copyWith(getExplorerListStatus: Status.loadingMore));
    }

    final result = await _explorerRepo.getPropertyCards(
        search: state.explorerSearch,
        filter: state.explorerFilter,
        paginator: state.explorerPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            explorerList: [...state.explorerList, ...s.value],
            getExplorerListStatus: Status.success,
            explorerPaginator: s.paginator));
        break;
      case (Error e):
        emit(state.copyWith(
            getExplorerListStatus: Status.failure,
            getExplorerListError: e.exception));
    }
  }

  Future<void> getCheckedOutExplorerList({
    bool refresh = false,
  }) async {
    if (refresh || state.checkedOutPaginator == null) {
      emit(state.copyWith(
          getCheckedOutExplorerListStatus: Status.loading,
          checkedOutPaginator: null,
          checkedOutExplorerList: []));
    } else {
      if (state.getCheckedOutExplorerListStatus == Status.loadingMore) {
        return;
      }
      emit(state.copyWith(getCheckedOutExplorerListStatus: Status.loadingMore));
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
            getCheckedOutExplorerListStatus: Status.success,
            checkedOutPaginator: s.paginator));
        break;
      case (Error e):
        emit(state.copyWith(
            getCheckedOutExplorerListStatus: Status.failure,
            getCheckedOutExplorerListError: e.exception));
    }
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

  Future<void> checkInLead(
      {required BuildContext context, required PropertyCard card}) async {
    emit(state.copyWith(checkInLeadStatus: Status.loading));
    final result = await _explorerRepo.checkInLead(propertyCardIds: [card.id]);
    switch (result) {
      case (Success s):
        final newList = List<PropertyCard>.from(state.checkedOutExplorerList)
          ..remove(card);
        emit(state.copyWith(
            checkInLeadStatus: Status.success,
            checkedOutExplorerList: newList));
        if (context.mounted) {
          showSnackbar(
              context, 'Lead Checked In Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());

        break;
      case (Error e):
        emit(state.copyWith(
            checkInLeadStatus: Status.failure, checkInLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> checkOutLead(
      {required BuildContext context, required PropertyCard card}) async {
    emit(state.copyWith(checkOutLeadStatus: Status.loading));
    final result = await _explorerRepo.checkOutLead(propertyCardIds: [card.id]);
    switch (result) {
      case (Success s):
        final newList = List<PropertyCard>.from(state.explorerList);
        final index = newList.indexOf(card);
        newList.remove(card);
        newList.insert(index, card.copyWith(availableForCheckout: false));
        emit(state.copyWith(
            checkOutLeadStatus: Status.success, explorerList: newList));
        if (context.mounted) {
          showSnackbar(
              context, 'Lead Checked In Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        break;
      case (Error e):
        emit(state.copyWith(
            checkOutLeadStatus: Status.failure,
            checkOutLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> checkOutLeadInBulk({
    required BuildContext context,
  }) async {
    emit(state.copyWith(checkOutLeadStatus: Status.loading));
    final result = await _explorerRepo.checkOutLead(
        propertyCardIds: state.selectedPropertyCards);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            checkOutLeadStatus: Status.success,
            selectModeEnabled: false,
            selectedPropertyCards: []));
        getExplorerList(refresh: true);
        if (context.mounted) {
          showSnackbar(
              context, 'Leads Checked Out Successfully', SnackBarType.success);
        }
        getIt<AuthBloc>().add(AuthEvent.refreshAgentData());
        break;
      case (Error e):
        emit(state.copyWith(
            checkOutLeadStatus: Status.failure,
            checkOutLeadError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> randomCheckout(
      {required BuildContext context,
      required Map<String, dynamic> values}) async {
    emit(state.copyWith(randomLeadsAssignmentStatus: Status.loading));
    final result = await _explorerRepo.randomLeadsAssignment(values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
          randomLeadsAssignmentStatus: Status.success,
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
            randomLeadsAssignmentStatus: Status.failure,
            randomLeadsAssignmentError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
    }
  }

  Future<void> setSelectedTab(int index) async {
    emit(state.copyWith(currentTab: index));
    if (index == 0) {
      getExplorerList();
    } else {
      getCheckedOutExplorerList();
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

  Future<List<Building>> getBuildings({String? search}) async {
    emit(state.copyWith(getBuildingListStatus: Status.loadingMore));
    final result = await _listingsRepo.getBuildingNames(search: search);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            buildingList: s.value, getBuildingListStatus: Status.success));
        return s.value;

      case (Error e):
        emit(state.copyWith(
          getBuildingListStatus: Status.failure,
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
}
