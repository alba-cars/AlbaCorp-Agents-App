import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';

part 'my_activities_state.dart';
part 'my_activities_cubit.freezed.dart';

@injectable
class MyActivitiesCubit extends Cubit<MyActivitiesState> {
  final ActivityRepo activityRepo;
  MyActivitiesCubit(this.activityRepo) : super(MyActivitiesState());

  getAgentActivities({LeadStatus? leadStatus, List<DateTime>? dates, String? userId, Paginator? paginator}) async {
    try {
      if (state.status == AppStatus.loading ) {
        return;
      }

      if (paginator != null) {
        emit(state.copyWith(status: AppStatus.loading,activities: [...state.activities],paginator: paginator));
      } else {
        emit(state.copyWith(
        status: AppStatus.loading
        ));
      }

      final Result<List<Activity>> result =
          await activityRepo.getActivitiesByAgent(status: leadStatus,dates: dates,userId: userId,
              paginator: paginator);

      switch (result) {
        case (Success<List<Activity>> success):
          Logger().d("On success scenario");
          List<Activity> updatedActivities = List.from(state.activities);
          if(paginator == null){ 
           updatedActivities..addAll(success.value);
          }
          emit(state.copyWith(activities: updatedActivities,paginator: success.paginator,status: AppStatus.success));
          break;
        case (Error error):
          Logger().d("On failure scenario ${error.exception}");
            if(paginator == null){
              emit(state.copyWith(status: AppStatus.failure));
            }else{
              emit(state.copyWith(status: AppStatus.success));
            }
        break;
      }


    } catch (e) {
      Logger().e(e);
     
    }
  }
}
