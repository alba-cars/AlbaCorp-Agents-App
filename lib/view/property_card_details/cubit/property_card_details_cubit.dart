import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/explorer_repo.dart';
import 'package:real_estate_app/model/property_card_log_model.dart';
import 'package:real_estate_app/model/property_card_model.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../model/lead_property_card_model.dart';
import '../../../model/property_card_details_model.dart';
import '../../../util/result.dart';

part 'property_card_details_state.dart';
part 'property_card_details_cubit.freezed.dart';

@injectable
class PropertyCardDetailsCubit extends Cubit<PropertyCardDetailsState> {
  PropertyCardDetailsCubit(
      @factoryParam String propertyCardId, this._explorerRepo)
      : super(PropertyCardDetailsState(propertyCardId: propertyCardId)) {
    Future.wait([
      getPropertyCard(),
      getPropertyCardLeads(),
      getPropertyCardLogs(),
    ]);
  }

  final ExplorerRepo _explorerRepo;

  Future<void> getPropertyCard() async {
    emit(state.copyWith(getPropertyCardStatus: Status.loading));
    final result = await _explorerRepo.getPropertyCard(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCard: s.value, getPropertyCardStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardStatus: Status.failure,
            getPropertyCardError: e.exception));
    }
  }

  Future<void> getPropertyCardLeads() async {
    emit(state.copyWith(getPropertyCardLeadsStatus: Status.loading));
    final result = await _explorerRepo.getPropertyCardLeads(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardLeads: s.value,
            getPropertyCardLeadsStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardLeadsStatus: Status.failure,
            getPropertyCardLeadsError: e.exception));
    }
  }

  Future<void> getPropertyCardLogs() async {
    emit(state.copyWith(getPropertyCardLogsStatus: Status.loading));
    final result = await _explorerRepo.getPropertyCardLogs(
        propertyCardId: state.propertyCardId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyCardLogs: s.value,
            getPropertyCardLogsStatus: Status.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getPropertyCardLogsStatus: Status.failure,
            getPropertyCardLogsError: e.exception));
    }
  }
}
