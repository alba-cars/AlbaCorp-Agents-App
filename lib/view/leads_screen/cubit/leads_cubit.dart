import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:real_estate_app/data/repository/lead_repo.dart';
import 'package:real_estate_app/data/repository/linkus_repo.dart';
import 'package:real_estate_app/model/lead_model.dart';

import '../../../model/paginator.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';

part 'leads_state.dart';
part 'leads_cubit.freezed.dart';

@injectable
class LeadsCubit extends Cubit<LeadsState> {
  LeadsCubit(this._leadRepo, this._linkusRepo) : super(LeadsState());

  final LeadRepo _leadRepo;
  final LinkusRepo _linkusRepo;

  Future<void> getLeads({bool refresh = false}) async {
    if (refresh || state.leadsPaginator == null) {
      emit(state.copyWith(
          getLeadsStatus: AppStatus.loading, leadsPaginator: null, leads: []));
    } else {
      emit(state.copyWith(getLeadsStatus: AppStatus.loadingMore));
    }

    final result = await _leadRepo.getLeads(
        search: state.leadsSearch,
        filter: state.leadsFilter,
        paginator: state.leadsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            leads: [...state.leads, ...s.value],
            leadsPaginator: s.paginator,
            getLeadsStatus: AppStatus.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getLeadsStatus: AppStatus.failure, getLeadsError: e.exception));
    }
  }

  void searchLeads(String? search) {
    emit(state.copyWith(leadsSearch: search));
    getLeads(refresh: true);
  }

  void setLeadFilters(Map<String, dynamic>? filter) {
    emit(state.copyWith(leadsFilter: filter));
    getLeads(refresh: true);
  }

  void setQuickFilter(String? filter) {
    print(filter);
    switch (filter) {
      case 'Hot':
        emit(state.copyWith(leadsFilter: {'lead_source': 'Fresh'}));
        break;
      case 'Fresh':
        emit(state.copyWith(leadsFilter: {'lead_status': 'Fresh'}));
        break;
      case 'Prospect':
        emit(state.copyWith(leadsFilter: {
          ...state.leadsFilter ?? {},
          'lead_status': 'Prospect'
        }));
        break;
      case 'Hot & Fresh':
        emit(state.copyWith(leadsFilter: {'lead_status': 'Fresh'}));
        break;
      case 'Client with deals':
        emit(state.copyWith(leadsFilter: {'lead_status': 'Fresh'}));
        break;
      case 'Recent':
        break;
      default:
        emit(state.copyWith(leadsFilter: {}));
    }
    getLeads(refresh: true);
  }

  Future<void> makeACall(Lead lead) async {
    await _linkusRepo.makeACall(number: lead.phone!);
  }
}
