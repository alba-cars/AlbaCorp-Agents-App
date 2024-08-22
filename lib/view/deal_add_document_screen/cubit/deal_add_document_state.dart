part of 'deal_add_document_cubit.dart';

@freezed
class DealAddDocumentState with _$DealAddDocumentState {
  const factory DealAddDocumentState({
    @Default(AppStatus.init) AppStatus addDealDocumentsStatus,
    String? addDealDocumentsError,
    Deal? deal,
    @Default(AppStatus.init) AppStatus getDealStatus,
    String? getDealError,
  }) = _DealAddDocumentState;
}
