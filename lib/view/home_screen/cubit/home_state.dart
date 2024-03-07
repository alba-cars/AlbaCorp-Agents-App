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
    @Default([]) List<Activity> activities,
    @Default(Status.init) Status getActivitiesStatus,
    String? getActivitiesError,
    Paginator? activityPaginator,
    @Default(ModelCategory(name: 'ALL')) ModelCategory selectedCategory,
    @Default(categoryList) List<ModelCategory> categories,
  }) = _HomeState;
}
