part of 'followups_cubit.dart';

@freezed
abstract class FollowupsState with _$FollowupsState {
  const factory FollowupsState({
    @Default(const {
      TaskFilterEnum.FollowUpToday: AppStatus.initial,
      TaskFilterEnum.FollowUpTomorrow: AppStatus.initial,
      TaskFilterEnum.FollowUpOverDue: AppStatus.initial,
      TaskFilterEnum.FollowUpAll: AppStatus.initial,
    })
    Map<TaskFilterEnum, AppStatus> fetchStatus,
    @Default({}) Map<TaskFilterEnum, Paginator?> paginator,
    @Default({}) Map<TaskFilterEnum, List<Activity>> activities,
    @Default({}) Map<TaskFilterEnum, String> error,
    Map<String, dynamic>? activityFilter,
    @Default({}) Map<TaskFilterEnum, int> tabCounts,
    @Default('hot') String? leadSourceType,
  }) = _FollowupsState;
}

enum TaskFilterEnum {
  FollowUpToday,
  FollowUpOverDue,
  FollowUpTomorrow,
  FollowUpAll,
}

extension TaskFilterEnumExtension on TaskFilterEnum {
  String getName() {
    switch (this) {
      case TaskFilterEnum.FollowUpToday:
        return "Today's";
      case TaskFilterEnum.FollowUpTomorrow:
        return "Tomorrow's";
      case TaskFilterEnum.FollowUpOverDue:
        return "Overdues";
      case TaskFilterEnum.FollowUpAll:
        return "All";
    }
  }

  static TaskFilterEnum fromString(String value) {
    switch (value) {
      case "FollowUpToday":
        return TaskFilterEnum.FollowUpToday;
      case "FollowUpTomorrow":
        return TaskFilterEnum.FollowUpTomorrow;
      case "FollowUpOverDue":
        return TaskFilterEnum.FollowUpOverDue;
      case "FollowUpAll":
        return TaskFilterEnum.FollowUpAll;
      default:
        // It's good practice to have a fallback or throw an error.
        // Depending on usage, you might return a default value or throw.
        // For now, let's assume 'FollowUpAll' as a safe default if not matched.
        // Or, more strictly, throw an error.
        throw ArgumentError("Unknown TaskFilterEnum string value: $value");
    }
  }
}
