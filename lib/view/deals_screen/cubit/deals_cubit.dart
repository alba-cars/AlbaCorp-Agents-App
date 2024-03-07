import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/data/repository/deals_repo.dart';
import 'package:real_estate_app/model/deal_model.dart';

import '../../../model/paginator.dart';
import '../../../util/result.dart';
import '../../../util/status.dart';

part 'deals_state.dart';
part 'deals_cubit.freezed.dart';

@injectable
class DealsCubit extends Cubit<DealsState> {
  DealsCubit(this._dealsRepo) : super(DealsState());

  final DealsRepo _dealsRepo;
  Future<void> getDeals({bool refresh = false}) async {
    if (refresh || state.dealsPaginator == null) {
      emit(state.copyWith(
          getDealsStatus: Status.loading, dealsPaginator: null, deals: []));
    } else {
      if (state.getDealsStatus == Status.loadingMore) {
        return;
      }
      emit(state.copyWith(getDealsStatus: Status.loadingMore));
    }

    final result = await _dealsRepo.getDeals(paginator: state.dealsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            deals: [...state.deals, ...s.value],
            dealsPaginator: s.paginator,
            getDealsStatus: Status.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getDealsStatus: Status.failure, getDealsError: e.exception));
    }
  }
}
