import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
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
    emit(state.copyWith(getDealStatus: AppStatus.loading));
    final result = await _dealRepo.getDeal(dealId: state.dealId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(deal: s.value, getDealStatus: AppStatus.success));
        getDealDocuments();

        break;
      case (Error e):
        emit(state.copyWith(
            getDealError: e.exception, getDealStatus: AppStatus.failure));
        break;
    }
  }

  Future<void> getDealDocuments() async {
    emit(state.copyWith(getDealDocumentsStatus: AppStatus.loading));
    final result = await _dealRepo.getDealDocuments(dealId: state.dealId);
    switch (result) {
      case (Success<List<DealDocument>> s):
        emit(state.copyWith(
            userDocuments: s.value
                .where((e) =>
                    (e.type.toLowerCase() == 'eid' ||
                        e.type.toLowerCase() == 'passport') &&
                    e.userId == state.deal?.userId)
                .toList(),
            buyerDocuments: s.value
                .where((e) =>
                    (e.type.toLowerCase() == 'eid' ||
                        e.type.toLowerCase() == 'passport') &&
                    e.userId == state.deal?.buyerInternalUserId)
                .map((e) => e.copyWith(type: 'buyer.${e.type}'))
                .toList(),
            sellerDocuments: s.value
                .where((e) =>
                    (e.type.toLowerCase() == 'eid' ||
                        e.type.toLowerCase() == 'passport') &&
                    e.userId == state.deal?.sellerInternalUserId)
                .map((e) => e.copyWith(type: 'seller.${e.type}'))
                .toList(),
            dealDocuments: s.value
                .where((e) =>
                    !(e.type.toLowerCase() == 'eid' ||
                        e.type.toLowerCase() == 'passport') &&
                    e.dealId == state.dealId)
                .toList(),
            buyerExternalDocuments:
                state.deal?.buyerExternalUser?.document != null
                    ? [
                        DealDocument(
                            id: "",
                            userId: "",
                            createdById: "",
                            type: 'buyer.trade_license',
                            path: state.deal?.buyerExternalUser?.document)
                      ]
                    : [],
            sellerExternalDocuments:
                state.deal?.sellerExternalUser?.document != null
                    ? [
                        DealDocument(
                            id: "",
                            userId: "",
                            createdById: "",
                            type: 'buyer.trade_license',
                            path: state.deal?.sellerExternalUser?.document)
                      ]
                    : [],
            getDealDocumentsStatus: AppStatus.success));
        break;
      case (Error _):
        emit(state.copyWith(getDealDocumentsStatus: AppStatus.failure));
        break;
    }
  }

  Future<void> getUserDocuments() async {
    emit(state.copyWith(getDealDocumentsStatus: AppStatus.loading));
    Logger().d(state.deal?.toJson());
    if (state.deal?.client != null) {
      final result = await _leadRepo.getClientDocuments(
          clientId: state.deal?.client?.id ?? '');
      switch (result) {
        case (Success s):
          emit(state.copyWith(
              userDocuments: s.value,
              getUserDocumentsStatus: AppStatus.success));
          break;
        case (Error _):
          emit(state.copyWith(getUserDocumentsStatus: AppStatus.failure));
          break;
      }
    }
    if (state.deal?.buyerInternalUserId != null) {
      final result = await _leadRepo.getClientDocuments(
          clientId: state.deal?.buyerInternalUserId ?? '');
      switch (result) {
        case (Success s):
          emit(state.copyWith(
              buyerDocuments: s.value,
              getBuyerDocumentsStatus: AppStatus.success));
          break;
        case (Error _):
          emit(state.copyWith(getBuyerDocumentsStatus: AppStatus.failure));
          break;
      }
    }
    if (state.deal?.sellerInternalUserId != null) {
      final result = await _leadRepo.getClientDocuments(
          clientId: state.deal?.sellerInternalUserId ?? '');
      switch (result) {
        case (Success s):
          emit(state.copyWith(
              sellerDocuments: s.value,
              getSellerDocumentsStatus: AppStatus.success));
          break;
        case (Error _):
          emit(state.copyWith(getSellerDocumentsStatus: AppStatus.failure));
          break;
      }
    }
  }

  Future<void> getBuyerDeals() async {
    emit(state.copyWith(buyerDealsStatus: AppStatus.loading));
    final buyerClientId = switch (state.deal?.category) {
      'Secondary Market Property' => state.deal?.buyerInternalUserId,
      _ => null,
    };
    if (buyerClientId == null) {
      emit(state.copyWith(buyerDealsStatus: AppStatus.success));
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
            buyerDeals: deals, buyerDealsStatus: AppStatus.success));
        break;
      case (Error _):
        emit(state.copyWith(buyerDealsStatus: AppStatus.failure));
        break;
    }
  }

  Future<void> getSellerDeals() async {
    emit(state.copyWith(sellerDealsStatus: AppStatus.loading));
    final seller = switch (state.deal?.category) {
      'Secondary Market Property' => state.deal?.sellerInternalUserId,
      'Primary Off Plan Property' ||
      'Listing Acquired' =>
        state.deal?.client?.id,
      _ => state.deal?.client?.id,
    };
    if (seller == null) {
      emit(state.copyWith(sellerDealsStatus: AppStatus.success));
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
            sellerDeals: deals, sellerDealsStatus: AppStatus.success));
        break;
      case (Error _):
        emit(state.copyWith(sellerDealsStatus: AppStatus.failure));
        break;
    }
  }

  Future<void> getSellerActivities() async {
    emit(state.copyWith(sellerActivitiesStatus: AppStatus.loading));
    final seller = switch (state.deal?.category) {
      'Secondary Market Property' => state.deal?.sellerInternalUserId,
      'Primary Off Plan Property' ||
      'Listing Acquired' =>
        state.deal?.client?.id,
      _ => state.deal?.client?.id,
    };
    if (seller == null) {
      emit(state.copyWith(sellerActivitiesStatus: AppStatus.success));
      return;
    }
    final result = await _leadRepo.getLeadActivities(leadId: seller);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            sellerActivities: s.value,
            sellerActivitiesStatus: AppStatus.success));
        break;
      case (Error _):
        emit(state.copyWith(sellerActivitiesStatus: AppStatus.failure));
        break;
    }
  }

  Future<void> getBuyerActivities() async {
    emit(state.copyWith(buyerActivitiesStatus: AppStatus.loading));
    final buyerClientId = switch (state.deal?.category) {
      'Secondary Market Property' => state.deal?.buyerInternalUserId,
      _ => null,
    };
    if (buyerClientId == null) {
      emit(state.copyWith(buyerActivitiesStatus: AppStatus.success));
      return;
    }
    final result = await _leadRepo.getLeadActivities(leadId: buyerClientId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            buyerActivities: s.value,
            buyerActivitiesStatus: AppStatus.success));
        break;
      case (Error _):
        emit(state.copyWith(buyerActivitiesStatus: AppStatus.failure));
        break;
    }
  }

  Future<void> getPropertyActivities() async {
    emit(state.copyWith(propertyActivitiesStatus: AppStatus.loading));

    if (state.deal?.propertyListId == null) {
      emit(state.copyWith(propertyActivitiesStatus: AppStatus.success));
      return;
    }
    final result = await _listingsRepo.getListingActivities(
        listingId: state.deal?.propertyListId ?? '');
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            propertyActivities: s.value,
            propertyActivitiesStatus: AppStatus.success));
        break;
      case (Error _):
        emit(state.copyWith(propertyActivitiesStatus: AppStatus.failure));
        break;
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
