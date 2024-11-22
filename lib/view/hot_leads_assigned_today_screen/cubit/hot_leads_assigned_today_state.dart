part of 'hot_leads_assigned_today_cubit.dart';

@freezed
class HotLeadsAssignedTodayState with _$HotLeadsAssignedTodayState {
  const factory HotLeadsAssignedTodayState({
    @Default(AppStatus.init) AppStatus fetchStatus,
    Paginator? paginator,
    @Default([]) List<Activity> activities,
    String? error,
  }) = _HotLeadsAssignedTodayState;
}
