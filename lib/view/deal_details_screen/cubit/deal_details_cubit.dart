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
import '../../../model/activity_model.dart';
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
    final result = await _leadRepo.getClientDocuments(
        clientId: state.deal?.client?.id ?? '');
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            userDocuments: s.value, getUserDocumentsStatus: Status.success));
        break;
      case (Error _):
        emit(state.copyWith(getDealDocumentsStatus: Status.failure));
        break;
    }
  }

  Future<void> getBuyerDeals() async {
    emit(state.copyWith(buyerDealsStatus: Status.loading));
    final buyerClientId = switch (state.deal?.category) {
      'Secondary Market Property' => state.deal?.buyerInternalUserId,
      _ => null,
    };
    if (buyerClientId == null) {
      emit(state.copyWith(buyerDealsStatus: Status.success));
      return;
    }
    final result = await _leadRepo.getLeadDeals(leadId: buyerClientId ?? '');
    switch (result) {
      case (Success<List<Deal>> s):
        final deals = s.value
          ..removeWhere(
            (element) => element.id == state.dealId,
          );
        emit(state.copyWith(
            buyerDeals: deals, buyerDealsStatus: Status.success));
        break;
      case (Error _):
        emit(state.copyWith(buyerDealsStatus: Status.failure));
        break;
    }
  }

  Future<void> getSellerDeals() async {
    emit(state.copyWith(sellerDealsStatus: Status.loading));
    final seller = switch (state.deal?.category) {
      'Secondary Market Property' => state.deal?.sellerInternalUserId,
      'Primary Off Plan Property' ||
      'Listing Acquired' =>
        state.deal?.client?.id,
      _ => state.deal?.client?.id,
    };
    if (seller == null) {
      emit(state.copyWith(sellerDealsStatus: Status.success));
      return;
    }
    final result = await _leadRepo.getLeadDeals(leadId: seller);
    switch (result) {
      case (Success<List<Deal>> s):
        final deals = s.value
          ..removeWhere(
            (element) => element.id == state.dealId,
          );
        emit(state.copyWith(
            sellerDeals: deals, sellerDealsStatus: Status.success));
        break;
      case (Error _):
        emit(state.copyWith(sellerDealsStatus: Status.failure));
        break;
    }
  }

  Future<void> getSellerActivities() async {
    emit(state.copyWith(sellerActivitiesStatus: Status.loading));
    final seller = switch (state.deal?.category) {
      'Secondary Market Property' => state.deal?.sellerInternalUserId,
      'Primary Off Plan Property' ||
      'Listing Acquired' =>
        state.deal?.client?.id,
      _ => state.deal?.client?.id,
    };
    if (seller == null) {
      emit(state.copyWith(sellerActivitiesStatus: Status.success));
      return;
    }
    final result = await _leadRepo.getLeadActivities(leadId: seller ?? '');
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            sellerActivities: s.value, sellerActivitiesStatus: Status.success));
        break;
      case (Error _):
        emit(state.copyWith(sellerActivitiesStatus: Status.failure));
        break;
    }
  }

  Future<void> getBuyerActivities() async {
    emit(state.copyWith(buyerActivitiesStatus: Status.loading));
    final buyerClientId = switch (state.deal?.category) {
      'Secondary Market Property' => state.deal?.buyerInternalUserId,
      _ => "",
    };
    if (buyerClientId == null) {
      emit(state.copyWith(buyerActivitiesStatus: Status.success));
      return;
    }
    final result =
        await _leadRepo.getLeadActivities(leadId: buyerClientId ?? '');
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            buyerActivities: s.value, buyerActivitiesStatus: Status.success));
        break;
      case (Error _):
        emit(state.copyWith(buyerActivitiesStatus: Status.failure));
        break;
    }
  }

  Future<void> getPropertyActivities() async {
    emit(state.copyWith(propertyActivitiesStatus: Status.loading));

    if (state.deal?.propertyListId == null) {
      emit(state.copyWith(propertyActivitiesStatus: Status.success));
      return;
    }
    final result = await _listingsRepo.getListingActivities(
        listingId: state.deal?.propertyListId ?? '');
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyActivities: s.value,
            propertyActivitiesStatus: Status.success));
        break;
      case (Error _):
        emit(state.copyWith(propertyActivitiesStatus: Status.failure));
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
