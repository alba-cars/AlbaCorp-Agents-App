part of 'deal_add_document_cubit.dart';

@freezed
class DealAddDocumentState with _$DealAddDocumentState {
  const factory DealAddDocumentState({
    @Default(AppStatus.init) AppStatus addDealDocumentsStatus,
    String? addDealDocumentsError,
  }) = _DealAddDocumentState;
}
