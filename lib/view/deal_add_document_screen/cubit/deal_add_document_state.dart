part of 'deal_add_document_cubit.dart';

@freezed
class DealAddDocumentState with _$DealAddDocumentState {
  const factory DealAddDocumentState({
    @Default(Status.init) Status addDealDocumentsStatus,
    String? addDealDocumentsError,
  }) = _DealAddDocumentState;
}
