import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/remote_data/pending_call_feedback_repo.dart';
import 'package:real_estate_app/data/repository/activity_repo.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/lead_model.dart';
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

  Future<void> checkUerExist() async {
    emit(state.copyWith(checkLeadStatus: AppStatus.loading));
    final number = getIt<AuthBloc>().state.lastCalledNumber;

    if (number != null) {
      final result = await _leadRepo.getLeadByPhone(phone: number);
      switch (result) {
        case (Success<Lead?> s):
          emit(state.copyWith(
              lead: s.value, checkLeadStatus: AppStatus.success));
        case (Error _):
          emit(state.copyWith(checkLeadStatus: AppStatus.failure));
      }
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
}
