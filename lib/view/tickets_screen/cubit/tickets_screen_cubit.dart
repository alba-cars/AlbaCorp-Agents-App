import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/ticket_repo.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../model/department_model.dart';
import '../../../model/paginator.dart';
import '../../../model/ticket_model.dart';
import '../../../util/result.dart';

part 'tickets_screen_state.dart';
part 'tickets_screen_cubit.freezed.dart';

@injectable
class TicketsScreenCubit extends Cubit<TicketsScreenState> {
  TicketsScreenCubit(this._ticketRepo) : super(TicketsScreenState()) {
    getDepartments();
  }
  final TicketRepo _ticketRepo;

  Future<void> getTickets({bool refresh = false}) async {
    if (refresh || state.ticketsPaginator == null) {
      emit(state.copyWith(
          getTicketsListStatus: AppStatus.loading,
          ticketsPaginator: null,
          ticketsList: []));
    } else {
      emit(state.copyWith(getTicketsListStatus: AppStatus.loadingMore));
    }

    final result = await _ticketRepo.getTickets(
        createdBy: state.currentTab == 0 ? 'Agent' : 'Admin',
        filter: state.ticketsFilter,
        search: state.ticketsSearch,
        paginator: state.ticketsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            ticketsList: [...state.ticketsList, ...s.value],
            ticketsPaginator: s.paginator,
            getTicketsListStatus: AppStatus.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getTicketsListStatus: AppStatus.failure,
            getTicketsListError: e.exception));
    }
  }

  void setSelectedTab(int index) {
    emit(state.copyWith(currentTab: index));
    getTickets(refresh: true);
  }

  void searchTickets(String? search) {
    emit(state.copyWith(ticketsSearch: search));
    getTickets(refresh: true);
  }

  void setTicketsFilters(Map<String, dynamic>? filter) {
    emit(state.copyWith(ticketsFilter: filter));
    getTickets(refresh: true);
  }

  Future<List<Department>> getDepartments() async {
    emit(state.copyWith(
      getDepartmentsStatus: AppStatus.loading,
    ));

    final result = await _ticketRepo.getDepartments();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            departments: s.value, getDepartmentsStatus: AppStatus.success));
        return s.value;

      case (Error e):
        emit(state.copyWith(
          getDepartmentsStatus: AppStatus.failure,
        ));
        return [];
    }
  }
}
