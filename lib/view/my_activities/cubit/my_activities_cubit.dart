import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/user_list_data.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

part 'my_activities_state.dart';
part 'my_activities_cubit.freezed.dart';

@injectable
class MyActivitiesCubit extends Cubit<MyActivitiesState> {
  final ActivityRepo activityRepo;
  MyActivitiesCubit(this.activityRepo) : super(MyActivitiesState());

  Map<String, dynamic> searchParams = {
    "selectedUser": null,
    "selectedActivityStatus": null,
    "selectedDateTime": null
  };

  getAgentActivities(
      {String? status,
      List<DateTime>? dates,
      String? userId,
      Paginator? paginator}) async {
    try {
      if (state.status == AppStatus.loading) {
        return;
      }

      if (paginator != null) {
        emit(state.copyWith(
            status: AppStatus.loading,
            activities: [...state.activities],
            paginator: state.paginator));
      } else {
        emit(state.copyWith(
            status: AppStatus.loading, paginator: state.paginator));
      }

      final Result<List<Activity>> result =
          await activityRepo.getActivitiesByAgent(
              status: status,
              dates: dates,
              userId: userId,
              paginator: paginator);

      switch (result) {
        case (Success<List<Activity>> success):
          Logger().d("On success scenario");
          List<Activity> updatedActivities = List.from(state.activities);
          if (paginator != null) {
            updatedActivities..addAll(success.value);
          } else {
            updatedActivities = success.value;
          }

          emit(state.copyWith(
              activities: updatedActivities,
              paginator: success.paginator,
              status: AppStatus.success));
          break;
        case (Error error):
          Logger().d("On failure scenario ${error.exception}");
          if (paginator == null) {
            emit(state.copyWith(status: AppStatus.failure));
          } else {
            emit(state.copyWith(status: AppStatus.success));
          }
          break;
      }
    } catch (e) {
      Logger().e(e);
    }
  }

  // updateSearchParams({UserListData? selectedUser,String? selectedStatus , DateTime? selectedDateTime}) {
  //   "selectedUser": null,
  //   "selectedActivityStatus": null,
  //   "selectedDateTime": null
  // };
  //   if(selectedUser != null){
  //      searchParams["selectedUser"] = selectedUser;
  //   }
  //   if(selectedActivityStatus )
  // }

  Future<List<UserListData>> getActivitiesUser(
      {String? searchParam, Paginator? paginator}) async {
    try {
      if (state.userLoadStatus == AppStatus.loading) {
        return Future.value(state.activityUsers);
      }

      if (paginator != null) {
        emit(state.copyWith(
            userLoadStatus: AppStatus.loading,
            activityUsers: [...state.activityUsers],
            userPaginator: state.userPaginator));
      } else {
        emit(state.copyWith(
            userLoadStatus: AppStatus.loading,
            userPaginator: state.userPaginator));
      }

      final Result<List<UserListData>> result =
          await activityRepo.getActivitiesUserByAgent(
              searchText: searchParam, paginator: state.userPaginator);

      switch (result) {
        case (Success<List<UserListData>> success):
          Logger().d("On success scenario");
          List<UserListData> userList = List.from(state.activityUsers);
          if (paginator != null) {
            userList..addAll(success.value);
          } else {
            userList = success.value;
          }

          emit(state.copyWith(
              activityUsers: userList,
              paginator: success.paginator,
              userLoadStatus: AppStatus.success));
          return userList;
        case (Error error):
          Logger().d("On failure scenario ${error.exception}");
          if (paginator == null) {
            emit(state.copyWith(status: AppStatus.failure));
          } else {
            emit(state.copyWith(status: AppStatus.success));
          }
          return [];
      }
    } catch (e) {
      emit(state.copyWith(status: AppStatus.failure));
      return [];
    }
  }
}
