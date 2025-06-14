part of 'new_leads_cubit.dart';

@freezed
abstract class NewLeadsState with _$NewLeadsState {
  const factory NewLeadsState({
    @Default(const {
      NewLeadTaskFilterEnum.Enquiry: AppStatus.initial,
      NewLeadTaskFilterEnum.Cold: AppStatus.initial,
      NewLeadTaskFilterEnum.Partner: AppStatus.initial,
    })
    Map<NewLeadTaskFilterEnum, AppStatus> fetchStatus,
    @Default({}) Map<NewLeadTaskFilterEnum, Paginator?> paginator,
    @Default({}) Map<NewLeadTaskFilterEnum, List<Activity>> activities,
    @Default({}) Map<NewLeadTaskFilterEnum, String> error,
    Map<String, dynamic>? activityFilter,
    @Default({}) Map<NewLeadTaskFilterEnum, int> tabCounts,
  }) = _NewLeadsState;
}
