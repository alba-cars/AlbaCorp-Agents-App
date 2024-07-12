part of 'leads_cubit.dart';

@freezed
class LeadsState with _$LeadsState {
  const factory LeadsState({
    @Default([]) List<Lead> leads,
    @Default(AppStatus.init) AppStatus getLeadsStatus,
    String? getLeadsError,
    Paginator? leadsPaginator,
    String? leadsSearch,
    Map<String, dynamic>? leadsFilter,
    QuickFilter? quickFilter,
    @Default(-1) int sortDir,
    @Default(false) bool selectModeEnabled,
    @Default([]) List<String> selectedLeads,
    @Default(AppStatus.init) AppStatus returnLeadsStatus,
    String? returnLeadsError,
  }) = _LeadsState;
}
