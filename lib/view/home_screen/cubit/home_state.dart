part of 'home_cubit.dart';

const categoryList = [
  ModelCategory(name: 'ALL'),
  ModelCategory(name: 'Fresh Hot'),
  ModelCategory(name: 'Prospect'),
  ModelCategory(name: 'Followup - HOT'),
  ModelCategory(
    name: 'Followup - COLD',
  ),
  ModelCategory(name: 'Fresh - COLD')
];

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default({}) Map<int, List<Activity>> activities,
    @Default({}) Map<int, AppStatus?> getActivitiesStatus,
    @Default({}) Map<int, String?> getActivitiesError,
    @Default({}) Map<int, Paginator?> activityPaginator,
    @Default(ModelCategory(name: 'ALL')) ModelCategory selectedCategory,
    @Default(categoryList) List<ModelCategory> categories,
    @Default(0) int completedTasksCount,
    @Default(0) int pendingTasksCount,
    @Default(0) int viewingTasksCount,
    @Default({ListType.Categorized}) Set<ListType> listType,
    @Default([]) List<Activity> sortedActivity,
    @Default(AppStatus.init) AppStatus? getSortedActivitiesStatus,
    String? getSortedActivitiesError,
    Paginator? sortedActivityPaginator,
    @Default(AppStatus.init) AppStatus updateTaskStatus,
    String? updateTaskError,
  }) = _HomeState;
}
