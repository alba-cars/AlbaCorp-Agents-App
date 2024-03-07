part of 'lead_detail_cubit.dart';

@freezed
class LeadDetailState with _$LeadDetailState {
  const factory LeadDetailState({
    required String leadId,
    Lead? lead,
    @Default(Status.init) Status getLeadStatus,
    String? getLeadError,
    @Default([]) List<Activity> activities,
    @Default(Status.init) Status getActivitiesStatus,
    String? getActivitiesError,
    @Default([]) List<Deal> deals,
    @Default(Status.init) Status getDealsStatus,
    String? getDealsError,
  }) = _LeadDetailState;
}
