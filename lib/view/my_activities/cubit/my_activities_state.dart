part of 'my_activities_cubit.dart';

@freezed
class MyActivitiesState with _$MyActivitiesState {
  const factory MyActivitiesState({
    @Default([]) List<Activity> activities,
    Paginator? paginator,
    @Default(AppStatus.init) AppStatus status,
    @Default(AppStatus.init) AppStatus userLoadStatus,
    @Default([]) List<UserListData> activityUsers,
    Paginator? userPaginator,
    DateTime? startDate,
    DateTime? endDate,
    String? activityStatus,
    String? activityType,
  }) = _MyActivitiesState;
}
