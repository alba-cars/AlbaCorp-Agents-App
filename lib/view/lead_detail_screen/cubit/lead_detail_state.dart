part of 'lead_detail_cubit.dart';

@freezed
class LeadDetailState with _$LeadDetailState {
  const factory LeadDetailState({
    required String leadId,
    Lead? lead,
    @Default(AppStatus.init) AppStatus getLeadStatus,
    String? getLeadError,
    @Default([]) List<Activity> activities,
    @Default(AppStatus.init) AppStatus getActivitiesStatus,
    String? getActivitiesError,
    @Default([]) List<Deal> deals,
    @Default(AppStatus.init) AppStatus getDealsStatus,
    String? getDealsError,
    @Default(AppStatus.init) AppStatus updateLeadStatus,
    String? updateLeadError,
    @Default(AppStatus.init) AppStatus getPropertyCardsListStatus,
    @Default([]) List<LeadPropertyCardModel> propertyCardsList,
    String? getPropertyCardsListError,
    Paginator? propertyCardPaginator,
    @Default(AppStatus.init) AppStatus updatePropertyCardStatus,
    String? updatePropertyCardError,
  }) = _LeadDetailState;
}
