import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/remote_data/pending_call_feedback_repo.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/activity_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/model/lead_source_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'call_feedback_state.dart';
part 'call_feedback_cubit.freezed.dart';

@injectable
class CallFeedbackCubit extends Cubit<CallFeedbackState> {
  CallFeedbackCubit(
      this._leadRepo, this._pendingCallFeedbackRepo, this._activityRepo)
      : super(CallFeedbackState()) {
    checkUerExist();
  }

  final LeadRepo _leadRepo;
  final PendingCallFeedbackRepo _pendingCallFeedbackRepo;
  final ActivityRepo _activityRepo;

  Future<void> checkUerExist({String? numberEntered}) async {
    emit(state.copyWith(
        checkLeadStatus: AppStatus.loading, requestNumber: false));
    final number = numberEntered ?? getIt<AuthBloc>().state.lastCalledNumber;
    if (numberEntered != null) {
      getIt<SharedPreferences>().setString('calledNumber', numberEntered);
    }

    if (number != null && number != 'IPHONE' && number != 'Unknown') {
      final result =
          await _leadRepo.getLeadByPhone(phone: number.replaceAll('+', ''));
      switch (result) {
        case (Success<Lead?> s):
          emit(state.copyWith(
              lead: s.value,
              checkLeadStatus: AppStatus.success,
              number: number));
          getLeadActivities();
          break;
        case (Error _):
          emit(state.copyWith(
              checkLeadStatus: AppStatus.failure, number: number));
      }
    } else {
      emit(state.copyWith(requestNumber: true));
    }
  }

  Future<void> addActivity({required String feedback}) async {
    emit(state.copyWith(
        addActivityStatus: AppStatus.loading, feedback: feedback));
    final number = getIt<AuthBloc>().state.lastCalledNumber;
    if (number != null && state.lead != null) {
      final result = await _activityRepo.createCallFeedbackActivity(
          leadId: state.lead!.id, feedback: feedback);
      switch (result) {
        case (Success _):
          emit(state.copyWith(addActivityStatus: AppStatus.success));
        case (Error _):
          emit(state.copyWith(addActivityStatus: AppStatus.failure));
      }
    }
  }

  Future<void> addLead(Map<String, dynamic> val) async {
    emit(state.copyWith(addLeadStatus: AppStatus.loadingMore));

    final result = await _leadRepo.addLead(lead: {'role': "User", ...val});
    switch (result) {
      case (Success s):
        emit(state.copyWith(lead: s.value, addLeadStatus: AppStatus.success));
        getLeadActivities();
        break;
      case (Error e):
        emit(state.copyWith(
            addLeadStatus: AppStatus.failure, addLeadError: e.exception));
        break;
    }
  }

  Future<void> getLeadSources() async {
    emit(state.copyWith(getLeadSourceStatus: AppStatus.loadingMore));
    final result = await _leadRepo.getLeadSources();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            leadSources: s.value, getLeadSourceStatus: AppStatus.success));
        break;
      case (Error e):
        emit(state.copyWith(
            getLeadSourceStatus: AppStatus.failure, addLeadError: e.exception));
        break;
    }
  }

  Future<void> getLeadActivities() async {
    if (state.lead == null) {
      return;
    }
    emit(state.copyWith(getActivitiesStatus: AppStatus.loading));
    final result = await _leadRepo.getLeadActivities(leadId: state.lead!.id);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            getActivitiesStatus: AppStatus.success, activities: s.value));

        break;
      case (Error e):
        emit(state.copyWith(
            getActivitiesStatus: AppStatus.failure,
            getActivitiesError: e.exception));

        break;
    }
  }
}
