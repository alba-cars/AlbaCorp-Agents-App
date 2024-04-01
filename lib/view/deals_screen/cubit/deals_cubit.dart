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

    final result = await _dealsRepo.getDeals(filter: {
      'category': [
        'Primary Off Plan Property',
        'Secondary Market Property',
      ],
      ...state.dealsFilter ?? {}
    }, search: state.dealsSearch, paginator: state.dealsPaginator);
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

  Future<void> getYourListings({bool refresh = false}) async {
    if (refresh || state.yourListingsPaginator == null) {
      emit(state.copyWith(
          getYourListingsStatus: Status.loading,
          yourListingsPaginator: null,
          yourListings: []));
    } else {
      if (state.getYourListingsStatus == Status.loadingMore) {
        return;
      }
      emit(state.copyWith(getYourListingsStatus: Status.loadingMore));
    }

    final result = await _dealsRepo.getDeals(
        filter: {
          ...state.yourListingsFilter ?? {},
          'category': 'Listing Acquired'
        },
        search: state.yourListingsSearch,
        paginator: state.yourListingsPaginator);
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            yourListings: [...state.yourListings, ...s.value],
            yourListingsPaginator: s.paginator,
            getYourListingsStatus: Status.success));
        // Logger().d(state.listings);
        break;
      case (Error e):
        emit(state.copyWith(
            getYourListingsStatus: Status.failure,
            getYourListingsError: e.exception));
    }
  }

  void searchDeals(String? search) {
    emit(state.copyWith(dealsSearch: search));
    getDeals(refresh: true);
  }

  void setDealsFilter(Map<String, dynamic>? filter) {
    emit(state.copyWith(dealsFilter: filter));
    getDeals(refresh: true);
  }

  void onDealUpdated(Deal deal, int index) {
    final deals = List<Deal>.from(state.deals);
    deals.removeAt(index);
    deals.insert(index, deal);
    emit(state.copyWith(deals: deals));
  }

  void searchYourListings(String? search) {
    emit(state.copyWith(yourListingsSearch: search));
    getDeals(refresh: true);
  }

  void setYourListingsFilter(Map<String, dynamic>? filter) {
    emit(state.copyWith(yourListingsFilter: filter));
    getDeals(refresh: true);
  }

  void onYourListingsUpdated(Deal deal, int index) {
    final deals = List<Deal>.from(state.yourListings);
    deals.removeAt(index);
    deals.insert(index, deal);
    emit(state.copyWith(yourListings: deals));
  }

  void setSelectedTab(int index) {
    if (state.currentTab != index) {
      emit(state.copyWith(currentTab: index));
      if (index == 0) {
        getDeals(refresh: true);
      } else {
        // getListings(refresh: true);
      }
    }
  }
}
