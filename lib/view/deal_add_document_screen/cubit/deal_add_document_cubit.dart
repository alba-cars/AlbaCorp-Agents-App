import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/deals_repo.dart';
import 'package:real_estate_app/widgets/snackbar.dart';

import '../../../util/result.dart';
import '../../../util/status.dart';

part 'deal_add_document_state.dart';
part 'deal_add_document_cubit.freezed.dart';

@injectable
class DealAddDocumentCubit extends Cubit<DealAddDocumentState> {
  DealAddDocumentCubit(@factoryParam String dealId, this._dealsRepo)
      : _dealId = dealId,
        super(DealAddDocumentState());

  final DealsRepo _dealsRepo;
  final String _dealId;

  Future<void> addDealDocuments(
      {required BuildContext context,
      required Map<String, dynamic> values}) async {
    emit(state.copyWith(addDealDocumentsStatus: Status.loadingMore));
    final result =
        await _dealsRepo.addDealDocuments(dealId: _dealId, values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addDealDocumentsStatus: Status.success));
        if (context.mounted) {
          showSnackbar(
              context, 'Documents Added Successfully', SnackBarType.success);
          context.pop(true);
        }
        break;
      case (Error e):
        emit(state.copyWith(
            addDealDocumentsStatus: Status.failure,
            addDealDocumentsError: e.exception));
        if (context.mounted) {
          showSnackbar(context, e.exception, SnackBarType.failure);
        }
        break;
    }
  }
}
