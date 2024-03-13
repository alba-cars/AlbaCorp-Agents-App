import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

part 'explorer_screen_state.dart';
part 'explorer_screen_cubit.freezed.dart';

@injectable
class ExplorerScreenCubit extends Cubit<ExplorerScreenState> {
  ExplorerScreenCubit(this._explorerRepo) : super(ExplorerScreenState());
  final ExplorerRepo _explorerRepo;

  Future<void> getExplorerList({bool refresh = false}) async {
    final result = await _explorerRepo.getPropertyCards();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            explorerList: s.value, getExplorerListStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getExplorerListStatus: Status.failure,
            getExplorerListError: e.exception));
    }
  }

  Future<void> getCheckedOutExplorerList({bool refresh = false}) async {
    emit(state.copyWith(getCheckedOutExplorerListStatus: Status.loading));
    final result = await _explorerRepo.getCheckedOutPropertyCards();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            checkedOutExplorerList: s.value,
            getCheckedOutExplorerListStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getCheckedOutExplorerListStatus: Status.failure,
            getCheckedOutExplorerListError: e.exception));
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

  Future<void> setSelectedTab(int index) async {
    emit(state.copyWith(currentTab: index));
    if (index == 0) {
      getExplorerList();
    } else {
      getCheckedOutExplorerList();
    }
  }
}
