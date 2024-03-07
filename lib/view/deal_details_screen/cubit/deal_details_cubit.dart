import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/listings_repo.dart';
import 'package:real_estate_app/model/deal_document_model.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../data/repository/deals_repo.dart';
import '../../../model/property_type_model.dart';

part 'deal_details_state.dart';
part 'deal_details_cubit.freezed.dart';

@injectable
class DealDetailsCubit extends Cubit<DealDetailsState> {
  DealDetailsCubit(this._dealRepo, this._listingsRepo, this._leadRepo,
      @factoryParam String dealId)
      : super(DealDetailsState(dealId: dealId)) {
    getPropertyTypes();
  }

  final DealsRepo _dealRepo;
  final ListingsRepo _listingsRepo;
  final LeadRepo _leadRepo;

  Future<void> getDeal() async {
    emit(state.copyWith(getDealStatus: Status.loading));
    final result = await _dealRepo.getDeal(dealId: state.dealId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(deal: s.value, getDealStatus: Status.success));
        getDealDocuments();
        break;
      case (Error e):
        emit(state.copyWith(
            getDealError: e.exception, getDealStatus: Status.failure));
        break;
    }
  }

  Future<void> getDealDocuments() async {
    emit(state.copyWith(getDealDocumentsStatus: Status.loading));
    final result = await _dealRepo.getDealDocuments(dealId: state.dealId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            dealDocuments: s.value, getDealDocumentsStatus: Status.success));
        break;
      case (Error _):
        emit(state.copyWith(getDealDocumentsStatus: Status.failure));
        break;
    }
  }

  Future<void> getUserDocuments() async {
    emit(state.copyWith(getDealDocumentsStatus: Status.loading));
    final result = await _leadRepo.getClientDocuments(clientId: '');
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            dealDocuments: s.value, getDealDocumentsStatus: Status.success));
        break;
      case (Error _):
        emit(state.copyWith(getDealDocumentsStatus: Status.failure));
        break;
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
