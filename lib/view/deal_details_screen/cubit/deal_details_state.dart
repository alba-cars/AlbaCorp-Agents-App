part of 'deal_details_cubit.dart';

@freezed
class DealDetailsState with _$DealDetailsState {
  const factory DealDetailsState({
    required String dealId,
    Deal? deal,
    @Default(AppStatus.init) AppStatus getDealStatus,
    String? getDealError,
    @Default([]) List<DealDocument> dealDocuments,
    @Default(AppStatus.init) AppStatus getDealDocumentsStatus,
    @Default([]) List<DealDocument> userDocuments,
    @Default(AppStatus.init) AppStatus getUserDocumentsStatus,
    @Default([]) List<DealDocument> sellerDocuments,
    @Default(AppStatus.init) AppStatus getSellerDocumentsStatus,
    @Default([]) List<DealDocument> buyerDocuments,
    @Default(AppStatus.init) AppStatus getBuyerDocumentsStatus,
    @Default([]) List<DealDocument> buyerExternalDocuments,
    @Default([]) List<DealDocument> sellerExternalDocuments,
    @Default([]) List<Deal> buyerDeals,
    @Default(AppStatus.init) AppStatus buyerDealsStatus,
    @Default([]) List<Deal> sellerDeals,
    @Default(AppStatus.init) AppStatus sellerDealsStatus,
    @Default([]) List<Activity> buyerActivities,
    @Default(AppStatus.init) AppStatus buyerActivitiesStatus,
    @Default([]) List<Activity> sellerActivities,
    @Default(AppStatus.init) AppStatus sellerActivitiesStatus,
    @Default([]) List<Activity> propertyActivities,
    @Default(AppStatus.init) AppStatus propertyActivitiesStatus,
    @Default([]) List<PropertyType> propertyTypeList,
    @Default(AppStatus.init) AppStatus getPropertyTypeListStatus,
  }) = _DealDetailsState;
}
