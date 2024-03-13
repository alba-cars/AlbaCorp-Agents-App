import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/ticket_repo.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:path/path.dart';

import '../../../model/paginator.dart';
import '../../../model/ticket_model.dart';
import '../../../util/result.dart';
import '../../../widgets/fields/attachment_field.dart';

part 'tickets_screen_state.dart';
part 'tickets_screen_cubit.freezed.dart';

@injectable
class TicketsScreenCubit extends Cubit<TicketsScreenState> {
  TicketsScreenCubit(this._ticketRepo) : super(TicketsScreenState());
  final TicketRepo _ticketRepo;

  Future<void> getTickets({bool refresh = false}) async {
    if (refresh || state.ticketsPaginator == null) {
      emit(state.copyWith(
          getTicketsListStatus: Status.loading,
          ticketsPaginator: null,
          ticketsList: []));
    } else {
      emit(state.copyWith(getTicketsListStatus: Status.loadingMore));
    }

    final result = await _ticketRepo.getTickets(
        createdBy: state.currentTab == 0 ? 'Agent' : 'Admin',
        paginator: state.ticketsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            ticketsList: [...state.ticketsList, ...s.value],
            ticketsPaginator: s.paginator,
            getTicketsListStatus: Status.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getTicketsListStatus: Status.failure,
            getTicketsListError: e.exception));
    }
  }

  void setSelectedTab(int index) {
    emit(state.copyWith(currentTab: index));
    getTickets(refresh: true);
  }
}
