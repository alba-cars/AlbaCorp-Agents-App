import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
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
  CallFeedbackCubit(this._leadRepo) : super(CallFeedbackState()) {
    checkUerExist();
  }

  final LeadRepo _leadRepo;

  Future<void> checkUerExist() async {
    final number = getIt<AuthBloc>().state.lastCalledNumber;
    final feedback =
        getIt<SharedPreferences>().getString('calledNumberFeedback');
    if (number != null) {
      final result = await _leadRepo.getLeads(search: number);
      switch (result) {
        case (Success<List<Lead>> s):
          emit(state.copyWith(
              feedback: feedback,
              lead: s.value.isNotEmpty ? s.value.first : null,
              checkLeadStatus: AppStatus.success));
        case (Error _):
          emit(state.copyWith(checkLeadStatus: AppStatus.failure));
      }
    }
  }
}
