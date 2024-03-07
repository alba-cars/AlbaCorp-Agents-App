import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/model/lead_model.dart';

import '../../../model/paginator.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';

part 'leads_state.dart';
part 'leads_cubit.freezed.dart';

@injectable
class LeadsCubit extends Cubit<LeadsState> {
  LeadsCubit(this._leadRepo) : super(LeadsState());

  final LeadRepo _leadRepo;

  Future<void> getLeads({bool refresh = false}) async {
    if (refresh || state.leadsPaginator == null) {
      emit(state.copyWith(
          getLeadsStatus: Status.loading, leadsPaginator: null, leads: []));
    } else {
      emit(state.copyWith(getLeadsStatus: Status.loadingMore));
    }

    final result = await _leadRepo.getLeads(paginator: state.leadsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            leads: [...state.leads, ...s.value],
            leadsPaginator: s.paginator,
            getLeadsStatus: Status.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getLeadsStatus: Status.failure, getLeadsError: e.exception));
    }
  }
}
