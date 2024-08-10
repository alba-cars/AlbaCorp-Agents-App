part of 'enquiries_cubit.dart';

@freezed
class EnquiriesState with _$EnquiriesState {
  const factory EnquiriesState({
    @Default(const {
      TaskFilterEnum.New: AppStatus.initial,
      TaskFilterEnum.FollowUp: AppStatus.initial,
      TaskFilterEnum.Favourites: AppStatus.initial,
    })
    Map<TaskFilterEnum, AppStatus> fetchStatus,
    @Default({}) Map<TaskFilterEnum, Paginator?> paginator,
    @Default({}) Map<TaskFilterEnum, List<Activity>> activities,
    @Default({}) Map<TaskFilterEnum, String> error,
  }) = _EnquiriesState;
}
