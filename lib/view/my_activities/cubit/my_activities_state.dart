part of 'my_activities_cubit.dart';

@freezed
class MyActivitiesState with _$MyActivitiesState {
  const factory MyActivitiesState
  ({
    @Default([]) List<Activity> activities,
    Paginator? paginator,
    @Default(AppStatus.init) AppStatus status,
  }) = _MyActivitiesState;
}
