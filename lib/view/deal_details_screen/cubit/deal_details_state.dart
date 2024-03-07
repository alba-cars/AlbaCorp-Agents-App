part of 'deal_details_cubit.dart';

@freezed
class DealDetailsState with _$DealDetailsState {
  const factory DealDetailsState({
    required String dealId,
    Deal? deal,
    @Default(Status.init) Status getDealStatus,
    String? getDealError,
    @Default([]) List<DealDocument> dealDocuments,
    @Default(Status.init) Status getDealDocumentsStatus,
    @Default([]) List<DealDocument> userDocuments,
    @Default(Status.init) Status getUserDocumentsStatus,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(Status.init) Status getPropertyTypeListStatus,
  }) = _DealDetailsState;
}
