part of 'expired_hot_lead_explorer_cubit.dart';

@freezed
class ExpiredHotLeadExplorerState with _$ExpiredHotLeadExplorerState {
  const factory ExpiredHotLeadExplorerState({
    @Default([]) List<LeadExpirationModel> expiredHotLeads,
    @Default(AppStatus.init) AppStatus getExpiredHotLeadStatus,
    String? getExpiredHotLeadError,
    Paginator? expiredHotLeadsPaginator,
    @Default(AppStatus.init) AppStatus assignLeadStatus,
    String? assignLeadError,
     @Default([]) List<LeadSourceCategory> leadSourceCategories,
    @Default(AppStatus.init) AppStatus getLeadSourceCategories,
     @Default([]) List<LeadSourceItem> selectedLeadSources,
  }) = _ExpiredHotLeadExplorerState;
}
