part of 'leads_cubit.dart';

@freezed
class LeadsState with _$LeadsState {
  const factory LeadsState({
    @Default([]) List<Lead> leads,
    @Default(Status.init) Status getLeadsStatus,
    String? getLeadsError,
    Paginator? leadsPaginator,
    String? leadsSearch,
    Map<String, dynamic>? leadsFilter,
  }) = _LeadsState;
}
