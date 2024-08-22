import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/deals_repo.dart';
import 'package:real_estate_app/model/file_object.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../model/deal_document_model.dart';
import '../../../model/deal_model.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';

part 'deal_add_document_state.dart';
part 'deal_add_document_cubit.freezed.dart';

@injectable
class DealAddDocumentCubit extends Cubit<DealAddDocumentState> {
  DealAddDocumentCubit(
      @factoryParam String dealId, @factoryParam String userId, this._dealsRepo)
      : _dealId = dealId,
        _userId = userId,
        super(DealAddDocumentState()) {
    getDeal();
  }

  final DealsRepo _dealsRepo;
  final String _dealId;
  final String _userId;
  bool edit = false;
  Map<String, dynamic> value = {};

  void setParams({List<DealDocument>? documents, bool? edit}) {
    if (edit != null) {
      this.edit = edit;
    }
    if (documents != null) {
      final initialValue = Map.fromEntries(documents.map((e) => MapEntry(
          e.type,
          e.path != null
              ? FileObject(networkImageUrl: e.path, networkObjectId: e.id)
              : e.documents
                  ?.map((v) =>
                      FileObject(networkImageUrl: v, networkObjectId: e.id))
                  .toList())));
      value = initialValue;
      Logger().d(value);
    }
  }

  Future<void> getDeal() async {
    emit(state.copyWith(getDealStatus: AppStatus.loading));
    final result = await _dealsRepo.getDeal(dealId: _dealId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(deal: s.value, getDealStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getDealError: e.exception, getDealStatus: AppStatus.failure));
        break;
    }
  }

  Future<void> addDealDocuments(
      {required BuildContext context,
      required Map<String, dynamic> values}) async {
    emit(state.copyWith(addDealDocumentsStatus: AppStatus.loadingMore));
    final result = await _dealsRepo.addDealDocuments(
      userId: _userId,
      dealId: _dealId,
      values: values,
      sellerUserId: state.deal!.sellerInternalUserId,
      buyerUserId: state.deal!.buyerInternalUserId,
      buyerAgencyId: state.deal!.buyerExternalUserId,
      sellerAgencyId: state.deal!.sellerExternalUserId,
    );
    switch (result) {
      case (Success s):
        emit(state.copyWith(addDealDocumentsStatus: AppStatus.success));
        if (context.mounted) {
          showSnackbar(
              context, 'Documents Added Successfully', SnackBarType.success);
          context.pop(true);
        }
        break;
      case (Error e):
        emit(state.copyWith(
            addDealDocumentsStatus: AppStatus.failure,
            addDealDocumentsError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
        break;
    }
  }
}
