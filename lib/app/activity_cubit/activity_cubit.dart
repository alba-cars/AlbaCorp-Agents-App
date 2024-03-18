import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/model/activity_feedback_model.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';

part 'activity_state.dart';
part 'activity_cubit.freezed.dart';

@singleton
class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit(this._activityRepo) : super(ActivityState());
  final ActivityRepo _activityRepo;

  Future<void> updateActivity(
      {required String activityId,
      required int duration,
      required String feedback,
      String? note}) async {
    final userId = getIt<AuthBloc>().state.user?.id;
    if (userId == null) {
      return;
    }
    final result = await _activityRepo.updateActivity(
        activityId: activityId,
        duration: duration,
        feedback: feedback,
        notes: note);
    switch (result) {
      case (Success s):
        print(s.value);
        break;
      default:
    }
  }

  Future<void> setLastActivityFeedback(
      Activity activity, ActivityFeedback feedback) async {
    emit(state.copyWith(lastActivity: activity, activityFeedback: feedback));
  }
}
