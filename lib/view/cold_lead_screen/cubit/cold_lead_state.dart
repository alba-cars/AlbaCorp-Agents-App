part of 'cold_lead_cubit.dart';

@freezed
class ColdLeadState with _$ColdLeadState {
  const factory ColdLeadState({
    @Default(const {
      TaskFilterEnum.New: AppStatus.initial,
      TaskFilterEnum.FollowUp: AppStatus.initial,
      TaskFilterEnum.Favourites: AppStatus.initial,
    })
    Map<TaskFilterEnum, AppStatus> fetchStatus,
    @Default({}) Map<TaskFilterEnum, Paginator?> paginator,
    @Default({}) Map<TaskFilterEnum, List<Activity>> activities,
    @Default({}) Map<TaskFilterEnum, String> error,
  }) = _ColdLeadState;
}

enum TaskFilterEnum { New, FollowUp, Favourites }

extension TaskFilterEnumExtension on TaskFilterEnum {
  String getName() {
    switch (this) {
      case TaskFilterEnum.New:
        return "New";
      case TaskFilterEnum.FollowUp:
        return "Follow Up";
      case TaskFilterEnum.Favourites:
        return "Favourites";
    }
  }
}
