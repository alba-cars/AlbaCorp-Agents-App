import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/deal_model.dart';
import 'package:real_estate_app/model/lead_model.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../model/activity_model.dart';
import '../../../util/result.dart';

part 'lead_detail_state.dart';
part 'lead_detail_cubit.freezed.dart';

@injectable
class LeadDetailCubit extends Cubit<LeadDetailState> {
  LeadDetailCubit(this._leadRepo, @factoryParam String leadId)
      : super(LeadDetailState(leadId: leadId));

  final LeadRepo _leadRepo;

  Future<void> getLeadDetails() async {
    emit(state.copyWith(getLeadStatus: Status.loading));
    final result = await _leadRepo.getLead(leadId: state.leadId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(getLeadStatus: Status.success, lead: s.value));
        Future.wait([getLeadActivities(), getLeadDeals()]);
        break;
      case (Error e):
        emit(state.copyWith(
            getLeadStatus: Status.failure, getLeadError: e.exception));

        break;
    }
  }

  Future<void> getLeadActivities() async {
    emit(state.copyWith(getActivitiesStatus: Status.loading));
    final result = await _leadRepo.getLeadActivities(leadId: state.leadId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            getActivitiesStatus: Status.success, activities: s.value));

        break;
      case (Error e):
        emit(state.copyWith(
            getActivitiesStatus: Status.failure,
            getActivitiesError: e.exception));

        break;
    }
  }

  Future<void> getLeadDeals() async {
    emit(state.copyWith(getDealsStatus: Status.loading));
    final result = await _leadRepo.getLeadDeals(leadId: state.leadId);
    switch (result) {
      case (Success s):
        emit(state.copyWith(getDealsStatus: Status.success, deals: s.value));

        break;
      case (Error e):
        emit(state.copyWith(
            getDealsStatus: Status.failure, getDealsError: e.exception));

        break;
    }
  }
}
