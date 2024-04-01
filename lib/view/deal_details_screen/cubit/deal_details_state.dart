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
    @Default([]) List<Deal> buyerDeals,
    @Default(Status.init) Status buyerDealsStatus,
    @Default([]) List<Deal> sellerDeals,
    @Default(Status.init) Status sellerDealsStatus,
    @Default([]) List<Activity> buyerActivities,
    @Default(Status.init) Status buyerActivitiesStatus,
    @Default([]) List<Activity> sellerActivities,
    @Default(Status.init) Status sellerActivitiesStatus,
    @Default([]) List<Activity> propertyActivities,
    @Default(Status.init) Status propertyActivitiesStatus,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(Status.init) Status getPropertyTypeListStatus,
  }) = _DealDetailsState;
}
